#ifndef STATE_ELEMENT_H
#define STATE_ELEMENT_H

#include <list>
#include <unordered_map>

#include "vpi_user.h"

struct state_element {
	vpiHandle 	elem_handle;
	int 		elem_size;
	char*		elem_value;
	char*		elem_init_value;
};

extern std::list<state_element> state_elem_list;
extern std::unordered_map<std::string,state_element> state_element_map;

void get_state_element (vpiHandle  mod_handle);

#endif
