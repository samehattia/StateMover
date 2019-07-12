#include <iostream>
#include <fstream>
#include <list>
#include <algorithm>
#include <string.h>
#include "vpi_user.h"
#include "csr_sim.h"
#include "state_element.h"
#include "state_access.h"

using namespace std;

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
#elif RESTORE_INIT_STATE
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
	
	while(true) {
		// Get the register name from the dump file
		fs >> register_name;
		if (fs.eof())
			break;

		// The dump file has the following format: pr_module/*/reg_name
		// The state_element_map has the following format: tb_module.*.pr_module.reg_name
		replace(register_name.begin(), register_name.end(), '/', '.');
		size_t pos = register_name.find_first_of(".");
		register_name = register_name.substr(pos);
		register_name = module_name + register_name;

		// Get the state_element whose name is register_name
		state_element se = state_element_map.at(register_name);

		// Get the register value from the dump value
		fs >> register_value;

		// Overwrite the register value with the value in the dump file
		restored_value.value.str = (char*) malloc((se.elem_size + 1) * sizeof(char));
		strcpy(restored_value.value.str, register_value.c_str());
		vpi_put_value(se.elem_handle, &restored_value, NULL, vpiNoDelay);
	}

	// close dump file
	fs.close();
	
	return 0;
}

PLI_INT32 dump_simulation_state(p_cb_data cb_data)
{
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
	
	for (auto& se: state_element_map) {
		// The state_element_map has the following format: tb_module.*.pr_module.reg_name
		// The dump file has the following format: pr_module/*/reg_name
		register_name = se.first;
		
		size_t pos = module_name.find_last_of(".");
		register_name = register_name.substr(pos+1);
		replace(register_name.begin(), register_name.end(), '.', '/');

		// Get the register value from the simulation
		vpi_get_value(se.second.elem_handle, &current_value);
		register_value = current_value.value.str;

		// Dump the register value to the dump file
		fs << register_name << " " << register_value << endl;
	}

	// close dump file
	fs.close();
	
	return 0;
}