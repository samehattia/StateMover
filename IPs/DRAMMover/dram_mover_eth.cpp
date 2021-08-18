#include <stdio.h>
#include <iostream>
#include <fstream>
#include <string.h>
#include <math.h>
#include <hls_stream.h>
#include "ap_int.h"
#include <stdint.h>

struct axis_word
{
	ap_uint<8>		data;
	ap_uint<1>		last;
};

void dram_mover_eth (hls::stream<axis_word>& rx_axis, hls::stream<axis_word>&tx_axis, ap_uint<32>* mem) {

#pragma HLS PIPELINE
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE axis port=rx_axis
#pragma HLS INTERFACE axis port=tx_axis
#pragma HLS INTERFACE m_axi port=mem depth=65536 //64KB a page

	static ap_uint<5> rx_counter = 0;
	static ap_uint<11> tx_counter = 0;

	static ap_uint<32> mem_address = 0;
	static ap_uint<22> page_count = 0;

	static ap_uint<8> type_byte = 0;
	static ap_uint<1> read_command = 0;
	static ap_uint<1> page_count_done = 0;

	static ap_uint<2> wdata_byte_counter = 0;
	static ap_uint<2> rdata_byte_counter = 0;

	static ap_uint<2> addr_byte_counter = 0;
	static ap_uint<2> page_byte_counter = 0;

	static ap_uint<32> write_data;
	static ap_uint<32> read_data;

	axis_word send_word;
	axis_word received_word;

	ap_uint<8> header[12] = {0xD0, 0x37, 0x45, 0x92, 0xDA, 0x25, // Destination MAC Address
		0x00, 0x0A, 0x35, 0x00, 0x01, 0x02}; // Source MAC Address

	if (!read_command && !rx_axis.empty()) {

		rx_axis.read(received_word);
		
		// Destination and Source addresses
		if (rx_counter < 12) {
			// Increment the counter
			rx_counter++;
		}

		// Length/Type
		else if (rx_counter < 14) {
			type_byte = received_word.data;

			// Increment the counter
			rx_counter++;
		}

		// Data
		else if (rx_counter < 18) {

			// Memory Address
			if (type_byte == 5 || type_byte == 7) {

				if (addr_byte_counter == 0) {
					mem_address(7, 0) = received_word.data;
					addr_byte_counter++;
				}
				else if (addr_byte_counter == 1) {
					mem_address(15, 8) = received_word.data;
					addr_byte_counter++;
				}
				else if (addr_byte_counter == 2) {
					mem_address(23, 16) = received_word.data;
					addr_byte_counter++;
				}
				else if (addr_byte_counter == 3) {
					mem_address(31, 24) = received_word.data;
					addr_byte_counter++;
				}
			}

			// Increment the counter
			rx_counter++;
		}

		// Data
		else {

			// Write Command - DRAM data
			if (type_byte == 5) {

				if (wdata_byte_counter == 0) {
					write_data(7, 0) = received_word.data;
					wdata_byte_counter++;
				}
				else if (wdata_byte_counter == 1) {
					write_data(15, 8) = received_word.data;
					wdata_byte_counter++;
				}
				else if (wdata_byte_counter == 2) {
					write_data(23, 16) = received_word.data;
					wdata_byte_counter++;
				}
				else if (wdata_byte_counter == 3) {
					write_data(31, 24) = received_word.data;
					wdata_byte_counter++;

					// Write received data to memory
					mem[mem_address] = write_data;
					mem_address++;
				}
			}

			// Read Command - Page Count
			else if (type_byte == 7 && !page_count_done) {

				if (page_byte_counter == 0) {
					page_count(8, 1) = received_word.data;
					page_byte_counter++;
				}
				else if (page_byte_counter == 1) {
					page_count(16, 9) = received_word.data;
					page_byte_counter++;
				}
				else if (page_byte_counter == 2) {
					page_count(21, 17) = received_word.data(5, 0);
					page_byte_counter++;
				}
				else if (page_byte_counter == 3) {
					page_byte_counter++;

					page_count_done = 1;
				}
			}

		}

		if (received_word.last)
			rx_counter = 0;

		if (received_word.last && page_count_done) {
			read_command = 1;
			page_count_done = 0;
		}
	}

	else if (read_command) {
		
		// Destination and Source addresses
		if (tx_counter < 12) {
			// Send the correct addresses
			send_word.data = header[tx_counter];
		}

		// Length/Type
		else if (tx_counter < 13) {
			send_word.data = 0x7A;
		}
		// Length/Type
		else if (tx_counter < 14) {
			send_word.data = 0x05;
		}

		// Data
		else {

			if (rdata_byte_counter == 0) {
				// Read data from memory
				read_data = mem[mem_address];
				mem_address++;

				send_word.data = read_data(7, 0);
				rdata_byte_counter++;
			}
			else if (rdata_byte_counter == 1) {
				send_word.data = read_data(15, 8);
				rdata_byte_counter++;
			}
			else if (rdata_byte_counter == 2) {
				send_word.data = read_data(23, 16);
				rdata_byte_counter++;
			}
			else if (rdata_byte_counter == 3) {
				send_word.data = read_data(31, 24);
				rdata_byte_counter++;
			}

		}

		if (tx_counter < 1037) {
			send_word.last = 0;

			// Increment the counter
			tx_counter++;
		}
		else {
			send_word.last = 1;

			// Reset the counter
			tx_counter = 0;

			// Decrement page counter
			page_count--;

			// Check page count
			if (page_count == 0)
				read_command = 0;
		}

		tx_axis.write(send_word);

	}

}


// Repeater
/*
void dram_mover_eth( hls::stream<axis_word>& rx_axis,
					hls::stream<axis_word>&	tx_axis) {

#pragma HLS DATAFLOW
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE axis port=rx_axis
#pragma HLS INTERFACE axis port=tx_axis

	static ap_uint<4> rx_counter = 0;
	
	axis_word send_word;
	axis_word head_word;
	ap_uint<8> header[12] = {0xD0, 0x37, 0x45, 0x92, 0xDA, 0x25, // Destination MAC Address
		0x00, 0x0A, 0x35, 0x00, 0x01, 0x02}; // Source MAC Address

	if (!rx_axis.empty()) {
		
		// Receive dst and src addresses in the header
		if (rx_counter < 12) {
			// Read the recieved dst and src addresses
			rx_axis.read(head_word);

			// Send the correct addresses
			send_word.data = header[rx_counter];
			send_word.last = 0;
			tx_axis.write(send_word);

			// Increment the counter
			rx_counter++;
		}
		else {
			rx_axis.read(send_word);

			tx_axis.write(send_word);

			if (send_word.last)
				rx_counter = 0;
		}
	}
}
*/