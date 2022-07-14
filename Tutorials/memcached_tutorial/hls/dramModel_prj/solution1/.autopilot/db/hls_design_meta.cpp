#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("rdCmdIn_V_TDATA", 40, hls_in, 0, "axis", "in_data", 1),
	Port_Property("rdDataOut_V_V_TDATA", 512, hls_out, 1, "axis", "out_data", 1),
	Port_Property("wrCmdIn_V_TDATA", 40, hls_in, 2, "axis", "in_data", 1),
	Port_Property("wrDataIn_V_V_TDATA", 512, hls_in, 3, "axis", "in_data", 1),
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("rdCmdIn_V_TVALID", 1, hls_in, 0, "axis", "in_vld", 1),
	Port_Property("rdCmdIn_V_TREADY", 1, hls_out, 0, "axis", "in_acc", 1),
	Port_Property("wrCmdIn_V_TVALID", 1, hls_in, 2, "axis", "in_vld", 1),
	Port_Property("wrCmdIn_V_TREADY", 1, hls_out, 2, "axis", "in_acc", 1),
	Port_Property("rdDataOut_V_V_TVALID", 1, hls_out, 1, "axis", "out_vld", 1),
	Port_Property("rdDataOut_V_V_TREADY", 1, hls_in, 1, "axis", "out_acc", 1),
	Port_Property("wrDataIn_V_V_TVALID", 1, hls_in, 3, "axis", "in_vld", 1),
	Port_Property("wrDataIn_V_V_TREADY", 1, hls_out, 3, "axis", "in_acc", 1),
};
const char* HLS_Design_Meta::dut_name = "dramModel";
