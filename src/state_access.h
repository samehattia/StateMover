#ifndef STATE_ACCESS_H
#define STATE_ACCESS_H

#include "vpi_user.h"

void restore_init_state();
PLI_INT32 save_init_state(p_cb_data cb_data);
void corrupt_state();
PLI_INT32 save_state(p_cb_data cb_data);
PLI_INT32 restore_state(p_cb_data cb_data);

#endif