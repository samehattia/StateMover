#ifndef AXI_INTERFACE_H
#define AXI_INTERFACE_H

#include <queue>
#include <mutex>
#include "vpi_user.h"

struct axi_interface_ports {	
	// AR Channel
	vpiHandle arvalid;
	vpiHandle arready;

	vpiHandle araddr;
	vpiHandle arlen;
	vpiHandle arsize;
	vpiHandle arburst;
	vpiHandle arid;

	// R Channel
	vpiHandle rvalid;
	vpiHandle rready;

	vpiHandle rdata;
	vpiHandle rlast;
	vpiHandle rresp;
	vpiHandle rid;

	// AW Channel
	vpiHandle awvalid;
	vpiHandle awready;

	vpiHandle awaddr;
	vpiHandle awlen;
	vpiHandle awsize;
	vpiHandle awburst;
	vpiHandle awid;

	// W Channel
	vpiHandle wvalid;
	vpiHandle wready;

	vpiHandle wdata;
	vpiHandle wlast;

	// B Channel
	vpiHandle bvalid;
	vpiHandle bready;

	vpiHandle bresp;
	vpiHandle bid;
};

struct address_transaction {
	std::string addr;
	int len;
	int size;
	int id;
};

class axi_interface
{
public:
	std::string interface_name;
	int interface_width = 64;

	axi_interface_ports ports = {0,0,0,0,0,0,0, 0,0,0,0,0,0, 0,0,0,0,0,0,0, 0,0,0,0, 0,0,0,0};

	std::queue<address_transaction> address_write_transactions;
	std::queue<address_transaction> address_read_transactions;
	std::queue<std::string> data_write_transactions; // wdata
	std::queue<std::string> data_read_transactions; // rdata_packet
	std::queue<int> response_write_transactions;

	std::queue<int> data_read_timestamps;
	std::queue<int> response_write_timestamps;

	int data_read_latency = -1;
	int response_write_latency = -1;

	int sim_to_hw_pipe = -1;
	int hw_to_sim_pipe = -1;

	int data_read_counter = 0;
	std::string data_read_packet;

	std::mutex mtx;

	void response_write_transaction();
	void data_read_transaction();
	void address_read_transaction();
	void data_write_transaction();
	void address_write_transaction();

	axi_interface() = default;
	axi_interface(const axi_interface&) = delete;

	axi_interface(std::string axi_interface_name) {
		interface_name = axi_interface_name;
	}
};

#endif