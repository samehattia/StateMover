#include <iostream>
#include <fstream>
#include <algorithm>
#include <unordered_map>
#include <cstring>
#include <utility>
#include <limits>
#include <chrono>
#include "vpi_user.h"
#include "axi_sniffer.h"
#include "axi_interface.h"
#include "utils.h"
#include "message.h"

std::unordered_map<std::string,axi_interface> axi_interface_map;

std::chrono::duration<double, std::milli> axi_sniffer_duration;
int axi_clock_counter = 0;

PLI_INT32 axi_sniffer(p_cb_data cb_data) {

	std::chrono::high_resolution_clock::time_point t1 = std::chrono::high_resolution_clock::now();

	std::string axi_interface_name = (char*)(cb_data->user_data);
	axi_interface& axi_intf = axi_interface_map[axi_interface_name];

	// The negative edge of a posedge clock
	if (!cb_data->value->value.integer) {
		// In order to have the read response ready by the next positive clock edge
		// we are going to process the read response here
		if (!axi_generator_mode && check_active_channel(axi_intf.ports.rvalid, axi_intf.ports.rready)) {
			axi_intf.data_read_transaction();
		} 
		if (!axi_generator_mode && check_active_channel(axi_intf.ports.bvalid, axi_intf.ports.bready)) {
			axi_intf.response_write_transaction();
		}
	}
	// The positve edge of a posedge clock
	else {
		// Check transactions on AW channel
		if (check_active_channel(axi_intf.ports.awvalid, axi_intf.ports.awready)) {
			axi_intf.address_write_transaction();
		}
		if (check_active_channel(axi_intf.ports.wvalid, axi_intf.ports.wready)) {
			axi_intf.data_write_transaction();
		}
		if (check_active_channel(axi_intf.ports.arvalid, axi_intf.ports.arready)) {
			axi_intf.address_read_transaction();
		}
		if (axi_generator_mode) {
			axi_intf.data_read_transaction();
			axi_intf.response_write_transaction();
		}
	}

	std::chrono::high_resolution_clock::time_point t2 = std::chrono::high_resolution_clock::now();
	std::chrono::duration<double, std::milli> fp_ms = t2 - t1;
	axi_sniffer_duration += fp_ms;

	if (cb_data->value->value.integer)
		axi_clock_counter++;

	if (axi_clock_counter == 100000) {
		vpi_printf( (char*)"AXI  %f ms\n", axi_sniffer_duration.count());
		axi_clock_counter = 0;
	}

	return 0;
}

PLI_INT32 setup_axi_sniffer(p_cb_data cb_data) {

	std::string module_name;
	std::fstream fs;
	vpiHandle mod_handle, port_handle, portbit_handle, net_handle, clk_handle;
	int error_code;
	s_vpi_error_info error_info;

	vpi_printf( (char*)"\n======================================\n" );
	vpi_printf( (char*)"AXI Sniffer" );
	vpi_printf( (char*)"\n======================================\n" );

	// open parameters file for read
	fs.open(PARAM_FILE_NAME, std::fstream::in);
	if (!fs.is_open()) 
		vpi_printf( (char*)"File not found\n");
	
	// read module name
	fs >> module_name;

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
			if (port_name.find("clk") != std::string::npos || port_name.find("CLK") != std::string::npos) {
				// Get the internal net connected to that port
				clk_handle = vpi_handle(vpiLowConn, port_handle);

				vpi_printf( (char*)"  Clock Found: %s\n", port_name.c_str());
			}

			// Check if the port is part of an AXI interface
			else if (port_name.find("AXI_") != std::string::npos || port_name.find("axi_") != std::string::npos) {

				int pos = port_name.find_last_of('_');
				std::string axi_interface_name = port_name.substr(0,pos);
				std::string axi_interface_port = port_name.substr(pos+1);				
				std::transform(axi_interface_port.begin(), axi_interface_port.end(), axi_interface_port.begin(), [](unsigned char c){ return std::tolower(c); });

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
				if (axi_interface_map.find(axi_interface_name) == axi_interface_map.end()) {
					// The following line is equivalent to axi_interface_map.emplace(axi_interface_name, axi_interface(axi_interface_name))
					// but it avoids the temporary creation of the object which requires calling the copy constructor to move it to the unordered_map
					// The copy constructor of axi_interface is deleted, because it has mutex as a data member which is not copyable
					axi_interface_map.emplace(std::piecewise_construct, std::forward_as_tuple(axi_interface_name), std::forward_as_tuple(axi_interface_name));
					vpi_printf( (char*)"  AXI Interface Found: %s\n", axi_interface_name.c_str());
				}

				if (axi_interface_port == "araddr") 
					axi_interface_map[axi_interface_name].ports.araddr = net_handle;
				else if (axi_interface_port == "arvalid") 
					axi_interface_map[axi_interface_name].ports.arvalid = net_handle;
				else if (axi_interface_port == "arready") 
					axi_interface_map[axi_interface_name].ports.arready = net_handle;
				else if (axi_interface_port == "arlen") 
					axi_interface_map[axi_interface_name].ports.arlen = net_handle;
				else if (axi_interface_port == "arsize") 
					axi_interface_map[axi_interface_name].ports.arsize = net_handle;
				else if (axi_interface_port == "arburst") 
					axi_interface_map[axi_interface_name].ports.arburst = net_handle;
				else if (axi_interface_port == "arid") 
					axi_interface_map[axi_interface_name].ports.arid = net_handle;

				else if (axi_interface_port == "rdata") {
					axi_interface_map[axi_interface_name].ports.rdata = net_handle;
					axi_interface_map[axi_interface_name].interface_width = vpi_get(vpiSize, net_handle);
				}
				else if (axi_interface_port == "rvalid") 
					axi_interface_map[axi_interface_name].ports.rvalid = net_handle;
				else if (axi_interface_port == "rready") 
					axi_interface_map[axi_interface_name].ports.rready = net_handle;
				else if (axi_interface_port == "rlast") 
					axi_interface_map[axi_interface_name].ports.rlast = net_handle;
				else if (axi_interface_port == "rresp") 
					axi_interface_map[axi_interface_name].ports.rresp = net_handle;
				else if (axi_interface_port == "rid") 
					axi_interface_map[axi_interface_name].ports.rid = net_handle;

				else if (axi_interface_port == "awaddr")
					axi_interface_map[axi_interface_name].ports.awaddr = net_handle;
				else if (axi_interface_port == "awvalid") 
					axi_interface_map[axi_interface_name].ports.awvalid = net_handle;
				else if (axi_interface_port == "awready") 
					axi_interface_map[axi_interface_name].ports.awready = net_handle;
				else if (axi_interface_port == "awlen") 
					axi_interface_map[axi_interface_name].ports.awlen = net_handle;
				else if (axi_interface_port == "awsize") 
					axi_interface_map[axi_interface_name].ports.awsize = net_handle;
				else if (axi_interface_port == "awburst") 
					axi_interface_map[axi_interface_name].ports.awburst = net_handle;
				else if (axi_interface_port == "awid") 
					axi_interface_map[axi_interface_name].ports.awid = net_handle;

				else if (axi_interface_port == "wdata") {
					axi_interface_map[axi_interface_name].ports.wdata = net_handle;
					axi_interface_map[axi_interface_name].interface_width = vpi_get(vpiSize, net_handle);
				}
				else if (axi_interface_port == "wvalid") 
					axi_interface_map[axi_interface_name].ports.wvalid = net_handle;
				else if (axi_interface_port == "wready") 
					axi_interface_map[axi_interface_name].ports.wready = net_handle;
				else if (axi_interface_port == "wlast") 
					axi_interface_map[axi_interface_name].ports.wlast = net_handle;

				else if (axi_interface_port == "bresp") 
					axi_interface_map[axi_interface_name].ports.bresp = net_handle;
				else if (axi_interface_port == "bvalid") 
					axi_interface_map[axi_interface_name].ports.bvalid = net_handle;
				else if (axi_interface_port == "bready") 
					axi_interface_map[axi_interface_name].ports.bready = net_handle;
				else if (axi_interface_port == "bid") 
					axi_interface_map[axi_interface_name].ports.bid = net_handle;
			}

			// get the next port
			port_handle = vpi_scan(port_itr_handle);
			if ((error_code = vpi_chk_error(&error_info)) && error_info.message)
				vpi_printf( (char*)"  %s\n", error_info.message);
		}

		// We can either register a callback using vpi_register_cb()
		// or a system task using vpi_register_systf() that can be called from Verilog (has to be called after all events are processed (using cbReadWriteSynch??))
		// The callback can be called due to a specific signal value change or every clock cycle using cbValueChange (Do we need cbReadWriteSynch ??)
		int axi_interface_counter = 0;
		for (auto& axi_interface_entry: axi_interface_map) {
			s_cb_data cb_clk;
			s_vpi_value cb_value_s;
			s_vpi_time cb_time_s;

			// get a handle for save signal, and set the callback function save_state 
			cb_clk.reason = cbValueChange;
			cb_clk.cb_rtn = axi_sniffer;
			cb_clk.obj = clk_handle; //axi_interface_entry.second.awvalid;
			cb_clk.value = &cb_value_s;
			cb_clk.time = &cb_time_s;
			cb_time_s.type = vpiSuppressTime;
			cb_value_s.format = vpiIntVal;
			cb_clk.user_data = (PLI_BYTE8*)(axi_interface_entry.first.c_str());
			vpi_register_cb(&cb_clk);

			std::string sim_to_hw_pipename = std::string(AXI_SIM_TO_HW_PIPENAME) + '_' + std::to_string(axi_interface_counter);
			std::string hw_to_sim_pipename = std::string(AXI_HW_TO_SIM_PIPENAME) + '_' + std::to_string(axi_interface_counter);

			axi_interface_entry.second.sim_to_hw_pipe = setup_send_channel(sim_to_hw_pipename);
			axi_interface_entry.second.hw_to_sim_pipe = setup_recv_channel(hw_to_sim_pipename);

			axi_interface_counter++;
		}
	}

	
	vpi_printf( (char*)"\n======================================\n" );

	return 0;
}

void axi_sniffer_register(void) {
	s_cb_data cb_data_s;
	vpiHandle callback_handle;

	cb_data_s.reason = cbEndOfCompile;
	cb_data_s.cb_rtn = setup_axi_sniffer;
	cb_data_s.obj = NULL;
	cb_data_s.time = NULL;
	cb_data_s.value = NULL;
	cb_data_s.user_data = NULL;
	callback_handle = vpi_register_cb(&cb_data_s);
	vpi_free_object(callback_handle);
}