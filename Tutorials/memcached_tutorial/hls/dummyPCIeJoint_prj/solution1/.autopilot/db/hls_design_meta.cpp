#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("inData_V_V_dout", 32, hls_in, 0, "ap_fifo", "fifo_data", 2),
	Port_Property("inData_V_V_empty_n", 1, hls_in, 0, "ap_fifo", "fifo_status", 2),
	Port_Property("inData_V_V_read", 1, hls_out, 0, "ap_fifo", "fifo_update", 2),
	Port_Property("outDataFlash_V_V_din", 32, hls_out, 1, "ap_fifo", "fifo_data", 2),
	Port_Property("outDataFlash_V_V_full_n", 1, hls_in, 1, "ap_fifo", "fifo_status", 2),
	Port_Property("outDataFlash_V_V_write", 1, hls_out, 1, "ap_fifo", "fifo_update", 2),
	Port_Property("outDataDram_V_V_din", 32, hls_out, 2, "ap_fifo", "fifo_data", 2),
	Port_Property("outDataDram_V_V_full_n", 1, hls_in, 2, "ap_fifo", "fifo_status", 2),
	Port_Property("outDataDram_V_V_write", 1, hls_out, 2, "ap_fifo", "fifo_update", 2),
	Port_Property("flushReq_V", 1, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("flushAck_V", 1, hls_out, 4, "ap_none", "out_data", 1),
	Port_Property("flushDone_V", 1, hls_in, 5, "ap_none", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "dummyPCIeJoint";
