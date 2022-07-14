set moduleName memcachedPipeline_setPath
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function_flushable
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set pipeII 1
set pipeLatency 1
set C_modelName {memcachedPipeline_setPath}
set C_modelType { void 0 }
set C_modelArgList { 
	{ memWrCmd_V int 40 regular {axi_s 1 volatile  { memWrCmd_V data } }  }
	{ memWrData_V_V int 512 regular {axi_s 1 volatile  { memWrData_V_V data } }  }
	{ demux2setPathMetadata_V int 45 regular {fifo 0 volatile } {global 0}  }
	{ demux2setPathValue_V int 66 regular {fifo 0 volatile } {global 0}  }
	{ filterPopSet_V_V int 1 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "memWrCmd_V", "interface" : "axis", "bitwidth" : 40} , 
 	{ "Name" : "memWrData_V_V", "interface" : "axis", "bitwidth" : 512} , 
 	{ "Name" : "demux2setPathMetadata_V", "interface" : "fifo", "bitwidth" : 45,"extern" : 0} , 
 	{ "Name" : "demux2setPathValue_V", "interface" : "fifo", "bitwidth" : 66,"extern" : 0} , 
 	{ "Name" : "filterPopSet_V_V", "interface" : "fifo", "bitwidth" : 1,"extern" : 0} ]}
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
	{ demux2setPathValue_V_dout sc_in sc_lv 66 signal 3 } 
	{ demux2setPathValue_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ demux2setPathValue_V_read sc_out sc_logic 1 signal 3 } 
	{ demux2setPathMetadata_V_dout sc_in sc_lv 45 signal 2 } 
	{ demux2setPathMetadata_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ demux2setPathMetadata_V_read sc_out sc_logic 1 signal 2 } 
	{ filterPopSet_V_V_din sc_out sc_lv 1 signal 4 } 
	{ filterPopSet_V_V_full_n sc_in sc_logic 1 signal 4 } 
	{ filterPopSet_V_V_write sc_out sc_logic 1 signal 4 } 
	{ memWrData_V_V_TREADY sc_in sc_logic 1 outacc 1 } 
	{ memWrCmd_V_TREADY sc_in sc_logic 1 outacc 0 } 
	{ memWrCmd_V_TDATA sc_out sc_lv 40 signal 0 } 
	{ memWrCmd_V_TVALID sc_out sc_logic 1 outvld 0 } 
	{ memWrData_V_V_TDATA sc_out sc_lv 512 signal 1 } 
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
 	{ "name": "demux2setPathValue_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "demux2setPathValue_V", "role": "dout" }} , 
 	{ "name": "demux2setPathValue_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "demux2setPathValue_V", "role": "empty_n" }} , 
 	{ "name": "demux2setPathValue_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "demux2setPathValue_V", "role": "read" }} , 
 	{ "name": "demux2setPathMetadata_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":45, "type": "signal", "bundle":{"name": "demux2setPathMetadata_V", "role": "dout" }} , 
 	{ "name": "demux2setPathMetadata_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "demux2setPathMetadata_V", "role": "empty_n" }} , 
 	{ "name": "demux2setPathMetadata_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "demux2setPathMetadata_V", "role": "read" }} , 
 	{ "name": "filterPopSet_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "filterPopSet_V_V", "role": "din" }} , 
 	{ "name": "filterPopSet_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filterPopSet_V_V", "role": "full_n" }} , 
 	{ "name": "filterPopSet_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filterPopSet_V_V", "role": "write" }} , 
 	{ "name": "memWrData_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "memWrData_V_V", "role": "TREADY" }} , 
 	{ "name": "memWrCmd_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "memWrCmd_V", "role": "TREADY" }} , 
 	{ "name": "memWrCmd_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "memWrCmd_V", "role": "TDATA" }} , 
 	{ "name": "memWrCmd_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "memWrCmd_V", "role": "TVALID" }} , 
 	{ "name": "memWrData_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "memWrData_V_V", "role": "TDATA" }} , 
 	{ "name": "memWrData_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "memWrData_V_V", "role": "TVALID" }}  ]}
set Spec2ImplPortList { 
	memWrCmd_V { axis {  { memWrCmd_V_TREADY out_acc 0 1 }  { memWrCmd_V_TDATA out_data 1 40 }  { memWrCmd_V_TVALID out_vld 1 1 } } }
	memWrData_V_V { axis {  { memWrData_V_V_TREADY out_acc 0 1 }  { memWrData_V_V_TDATA out_data 1 512 }  { memWrData_V_V_TVALID out_vld 1 1 } } }
	demux2setPathMetadata_V { ap_fifo {  { demux2setPathMetadata_V_dout fifo_data 0 45 }  { demux2setPathMetadata_V_empty_n fifo_status 0 1 }  { demux2setPathMetadata_V_read fifo_update 1 1 } } }
	demux2setPathValue_V { ap_fifo {  { demux2setPathValue_V_dout fifo_data 0 66 }  { demux2setPathValue_V_empty_n fifo_status 0 1 }  { demux2setPathValue_V_read fifo_update 1 1 } } }
	filterPopSet_V_V { ap_fifo {  { filterPopSet_V_V_din fifo_data 1 1 }  { filterPopSet_V_V_full_n fifo_status 0 1 }  { filterPopSet_V_V_write fifo_update 1 1 } } }
}
