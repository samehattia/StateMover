set moduleName memcachedPipeline_splitter
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set pipeII 1
set pipeLatency 2
set C_modelName {memcachedPipeline_splitter}
set C_modelType { void 0 }
set C_modelArgList { 
	{ hashTable2splitter_V int 256 regular {fifo 0 volatile } {global 0}  }
	{ splitter2valueStoreFlash_V int 256 regular {fifo 1 volatile } {global 1}  }
	{ splitter2valueStoreDram_V int 256 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "hashTable2splitter_V", "interface" : "fifo", "bitwidth" : 256,"extern" : 0} , 
 	{ "Name" : "splitter2valueStoreFlash_V", "interface" : "fifo", "bitwidth" : 256,"extern" : 0} , 
 	{ "Name" : "splitter2valueStoreDram_V", "interface" : "fifo", "bitwidth" : 256,"extern" : 0} ]}
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
	{ hashTable2splitter_V_dout sc_in sc_lv 256 signal 0 } 
	{ hashTable2splitter_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ hashTable2splitter_V_read sc_out sc_logic 1 signal 0 } 
	{ splitter2valueStoreFlash_V_din sc_out sc_lv 256 signal 1 } 
	{ splitter2valueStoreFlash_V_full_n sc_in sc_logic 1 signal 1 } 
	{ splitter2valueStoreFlash_V_write sc_out sc_logic 1 signal 1 } 
	{ splitter2valueStoreDram_V_din sc_out sc_lv 256 signal 2 } 
	{ splitter2valueStoreDram_V_full_n sc_in sc_logic 1 signal 2 } 
	{ splitter2valueStoreDram_V_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "hashTable2splitter_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "hashTable2splitter_V", "role": "dout" }} , 
 	{ "name": "hashTable2splitter_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hashTable2splitter_V", "role": "empty_n" }} , 
 	{ "name": "hashTable2splitter_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hashTable2splitter_V", "role": "read" }} , 
 	{ "name": "splitter2valueStoreFlash_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "splitter2valueStoreFlash_V", "role": "din" }} , 
 	{ "name": "splitter2valueStoreFlash_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "splitter2valueStoreFlash_V", "role": "full_n" }} , 
 	{ "name": "splitter2valueStoreFlash_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "splitter2valueStoreFlash_V", "role": "write" }} , 
 	{ "name": "splitter2valueStoreDram_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "splitter2valueStoreDram_V", "role": "din" }} , 
 	{ "name": "splitter2valueStoreDram_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "splitter2valueStoreDram_V", "role": "full_n" }} , 
 	{ "name": "splitter2valueStoreDram_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "splitter2valueStoreDram_V", "role": "write" }}  ]}
set Spec2ImplPortList { 
	hashTable2splitter_V { ap_fifo {  { hashTable2splitter_V_dout fifo_data 0 256 }  { hashTable2splitter_V_empty_n fifo_status 0 1 }  { hashTable2splitter_V_read fifo_update 1 1 } } }
	splitter2valueStoreFlash_V { ap_fifo {  { splitter2valueStoreFlash_V_din fifo_data 1 256 }  { splitter2valueStoreFlash_V_full_n fifo_status 0 1 }  { splitter2valueStoreFlash_V_write fifo_update 1 1 } } }
	splitter2valueStoreDram_V { ap_fifo {  { splitter2valueStoreDram_V_din fifo_data 1 256 }  { splitter2valueStoreDram_V_full_n fifo_status 0 1 }  { splitter2valueStoreDram_V_write fifo_update 1 1 } } }
}
