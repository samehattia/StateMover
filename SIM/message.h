#ifndef MESSAGE_H
#define MESSAGE_H

#include <string>

using callback_fn = void (*)(std::string, void* user_data);

int setup_recv_channel(std::string channel_name);
int setup_send_channel(std::string channel_name);

void recv_message_thread(int channel, callback_fn process_recv_message_fn, void* user_data);
void recv_message(int channel, callback_fn process_recv_message_fn, void* user_data, bool block=false);

void send_message(int channel, std::string message);

#endif
