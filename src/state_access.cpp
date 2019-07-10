#include <iostream>
#include <fstream>
#include <list>
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