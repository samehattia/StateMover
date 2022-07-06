#include <stdio.h>
#include <iostream>
#include <fstream>
#include <string.h>
#include <math.h>
#include <hls_stream.h>
#include "ap_int.h"
#include <stdint.h>

#define AXI_DATA_WIDTH 32
#define TIMESTAMP_WIDTH 32 // Currently, should be less than or equal AXIS_DATA_WIDTH

void axi_timestamper(ap_uint<1> arvalid, ap_uint<1> arready, ap_uint<1> rvalid, ap_uint<1> rready, 
	ap_uint<1> wvalid, ap_uint<1> wready, ap_uint<1> wlast, ap_uint<1> bvalid, ap_uint<1> bready, 
	ap_uint<TIMESTAMP_WIDTH>* write_timestamp, ap_uint<TIMESTAMP_WIDTH>* read_timestamp) {

	#pragma HLS PIPELINE
	#pragma HLS INTERFACE ap_ctrl_none port=return

	#pragma HLS INTERFACE ap_none port=arvalid
	#pragma HLS INTERFACE ap_none port=arready
	#pragma HLS INTERFACE ap_none port=rvalid
	#pragma HLS INTERFACE ap_none port=rready

	#pragma HLS INTERFACE ap_none port=wvalid
	#pragma HLS INTERFACE ap_none port=wready
	#pragma HLS INTERFACE ap_none port=wlast
	#pragma HLS INTERFACE ap_none port=b_valid
	#pragma HLS INTERFACE ap_none port=b_ready

	#pragma HLS INTERFACE s_axilite port=write_timestamp bundle=timestamp offset=0x80000000
	#pragma HLS INTERFACE s_axilite port=read_timestamp bundle=timestamp offset=0x80000010

	static ap_uint<TIMESTAMP_WIDTH> read_latency_counter = 0;
	static ap_uint<TIMESTAMP_WIDTH> write_latency_counter = 0;
	static ap_uint<1> read_count_flag = 0;
	static ap_uint<1> write_count_flag = 0;
	static ap_uint<TIMESTAMP_WIDTH> local_write_timestamp = 0;
	static ap_uint<TIMESTAMP_WIDTH> local_read_timestamp = 0;

	*read_timestamp = local_read_timestamp;
	*write_timestamp = local_write_timestamp;

	// The timestamp is implemented as a cycle counter that starts counting when the design is stopped
	// (start is asserted), and resets when the design is resumed (start is deasserted)
	if (arvalid & arready) {
		read_latency_counter = 0;
	}
	else if (read_count_flag) {
		read_latency_counter++; 
	}

	if (arvalid & arready) {
		read_count_flag = 1;
	}
	else if (rvalid & rready) {
		read_count_flag = 0;
		local_read_timestamp = read_latency_counter;
	}

	if (wvalid & wready & wlast) {
		write_latency_counter = 0;
	}
	else if (write_count_flag) {
		write_latency_counter++; 
	}

	if (wvalid & wready & wlast) {
		write_count_flag = 1;
	}
	else if (bvalid & bready) {
		write_count_flag = 0;
		local_write_timestamp = write_latency_counter;
	}
}