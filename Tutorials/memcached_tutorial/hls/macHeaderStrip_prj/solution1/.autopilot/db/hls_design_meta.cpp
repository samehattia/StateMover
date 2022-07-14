#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("dataIn_TDATA", 64, hls_in, 0, "axis", "in_data", 1),
	Port_Property("dataIn_TKEEP", 8, hls_in, 1, "axis", "in_data", 1),
	Port_Property("dataIn_TLAST", 1, hls_in, 2, "axis", "in_data", 1),
	Port_Property("dataIn_TUSER", 112, hls_in, 3, "axis", "in_data", 1),
	Port_Property("IPdataOut_TDATA", 64, hls_out, 4, "axis", "out_data", 1),
	Port_Property("IPdataOut_TKEEP", 8, hls_out, 5, "axis", "out_data", 1),
	Port_Property("IPdataOut_TLAST", 1, hls_out, 6, "axis", "out_data", 1),
	Port_Property("IPdataOut_TUSER", 112, hls_out, 7, "axis", "out_data", 1),
	Port_Property("myMacAddress_V", 48, hls_in, 8, "ap_stable", "in_data", 1),
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("dataIn_TVALID", 1, hls_in, 3, "axis", "in_vld", 1),
	Port_Property("dataIn_TREADY", 1, hls_out, 3, "axis", "in_acc", 1),
	Port_Property("IPdataOut_TVALID", 1, hls_out, 7, "axis", "out_vld", 1),
	Port_Property("IPdataOut_TREADY", 1, hls_in, 7, "axis", "out_acc", 1),
};
const char* HLS_Design_Meta::dut_name = "mac_header_strip";
