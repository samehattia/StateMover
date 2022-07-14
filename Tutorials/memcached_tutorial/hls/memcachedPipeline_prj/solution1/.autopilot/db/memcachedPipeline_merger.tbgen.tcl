set moduleName memcachedPipeline_merger
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set pipeII 1
set pipeLatency 1
set C_modelName {memcachedPipeline_merger}
set C_modelType { void 0 }
set C_modelArgList { 
	{ valueStoreFlash2merger_V int 256 regular {fifo 0 volatile } {global 0}  }
	{ merger2responseFormatter_V int 256 regular {fifo 1 volatile } {global 1}  }
	{ valueStoreDram2merger_V int 256 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "valueStoreFlash2merger_V", "interface" : "fifo", "bitwidth" : 256,"extern" : 0} , 
 	{ "Name" : "merger2responseFormatter_V", "interface" : "fifo", "bitwidth" : 256,"extern" : 0} , 
 	{ "Name" : "valueStoreDram2merger_V", "interface" : "fifo", "bitwidth" : 256,"extern" : 0} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_async } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ valueStoreDram2merger_V_dout sc_in sc_lv 256 signal 2 } 
	{ valueStoreDram2merger_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ valueStoreDram2merger_V_read sc_out sc_logic 1 signal 2 } 
	{ valueStoreFlash2merger_V_dout sc_in sc_lv 256 signal 0 } 
	{ valueStoreFlash2merger_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ valueStoreFlash2merger_V_read sc_out sc_logic 1 signal 0 } 
	{ merger2responseFormatter_V_din sc_out sc_lv 256 signal 1 } 
	{ merger2responseFormatter_V_full_n sc_in sc_logic 1 signal 1 } 
	{ merger2responseFormatter_V_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "valueStoreDram2merger_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "valueStoreDram2merger_V", "role": "dout" }} , 
 	{ "name": "valueStoreDram2merger_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "valueStoreDram2merger_V", "role": "empty_n" }} , 
 	{ "name": "valueStoreDram2merger_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "valueStoreDram2merger_V", "role": "read" }} , 
 	{ "name": "valueStoreFlash2merger_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "valueStoreFlash2merger_V", "role": "dout" }} , 
 	{ "name": "valueStoreFlash2merger_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "valueStoreFlash2merger_V", "role": "empty_n" }} , 
 	{ "name": "valueStoreFlash2merger_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "valueStoreFlash2merger_V", "role": "read" }} , 
 	{ "name": "merger2responseFormatter_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "merger2responseFormatter_V", "role": "din" }} , 
 	{ "name": "merger2responseFormatter_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "merger2responseFormatter_V", "role": "full_n" }} , 
 	{ "name": "merger2responseFormatter_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "merger2responseFormatter_V", "role": "write" }}  ]}
set Spec2ImplPortList { 
	valueStoreFlash2merger_V { ap_fifo {  { valueStoreFlash2merger_V_dout fifo_data 0 256 }  { valueStoreFlash2merger_V_empty_n fifo_status 0 1 }  { valueStoreFlash2merger_V_read fifo_update 1 1 } } }
	merger2responseFormatter_V { ap_fifo {  { merger2responseFormatter_V_din fifo_data 1 256 }  { merger2responseFormatter_V_full_n fifo_status 0 1 }  { merger2responseFormatter_V_write fifo_update 1 1 } } }
	valueStoreDram2merger_V { ap_fifo {  { valueStoreDram2merger_V_dout fifo_data 0 256 }  { valueStoreDram2merger_V_empty_n fifo_status 0 1 }  { valueStoreDram2merger_V_read fifo_update 1 1 } } }
}
