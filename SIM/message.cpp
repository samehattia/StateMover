#include <thread>
#include <stdio.h> 
#include <fcntl.h> 
#include <sys/stat.h> 
#include <unistd.h>

#include "vpi_user.h"
#include "message.h"

using namespace std;

#define MAX_RECV_MSG_LEN 5000 //1500 MTU * 2 Hex AND 256 Burst * 8 Bytes * 2 Hex

int setup_recv_channel(string channel_name) {
	// Wait for FIFO to be created
	while (access(channel_name.c_str(), F_OK)) {
		sleep(1);
	}

	// Open FIFO for read only
	vpi_printf( (char*)"  Opening HW_TO_SIM_PIPE: %s\n", channel_name.c_str());
	int channel = open(channel_name.c_str(), O_RDONLY);

	return channel;
}

int setup_send_channel(string channel_name) {
	// Create FIFO
	mkfifo(channel_name.c_str(), 0666); 

	// Open FIFO for write only
	vpi_printf( (char*)"  Opening SIM_TO_HW_PIPE: %s\n", channel_name.c_str());
	int channel = open(channel_name.c_str(), O_WRONLY);

	return channel;
}

void recv_message_thread(int channel, callback_fn process_recv_message_fn, void* user_data) {

	char message_c_str[MAX_RECV_MSG_LEN + 1];

	int bytes_read = read(channel, message_c_str, MAX_RECV_MSG_LEN);

	if (bytes_read == 0) {
		vpi_printf( (char*)"\tHW_TO_SIM_PIPE is not open\n");
	} 
	else {
		process_recv_message_fn(message_c_str, user_data);
	}
}

void recv_message(int channel, callback_fn process_recv_message_fn, void* user_data, bool block) {
	if (channel == -1)
		return;

	// Reading from the pipe is a blocking call,
	// Run it in a thread in order not to block the simulation, 
	if (!block) {
		thread recv_thread = thread(recv_message_thread, channel, process_recv_message_fn, user_data);
		recv_thread.detach();
	}
	else {
		recv_message_thread(channel, process_recv_message_fn, user_data);
	}
}

void send_message(int channel, string message) {
	if (channel == -1)
		return;

	write(channel, message.c_str(), message.length()+1);
	//vpi_printf( (char*)"\t%s\n", message.c_str());
}