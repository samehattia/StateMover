#include <iostream>
#include <fstream>
#include <algorithm>
#include <cstring>
#include <utility>
#include <thread>
#include <limits>
#include "axi_interface.h"
#include "axi_sniffer.h"
#include "message.h"
#include "utils.h"

template <typename T>
T wait_for_data(std::queue<T>& container, std::string container_name, std::mutex& mtx) {

	unsigned int wait_counter = 0;
	unsigned int max_wait = std::numeric_limits<unsigned int>::max();
	static bool waiting_msg_flag = true;

	while(container.empty()) {
		if (waiting_msg_flag) {
			vpi_printf( (char*)"\tWaiting for %s (This message is printed once)\n", container_name.c_str());
			waiting_msg_flag = false;
		}

		wait_counter++;
		if (wait_counter == max_wait) {
			vpi_printf( (char*)"\tError: Extreme wait time for %s. Exiting\n", container_name.c_str());
			vpi_control(vpiFinish, 1);
		}
	}

	mtx.lock();

	T data = container.front();
	container.pop();

	mtx.unlock();

	return data;
}

void process_axi_message(std::string message, void* user_data) {

	axi_interface* axi_intf = (axi_interface*) user_data;

	// Check if the received message is "R read_data [timestamp]"
	if (message[0] == 'R' && message[1] == ' ') {
		axi_intf->mtx.lock();

		unsigned int pos = message.find_last_of(" ");
		axi_intf->data_read_transactions.push(message.substr(2, pos - 2));

		if (axi_timestamp_mode)
			axi_intf->data_read_timestamps.push(stoi(message.substr(message.length()-8), nullptr, 16));

		axi_intf->mtx.unlock();
	}

	// Check if the received message is "W [timestamp]"
	else if (message[0] == 'W' && message[1] == ' ') {
		axi_intf->mtx.lock();

		axi_intf->response_write_transactions.push(axi_intf->address_write_transactions.front().id);
		axi_intf->address_write_transactions.pop();

		if (axi_timestamp_mode)
			axi_intf->response_write_timestamps.push(stoi(message.substr(message.length()-8), nullptr, 16));

		axi_intf->mtx.unlock();
	}

	// Check if the received message is READ DATA
	else if (message.find("READ DATA") != std::string::npos) {
		axi_intf->mtx.lock();
		axi_intf->data_read_transactions.push(message.substr(1 + message.find_last_of(" ")));
		axi_intf->mtx.unlock();
	}

	// Check if the received message is WRITE DATA
	else if (message.find("WRITE DATA") != std::string::npos) {
		axi_intf->mtx.lock();
		axi_intf->response_write_transactions.push(axi_intf->address_write_transactions.front().id);
		axi_intf->address_write_transactions.pop();
		axi_intf->mtx.unlock();
	}

	else {
		vpi_printf( (char*)"\tInvalid message from AXI_HW_TO_SIM_PIPE: %s\n", message.c_str());
	}
}

void axi_interface::response_write_transaction() {

	// In generator mode, this function is called every clock cycle. However, a write response is issued only after a write burst is completed
	// In timestamp mode, the write response is issued after response_write_latency cycles from a completed write burst
	if (axi_generator_mode) {
		// Write response received by the DUT, clear the response
		if (get_binary_signal_value(ports.bvalid) && get_binary_signal_value(ports.bready)) {
			set_signal_value(ports.bvalid, "0", false, true);
			set_signal_value(ports.bresp, "0", false, true);

			// AWREADY goes down after a write request and goes up again after a write response is received
			set_signal_value(ports.awready, "1", false, true);

			return;
		}

		// Check if a write burst is completed. If not, return
		if (!axi_timestamp_mode && !(get_binary_signal_value(ports.wvalid) && get_binary_signal_value(ports.wready) && get_binary_signal_value(ports.wlast))) {
			return;
		}

		// In timestamp mode:
		// If a write burst is completed and no valid read latency value, get the write_latency from hardware
		// According to the write_latency variable: either return or issue the response to the DUT
		if (axi_timestamp_mode) {

			if (get_binary_signal_value(ports.wvalid) && get_binary_signal_value(ports.wready) && get_binary_signal_value(ports.wlast) && response_write_latency == -1) {
				response_write_latency = wait_for_data(response_write_timestamps, "response_write_timestamps", mtx);
			}

			// For valid write_latency, decrement it every cycle
			if (response_write_latency > 0)
				response_write_latency--;

			// If write_latency is not equal to zero (delay has not yet passed), return
			if (response_write_latency != 0)
				return;

			// Mark the write_latency as invalid
			response_write_latency = -1;
		}
	}

	// Receive the write response from the hardware
	int awid_value = wait_for_data(response_write_transactions, "response_write_transactions", mtx);

	// If the generator mode is enabled, place the response on the write response channel
	if (axi_generator_mode) {
		set_signal_value(ports.bvalid, "1", false, true);
		set_signal_value(ports.bresp, "0", false, true);
		if (ports.bid)
			set_signal_value(ports.bid, awid_value, true);
	}
}

void axi_interface::data_read_transaction() {

	// In generator mode, this function is called every clock cycle. However, a read response is issued only after a read request and can take few cycle for burst
	// In timestamp mode, the read response is issued after data_read_latency cycles from a read request
	if (axi_generator_mode) {
		bool new_data_beat = false;

		// If the previous data beat is received by the DUT, update the global counter
		if (get_binary_signal_value(ports.rvalid) && get_binary_signal_value(ports.rready)) {
			data_read_counter++;
			new_data_beat = true;

			// If a burst read is completed, clear the response
			if (get_binary_signal_value(ports.rlast)) {
				data_read_counter = 0;
				address_read_transactions.pop();
				set_signal_value(ports.rvalid, "0", false, true);
				set_signal_value(ports.rlast, "0", false, true);

				// ARREADY goes down after a read request and goes up again after a burst read is completed
				set_signal_value(ports.arready, "1", false, true);

				return;
			}
		}

		// Check if a read request is issued or a burst read is still in progress. If not, return
		if (!axi_timestamp_mode && !((get_binary_signal_value(ports.arvalid) && get_binary_signal_value(ports.arready)) || new_data_beat)) {
			return;
		}

		// In timestamp mode:
		// If a burst read is still in progress, continue to issue it
		// If a read request is issued and no valid read latency value, get the read_latency from hardware
		// According to the read_latency variable: either return or issue the response to the DUT
		if (axi_timestamp_mode && !new_data_beat) {

			if (get_binary_signal_value(ports.arvalid) && get_binary_signal_value(ports.arready) && data_read_latency == -1) {
				data_read_latency = wait_for_data(data_read_timestamps, "data_read_timestamps", mtx);
			}

			// For valid read_latency, decrement it every cycle
			if (data_read_latency > 0)
				data_read_latency--;

			// If read_latency is not equal to zero (delay has not yet passed), return
			if (data_read_latency != 0)
				return;

			// Mark the read_latency as invalid
			data_read_latency = -1;
		}
	}

	s_vpi_value current_value;
	current_value.format = vpiHexStrVal;

	vpi_get_value(ports.rdata, &current_value);
	std::string rdata_value = current_value.value.str;

	current_value.format = vpiIntVal;

	vpi_get_value(ports.rlast, &current_value);
	int rlast_value = current_value.value.integer;

	// TODO: Since the queue is not thread safe and since we are alreadg waiting here for the read data
	// the recv_message should be called here with no threads.
	// But in this case, the jtag read in tcl should be done in a separate thread
	// Otherwise, the tcl may block until we read the data here
	
	// If this is the first data beat, read the entire data packet from the board
	if (data_read_counter == 0) {
		data_read_packet = wait_for_data(data_read_transactions, "data_read_transactions", mtx);
	}

	int arlen_value = address_read_transactions.front().len;
	int arsize_value = address_read_transactions.front().size;
	int arid_value = address_read_transactions.front().id;

	int data_beat_size = (1 << (arsize_value)) * 2; // number of bytes per beat * number of ASCII characters per data byte
	int data_beat_loc = (arlen_value + 1 - data_read_counter - 1) * data_beat_size;
	
	std::string rdata_hardware_value = data_read_packet.substr(data_beat_loc, data_beat_size);
	std::string rlast_hardware_value = "";

	if (data_read_counter >= arlen_value)
		rlast_hardware_value = "1";
	else
		rlast_hardware_value = "0";

	if (!axi_generator_mode) {
		// Overwrite the rdata value
		set_signal_value(ports.rdata, rdata_hardware_value);

		data_read_counter++;

		// If this is the last data beat, then the next beat is the start of a new packet
		if (rlast_value) {
			data_read_counter = 0;
			address_read_transactions.pop();
		}
	}
	// If the generator mode is enabled, place the response on the read response channel
	else {
		set_signal_value(ports.rdata, rdata_hardware_value, false, true);
		set_signal_value(ports.rvalid, "1", false, true);
		set_signal_value(ports.rresp, "0", false, true);
		set_signal_value(ports.rlast, rlast_hardware_value, false, true);
		if (ports.rid)
			set_signal_value(ports.rid, arid_value, true);
	}

	//vpi_printf( (char*)"\tAXI R Transaction on %s: DATA=%s HARDWARE_DATA=%s LAST=%d HARDWARE_LAST=%s\n", interface_name.c_str(), rdata_value.c_str(), rdata_hardware_value.c_str(), rlast_value, rlast_hardware_value.c_str());
}

void axi_interface::address_read_transaction() {
	
	s_vpi_value current_value;
	current_value.format = vpiHexStrVal;

	vpi_get_value(ports.araddr, &current_value);
	std::string araddr_value = current_value.value.str;

	current_value.format = vpiIntVal;

	vpi_get_value(ports.arlen, &current_value);
	int arlen_value = current_value.value.integer;

	vpi_get_value(ports.arsize, &current_value);
	int arsize_value = current_value.value.integer;

	vpi_get_value(ports.arburst, &current_value);
	int arburst_value = current_value.value.integer;

	int arid_value = 0;
	if (ports.arid) {
		vpi_get_value(ports.arid, &current_value);
		arid_value = current_value.value.integer;
	}

	address_read_transactions.push({araddr_value, arlen_value, arsize_value, arid_value});

	// Message: R Address Len
	std::string message = "R " + araddr_value + " " + std::to_string(int((arlen_value+1) * interface_width / JTAG_AXI_WIDTH)) + " ";
	send_message(sim_to_hw_pipe, message);

	recv_message(hw_to_sim_pipe, process_axi_message, (void *) this);

	if (axi_generator_mode) {
		// ARREADY goes down after a read request and goes up again after a burst read is completed
		set_signal_value(ports.arready, "0", false, true);
	}

	//vpi_printf( (char*)"\tAXI AR Transaction on %s: ADDR=%s LEN=%d SIZE=%d BURST=%d\n", interface_name.c_str(), araddr_value.c_str(), arlen_value, arsize_value, arburst_value);
}

void axi_interface::data_write_transaction() {
	
	s_vpi_value current_value;
	current_value.format = vpiHexStrVal;

	vpi_get_value(ports.wdata, &current_value);
	std::string wdata_value = current_value.value.str;

	current_value.format = vpiIntVal;

	vpi_get_value(ports.wlast, &current_value);
	int wlast_value = current_value.value.integer;

	data_write_transactions.push(wdata_value);

	if (wlast_value == 1) {
		if (address_write_transactions.empty()) {
			vpi_printf( (char*)"\tError: No AXI Address Specified. Exiting\n");
			vpi_control(vpiFinish, 1);
		}

		// Message: W Address Len Data
		std::string message = "W " + address_write_transactions.front().addr + " " + std::to_string(int((address_write_transactions.front().len+1) * interface_width / JTAG_AXI_WIDTH)) + " ";

		std::string wdata_packet = "";
		while (!data_write_transactions.empty()) {
			wdata_packet = data_write_transactions.front() + wdata_packet;
			data_write_transactions.pop();
		}

		message = message + wdata_packet;
		send_message(sim_to_hw_pipe, message);

		recv_message(hw_to_sim_pipe, process_axi_message, (void *) this, true);

		if (axi_generator_mode) {
			// WREADY goes up after a write request and goes down again after a burst write is completed
			set_signal_value(ports.wready, "0", false, true);
		}
	}

	//vpi_printf( (char*)"\tAXI W Transaction on %s: DATA=%s LAST=%d\n", interface_name.c_str(), wdata_value.c_str(), wlast_value);
}

void axi_interface::address_write_transaction() {
	
	s_vpi_value current_value;
	current_value.format = vpiHexStrVal;

	vpi_get_value(ports.awaddr, &current_value);
	std::string awaddr_value = current_value.value.str;

	current_value.format = vpiIntVal;

	vpi_get_value(ports.awlen, &current_value);
	int awlen_value = current_value.value.integer;

	vpi_get_value(ports.awsize, &current_value);
	int awsize_value = current_value.value.integer;

	vpi_get_value(ports.awburst, &current_value);
	int awburst_value = current_value.value.integer;

	int awid_value = 0;
	if (ports.awid) {
		vpi_get_value(ports.awid, &current_value);
		awid_value = current_value.value.integer;
	}

	address_write_transactions.push({awaddr_value, awlen_value, awsize_value, awid_value});

	if (axi_generator_mode) {
		// AWREADY goes down after a write request and goes up again after a write response is received
		set_signal_value(ports.awready, "0", false, true);

		// WREADY goes up after a write request and goes down again after a burst write is completed
		set_signal_value(ports.wready, "1", false, true);
	}

	//vpi_printf( (char*)"\tAXI AW Transaction on %s: ADDR=%s LEN=%d SIZE=%d BURST=%d\n", interface_name.c_str(), awaddr_value.c_str(), awlen_value, awsize_value, awburst_value);
}