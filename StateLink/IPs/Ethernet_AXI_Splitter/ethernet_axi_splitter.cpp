#include <stdio.h>
#include <iostream>
#include <fstream>
#include <string.h>
#include <math.h>
#include <hls_stream.h>
#include "ap_int.h"
#include <stdint.h>

// Number of StateLink IPs (including both StateLink_AXI and StateLink_AXIS). 
// Valid range 1-8
#define NUM_STATELINK_IPs 8

// Flag to turn on MAC protocol detector
// 0 means data_in packets are just Ethernet_AXI packets, no need to check them and no data_out port
// 1 means data_in packets are of any type, pass on non-Ethernet_AXI packets to data_out port
#define MAC_PROTOCOL_DETECTOR 1

const uint16_t DROP 	= 0x0000;
const uint16_t FORWARD 	= 0x0001;
const uint16_t Ethernet_AXI = 0x7A00;

struct axis_word
{
	ap_uint<64>		data;
	ap_uint<8>	keep;
	ap_uint<1>		last;
};

ap_uint<16> byteSwap16(ap_uint<16> inputVector) {
	return (inputVector.range(7,0), inputVector(15, 8));
}

void ethernet_axi_splitter (hls::stream<axis_word>& data_in,

	hls::stream<axis_word>& ethernet_axi_0

#if NUM_STATELINK_IPs > 1
	, hls::stream<axis_word>& ethernet_axi_1
#endif

#if NUM_STATELINK_IPs > 2
	, hls::stream<axis_word>& ethernet_axi_2
#endif

#if NUM_STATELINK_IPs > 3
	, hls::stream<axis_word>& ethernet_axi_3
#endif

#if NUM_STATELINK_IPs > 4
	, hls::stream<axis_word>& ethernet_axi_4
#endif

#if NUM_STATELINK_IPs > 5
	, hls::stream<axis_word>& ethernet_axi_5
#endif

#if NUM_STATELINK_IPs > 6
	, hls::stream<axis_word>& ethernet_axi_6
#endif

#if NUM_STATELINK_IPs > 7
	, hls::stream<axis_word>& ethernet_axi_7
#endif

#if MAC_PROTOCOL_DETECTOR
	, hls::stream<axis_word>& data_out
#endif

	, ap_uint<48> my_mac_address
) {

	#pragma HLS pipeline II=1 enable_flush
	#pragma HLS INTERFACE ap_ctrl_none port=return
	#pragma HLS INTERFACE axis port=data_in
	#pragma HLS INTERFACE axis port=ethernet_axi_0

#if NUM_STATELINK_IPs > 1
	#pragma HLS INTERFACE axis port=ethernet_axi_1
#endif

#if NUM_STATELINK_IPs > 2
	#pragma HLS INTERFACE axis port=ethernet_axi_2
#endif

#if NUM_STATELINK_IPs > 3
	#pragma HLS INTERFACE axis port=ethernet_axi_3
#endif

#if NUM_STATELINK_IPs > 4
	#pragma HLS INTERFACE axis port=ethernet_axi_4
#endif

#if NUM_STATELINK_IPs > 5
	#pragma HLS INTERFACE axis port=ethernet_axi_5
#endif

#if NUM_STATELINK_IPs > 6
	#pragma HLS INTERFACE axis port=ethernet_axi_6
#endif

#if NUM_STATELINK_IPs > 7
	#pragma HLS INTERFACE axis port=ethernet_axi_7
#endif

#if MAC_PROTOCOL_DETECTOR
	#pragma HLS INTERFACE axis port=data_out
#endif

	#pragma HLS INTERFACE ap_stable port=my_mac_address

	static ap_uint<1> fsm_state = 0;
	static ap_uint<2> word_count = 0;
	static ap_uint<16> mac_type;
	static ap_uint<8> ethernet_axi_id;
	static axis_word prev_word;
	axis_word curr_word;

	switch (fsm_state) {
		case 0:
			if (!data_in.empty()) {
				data_in.read(curr_word);

				switch (word_count) {
					case 0:
						if (curr_word.data.range(47, 0) != my_mac_address && curr_word.data.range(47, 0) != 0xFFFFFFFFFFFF)
							mac_type = DROP;
						else 
							mac_type = FORWARD;
						word_count++;
						break;

					default:
						if (word_count == 1) {
							if (mac_type != DROP) {
								mac_type = byteSwap16(curr_word.data(47, 32));
								ethernet_axi_id = curr_word.data(55, 48);
							}
							word_count++;
						}

						if (mac_type == Ethernet_AXI && ethernet_axi_id == 0)
							ethernet_axi_0.write(prev_word);

						#if NUM_STATELINK_IPs > 1
						else if (mac_type == Ethernet_AXI && ethernet_axi_id == 1)
							ethernet_axi_1.write(prev_word);
						#endif

						#if NUM_STATELINK_IPs > 2
						else if (mac_type == Ethernet_AXI && ethernet_axi_id == 2)
							ethernet_axi_2.write(prev_word);
						#endif

						#if NUM_STATELINK_IPs > 3
						else if (mac_type == Ethernet_AXI && ethernet_axi_id == 3)
							ethernet_axi_3.write(prev_word);
						#endif

						#if NUM_STATELINK_IPs > 4
						else if (mac_type == Ethernet_AXI && ethernet_axi_id == 4)
							ethernet_axi_4.write(prev_word);
						#endif

						#if NUM_STATELINK_IPs > 5
						else if (mac_type == Ethernet_AXI && ethernet_axi_id == 5)
							ethernet_axi_5.write(prev_word);
						#endif

						#if NUM_STATELINK_IPs > 6
						else if (mac_type == Ethernet_AXI && ethernet_axi_id == 6)
							ethernet_axi_6.write(prev_word);
						#endif

						#if NUM_STATELINK_IPs > 7
						else if (mac_type == Ethernet_AXI && ethernet_axi_id == 7)
							ethernet_axi_7.write(prev_word);
						#endif

						#if MAC_PROTOCOL_DETECTOR
						else if (mac_type != DROP)
							data_out.write(prev_word);
						#endif

						break;
				}

				prev_word = curr_word;

				if (curr_word.last) {
					word_count = 0;
					fsm_state = 1;
				}
			}
			break;

		case 1:
			if (mac_type == Ethernet_AXI && ethernet_axi_id == 0)
				ethernet_axi_0.write(prev_word);

			#if NUM_STATELINK_IPs > 1
			else if (mac_type == Ethernet_AXI && ethernet_axi_id == 1)
				ethernet_axi_1.write(prev_word);
			#endif

			#if NUM_STATELINK_IPs > 2
			else if (mac_type == Ethernet_AXI && ethernet_axi_id == 2)
				ethernet_axi_2.write(prev_word);
			#endif

			#if NUM_STATELINK_IPs > 3
			else if (mac_type == Ethernet_AXI && ethernet_axi_id == 3)
				ethernet_axi_3.write(prev_word);
			#endif

			#if NUM_STATELINK_IPs > 4
			else if (mac_type == Ethernet_AXI && ethernet_axi_id == 4)
				ethernet_axi_4.write(prev_word);
			#endif

			#if NUM_STATELINK_IPs > 5
			else if (mac_type == Ethernet_AXI && ethernet_axi_id == 5)
				ethernet_axi_5.write(prev_word);
			#endif

			#if NUM_STATELINK_IPs > 6
			else if (mac_type == Ethernet_AXI && ethernet_axi_id == 6)
				ethernet_axi_6.write(prev_word);
			#endif

			#if NUM_STATELINK_IPs > 7
			else if (mac_type == Ethernet_AXI && ethernet_axi_id == 7)
				ethernet_axi_7.write(prev_word);
			#endif

			#if MAC_PROTOCOL_DETECTOR
			else if (mac_type != DROP)
				data_out.write(prev_word);
			#endif

			fsm_state = 0;
			break;
	}

}