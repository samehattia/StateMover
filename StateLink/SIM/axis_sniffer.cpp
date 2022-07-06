#include <iostream>
#include <fstream>
#include <algorithm>
#include <cstring>
#include <queue>
#include <stack>
#include <utility>
#include <thread>
#include <mutex>
#include <limits>
#include <chrono>
#include <unordered_map>
#include <vector> 
#include "axis_sniffer.h"
#include "axis_interface.h"
#include "message.h"
#include "utils.h"

int AXIS_RX_FIRST_PACKET_DELAY = 45000; // minimum number of cycles before feeding the first packet
int AXIS_RX_PACKET_DELAY = 150; // minimum number of cycles between each packet
int MAX_IDLE_CYCLES = 150; // maximum number of idle cycles in timestamp mode

std::unordered_map<std::string,axis_interface> axis_interface_map;

std::chrono::duration<double, std::milli> axis_sniffer_duration;
int clock_counter = 0;

PLI_INT32 axis_sniffer(p_cb_data cb_data) {

	std::chrono::high_resolution_clock::time_point t1 = std::chrono::high_resolution_clock::now();

	std::string axis_interface_name = (char*)(cb_data->user_data);
	axis_interface& axis_intf = axis_interface_map[axis_interface_name];

	// The negative edge of a posedge clock
	if (!cb_data->value->value.integer) {

	}
	// The positve edge of a posedge clock
	else {
		// For RX interfaces, get packets from the board and feed them to the interface
		if (!axis_intf.master) {
			axis_intf.rx_transaction();
		}

		// Check transactions
		if (check_active_channel(axis_intf.ports.tvalid, axis_intf.ports.tready)) {
			if (axis_intf.master) {
				axis_intf.tx_transaction();
			}
		}
	}

	std::chrono::high_resolution_clock::time_point t2 = std::chrono::high_resolution_clock::now();
	std::chrono::duration<double, std::milli> fp_ms = t2 - t1;
	axis_sniffer_duration += fp_ms;

	if (cb_data->value->value.integer)
		clock_counter++;

	if (clock_counter == 100000) {
		vpi_printf( (char*)"AXIS  %f ms\n", axis_sniffer_duration.count());
		clock_counter = 0;
	}

	return 0;
}

PLI_INT32 setup_axis_sniffer(p_cb_data cb_data) {

	std::string module_name;
	std::fstream fs;
	vpiHandle mod_handle, port_handle, portbit_handle, net_handle, clk_handle;
	int error_code;
	s_vpi_error_info error_info;

	vpi_printf( (char*)"\n======================================\n" );
	vpi_printf( (char*)"AXIS Sniffer" );
	vpi_printf( (char*)"\n======================================\n" );

	// open parameters file for read
	fs.open(PARAM_FILE_NAME, std::fstream::in);
	if (!fs.is_open()) 
		vpi_printf( (char*)"File not found\n");
	
	// read module name
	fs >> module_name;

	// read StateLink parameters which are preceded by "#StateLink_"
	// current parameters: AXIS_RX_FIRST_PACKET_DELAY, AXIS_RX_PACKET_DELAY, MAX_IDLE_CYCLES
	// and read StateLink AXIS interface names (optional, if provided, the provided interface order will be used)
	std::vector<std::string> axis_rx_interface_names;
	std::vector<std::string> axis_tx_interface_names;

	std::string input_string;
	int input_integer;
	while(fs.peek()!= EOF) {
		fs >> input_string;
		if (input_string == "#StateLink_AXIS_RX_FIRST_PACKET_DELAY") {
			fs >> input_integer;
			AXIS_RX_FIRST_PACKET_DELAY = input_integer;
		}
		if (input_string == "#StateLink_AXIS_RX_PACKET_DELAY") {
			fs >> input_integer;
			AXIS_RX_PACKET_DELAY = input_integer;
		}
		if (input_string == "#StateLink_MAX_IDLE_CYCLES") {
			fs >> input_integer;
			MAX_IDLE_CYCLES = input_integer;
		}
		if (input_string == "#StateLink_AXIS_RX") {
			while(fs.peek()!= EOF) {
				fs >> input_string;
				vpi_printf( (char*)"DEBUG RX %s\n", input_string.c_str());
				if (input_string == "#")
					break;
				axis_rx_interface_names.push_back(input_string);
			}
		}
		if (input_string == "#StateLink_AXIS_TX") {
			while(fs.peek()!= EOF) {
				fs >> input_string;
				vpi_printf( (char*)"DEBUG TX %s\n", input_string.c_str());
				if (input_string == "#")
					break;
				axis_tx_interface_names.push_back(input_string);
			}
		}
	}

	// close parameters file
	fs.close();

	mod_handle = vpi_handle_by_name((char*)module_name.c_str(), 0);
	if ((error_code = vpi_chk_error(&error_info)) && error_info.message)
		vpi_printf( (char*)"  %s\n", error_info.message);

	// get an iterator on ports of this module
	vpiHandle port_itr_handle = vpi_iterate(vpiPort, mod_handle);
	if ((error_code = vpi_chk_error(&error_info)) && error_info.message)
		vpi_printf( (char*)"  %s\n", error_info.message);

	if (!error_code && port_itr_handle) {
		// get a port handle
		port_handle = vpi_scan(port_itr_handle);
		if ((error_code = vpi_chk_error(&error_info)) && error_info.message)
			vpi_printf( (char*)"  %s\n", error_info.message);

		while (port_handle) {
			std::string port_name = vpi_get_str(vpiName, port_handle);

			// Check if it is a clock port
			if (port_name.find("axis_clk") != std::string::npos || port_name.find("AXIS_CLK") != std::string::npos) {
				// Get the internal net connected to that port
				clk_handle = vpi_handle(vpiLowConn, port_handle);

				vpi_printf( (char*)"  Clock Found: %s\n", port_name.c_str());
			}

			// Check if the port is part of an AXIS interface
			else if (port_name.find("_T") != std::string::npos || port_name.find("_t") != std::string::npos) {

				int pos = port_name.find_last_of('_');
				std::string axis_interface_name = port_name.substr(0,pos);
				std::string axis_interface_port = port_name.substr(pos+1);				
				std::transform(axis_interface_port.begin(), axis_interface_port.end(), axis_interface_port.begin(), [](unsigned char c){ return std::tolower(c); });

				// Get the internal net connected to that port
				net_handle = vpi_handle(vpiLowConn, port_handle);

				// For multi-bit ports, we cannot get the net connected to te port directly
				if (!net_handle) {
					// Get an iterator of bits of the port
					vpiHandle portbit_itr_handle = vpi_iterate(vpiBit, port_handle);

					// Get the first portbit in that port
					portbit_handle = vpi_scan(portbit_itr_handle);

					// Get the internal netbit connected to that portbit
					net_handle = vpi_handle(vpiLowConn, portbit_handle);

					// Get the parent of this netbit (i.e. the multi-bit net connected to the port)
					net_handle = vpi_handle(vpiParent, net_handle);
				}

				// First time
				if (axis_interface_map.find(axis_interface_name) == axis_interface_map.end()) {
					axis_interface_map.emplace(std::piecewise_construct, std::forward_as_tuple(axis_interface_name), std::forward_as_tuple(axis_interface_name));
					vpi_printf( (char*)"  AXIS Interface Found: %s\n", axis_interface_name.c_str());
				}

				if (axis_interface_port == "tdata") {
					axis_interface_map[axis_interface_name].ports.tdata = net_handle;
					axis_interface_map[axis_interface_name].interface_width = vpi_get(vpiSize, port_handle);
					// Check if it is an input or output port to set master flag
					if (vpi_get(vpiDirection, port_handle) == vpiOutput)
						axis_interface_map[axis_interface_name].master = true;
					else
						axis_interface_map[axis_interface_name].master = false;
				}
				else if (axis_interface_port == "tvalid") 
					axis_interface_map[axis_interface_name].ports.tvalid = net_handle;
				else if (axis_interface_port == "tready") 
					axis_interface_map[axis_interface_name].ports.tready = net_handle;
				else if (axis_interface_port == "tlast") 
					axis_interface_map[axis_interface_name].ports.tlast = net_handle;
				else if (axis_interface_port == "tkeep") 
					axis_interface_map[axis_interface_name].ports.tkeep = net_handle;
			}

			// get the next port
			port_handle = vpi_scan(port_itr_handle);
			if ((error_code = vpi_chk_error(&error_info)) && error_info.message)
				vpi_printf( (char*)"  %s\n", error_info.message);
		}

		if (axis_rx_interface_names.empty() && axis_tx_interface_names.empty()) {
			for (auto& axis_interface_entry: axis_interface_map) {
				if (axis_interface_entry.second.master) // TX AXIS
					axis_tx_interface_names.push_back(axis_interface_entry.first);
				else
					axis_rx_interface_names.push_back(axis_interface_entry.first);
			}
		}

		// We can either register a callback using vpi_register_cb()
		// or a system task using vpi_register_systf() that can be called from Verilog (has to be called after all events are processed (using cbReadWriteSynch??))
		// The callback can be called due to a specific signal value change or every clock cycle using cbValueChange (Do we need cbReadWriteSynch ??)
		int tx_axis_interface_counter = 0;
		int rx_axis_interface_counter = 0;
		for (auto& interface_name: axis_tx_interface_names) {
			auto axis_interface_entry = axis_interface_map.find(interface_name);
			
			if (axis_interface_entry == axis_interface_map.end()) {
				vpi_printf( (char*)"ERROR: AXIS TX interface %s not found\n", interface_name.c_str());
				vpi_control(vpiFinish, 1);
			}

			s_cb_data cb_clk;
			s_vpi_value cb_value_s;
			s_vpi_time cb_time_s;

			// get a handle for save signal, and set the callback function save_state 
			cb_clk.reason = cbValueChange;
			cb_clk.cb_rtn = axis_sniffer;
			cb_clk.obj = clk_handle; //axis_interface_entry->second.awvalid;
			cb_clk.value = &cb_value_s;
			cb_clk.time = &cb_time_s;
			cb_time_s.type = vpiSuppressTime;
			cb_value_s.format = vpiIntVal;
			cb_clk.user_data = (PLI_BYTE8*)(axis_interface_entry->first.c_str());
			vpi_register_cb(&cb_clk);

			std::string sim_to_hw_pipename = std::string(AXIS_TX_SIM_TO_HW_PIPENAME) + '_' + std::to_string(tx_axis_interface_counter);
			std::string hw_to_sim_pipename = std::string(AXIS_TX_HW_TO_SIM_PIPENAME) + '_' + std::to_string(tx_axis_interface_counter);
			vpi_printf( (char*)"AXIS TX interface %s is connected to %s and %s\n", axis_interface_entry->first.c_str(), sim_to_hw_pipename.c_str(), hw_to_sim_pipename.c_str());

			axis_interface_entry->second.sim_to_hw_pipe = setup_send_channel(sim_to_hw_pipename);
			axis_interface_entry->second.hw_to_sim_pipe = setup_recv_channel(hw_to_sim_pipename);
			axis_interface_entry->second.interface_id = tx_axis_interface_counter;

			tx_axis_interface_counter++;
		}

		for (auto& interface_name: axis_rx_interface_names) {
			auto axis_interface_entry = axis_interface_map.find(interface_name);

			if (axis_interface_entry == axis_interface_map.end()) {
				vpi_printf( (char*)"ERROR: AXIS RX interface %s not found\n", interface_name.c_str());
				vpi_control(vpiFinish, 1);
			}

			s_cb_data cb_clk;
			s_vpi_value cb_value_s;
			s_vpi_time cb_time_s;

			// get a handle for save signal, and set the callback function save_state 
			cb_clk.reason = cbValueChange;
			cb_clk.cb_rtn = axis_sniffer;
			cb_clk.obj = clk_handle; //axis_interface_entry->second.awvalid;
			cb_clk.value = &cb_value_s;
			cb_clk.time = &cb_time_s;
			cb_time_s.type = vpiSuppressTime;
			cb_value_s.format = vpiIntVal;
			cb_clk.user_data = (PLI_BYTE8*)(axis_interface_entry->first.c_str());
			vpi_register_cb(&cb_clk);

			std::string sim_to_hw_pipename = std::string(AXIS_RX_SIM_TO_HW_PIPENAME) + '_' + std::to_string(rx_axis_interface_counter);
			std::string hw_to_sim_pipename = std::string(AXIS_RX_HW_TO_SIM_PIPENAME) + '_' + std::to_string(rx_axis_interface_counter);
			vpi_printf( (char*)"AXIS RX interface %s is connected to %s and %s\n", axis_interface_entry->first.c_str(), sim_to_hw_pipename.c_str(), hw_to_sim_pipename.c_str());

			axis_interface_entry->second.sim_to_hw_pipe = setup_send_channel(sim_to_hw_pipename);
			axis_interface_entry->second.hw_to_sim_pipe = setup_recv_channel(hw_to_sim_pipename);
			axis_interface_entry->second.start_rx_thread();
			axis_interface_entry->second.interface_id = rx_axis_interface_counter;

			rx_axis_interface_counter++;
		}
	}

	vpi_printf( (char*)"\n======================================\n" );

	return 0;
}

void axis_sniffer_register(void) {
	s_cb_data cb_data_s;
	vpiHandle callback_handle;

	cb_data_s.reason = cbEndOfCompile;
	cb_data_s.cb_rtn = setup_axis_sniffer;
	cb_data_s.obj = NULL;
	cb_data_s.time = NULL;
	cb_data_s.value = NULL;
	cb_data_s.user_data = NULL;
	callback_handle = vpi_register_cb(&cb_data_s);
	vpi_free_object(callback_handle);
}