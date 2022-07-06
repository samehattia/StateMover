#include <stdio.h>
#include <iostream>
#include <fstream>
#include <string.h>
#include <math.h>
#include <hls_stream.h>
#include "ap_int.h"
#include <stdint.h>

// AXI interface data width
#define axis_data_width 64

struct axis_word
{
	ap_uint<64>		data;
	ap_uint<8>	keep;
	ap_uint<1>		last;
};

struct fifo_word
{
	ap_uint<64>		data;
	ap_uint<8>	keep;
	ap_uint<1>		last;
};

void rx_fifo_ip (hls::stream<fifo_word>& fifo_in, hls::stream<fifo_word>& rx_fifo) {
	#pragma HLS pipeline II=1

	fifo_word tmp_word;

	if (!fifo_in.empty()) {
		fifo_in.read(tmp_word);
		rx_fifo.write(tmp_word);
	}
}

void ethernet_axis_ip (hls::stream<axis_word>& data_in, hls::stream<axis_word>& data_out, hls::stream<fifo_word>& rx_fifo, hls::stream<fifo_word>& tx_fifo) {

	#pragma HLS pipeline II=1

	static ap_uint<2> fsm_state = 0; // 0: IDLE - 1: Receive a request - 2: Send a TX response - 3: Send a RX response 

	static ap_uint<2> word_count = 0;
	static ap_uint<2> send_tx_word_count = 0;
	static ap_uint<2> send_rx_word_count = 0;

	static ap_uint<48> dest_address = 0;
	static ap_uint<48> src_address = 0;
	static ap_uint<16> mac_type = 0;
	static ap_uint<8> ethernet_axi_id = 0;
	static ap_uint<8> axi_command = 0;

	static ap_uint<16> axis_len = 0; //[1-256]

	static ap_uint<16> tx_len = 0;
	static ap_uint<16> rx_len = 0;

	static ap_uint<1> rx_ready = 0;


	axis_word curr_word;
	fifo_word tx_word;
	fifo_word rx_word;

	switch (fsm_state) {
		// Idle
		case 0:
			rx_len = 0;

			if (!data_in.empty()) {
				fsm_state = 1;
			}
			else if (!rx_fifo.empty() && rx_ready) {
				fsm_state = 3;
			}
			else {
				fsm_state = 0;
			}

			break;

		// Receive a request
		case 1:

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

				// Get the axi command len arguments
				case 2:
					axis_len = curr_word.data.range(15, 0);

					tx_len = curr_word.data.range(15, 0);

					if (axi_command == 'R')
						rx_ready = 1;

					word_count++;
					break;

				// Get the axis tx command data arguments and write it into the buffer
				default:
					if (axi_command == 'W' && tx_len > 0) {
						if (tx_len > 8) {
							tx_word.data = curr_word.data;
							tx_word.keep = curr_word.keep;
							tx_word.last = curr_word.last;

							tx_fifo.write(tx_word);
							tx_len -= 8;
						}
						else {
							tx_word.data = curr_word.data;
							tx_word.last = 1;

							if (tx_len == 8)
								tx_word.keep = 0xFF;
							else if (tx_len == 7)
								tx_word.keep = 0x7F;
							else if (tx_len == 6)
								tx_word.keep = 0x3F;
							else if (tx_len == 5)
								tx_word.keep = 0x1F;
							else if (tx_len == 4)
								tx_word.keep = 0x0F;
							else if (tx_len == 3)
								tx_word.keep = 0x07;
							else if (tx_len == 2)
								tx_word.keep = 0x03;
							else if (tx_len == 1)
								tx_word.keep = 0x01;

							tx_fifo.write(tx_word);
							tx_len = 0;
						}
					}
					break;
			}

			if (curr_word.last) {
				word_count = 0;
				
			}

			if (!curr_word.last)
				fsm_state = 1;
			else if (axi_command == 'W')
				fsm_state = 2;
			else
				fsm_state = 0;

			break;

		// Send a TX response
		case 2:
			switch (send_tx_word_count) {
				// Send the destination and partial source mac address
				case 0:
					curr_word.data.range(47, 0) = src_address;
					curr_word.data.range(63, 48) = dest_address.range(15, 0);
					curr_word.last = 0;
					
					send_tx_word_count++;
					break;

				// Send the partial source mac address, mac type, ethernet_axi id, axi command
				case 1:
					curr_word.data.range(31, 0) = dest_address.range(47, 16);
					curr_word.data.range(47, 32) = mac_type;
					curr_word.data.range(55, 48) = ethernet_axi_id;
					curr_word.data.range(63, 56) = 'W';
					curr_word.last = 0;
					
					send_tx_word_count++;
					break;

				// Send the axi command len arguments // NOT NEEDED
				case 2:
					curr_word.data.range(15, 0) = axis_len;
					curr_word.data.range(31, 16) = 0;
					curr_word.data.range(63, 32) = 0xDEADBEEF;
					curr_word.keep = 0xFF;
					curr_word.last = 1;
					
					send_tx_word_count = 0;
					break;
			}

			if (!curr_word.last) {
				fsm_state = 2;
			}
			else {
				fsm_state = 0;
			}

			data_out.write(curr_word);
			
			break;

		// Send a RX response
		case 3:
			// for configurable software queue, rx_ready should go low after an RX repsonse is sent
			// Comment it out if there is no limit on software queue for a higher performance
			rx_ready = 0;

			switch (send_rx_word_count) {
				// Send the destination and partial source mac address
				case 0:
					curr_word.data.range(47, 0) = src_address;
					curr_word.data.range(63, 48) = dest_address.range(15, 0);
					curr_word.last = 0;
					
					send_rx_word_count++;
					break;

				// Send the partial source mac address, mac type, ethernet_axi id, axi command
				case 1:
					curr_word.data.range(31, 0) = dest_address.range(47, 16);
					// For RX response, the mac_type is modified to include ethernet_axi_id, so that it can be received on a different socket
					curr_word.data.range(39, 32) = mac_type.range(7, 0);
					curr_word.data.range(47, 40) = ethernet_axi_id; 
					curr_word.data.range(55, 48) = ethernet_axi_id;
					curr_word.data.range(63, 56) = 'R';
					curr_word.last = 0;

					send_rx_word_count++;
					break;

				// Send the RX packet data
				case 2:
					rx_fifo.read(rx_word);

					curr_word.data = rx_word.data;
					curr_word.last = 0;

					if (rx_word.last) {
						if (rx_word.keep == 0xFF)
							rx_len += 8;
						else if (rx_word.keep == 0x7F)
							rx_len += 7;
						else if (rx_word.keep == 0x3F)
							rx_len += 6;
						else if (rx_word.keep == 0x1F)
							rx_len += 5;
						else if (rx_word.keep == 0x0F)
							rx_len += 4;
						else if (rx_word.keep == 0x07)
							rx_len += 3;
						else if (rx_word.keep == 0x03)
							rx_len += 2;
						else if (rx_word.keep == 0x01)
							rx_len += 1;
					}
					else
						rx_len += 8;

					if (rx_word.last)
						send_rx_word_count++;
					break;

				// Send the RX packet length
				default:
					curr_word.data.range(15, 0) = rx_len;
					curr_word.data.range(31, 16) = 0;
					curr_word.data.range(63, 32) = 0xDEADBEEF;
					curr_word.keep = 0xFF;
					curr_word.last = 1;

					send_rx_word_count = 0;
					break;
			}

			if (!curr_word.last) {
				fsm_state = 3;
			}
			else {
				fsm_state = 0;
			}

			data_out.write(curr_word);
			
			break;
	}
}


void ethernet_axis (hls::stream<axis_word>& data_in, hls::stream<axis_word>& data_out, hls::stream<fifo_word>& fifo_in, hls::stream<fifo_word>& fifo_out) {

	#pragma HLS DATAFLOW
	#pragma HLS INTERFACE ap_ctrl_none port=return

	#pragma HLS INTERFACE axis port=data_in
	#pragma HLS INTERFACE port=data_out register axis

	#pragma HLS INTERFACE port=fifo_in axis
	#pragma HLS INTERFACE port=fifo_out register axis

	static hls::stream<fifo_word> rx_fifo("rx_fifo");
	#pragma HLS stream variable=rx_fifo depth=512

	rx_fifo_ip(fifo_in, rx_fifo);

	ethernet_axis_ip(data_in, data_out, rx_fifo, fifo_out);
}