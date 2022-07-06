#include <stdio.h>
#include <iostream>
#include <fstream>
#include <string.h>
#include <math.h>
#include <hls_stream.h>
#include "ap_int.h"
#include <stdint.h>

// AXI interface address width
// Valid values 32 / 64 (not supported)
#define axi_address_width 32

// AXI interface address width
// Valid values 32 / 64
#define axi_data_width 64

// Timestamp parameters
#define TIMESTAMP_MODE 1

struct axis_word
{
	ap_uint<64>		data;
	ap_uint<8>	keep;
	ap_uint<1>		last;
};

void ethernet_axi (hls::stream<axis_word>& data_in, hls::stream<axis_word>& data_out, ap_uint<axi_data_width>* mem) {

#pragma HLS pipeline II=1 enable_flush
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE axis port=data_in
#pragma HLS INTERFACE port=data_out axis
#pragma HLS INTERFACE m_axi port=mem depth=65536 //max_read_burst_length=2 max_write_burst_length=2 num_read_outstanding=1 num_write_outstanding=1//64KB a page

	static ap_uint<1> fsm_state = 0;

	static ap_uint<2> word_count = 0;
	static ap_uint<2> send_word_count = 0;

	static ap_uint<48> dest_address = 0;
	static ap_uint<48> src_address = 0;
	static ap_uint<16> mac_type;
	static ap_uint<8> ethernet_axi_id;
	static ap_uint<8> axi_command;

	static ap_uint<axi_address_width> axi_address;
	static ap_uint<9> axi_len; //[1-256]

	static ap_uint<axi_address_width> read_address;
	static ap_uint<9> read_len;

	static ap_uint<axi_address_width> write_address;
	static ap_uint<9> write_len;

	axis_word curr_word;

	switch (fsm_state) {
		// Receive a request
		case 0:
			if (!data_in.empty()) {
				data_in.read(curr_word);

				switch (word_count) {
					// Get the destination and partial source mac address
					case 0:
						dest_address = curr_word.data.range(47, 0);
						src_address.range(15, 0) = curr_word.data.range(63, 48);

						word_count++;
						break;

					// Get the partial source mac address, mac type, ethernet_axi id, axi command
					case 1:
						src_address.range(47, 16) = curr_word.data.range(31, 0);
						mac_type = curr_word.data.range(47, 32);
						ethernet_axi_id = curr_word.data.range(55, 48);
						axi_command = curr_word.data.range(63, 56);

						word_count++;
						break;

					// Get the axi command addr and len arguments
					case 2:
						axi_address = curr_word.data.range(31, 0);
						axi_len = curr_word.data.range(40, 32);

						// write_address is an array index
						// divide by number of bytes (8 for an axi_data_width of 64)
						write_address = curr_word.data.range(31, 3); 
						write_len = curr_word.data.range(40, 32);

						// read_address is an array index
						// divide by number of bytes (8 for an axi_data_width of 64)
						read_address = curr_word.data.range(31, 3);
						read_len = curr_word.data.range(40, 32);

						word_count++;
						break;

					// Get the axi write command data arguments and write it in the memory
					// FIXME make it burst
					default:
						if (axi_command == 'W' && write_len > 0) {
							mem[write_address] = curr_word.data;

							write_address++;
							write_len--;
						}
						break;
				}

				if (curr_word.last) {
					word_count = 0;
					fsm_state = 1;
				}
			}
			break;

		// Send a response
		case 1:
			switch (send_word_count) {
				// Send the destination and partial source mac address
				case 0:
					curr_word.data.range(47, 0) = src_address;
					curr_word.data.range(63, 48) = dest_address.range(15, 0);
					curr_word.last = 0;

					send_word_count++;
					break;

				// Send the partial source mac address, mac type, ethernet_axi id, axi command
				case 1:
					curr_word.data.range(31, 0) = dest_address.range(47, 16);
					curr_word.data.range(47, 32) = mac_type;
					curr_word.data.range(55, 48) = ethernet_axi_id;
					curr_word.data.range(63, 56) = axi_command;
					curr_word.last = 0;

					send_word_count++;
					break;

				// Send the axi command addr and len arguments // NOT NEEDED
				case 2:
					curr_word.data.range(31, 0) = axi_address;
					curr_word.data.range(40, 32) = axi_len;
					curr_word.data.range(63, 41) = 0;
					curr_word.last = 0;

					send_word_count++;
					break;

				// Send the axi read data
				// FIXME make it burst
				default:
					if (axi_command == 'R' && read_len > 0) {
						curr_word.data = mem[read_address];
						curr_word.last = 0;

						read_address++;
						read_len--;
					}
					else {
						#if TIMESTAMP_MODE
						if (axi_command == 'R')
							curr_word.data.range(31, 0) = mem[0x10000002];
						else
							curr_word.data.range(31, 0) = mem[0x10000000];
						#else
						curr_word.data.range(31, 0) = 0xDEADBEEF;
						#endif

						curr_word.data.range(63, 32) = 0xDEADBEEF;
						curr_word.last = 1;
						curr_word.keep = 0xFF;

						send_word_count = 0;
						fsm_state = 0;
					}
					break;
			}

			data_out.write(curr_word);
			break;
	}
}