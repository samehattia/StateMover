set moduleName memcachedPipeline_flashReceiveNoFilter
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function_flushable
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set pipeII 1
set pipeLatency 1
set C_modelName {memcachedPipeline_flashReceiveNoFilter}
set C_modelType { void 0 }
set C_modelArgList { 
	{ memRdData_V_V int 64 regular {axi_s 0 volatile  { memRdData_V_V data } }  }
	{ flash_Disp2rec_V_V int 16 regular {fifo 0 volatile } {global 0}  }
	{ flashGetPath2remux_V_V int 64 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "memRdData_V_V", "interface" : "axis", "bitwidth" : 64} , 
 	{ "Name" : "flash_Disp2rec_V_V", "interface" : "fifo", "bitwidth" : 16,"extern" : 0} , 
 	{ "Name" : "flashGetPath2remux_V_V", "interface" : "fifo", "bitwidth" : 64,"extern" : 0} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ flash_Disp2rec_V_V_dout sc_in sc_lv 16 signal 1 } 
	{ flash_Disp2rec_V_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ flash_Disp2rec_V_V_read sc_out sc_logic 1 signal 1 } 
	{ memRdData_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ flashGetPath2remux_V_V_din sc_out sc_lv 64 signal 2 } 
	{ flashGetPath2remux_V_V_full_n sc_in sc_logic 1 signal 2 } 
	{ flashGetPath2remux_V_V_write sc_out sc_logic 1 signal 2 } 
	{ memRdData_V_V_TDATA sc_in sc_lv 64 signal 0 } 
	{ memRdData_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "flash_Disp2rec_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "flash_Disp2rec_V_V", "role": "dout" }} , 
 	{ "name": "flash_Disp2rec_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flash_Disp2rec_V_V", "role": "empty_n" }} , 
 	{ "name": "flash_Disp2rec_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flash_Disp2rec_V_V", "role": "read" }} , 
 	{ "name": "memRdData_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "memRdData_V_V", "role": "TVALID" }} , 
 	{ "name": "flashGetPath2remux_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "flashGetPath2remux_V_V", "role": "din" }} , 
 	{ "name": "flashGetPath2remux_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashGetPath2remux_V_V", "role": "full_n" }} , 
 	{ "name": "flashGetPath2remux_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashGetPath2remux_V_V", "role": "write" }} , 
 	{ "name": "memRdData_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "memRdData_V_V", "role": "TDATA" }} , 
 	{ "name": "memRdData_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "memRdData_V_V", "role": "TREADY" }}  ]}
set Spec2ImplPortList { 
	memRdData_V_V { axis {  { memRdData_V_V_TVALID in_vld 0 1 }  { memRdData_V_V_TDATA in_data 0 64 }  { memRdData_V_V_TREADY in_acc 1 1 } } }
	flash_Disp2rec_V_V { ap_fifo {  { flash_Disp2rec_V_V_dout fifo_data 0 16 }  { flash_Disp2rec_V_V_empty_n fifo_status 0 1 }  { flash_Disp2rec_V_V_read fifo_update 1 1 } } }
	flashGetPath2remux_V_V { ap_fifo {  { flashGetPath2remux_V_V_din fifo_data 1 64 }  { flashGetPath2remux_V_V_full_n fifo_status 0 1 }  { flashGetPath2remux_V_V_write fifo_update 1 1 } } }
}
