#ifndef STATE_ELEMENT_H
#define STATE_ELEMENT_H

#include <list>
#include "vpi_user.h"

struct state_element {
	vpiHandle 	elem_handle;
	int 		elem_size;
	char*		elem_value;
	char*		elem_init_value;
};

extern std::list<state_element> state_elem_list;

void get_state_element (vpiHandle  mod_handle);

#endif
