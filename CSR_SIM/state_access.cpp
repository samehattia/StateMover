#include <iostream>
#include <fstream>
#include <list>
#include <algorithm>
#include <string.h>
#include <chrono>
#include "vpi_user.h"
#include "csr_sim.h"
#include "state_element.h"
#include "state_access.h"

using namespace std;

//CREDIT: https://stackoverflow.com/questions/18310952/convert-strings-between-hex-format-and-binary-format
string hex2bin(const string &s){
    string out;
    for(auto i: s){
        uint8_t n;
        if(i <= '9' and i >= '0')
            n = i - '0';
        else
            n = 10 + i - 'a';
        for(int8_t j = 3; j >= 0; --j)
            out.push_back((n & (1<<j))? '1':'0');
    }

    return out;
}

//CREDIT: https://stackoverflow.com/questions/18310952/convert-strings-between-hex-format-and-binary-format
string bin2hex(const string &s){
    string out;
    for(uint i = 0; i < s.size(); i += 4){
        int8_t n = 0;
        for(uint j = i; j < i + 4; ++j){
            n <<= 1;
            if(s[j] == '1')
                n |= 1;
        }

        if(n<=9)
            out.push_back('0' + n);
        else
            out.push_back('a' + n - 10);
    }

    return out;
}

void restore_init_state()
{
	s_vpi_value restored_value;
	restored_value.format = vpiHexStrVal;

	vpi_printf( (char*)"Restoring Initial State\n" );

	for (list<state_element>::iterator it=state_elem_list.begin(); it != state_elem_list.end(); ++it) {

		restored_value.value.str = (char*) malloc((it->elem_size + 1) * sizeof(char));
		strcpy(restored_value.value.str, it->elem_init_value);
		vpi_put_value(it->elem_handle, &restored_value, NULL, vpiNoDelay);

	}

}

PLI_INT32 save_init_state(p_cb_data cb_data)
{
	s_vpi_value current_value;
	current_value.format = vpiHexStrVal;

	if (!cb_data->value->value.integer)
		return 0;

	vpi_printf( (char*)"Saving Initial Value\n");

	for (list<state_element>::iterator it=state_elem_list.begin(); it != state_elem_list.end(); ++it) {

		vpi_get_value(it->elem_handle, &current_value);
		strcpy(it->elem_init_value, current_value.value.str);

	}

	return 0;
}

void corrupt_state()
{
	s_vpi_value corrupted_value;
	corrupted_value.format = vpiHexStrVal;
	
	vpi_printf( (char*)"Corrupting\n" );

	for (list<state_element>::iterator it=state_elem_list.begin(); it != state_elem_list.end(); ++it) {

		corrupted_value.value.str = (char*) malloc((it->elem_size + 1) * sizeof(char));
		for (int i = 0; i < it->elem_size; i++)
			corrupted_value.value.str[i] = 'x'; //'x'
		corrupted_value.value.str[it->elem_size] = 0;
		vpi_put_value(it->elem_handle, &corrupted_value, NULL, vpiNoDelay);

	}

}

PLI_INT32 save_state(p_cb_data cb_data)
{
	s_vpi_value current_value;
	current_value.format = vpiHexStrVal;
	
	if (!cb_data->value->value.integer)
		return 0;
		
	vpi_printf( (char*)"Saving\n");

	for (list<state_element>::iterator it=state_elem_list.begin(); it != state_elem_list.end(); ++it) {

		vpi_get_value(it->elem_handle, &current_value);
		strcpy(it->elem_value, current_value.value.str);
		
		// print register name
		// vpi_printf( (char*)"Reg: %s has value of ", vpi_get_str(vpiName, it->elem_handle));

		// print register value
		// vpi_printf( (char*)"%s\n", current_value.value.str);

	}

#ifdef CORRUPT_STATE
	corrupt_state();
#elif defined RESTORE_INIT_STATE
	restore_init_state();
#endif

	return 0;
}

PLI_INT32 restore_state(p_cb_data cb_data)
{
	s_vpi_value restored_value;
	restored_value.format = vpiHexStrVal;
	
	if (!cb_data->value->value.integer)
		return 0;

	vpi_printf( (char*)"Restoring\n" );

	for (list<state_element>::iterator it=state_elem_list.begin(); it != state_elem_list.end(); ++it) {
		
		restored_value.value.str = (char*) malloc((it->elem_size + 1) * sizeof(char));
		strcpy(restored_value.value.str, it->elem_value);
		vpi_put_value(it->elem_handle, &restored_value, NULL, vpiNoDelay);

	}
	
	return 0;
}

PLI_INT32 restore_hardware_state(p_cb_data cb_data)
{
	chrono::high_resolution_clock::time_point t1 = chrono::high_resolution_clock::now();

	fstream fs;
	string register_name;
	string register_value;
	s_vpi_value restored_value;
	restored_value.format = vpiHexStrVal;
	
	if (!cb_data->value->value.integer)
		return 0;

	vpi_printf((char*)"Restoring Hardware State\n");

	// open dump file for read
	fs.open(DUMP_IN_FILE_NAME, fstream::in);
	if (!fs.is_open()) {
		vpi_printf((char*)"File not found\n");
		return 0;
	}
	
	replace(module_name.begin(), module_name.end(), '.', '/');

	while(true) {
		// Get the register name from the dump file
		fs >> register_name;
		if (fs.eof())
			break;

		// The dump file has the following format: some_module/*/reg_name
		// The state_element_map has the following format: tb_module/top_module/some_module/*/reg_name
		size_t pos = module_name.find("/", module_name.find("/") + 1); // 2nd / position
		register_name = module_name.substr(0, pos+1) + register_name;

		// Get the register value from the dump value
		fs >> register_value;

		// Get the state_element whose name is register_name
		if (state_element_map.find(register_name) == state_element_map.end()) {
			vpi_printf( (char*)"  Warning: State Element %s does not exist\n", register_name.c_str());
			continue;
		}
		state_element se = state_element_map.at(register_name);

		// Overwrite the register value with the value in the dump file
		if (vpi_get(vpiType, se.elem_handle) == vpiReg) {
			restored_value.value.str = (char*) malloc((se.elem_size + 1) * sizeof(char));
			strcpy(restored_value.value.str, register_value.c_str());
			vpi_put_value(se.elem_handle, &restored_value, NULL, vpiNoDelay);
		}
		// Overwrite the memory value with the value in the dump file
		else {
			string memory_value = hex2bin(register_value);

			// Overwrite memory registers
			for (size_t i = 0; i < se.elem_size; i++) {
				vpiHandle memreg_handle = vpi_handle_by_index(se.elem_handle, i);
				restored_value.value.str = (char*) malloc((1 + 1) * sizeof(char));
				restored_value.value.str[0] = memory_value[se.elem_size-1-i];
				restored_value.value.str[1] = '\0';
				vpi_put_value(memreg_handle, &restored_value, NULL, vpiNoDelay);
			}
		}
	}

	// close dump file
	fs.close();

	chrono::high_resolution_clock::time_point t2 = chrono::high_resolution_clock::now();
	std::chrono::duration<double, milli> fp_ms = t2 - t1;
	vpi_printf( (char*)"  %f ms\n", fp_ms.count());
	
	return 0;
}

PLI_INT32 dump_simulation_state(p_cb_data cb_data)
{
	chrono::high_resolution_clock::time_point t1 = chrono::high_resolution_clock::now();

	fstream fs;
	string register_name;
	string register_value;
	s_vpi_value current_value;
	current_value.format = vpiHexStrVal;
	
	if (!cb_data->value->value.integer)
		return 0;

	vpi_printf((char*)"Dumping Simulation State\n");

	// open dump file for read
	fs.open(DUMP_OUT_FILE_NAME, fstream::out | fstream::trunc);
	if (!fs.is_open()) {
		vpi_printf((char*)"Cannot create file\n");
		return 0;
	}

	replace(module_name.begin(), module_name.end(), '.', '/');
	
	for (auto& se: state_element_map) {
		// The state_element_map has the following format: tb_module/top_module/some_module/*/reg_name
		// The dump file has the following format: some_module/*/reg_name
		register_name = se.first;
		
		size_t pos = module_name.find("/", module_name.find("/") + 1); // 2nd / position
		register_name = register_name.substr(pos+1);

		// Get the register value from the simulation
		if (vpi_get(vpiType, se.second.elem_handle) == vpiReg) {
			vpi_get_value(se.second.elem_handle, &current_value);
			register_value = current_value.value.str;
		}
		// Get the memory value from the simulation
		else {
			string memory_value = "";

			// get memory registers
			for (size_t i = 0; i < se.second.elem_size; i++) {
				vpiHandle memreg_handle = vpi_handle_by_index(se.second.elem_handle, i);
				vpi_get_value(memreg_handle, &current_value);
				memory_value = current_value.value.str + memory_value;
			}

			// Convert binary array to hex
			register_value = bin2hex(memory_value);
		}
		// Dump the register value to the dump file
		fs << register_name << " " << register_value << endl;
	}

	// close dump file
	fs.close();

	chrono::high_resolution_clock::time_point t2 = chrono::high_resolution_clock::now();
	std::chrono::duration<double, milli> fp_ms = t2 - t1;
	vpi_printf( (char*)"  %f ms\n", fp_ms.count());
	
	return 0;
}