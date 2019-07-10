#include <iostream>
#include <fstream>
#include <list>
#include <string.h>
#include "vpi_user.h"
#define FILENAME "param.txt"
#define VERBOSE

using namespace std;

struct state_element {

	vpiHandle 	elem_handle;
	int 		elem_size;
	char*		elem_value;
	char*		elem_init_value;

};

list<state_element> state_elem_list;

int check_error()
{
	int              error_code;
	s_vpi_error_info error_info;

	error_code = vpi_chk_error( &error_info );
	if ( error_code && error_info.message ) {
		vpi_printf( (char*)"  %s\n", error_info.message );
	}

	return error_code;
}

void restore_init_state ()
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

PLI_INT32 save_init_state (p_cb_data cb_data)
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

void corrupt_state ()
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

PLI_INT32 save_state (p_cb_data cb_data)
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

	// corrupt_state();
	restore_init_state();

	return 0;
}

PLI_INT32 restore_state (p_cb_data cb_data)
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

void alloc_state_element ( vpiHandle elem_handle ) {

	state_element se;
	se.elem_handle = elem_handle;
	se.elem_size = vpi_get( vpiSize, elem_handle );
	se.elem_value = (char*) malloc((se.elem_size + 1) * sizeof(char));
	se.elem_init_value = (char*) malloc((se.elem_size + 1) * sizeof(char));
	state_elem_list.push_back(se);

}

void get_state_element ( vpiHandle  mod_handle ) {

	vpiHandle   reg_handle;
	vpiHandle   reg_itr_handle;
	
	vpiHandle   mem_handle;
	vpiHandle   mem_itr_handle;
	
	vpiHandle   memreg_handle;
	vpiHandle   memreg_itr_handle;
	
	int         error_code;
	s_vpi_value current_value;

	// get an iterator on registers of this module
	reg_itr_handle = vpi_iterate( vpiReg, mod_handle );
	error_code  = check_error();

	if ( ! error_code && reg_itr_handle ) {

		// get a register handle
		reg_handle = vpi_scan( reg_itr_handle );
		error_code = check_error();

		while ( reg_handle ) {
#ifdef VERBOSE
			// print register name
			vpi_printf( (char*)"\tReg: %s\n", vpi_get_str( vpiName, reg_handle ));
#endif
			// allocate register in the state_element list
			alloc_state_element(reg_handle);

			// free the register handle
			// vpi_free_object( reg_handle );

			// get the next register
			reg_handle = vpi_scan( reg_itr_handle );
			error_code = check_error();

		}
	}
	
	// get an iterator on memories of this module
	mem_itr_handle = vpi_iterate( vpiRegArray, mod_handle ); // vpiArray
	error_code  = check_error();
	
	if ( ! error_code && mem_itr_handle ) {

		// get a memory handle
		mem_handle = vpi_scan( mem_itr_handle );
		error_code = check_error();

		while ( mem_handle ) {
#ifdef VERBOSE
			// print memory name
			vpi_printf( (char*)"\tMem: %s\n", vpi_get_str( vpiName, mem_handle ));
#endif
			// get an iterator on memory registers
			memreg_itr_handle = vpi_iterate( vpiVarSelect, mem_handle );
			error_code  = check_error();

			if ( ! error_code && memreg_itr_handle ) {

				// get a register handle
				memreg_handle = vpi_scan( memreg_itr_handle );
				error_code = check_error();

				while ( memreg_handle ) {

					// allocate register in the state_element list
					alloc_state_element(memreg_handle);

					// get the next register
					memreg_handle = vpi_scan( memreg_itr_handle );
					error_code = check_error();

				}
			}

			// get the next memory
			mem_handle = vpi_scan( mem_itr_handle );
			error_code = check_error();

		}
	}


}

void traverse ( vpiHandle  mod_handle) {

	vpiHandle   mod_itr_handle;
	int 		error_code;
	int                   type;

#ifdef VERBOSE
	// print module name
	type = vpi_get(vpiType, mod_handle);
	if (type == vpiModule || type == vpiModuleArray) {
		vpi_printf( (char*)"\nModule: %s", vpi_get_str( vpiDefName, mod_handle ));
	}
	else {
		vpi_printf( (char*)"\nGenblk");
	}
	vpi_printf( (char*)" - Instance: %s\n", vpi_get_str( vpiFullName, mod_handle ));
#endif

	// get module (or genblk) registers
	get_state_element(mod_handle);

	// get an iterator on internal scopes (submodules or genblks) of this module
	mod_itr_handle = vpi_iterate( vpiInternalScope, mod_handle );
	error_code  = check_error();

	if ( ! error_code && mod_itr_handle ) {

		// get a scope (i.e. submodule or genblk) handle
		mod_handle = vpi_scan( mod_itr_handle );
		error_code = check_error();

		while ( mod_handle ) {

			// check if this scope is protected
			if (!(vpi_get(vpiIsProtected, mod_handle))) {

				// get scope type
				type = vpi_get(vpiType, mod_handle); 

				// assert that this scope is submodule or genblk
				if (type == vpiModule || type ==  vpiModuleArray || type == vpiGenScope || type == vpiGenScopeArray) {

					// recursive call traverse by this scope
					traverse( mod_handle);
				}

			} 
			else { 
				vpi_printf( (char*)"\tProtected: Instance: %s\n", vpi_get_str( vpiFullName, mod_handle ));
			}

			// free the scope handle
			vpi_free_object( mod_handle );

			// get the next scope (i.e. submodule or genblk)
			mod_handle = vpi_scan( mod_itr_handle );
			error_code = check_error();

		}
	}
}

/**
 * Context Saving and Restoring Simulator
 */
void csr_sim( void )
{

	fstream 	fs;
	vpiHandle   	module_handle;
	int 		error_code;
	
	s_cb_data cb_save, cb_restore, cb_init;
	s_vpi_value cb_value_s, cb_value_r, cb_value_i;
	s_vpi_time cb_time_s, cb_time_r, cb_time_i;
	
	char module_name[100], save_signal[100], restore_signal[100], init_signal[100]; //TODO more efficient way

	vpi_printf( (char*)"\n======================================\n" );
	vpi_printf( (char*)"Context Saving and Restoring Simulator" );
	vpi_printf( (char*)"\n======================================\n" );
	
	// open parameters file for read
	fs.open(FILENAME, fstream::in);
	if (!fs.is_open()) 
		vpi_printf( (char*)"File not found\n");
	
	// read design parameters
	fs >> module_name >> save_signal >> restore_signal >> init_signal;

	// get a handle for save signal, and set the callback function save_state 
	cb_save.reason = cbValueChange;
	cb_save.cb_rtn = save_state;
	cb_save.obj = vpi_handle_by_name(save_signal, 0);
	cb_save.value = &cb_value_s;
	cb_save.time = &cb_time_s;
	cb_time_s.type = vpiSuppressTime;
	cb_value_s.format = vpiIntVal;
	cb_save.user_data = NULL;
	vpi_register_cb(&cb_save);

	// get a handle for restore signal, and set the callback function restore_state 
	cb_restore.reason = cbValueChange;
	cb_restore.cb_rtn = restore_state;
	cb_restore.obj = vpi_handle_by_name(restore_signal, 0);
	cb_restore.value = &cb_value_r;
	cb_restore.time = &cb_time_r;
	cb_time_r.type = vpiSuppressTime;
	cb_value_r.format = vpiIntVal;
	cb_save.user_data = NULL;
	vpi_register_cb(&cb_restore);

	// set the callback function save_init_state
	cb_init.reason = cbValueChange;
	cb_init.cb_rtn = save_init_state;
	cb_init.obj =vpi_handle_by_name(init_signal, 0);
	cb_init.value = &cb_value_i;
	cb_init.time = &cb_time_i;
	cb_time_i.type = vpiSuppressTime;
	cb_value_i.format = vpiIntVal;
	cb_save.user_data = NULL;
	vpi_register_cb(&cb_init);

	// get a handle for the swapped module
	module_handle = vpi_handle_by_name(module_name, 0);
	error_code  = check_error();

	// traverse the design down from this module to create the state_element list
	traverse ( module_handle );

	vpi_printf( (char*)"\n======================================\n" );
}


/**
 * Required structure for initializing VPI routines.
 */
void (*vlog_startup_routines[])() = {
	csr_sim,
	0
};

