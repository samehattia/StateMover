set moduleName memcachedPipeline_flashDispatch
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function_flushable
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set pipeII 1
set pipeLatency 1
set C_modelName {memcachedPipeline_flashDispatch}
set C_modelType { void 0 }
set C_modelArgList { 
	{ memRdCmd_V int 48 regular {axi_s 1 volatile  { memRdCmd_V data } }  }
	{ flashDemux2getPath_V int 48 regular {fifo 0 volatile } {global 0}  }
	{ flash_Disp2rec_V_V int 16 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "memRdCmd_V", "interface" : "axis", "bitwidth" : 48} , 
 	{ "Name" : "flashDemux2getPath_V", "interface" : "fifo", "bitwidth" : 48,"extern" : 0} , 
 	{ "Name" : "flash_Disp2rec_V_V", "interface" : "fifo", "bitwidth" : 16,"extern" : 0} ]}
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
	{ flashDemux2getPath_V_dout sc_in sc_lv 48 signal 1 } 
	{ flashDemux2getPath_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ flashDemux2getPath_V_read sc_out sc_logic 1 signal 1 } 
	{ flash_Disp2rec_V_V_din sc_out sc_lv 16 signal 2 } 
	{ flash_Disp2rec_V_V_full_n sc_in sc_logic 1 signal 2 } 
	{ flash_Disp2rec_V_V_write sc_out sc_logic 1 signal 2 } 
	{ memRdCmd_V_TREADY sc_in sc_logic 1 outacc 0 } 
	{ memRdCmd_V_TDATA sc_out sc_lv 48 signal 0 } 
	{ memRdCmd_V_TVALID sc_out sc_logic 1 outvld 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "flashDemux2getPath_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "flashDemux2getPath_V", "role": "dout" }} , 
 	{ "name": "flashDemux2getPath_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashDemux2getPath_V", "role": "empty_n" }} , 
 	{ "name": "flashDemux2getPath_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashDemux2getPath_V", "role": "read" }} , 
 	{ "name": "flash_Disp2rec_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "flash_Disp2rec_V_V", "role": "din" }} , 
 	{ "name": "flash_Disp2rec_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flash_Disp2rec_V_V", "role": "full_n" }} , 
 	{ "name": "flash_Disp2rec_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flash_Disp2rec_V_V", "role": "write" }} , 
 	{ "name": "memRdCmd_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "memRdCmd_V", "role": "TREADY" }} , 
 	{ "name": "memRdCmd_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "memRdCmd_V", "role": "TDATA" }} , 
 	{ "name": "memRdCmd_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "memRdCmd_V", "role": "TVALID" }}  ]}
set Spec2ImplPortList { 
	memRdCmd_V { axis {  { memRdCmd_V_TREADY out_acc 0 1 }  { memRdCmd_V_TDATA out_data 1 48 }  { memRdCmd_V_TVALID out_vld 1 1 } } }
	flashDemux2getPath_V { ap_fifo {  { flashDemux2getPath_V_dout fifo_data 0 48 }  { flashDemux2getPath_V_empty_n fifo_status 0 1 }  { flashDemux2getPath_V_read fifo_update 1 1 } } }
	flash_Disp2rec_V_V { ap_fifo {  { flash_Disp2rec_V_V_din fifo_data 1 16 }  { flash_Disp2rec_V_V_full_n fifo_status 0 1 }  { flash_Disp2rec_V_V_write fifo_update 1 1 } } }
}
