#include <stdio.h>
#include <iostream>
#include <fstream>
#include <string.h>
#include <math.h>
#include <hls_stream.h>
#include "ap_int.h"
#include <stdint.h>

#define AXIS_DATA_WIDTH 64
#define TIMESTAMP_WIDTH 64 // Currently, should be less than or equal AXIS_DATA_WIDTH

struct axis_word
{
	ap_uint<AXIS_DATA_WIDTH> data;
	ap_uint<AXIS_DATA_WIDTH/8> keep;
	ap_uint<1> last;
};

void axis_timestamper(hls::stream<axis_word>& data_in, hls::stream<axis_word>& data_out, ap_uint<1> start) {

	#pragma HLS PIPELINE
	#pragma HLS INTERFACE ap_ctrl_none port=return
	#pragma HLS INTERFACE axis port=data_in
	#pragma HLS INTERFACE axis port=data_out
	#pragma HLS INTERFACE ap_none port=start

	static ap_uint<TIMESTAMP_WIDTH> timestamp = 0;
	static ap_uint<1> timestamp_flag = 1;

	// The timestamp is implemented as a cycle counter that starts counting when the design is stopped
	// (start is asserted), and resets when the design is resumed (start is deasserted)
	if (~start)
		timestamp = 0;
	else
		timestamp++;

	// A timestamp is added at the front of each packet
	if (!data_in.empty() && !data_out.full()) {

		// the out word is a timestamp
		if (timestamp_flag) {
			ap_uint<AXIS_DATA_WIDTH/8> keep = 0;
			axis_word out_word = {timestamp, ~keep, 0};
			data_out.write(out_word);

			timestamp_flag = 0;
		}
		// pass the input word to the output word
		else {
			axis_word out_word = data_in.read();
			data_out.write(out_word);

			if (out_word.last)
				timestamp_flag = 1;
		}
		
	}
}