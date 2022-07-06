#ifndef AXIS_INTERFACE_H
#define AXIS_INTERFACE_H

#include <queue>
#include <mutex>
#include <thread>
#include "vpi_user.h"
#include "axis_sniffer.h"

struct axis_interface_ports {
	vpiHandle tdata;

	vpiHandle tkeep;
	vpiHandle tlast;

	vpiHandle tready;
	vpiHandle tvalid;
};

class axis_interface
{
public:
	int interface_id = 0;
	std::string interface_name;
	int interface_width = 64;

	axis_interface_ports ports = {0,0,0,0,0};

	// Master (TX) or Slave (RX) AXIS interface
	bool master = false;

	std::queue<std::string> transactions; //packet
	std::queue<std::string> transaction_length; //packet_len for RX AXIS interfaces

	int sim_to_hw_pipe = -1;
	int hw_to_sim_pipe = -1;

	int rx_packet_delay_counter = AXIS_RX_FIRST_PACKET_DELAY;

	std::string rx_hw_packet;
	int rx_hw_packet_length = 0;
	int rx_flit_counter = 0;
	long long rx_hw_packet_timestamp = 0;

	// Static Variables/functions for AXIS timestamp mode
	static long long current_time;
	static std::priority_queue<long long, std::vector<long long>, std::greater<long long>> timestamp_min_heap;
	static void advance_current_time();

	std::mutex mtx;
	std::thread rx_thread;

	void tx_transaction();
	void rx_transaction();
	void rx_transaction_full_system_simulation();

	void rx_thread_fn();
	void start_rx_thread();

	axis_interface() = default;
	axis_interface(const axis_interface&) = delete;

	axis_interface(std::string axis_interface_name) {
		interface_name = axis_interface_name;
	}
};

#endif