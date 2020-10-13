#include <iostream>
#include <fstream>
#include <algorithm>
#include "vpi_user.h"
#include "csr_sim.h"
#include "state_element.h"

using namespace std;

list<state_element> state_elem_list;
unordered_map<string,state_element> state_element_map;

static string format_state_element_name(string se_name) {

	//cout << se_name << endl;

	// Replace dots that separate module names with forward slashes, and keep those in escaped names
	if (se_name.find('\\') == string::npos) // no escaped names
		replace(se_name.begin(), se_name.end(), '.', '/');
	else {
		int index = 0;
		while (1) {
			int start_escaped_name = se_name.find('\\', index);
			if (start_escaped_name == string::npos)
				start_escaped_name = se_name.length() - 1;

			int end_escaped_name = se_name.find(" .", index);
			if (end_escaped_name == string::npos)
				end_escaped_name = se_name.length() - 1;

			//cout << start_escaped_name << " " << end_escaped_name << endl;

			replace(se_name.begin() + index, se_name.begin() + start_escaped_name, '.', '/');

			index = end_escaped_name;
			if (index >= se_name.length() - 1)
				break;
		}
	}

	// Remove escaped characters from the se_name
	se_name.erase(std::remove(se_name.begin(), se_name.end(), '\\'), se_name.end());
	se_name.erase(std::remove(se_name.begin(), se_name.end(), '^'), se_name.end());
	se_name.erase(std::remove(se_name.begin(), se_name.end(), ' '), se_name.end());

	//cout << se_name << endl;
	return se_name;

}

static void add_state_element(state_element se, vpiHandle mod_handle) {

	int error_code;
	s_vpi_error_info error_info;

	// Add the state element to the state element list
	if (vpi_get(vpiType, se.elem_handle) == vpiReg)
		state_elem_list.push_back(se);

	// Exit if the state element is inside a genblk
	int type = vpi_get(vpiType, mod_handle);
	if (type == vpiGenScope || type == vpiGenScopeArray)
		return;

	// Check if the state element is an actual FF in the synthesized netlist
	// Xilinx: FF module is named FD*E and the actual register is Q_out connected to the Q port
	string module_name = vpi_get_str(vpiDefName, mod_handle);
	string register_name = vpi_get_str(vpiName, se.elem_handle);

	if ((module_name == "FDRE" || module_name == "FDCE" || module_name == "FDPE" ||
		module_name == "FDSE") && register_name == "Q_out") {
		// Get the instance name of the module
		//string instance_name = vpi_get_str(vpiFullName, mod_handle);

		// get an iterator on ports of this module
		vpiHandle port_itr_handle = vpi_iterate(vpiPort, mod_handle);
		if ((error_code = vpi_chk_error(&error_info)) && error_info.message)
			vpi_printf( (char*)"  %s\n", error_info.message);

		if (!error_code && port_itr_handle) {
			// get a port handle
			vpiHandle port_handle = vpi_scan(port_itr_handle);
			if ((error_code = vpi_chk_error(&error_info)) && error_info.message)
				vpi_printf( (char*)"  %s\n", error_info.message);

			while (port_handle) {
				string port_name = vpi_get_str(vpiName, port_handle);

				// If the port is found
				if (port_name == "Q") {
					// Get the net connected to that port
					vpiHandle net_handle = vpi_handle(vpiHighConn, port_handle);
					string net_name = vpi_get_str(vpiFullName, net_handle);

					// Add the state element to the state element map
					state_element_map.emplace(format_state_element_name(net_name), se);
					break;
				}

				// get the next port
				port_handle = vpi_scan(port_itr_handle);
				if ((error_code = vpi_chk_error(&error_info)) && error_info.message)
					vpi_printf( (char*)"  %s\n", error_info.message);
			}
		}
	}

	// Check if the state element is a LUTRAM in the synthesized netlist
	// Xilinx: LUTRAM module is named RAM*M* and the actual memory is mem_[a-h]
	// Xilinx: OR LUTRAM module is named RAM*X1* and the actual memory is mem
	else if ((module_name == "RAM32M16" || module_name == "RAM64M8" ||
		module_name == "RAM32M" || module_name == "RAM64M" ||
		module_name == "RAM32X1D" || module_name == "RAM64X1D" ||
		module_name == "RAM32X1S" || module_name == "RAM64X1S") &&
		(register_name == "mem" || register_name == "mem_a" || register_name == "mem_b" ||
		register_name == "mem_c" || register_name == "mem_d" || register_name == "mem_e" ||
		register_name == "mem_f" || register_name == "mem_g" || register_name == "mem_h")) {

		// Add the state element to the state element map
		string register_full_name = vpi_get_str(vpiFullName, se.elem_handle);
		
		state_element_map.emplace(format_state_element_name(register_full_name), se);
	}

	// Check if the state element is a SRL in the synthesized netlist
	// Xilinx: LUTRAM module is named SRL16E and the actual memory is data
	else if (module_name == "SRL16E" && register_name == "data") {

		// Add the state element to the state element map
		string register_full_name = vpi_get_str(vpiFullName, se.elem_handle);

		state_element_map.emplace(format_state_element_name(register_full_name), se);
	}

	// Check if the state element is a BlockRAM in the synthesized netlist
	// Xilinx: BlockRAM module is named RAMB36E2 or RAMB16E2 and the actual memory is mem
	else if ((module_name == "RAMB36E2" || module_name == "RAMB18E2") && register_name == "mem") {
		string register_full_name = vpi_get_str(vpiFullName, se.elem_handle);
		
		// Get rid of padding
		if (module_name == "RAMB36E2")
			se.elem_size = 32768;
		else
			se.elem_size = 16384;
		state_element_map.emplace(format_state_element_name(register_full_name), se);
	}
	// Check if the state element is a BlockRAM in the synthesized netlist
	// Xilinx: BlockRAM module is named RAMB36E2 or RAMB16E2 and the actual memory is memp
	else if ((module_name == "RAMB36E2" || module_name == "RAMB18E2") && register_name == "memp") {
		string register_full_name = vpi_get_str(vpiFullName, se.elem_handle);

		// Get rid of padding
		if (module_name == "RAMB36E2")
			se.elem_size = 32768/8;
		else
			se.elem_size = 16384/8;
		state_element_map.emplace(format_state_element_name(register_full_name), se);
	}

	// Check if the state element is a BlockRAM internal latches in the synthesized netlist
	// Xilinx: BlockRAM module is named RAMB36E2 and the internal latches/registers is mem_a/b_lat/reg
	else if ((module_name == "RAMB36E2" || module_name == "RAMB18E2") && (register_name == "mem_a_lat" || register_name == "mem_b_lat")) {
		string register_full_name = vpi_get_str(vpiFullName, se.elem_handle);

		state_element_map.emplace(format_state_element_name(register_full_name), se);
	}
	// Check if the state element is a BlockRAM internal latches in the synthesized netlist
	// Xilinx: BlockRAM module is named RAMB36E2 and the internal latches/registers is memp_a/b_lat/reg
	else if ((module_name == "RAMB36E2" || module_name == "RAMB18E2") && (register_name == "memp_a_lat" || register_name == "memp_b_lat")) {
		string register_full_name = vpi_get_str(vpiFullName, se.elem_handle);

		state_element_map.emplace(format_state_element_name(register_full_name), se);
	}

#ifdef BRAM_REGISTERS
	// Check if the state element is a BlockRAM internal registers in the synthesized netlist
	// Xilinx: BlockRAM module is named RAMB36E2 and the internal latches/registers is mem_a/b_lat/reg
	else if ((module_name == "RAMB36E2" || module_name == "RAMB18E2") && (register_name == "mem_a_reg" || register_name == "mem_b_reg")) {
		string register_full_name = vpi_get_str(vpiFullName, se.elem_handle);

		state_element_map.emplace(format_state_element_name(register_full_name), se);
	}
	// Check if the state element is a BlockRAM internal registers in the synthesized netlist
	// Xilinx: BlockRAM module is named RAMB36E2 and the internal latches/registers is memp_a/b_lat/reg
	else if ((module_name == "RAMB36E2" || module_name == "RAMB18E2") && (register_name == "memp_a_reg" || register_name == "memp_b_reg")) {
		string register_full_name = vpi_get_str(vpiFullName, se.elem_handle);

		state_element_map.emplace(format_state_element_name(register_full_name), se);
	}
#endif

#ifdef DSP_REGISTERS
	// Check if the state element is a DSP internal register in the synthesized netlist
	// Xilinx: DSP module is named DSP48E2 and the internal registers are A1_reg, A2_reg, B1_DATA_out, B2_reg
	// C_reg, U_DATA_reg, V_DATA_reg, D_DATA_reg, AD_DATA_reg, ALU_OUT_reg
	else if (module_name == "DSP48E2" && (register_name == "A1_reg" || register_name == "A2_reg" ||
		register_name == "B1_DATA_out" || register_name == "B2_reg" || register_name == "C_reg" ||
		register_name == "U_DATA_reg" || register_name == "V_DATA_reg" || register_name == "D_DATA_reg" ||
		register_name == "AD_DATA_reg" || register_name == "ALU_OUT_reg")) {
		string register_full_name = vpi_get_str(vpiFullName, se.elem_handle);

		state_element_map.emplace(format_state_element_name(register_full_name), se);
	}
#endif

}

static state_element alloc_state_element(vpiHandle elem_handle) {

	state_element se;

	se.elem_handle = elem_handle;
	se.elem_size = vpi_get( vpiSize, elem_handle );
	se.elem_value = (char*) malloc((se.elem_size + 1) * sizeof(char));
	se.elem_init_value = (char*) malloc((se.elem_size + 1) * sizeof(char));
	
	return se;
}

void get_state_element(vpiHandle mod_handle) {

	vpiHandle reg_handle;
	vpiHandle reg_itr_handle;
	
	vpiHandle mem_handle;
	vpiHandle mem_itr_handle;
	
	vpiHandle memreg_handle;
	vpiHandle memreg_itr_handle;
	
	int error_code;
	s_vpi_error_info error_info;

	s_vpi_value current_value;

	// get an iterator on registers of this module
	reg_itr_handle = vpi_iterate( vpiReg, mod_handle );
	if ((error_code = vpi_chk_error(&error_info)) && error_info.message)
		vpi_printf( (char*)"  %s\n", error_info.message);

	if ( ! error_code && reg_itr_handle ) {

		// get a register handle
		reg_handle = vpi_scan( reg_itr_handle );
		if ((error_code = vpi_chk_error(&error_info)) && error_info.message)
			vpi_printf( (char*)"  %s\n", error_info.message);

		while ( reg_handle ) {
#ifdef VERBOSE
			// print register name
			vpi_printf( (char*)"\tReg: %s\n", vpi_get_str( vpiName, reg_handle ));
#endif
			// allocate register in the state_element list/map
			state_element se = alloc_state_element(reg_handle);
			add_state_element(se, mod_handle);

			// free the register handle
			// vpi_free_object( reg_handle );

			// get the next register
			reg_handle = vpi_scan( reg_itr_handle );
			if ((error_code = vpi_chk_error(&error_info)) && error_info.message)
				vpi_printf( (char*)"  %s\n", error_info.message);

		}
	}
	
	// get an iterator on memories of this module
	mem_itr_handle = vpi_iterate( vpiRegArray, mod_handle ); // vpiArray
	if ((error_code = vpi_chk_error(&error_info)) && error_info.message)
		vpi_printf( (char*)"  %s\n", error_info.message);
	
	if ( ! error_code && mem_itr_handle ) {

		// get a memory handle
		mem_handle = vpi_scan( mem_itr_handle );
		if ((error_code = vpi_chk_error(&error_info)) && error_info.message)
			vpi_printf( (char*)"  %s\n", error_info.message);

		while ( mem_handle ) {
#ifdef VERBOSE
			// print memory name
			vpi_printf( (char*)"\tMem: %s\n", vpi_get_str( vpiName, mem_handle ));
#endif
			// allocate memory in the state_element map only
			state_element se = alloc_state_element(mem_handle);
			add_state_element(se, mod_handle);

			// get an iterator on memory registers
			memreg_itr_handle = vpi_iterate( vpiVarSelect, mem_handle );
			if ((error_code = vpi_chk_error(&error_info)) && error_info.message)
				vpi_printf( (char*)"  %s\n", error_info.message);

			if ( ! error_code && memreg_itr_handle ) {

				// get a register handle
				memreg_handle = vpi_scan( memreg_itr_handle );
				if ((error_code = vpi_chk_error(&error_info)) && error_info.message)
					vpi_printf( (char*)"  %s\n", error_info.message);

				while ( memreg_handle ) {

					// allocate memory register in the state_element list only
					state_element se = alloc_state_element(memreg_handle);
					add_state_element(se, mod_handle);

					// get the next register
					memreg_handle = vpi_scan( memreg_itr_handle );
					if ((error_code = vpi_chk_error(&error_info)) && error_info.message)
						vpi_printf( (char*)"  %s\n", error_info.message);

				}
			}

			// get the next memory
			mem_handle = vpi_scan( mem_itr_handle );
			if ((error_code = vpi_chk_error(&error_info)) && error_info.message)
				vpi_printf( (char*)"  %s\n", error_info.message);

		}
	}
}