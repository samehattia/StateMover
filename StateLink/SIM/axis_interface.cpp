#include <iostream>
#include <fstream>
#include <algorithm>
#include <cstring>
#include <utility>
#include <limits>
#include "axis_interface.h"
#include "axis_sniffer.h"
#include "message.h"
#include "utils.h"

void process_axis_rx_message(std::string message, void* user_data) {

	axis_interface* axis_intf = (axis_interface*) user_data;

	// Send an acknowledge (needed to backpressure the sender when software queue is full)
	send_message(axis_intf->sim_to_hw_pipe, "ACK\n");

	// Check if the received message is "R packet_length packet_data"
	if (message[0] == 'R' && message[1] == ' ') {
		axis_intf->mtx.lock();

		unsigned int pos = message.find_last_of(" ");
		axis_intf->transaction_length.push(message.substr(2, pos - 2));
		axis_intf->transactions.push(message.substr(1 + pos));

		axis_intf->mtx.unlock();
	}
	else {
		vpi_printf( (char*)"\tInvalid message from AXIS_RX_HW_TO_SIM_PIPE: %s\n", message.c_str());
	}
}

void process_axis_tx_message(std::string message, void*) {

	// Check if the received message is READ DATA
	if (message.find("READ DATA") != std::string::npos) {
		
	}
	else if (message.find("WRITE DATA") != std::string::npos) {

	}
	else {
		vpi_printf( (char*)"\tInvalid message from AXIS_TX_HW_TO_SIM_PIPE: %s\n", message.c_str());
	}
}

long long axis_interface::current_time = 0;
std::priority_queue<long long, std::vector<long long>, std::greater<long long>> axis_interface::timestamp_min_heap;

void axis_interface::advance_current_time() {

	// Increment current time
	current_time++;

	// Check if we need to fast forward current time
	if (timestamp_min_heap.empty())
		return;

	long long smallest_timestamp = timestamp_min_heap.top();

	if ((smallest_timestamp - current_time) > MAX_IDLE_CYCLES) {
		// Fast forward current time
		//vpi_printf( (char*)"\tAXIS Interface: fast forwarding current time, old current time %lld, next timestamp %lld, skipped %lld cycles\n", current_time, smallest_timestamp, (smallest_timestamp - current_time));
		current_time = smallest_timestamp - MAX_IDLE_CYCLES;
	}
	else if (current_time > smallest_timestamp) {
		// FIXME
		// When an interface is backpressured, the current time won't advance, so other RX interfaces cannot write their packets
		// To workaround this, once current time is a head of the smallest timestamp, we get the next smallest timestamp and advance the current time according to it
		timestamp_min_heap.pop();
		long long second_smallest_timestamp = timestamp_min_heap.top();

		if ((second_smallest_timestamp - current_time) > MAX_IDLE_CYCLES) {
			current_time = second_smallest_timestamp - MAX_IDLE_CYCLES;
		}

		timestamp_min_heap.push(smallest_timestamp);
		//vpi_printf( (char*)"\tWARNING: AXIS Interface: Current time is a head of a timestamp, current time %lld, timestamp %lld\n", current_time, smallest_timestamp);
	}
}

void axis_interface::rx_thread_fn() {
	while (1) {
		if (transactions.size() < MAX_AXIS_QUEUE_SIZE)
			recv_message(hw_to_sim_pipe, process_axis_rx_message, (void *) this, true);
	}
}

void axis_interface::start_rx_thread() {
	rx_thread = std::thread(&axis_interface::rx_thread_fn, this);
	rx_thread.detach();
}

void axis_interface::rx_transaction() {

	int flit_width = interface_width / 8; // in bytes
	int timestamp_width = 8;

	// new_flit is true, if the last flit is received by the DUT or new packet is received from the board
	// once true, the new flit will be put on the interface with a valid signal, and the valid signal should not be lowered until the flit is received by the DUT
	bool new_flit = false;

	// Increment current time which is used in timestamp mode
	// Should be incremented every cycle and since it is shared variable,
	// It is incremented only by one RX interface and shared among all other interfaces
	if (axis_timestamp_mode && interface_id == 0)
		advance_current_time();

	rx_packet_delay_counter--;
	if (rx_packet_delay_counter < 0)
		rx_packet_delay_counter = 0;

	// If the previous flit is received by the DUT, update the global counters
	if (get_binary_signal_value(ports.tvalid) && get_binary_signal_value(ports.tready)) {
		
		rx_hw_packet_length -= flit_width;
		rx_flit_counter++;

		if (get_binary_signal_value(ports.tlast)) {
			rx_flit_counter = 0;
			if (!axis_timestamp_mode)
				rx_packet_delay_counter = AXIS_RX_PACKET_DELAY;
			else
				rx_packet_delay_counter = 0;
		}

		new_flit = true;

		//vpi_printf( (char*)"\tAXIS RX Transaction on %s TDATA=%s TKEEP=%s TLAST=%s\n", interface_name.c_str(), get_signal_value(ports.tdata).c_str(), get_signal_value(ports.tkeep).c_str(), get_signal_value(ports.tlast).c_str());
	}

	// If this the first flit in a packet and we don't have an unconsumed packet, get a new packet from the board
	if (rx_flit_counter == 0 and rx_hw_packet_length <= 0) {

		// If there is no received packets, turn off the valid signal and return
		if(transactions.empty() ||  rx_packet_delay_counter > 0) {
			set_signal_value(ports.tvalid, "0", false, true);
			set_signal_value(ports.tlast, "0", false, true);
			return;
		}		

		if (axis_timestamp_mode) {
			// Read the next packet timestamp
			if (rx_hw_packet_timestamp == 0) {
				// In the timestamp mode, the first flit of the packet is a timestamp
				mtx.lock();
				std::string next_packet = transactions.front();
				mtx.unlock();

				rx_hw_packet_timestamp = stoll(next_packet.substr(next_packet.length() - (timestamp_width * 2), timestamp_width * 2), nullptr, 16);

				// Add the time stamp to the shared min_heap
				timestamp_min_heap.push(rx_hw_packet_timestamp);
			}

			// Check if the packet should be fed to the DUT now
			if (rx_hw_packet_timestamp > current_time) {
				set_signal_value(ports.tvalid, "0", false, true);
				set_signal_value(ports.tlast, "0", false, true);
				return;
			}
		}

		mtx.lock();

		rx_hw_packet = transactions.front();
		transactions.pop();

		rx_hw_packet_length = stoi(transaction_length.front());
		transaction_length.pop();

		mtx.unlock();

		if (rx_hw_packet_length > rx_hw_packet.length()/2) {
			vpi_printf( (char*)"\tError: Received Packet Length exceeds the actual length of the receieved packet from AXIS_RX_HW_TO_SIM_PIPE. Packet=%s axis_rx_hw_packet_length=%d axis_rx_hw_packet.length()=%d\n", rx_hw_packet.c_str(), rx_hw_packet_length, rx_hw_packet.length());
			vpi_control(vpiFinish, 1);
		}

		// In the timestamp mode, remove the first flit from the packet before feeding it
		if (axis_timestamp_mode) {
			rx_hw_packet = rx_hw_packet.substr(0, rx_hw_packet.length() - (timestamp_width * 2));
			rx_hw_packet_length -= timestamp_width;

			// Pop the timestamp from the min_heap
			timestamp_min_heap.pop();

			// if transaction queue is not empty, add a timestamp in the shared min_heap
			if (!transactions.empty()) {
				// In the timestamp mode, the first flit of the packet is a timestamp
				mtx.lock();
				std::string next_packet = transactions.front();
				mtx.unlock();

				rx_hw_packet_timestamp = stoll(next_packet.substr(next_packet.length() - (timestamp_width * 2), timestamp_width * 2), nullptr, 16);

				// Add the time stamp to the shared min_heap
				timestamp_min_heap.push(rx_hw_packet_timestamp);
			}
			else {
				rx_hw_packet_timestamp = 0;
			}
		}

		new_flit = true;
	}

	if (new_flit) {
		std::string tdata_hardware_value = "";
		std::string tkeep_hardware_value = "";
		std::string tlast_hardware_value = "";

		// Get a flit (TDATA, TKEEP, TLAST) from the received packet
		if (rx_hw_packet_length > 0) {
			int flit_loc = rx_hw_packet.length() - ((rx_flit_counter + 1) * flit_width * 2); // in bytes
			if (flit_loc > rx_hw_packet.length()) {
				vpi_printf( (char*)"\tError: Incorrect flit in the message received from AXIS_RX_HW_TO_SIM_PIPE. Packet=%s axis_rx_hw_packet_length=%d axis_rx_flit_counter=%d flit_loc=%d axis_rx_hw_packet.length()=%d\n", rx_hw_packet.c_str(), rx_hw_packet_length, rx_flit_counter, flit_loc, rx_hw_packet.length());
				vpi_control(vpiFinish, 1);
			}
			tdata_hardware_value = rx_hw_packet.substr(flit_loc, flit_width * 2);

			for (int i = 0; i < flit_width; i++) {
				if (i < rx_hw_packet_length) 
					tkeep_hardware_value = '1' + tkeep_hardware_value;
				else
					tkeep_hardware_value = '0' + tkeep_hardware_value;
			}

			if (rx_hw_packet_length <= flit_width)
				tlast_hardware_value = "1";
			else
				tlast_hardware_value = "0";
		}

		// Place a flit on the interface
		set_signal_value(ports.tdata, tdata_hardware_value, false, true);
		set_signal_value(ports.tkeep, tkeep_hardware_value, true, true);
		set_signal_value(ports.tlast, tlast_hardware_value, false, true);
		set_signal_value(ports.tvalid, "1", false, true);	
	}
	
}

void axis_interface::tx_transaction() {
	
	std::string tdata_value = get_signal_value(ports.tdata);

	std::string tkeep_value = get_signal_value(ports.tkeep);

	bool tlast_value = get_binary_signal_value(ports.tlast);

	transactions.push(tdata_value);	

	if (tlast_value) {
		std::string tdata_packet = "";
		while (!transactions.empty()) {
			tdata_packet = transactions.front() + tdata_packet;
			transactions.pop();
		}

		// Packet length in bytes
		int packet_length = tdata_packet.length()/2;

		for (int i = 0; i < tkeep_value.length(); i++) {
			if (tkeep_value[i] == '0') {
				packet_length -= 4;
			} 
			else if (tkeep_value[i] == '1') {
				packet_length -= 3;
			}
			else if (tkeep_value[i] == '3') {
				packet_length -= 2;
			}
			else if (tkeep_value[i] == '7') {
				packet_length -= 1;
			}
			else {
				break;
			}
		}

		// Message: W Len Data
		std::string message = "W " + std::to_string(packet_length) + " " + tdata_packet;
		send_message(sim_to_hw_pipe, message);

		recv_message(hw_to_sim_pipe, process_axis_tx_message, (void *) this, true);

		//vpi_printf( (char*)"\tAXIS TX Transaction on %s: %s\n", interface_name.c_str(), message.c_str());
	}
}

void axis_interface::rx_transaction_full_system_simulation() {

	int flit_width = interface_width / 8; // in bytes

	s_vpi_value current_value;
	current_value.format = vpiIntVal;

	vpi_get_value(ports.tlast, &current_value);
	int tlast_value = current_value.value.integer;

	current_value.format = vpiHexStrVal;

	vpi_get_value(ports.tdata, &current_value);
	std::string tdata_value = current_value.value.str;

	current_value.format = vpiBinStrVal;

	vpi_get_value(ports.tkeep, &current_value);
	std::string tkeep_value = current_value.value.str;

	if (rx_flit_counter == 0) {
		unsigned int wait_counter = 0;
		unsigned int max_wait = std::numeric_limits<unsigned int>::max();

		while(transactions.empty()) {
			wait_counter++;

			if (wait_counter == max_wait) {
				vpi_printf( (char*)"\tError: Extreme wait time for AXIS_RX_HW_TO_SIM_PIPE.\n");
				vpi_control(vpiFinish, 1);
			}
		}

		mtx.lock();

		rx_hw_packet = transactions.front();
		transactions.pop();

		rx_hw_packet_length = stoi(transaction_length.front());
		transaction_length.pop();

		mtx.unlock();
	}

	if (rx_hw_packet_length > 0) {
		int flit_loc = rx_hw_packet.length() - ((rx_flit_counter + 1) * flit_width * 2); // in bytes
		
		std::string tdata_hardware_value = rx_hw_packet.substr(flit_loc, flit_width * 2);

		std::string tkeep_hardware_value = "";
		for (int i = 0; i < flit_width; i++) {
			if (i < rx_hw_packet_length) 
				tkeep_hardware_value = '1' + tkeep_hardware_value;
			else
				tkeep_hardware_value = '0' + tkeep_hardware_value;
		}

		int tlast_hardware_value = 0;
		if (rx_hw_packet_length <= flit_width)
			tlast_hardware_value = 1;


		rx_hw_packet_length -= flit_width;
		rx_flit_counter++;

		vpi_printf( (char*)"\t\t Hardware TDATA=%s TKEEP=%s TLAST=%d\n", tdata_hardware_value.c_str(), tkeep_hardware_value.c_str(), tlast_hardware_value);
		vpi_printf( (char*)"\t\t Software TDATA=%s TKEEP=%s TLAST=%d\n", tdata_value.c_str(), tkeep_value.c_str(), tlast_value);
	}

	if (tlast_value) {
		rx_flit_counter = 0;
	}
}
