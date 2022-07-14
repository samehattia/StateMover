set moduleName memcachedPipeline_memRead
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function_flushable
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set pipeII 1
set pipeLatency 1
set C_modelName {memcachedPipeline_memRead}
set C_modelType { void 0 }
set C_modelArgList { 
	{ memRdCtrl_V int 40 regular {axi_s 1 volatile  { memRdCtrl_V data } }  }
	{ cc2memReadMd_V int 64 regular {fifo 0 volatile } {global 0}  }
	{ cc2memRead_V int 130 regular {fifo 0 volatile } {global 0}  }
	{ memRd2comp_V int 130 regular {fifo 1 volatile } {global 1}  }
	{ memRd2compMd_V int 64 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "memRdCtrl_V", "interface" : "axis", "bitwidth" : 40} , 
 	{ "Name" : "cc2memReadMd_V", "interface" : "fifo", "bitwidth" : 64,"extern" : 0} , 
 	{ "Name" : "cc2memRead_V", "interface" : "fifo", "bitwidth" : 130,"extern" : 0} , 
 	{ "Name" : "memRd2comp_V", "interface" : "fifo", "bitwidth" : 130,"extern" : 0} , 
 	{ "Name" : "memRd2compMd_V", "interface" : "fifo", "bitwidth" : 64,"extern" : 0} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ cc2memReadMd_V_dout sc_in sc_lv 64 signal 1 } 
	{ cc2memReadMd_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ cc2memReadMd_V_read sc_out sc_logic 1 signal 1 } 
	{ cc2memRead_V_dout sc_in sc_lv 130 signal 2 } 
	{ cc2memRead_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ cc2memRead_V_read sc_out sc_logic 1 signal 2 } 
	{ memRd2comp_V_din sc_out sc_lv 130 signal 3 } 
	{ memRd2comp_V_full_n sc_in sc_logic 1 signal 3 } 
	{ memRd2comp_V_write sc_out sc_logic 1 signal 3 } 
	{ memRd2compMd_V_din sc_out sc_lv 64 signal 4 } 
	{ memRd2compMd_V_full_n sc_in sc_logic 1 signal 4 } 
	{ memRd2compMd_V_write sc_out sc_logic 1 signal 4 } 
	{ memRdCtrl_V_TREADY sc_in sc_logic 1 outacc 0 } 
	{ memRdCtrl_V_TDATA sc_out sc_lv 40 signal 0 } 
	{ memRdCtrl_V_TVALID sc_out sc_logic 1 outvld 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "cc2memReadMd_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "cc2memReadMd_V", "role": "dout" }} , 
 	{ "name": "cc2memReadMd_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cc2memReadMd_V", "role": "empty_n" }} , 
 	{ "name": "cc2memReadMd_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cc2memReadMd_V", "role": "read" }} , 
 	{ "name": "cc2memRead_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":130, "type": "signal", "bundle":{"name": "cc2memRead_V", "role": "dout" }} , 
 	{ "name": "cc2memRead_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cc2memRead_V", "role": "empty_n" }} , 
 	{ "name": "cc2memRead_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cc2memRead_V", "role": "read" }} , 
 	{ "name": "memRd2comp_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":130, "type": "signal", "bundle":{"name": "memRd2comp_V", "role": "din" }} , 
 	{ "name": "memRd2comp_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memRd2comp_V", "role": "full_n" }} , 
 	{ "name": "memRd2comp_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memRd2comp_V", "role": "write" }} , 
 	{ "name": "memRd2compMd_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "memRd2compMd_V", "role": "din" }} , 
 	{ "name": "memRd2compMd_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memRd2compMd_V", "role": "full_n" }} , 
 	{ "name": "memRd2compMd_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memRd2compMd_V", "role": "write" }} , 
 	{ "name": "memRdCtrl_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "memRdCtrl_V", "role": "TREADY" }} , 
 	{ "name": "memRdCtrl_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "memRdCtrl_V", "role": "TDATA" }} , 
 	{ "name": "memRdCtrl_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "memRdCtrl_V", "role": "TVALID" }}  ]}
set Spec2ImplPortList { 
	memRdCtrl_V { axis {  { memRdCtrl_V_TREADY out_acc 0 1 }  { memRdCtrl_V_TDATA out_data 1 40 }  { memRdCtrl_V_TVALID out_vld 1 1 } } }
	cc2memReadMd_V { ap_fifo {  { cc2memReadMd_V_dout fifo_data 0 64 }  { cc2memReadMd_V_empty_n fifo_status 0 1 }  { cc2memReadMd_V_read fifo_update 1 1 } } }
	cc2memRead_V { ap_fifo {  { cc2memRead_V_dout fifo_data 0 130 }  { cc2memRead_V_empty_n fifo_status 0 1 }  { cc2memRead_V_read fifo_update 1 1 } } }
	memRd2comp_V { ap_fifo {  { memRd2comp_V_din fifo_data 1 130 }  { memRd2comp_V_full_n fifo_status 0 1 }  { memRd2comp_V_write fifo_update 1 1 } } }
	memRd2compMd_V { ap_fifo {  { memRd2compMd_V_din fifo_data 1 64 }  { memRd2compMd_V_full_n fifo_status 0 1 }  { memRd2compMd_V_write fifo_update 1 1 } } }
}
