set moduleName memcachedPipeline_remux
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function_flushable
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set pipeII 1
set pipeLatency 1
set C_modelName {memcachedPipeline_remux}
set C_modelType { void 0 }
set C_modelArgList { 
	{ metadataBuffer_V int 128 regular {fifo 0 volatile } {global 0}  }
	{ keyBuffer_V_V int 64 regular {fifo 0 volatile } {global 0}  }
	{ valueStoreDram2merger_V int 256 regular {fifo 1 volatile } {global 1}  }
	{ getPath2remux_V_V int 64 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "metadataBuffer_V", "interface" : "fifo", "bitwidth" : 128,"extern" : 0} , 
 	{ "Name" : "keyBuffer_V_V", "interface" : "fifo", "bitwidth" : 64,"extern" : 0} , 
 	{ "Name" : "valueStoreDram2merger_V", "interface" : "fifo", "bitwidth" : 256,"extern" : 0} , 
 	{ "Name" : "getPath2remux_V_V", "interface" : "fifo", "bitwidth" : 64,"extern" : 0} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_async } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ keyBuffer_V_V_dout sc_in sc_lv 64 signal 1 } 
	{ keyBuffer_V_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ keyBuffer_V_V_read sc_out sc_logic 1 signal 1 } 
	{ getPath2remux_V_V_dout sc_in sc_lv 64 signal 3 } 
	{ getPath2remux_V_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ getPath2remux_V_V_read sc_out sc_logic 1 signal 3 } 
	{ metadataBuffer_V_dout sc_in sc_lv 128 signal 0 } 
	{ metadataBuffer_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ metadataBuffer_V_read sc_out sc_logic 1 signal 0 } 
	{ valueStoreDram2merger_V_din sc_out sc_lv 256 signal 2 } 
	{ valueStoreDram2merger_V_full_n sc_in sc_logic 1 signal 2 } 
	{ valueStoreDram2merger_V_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "keyBuffer_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "keyBuffer_V_V", "role": "dout" }} , 
 	{ "name": "keyBuffer_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyBuffer_V_V", "role": "empty_n" }} , 
 	{ "name": "keyBuffer_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyBuffer_V_V", "role": "read" }} , 
 	{ "name": "getPath2remux_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "getPath2remux_V_V", "role": "dout" }} , 
 	{ "name": "getPath2remux_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "getPath2remux_V_V", "role": "empty_n" }} , 
 	{ "name": "getPath2remux_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "getPath2remux_V_V", "role": "read" }} , 
 	{ "name": "metadataBuffer_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "metadataBuffer_V", "role": "dout" }} , 
 	{ "name": "metadataBuffer_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "metadataBuffer_V", "role": "empty_n" }} , 
 	{ "name": "metadataBuffer_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "metadataBuffer_V", "role": "read" }} , 
 	{ "name": "valueStoreDram2merger_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "valueStoreDram2merger_V", "role": "din" }} , 
 	{ "name": "valueStoreDram2merger_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "valueStoreDram2merger_V", "role": "full_n" }} , 
 	{ "name": "valueStoreDram2merger_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "valueStoreDram2merger_V", "role": "write" }}  ]}
set Spec2ImplPortList { 
	metadataBuffer_V { ap_fifo {  { metadataBuffer_V_dout fifo_data 0 128 }  { metadataBuffer_V_empty_n fifo_status 0 1 }  { metadataBuffer_V_read fifo_update 1 1 } } }
	keyBuffer_V_V { ap_fifo {  { keyBuffer_V_V_dout fifo_data 0 64 }  { keyBuffer_V_V_empty_n fifo_status 0 1 }  { keyBuffer_V_V_read fifo_update 1 1 } } }
	valueStoreDram2merger_V { ap_fifo {  { valueStoreDram2merger_V_din fifo_data 1 256 }  { valueStoreDram2merger_V_full_n fifo_status 0 1 }  { valueStoreDram2merger_V_write fifo_update 1 1 } } }
	getPath2remux_V_V { ap_fifo {  { getPath2remux_V_V_dout fifo_data 0 64 }  { getPath2remux_V_V_empty_n fifo_status 0 1 }  { getPath2remux_V_V_read fifo_update 1 1 } } }
}
