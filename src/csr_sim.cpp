#include <iostream>
#include <fstream>
#include <list>
#include "vpi_user.h"
#include "csr_sim.h"
#include "state_element.h"
#include "state_access.h"

using namespace std;

string module_name;

void traverse (vpiHandle  mod_handle) {

	vpiHandle mod_itr_handle;
	int error_code;
	s_vpi_error_info error_info;
	int type;

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
	if ((error_code = vpi_chk_error(&error_info)) && error_info.message)
		vpi_printf( (char*)"  %s\n", error_info.message);

	if ( ! error_code && mod_itr_handle ) {

		// get a scope (i.e. submodule or genblk) handle
		mod_handle = vpi_scan( mod_itr_handle );
		if ((error_code = vpi_chk_error(&error_info)) && error_info.message)
			vpi_printf( (char*)"  %s\n", error_info.message);

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
			if ((error_code = vpi_chk_error(&error_info)) && error_info.message)
				vpi_printf( (char*)"  %s\n", error_info.message);

		}
	}
}

/**
 * Context Saving and Restoring Simulator
 */
void csr_sim( void )
{
	fstream fs;
	vpiHandle module_handle;
	int error_code;
	s_vpi_error_info error_info;
	
	s_cb_data cb_save, cb_restore, cb_init;
	s_vpi_value cb_value_s, cb_value_r, cb_value_i;
	s_vpi_time cb_time_s, cb_time_r, cb_time_i;
	
	char save_signal[100], restore_signal[100], init_signal[100]; //TODO more efficient way

	vpi_printf( (char*)"\n======================================\n" );
	vpi_printf( (char*)"Context Saving and Restoring Simulator" );
	vpi_printf( (char*)"\n======================================\n" );
	
	// open parameters file for read
	fs.open(PARAM_FILE_NAME, fstream::in);
	if (!fs.is_open()) 
		vpi_printf( (char*)"File not found\n");
	
	// read design parameters
	fs >> module_name >> save_signal >> restore_signal >> init_signal;

	// close parameters file
	fs.close();

	// get a handle for save signal, and set the callback function save_state 
	cb_save.reason = cbValueChange;
#ifdef HARDWARE
	cb_save.cb_rtn = dump_simulation_state;
#else
	cb_save.cb_rtn = save_state;
#endif
	cb_save.obj = vpi_handle_by_name(save_signal, 0);
	cb_save.value = &cb_value_s;
	cb_save.time = &cb_time_s;
	cb_time_s.type = vpiSuppressTime;
	cb_value_s.format = vpiIntVal;
	cb_save.user_data = NULL;
	vpi_register_cb(&cb_save);

	// get a handle for restore signal, and set the callback function restore_state 
	cb_restore.reason = cbValueChange;
#ifdef HARDWARE
	cb_restore.cb_rtn = restore_hardware_state;
#else
	cb_restore.cb_rtn = restore_state;
#endif
	cb_restore.obj = vpi_handle_by_name(restore_signal, 0);
	cb_restore.value = &cb_value_r;
	cb_restore.time = &cb_time_r;
	cb_time_r.type = vpiSuppressTime;
	cb_value_r.format = vpiIntVal;
	cb_save.user_data = NULL;
	vpi_register_cb(&cb_restore);

	// get a handle for init signal,set the callback function save_init_state
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
	module_handle = vpi_handle_by_name((char*)module_name.c_str(), 0);
	if ((error_code = vpi_chk_error(&error_info)) && error_info.message)
		vpi_printf( (char*)"  %s\n", error_info.message);

	// traverse the design down from this module to create the state_element list
	traverse (module_handle);

#ifdef HARDWARE
#ifdef VERBOSE
	// print the list of hardware registers
	vpi_printf( (char*)"\nList of hardware registers:\n");
	for (auto& se: state_element_map)
		vpi_printf( (char*)"\t%s\n", se.first.c_str());
#endif
#endif

	vpi_printf( (char*)"\n======================================\n" );
}


/**
 * Required structure for initializing VPI routines.
 */
void (*vlog_startup_routines[])() = {
	csr_sim,
	0
};

