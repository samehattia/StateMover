set moduleName memcachedPipeline_flashSetPathNoFilter
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function_flushable
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set pipeII 1
set pipeLatency 1
set C_modelName {memcachedPipeline_flashSetPathNoFilter}
set C_modelType { void 0 }
set C_modelArgList { 
	{ memWrCmd_V int 48 regular {axi_s 1 volatile  { memWrCmd_V data } }  }
	{ memWrData_V_V int 64 regular {axi_s 1 volatile  { memWrData_V_V data } }  }
	{ flashDemux2setPathMetadata_V int 48 regular {fifo 0 volatile } {global 0}  }
	{ flashDemux2setPathValue_V int 66 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "memWrCmd_V", "interface" : "axis", "bitwidth" : 48} , 
 	{ "Name" : "memWrData_V_V", "interface" : "axis", "bitwidth" : 64} , 
 	{ "Name" : "flashDemux2setPathMetadata_V", "interface" : "fifo", "bitwidth" : 48,"extern" : 0} , 
 	{ "Name" : "flashDemux2setPathValue_V", "interface" : "fifo", "bitwidth" : 66,"extern" : 0} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ flashDemux2setPathMetadata_V_dout sc_in sc_lv 48 signal 2 } 
	{ flashDemux2setPathMetadata_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ flashDemux2setPathMetadata_V_read sc_out sc_logic 1 signal 2 } 
	{ flashDemux2setPathValue_V_dout sc_in sc_lv 66 signal 3 } 
	{ flashDemux2setPathValue_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ flashDemux2setPathValue_V_read sc_out sc_logic 1 signal 3 } 
	{ memWrCmd_V_TREADY sc_in sc_logic 1 outacc 0 } 
	{ memWrData_V_V_TREADY sc_in sc_logic 1 outacc 1 } 
	{ memWrCmd_V_TDATA sc_out sc_lv 48 signal 0 } 
	{ memWrCmd_V_TVALID sc_out sc_logic 1 outvld 0 } 
	{ memWrData_V_V_TDATA sc_out sc_lv 64 signal 1 } 
	{ memWrData_V_V_TVALID sc_out sc_logic 1 outvld 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "flashDemux2setPathMetadata_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "flashDemux2setPathMetadata_V", "role": "dout" }} , 
 	{ "name": "flashDemux2setPathMetadata_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashDemux2setPathMetadata_V", "role": "empty_n" }} , 
 	{ "name": "flashDemux2setPathMetadata_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashDemux2setPathMetadata_V", "role": "read" }} , 
 	{ "name": "flashDemux2setPathValue_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "flashDemux2setPathValue_V", "role": "dout" }} , 
 	{ "name": "flashDemux2setPathValue_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashDemux2setPathValue_V", "role": "empty_n" }} , 
 	{ "name": "flashDemux2setPathValue_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashDemux2setPathValue_V", "role": "read" }} , 
 	{ "name": "memWrCmd_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "memWrCmd_V", "role": "TREADY" }} , 
 	{ "name": "memWrData_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "memWrData_V_V", "role": "TREADY" }} , 
 	{ "name": "memWrCmd_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "memWrCmd_V", "role": "TDATA" }} , 
 	{ "name": "memWrCmd_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "memWrCmd_V", "role": "TVALID" }} , 
 	{ "name": "memWrData_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "memWrData_V_V", "role": "TDATA" }} , 
 	{ "name": "memWrData_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "memWrData_V_V", "role": "TVALID" }}  ]}
set Spec2ImplPortList { 
	memWrCmd_V { axis {  { memWrCmd_V_TREADY out_acc 0 1 }  { memWrCmd_V_TDATA out_data 1 48 }  { memWrCmd_V_TVALID out_vld 1 1 } } }
	memWrData_V_V { axis {  { memWrData_V_V_TREADY out_acc 0 1 }  { memWrData_V_V_TDATA out_data 1 64 }  { memWrData_V_V_TVALID out_vld 1 1 } } }
	flashDemux2setPathMetadata_V { ap_fifo {  { flashDemux2setPathMetadata_V_dout fifo_data 0 48 }  { flashDemux2setPathMetadata_V_empty_n fifo_status 0 1 }  { flashDemux2setPathMetadata_V_read fifo_update 1 1 } } }
	flashDemux2setPathValue_V { ap_fifo {  { flashDemux2setPathValue_V_dout fifo_data 0 66 }  { flashDemux2setPathValue_V_empty_n fifo_status 0 1 }  { flashDemux2setPathValue_V_read fifo_update 1 1 } } }
}
