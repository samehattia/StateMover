#ifndef UTILS_H
#define UTILS_H

#include "vpi_user.h"

void set_signal_value(vpiHandle signal, int singal_value, bool delay=false);
void set_signal_value(vpiHandle signal, std::string singal_value, bool binary_string=false, bool delay=false);
std::string get_signal_value(vpiHandle signal);
bool get_binary_signal_value(vpiHandle signal);
bool check_active_channel(vpiHandle valid_signal, vpiHandle ready_signal);

#endif
