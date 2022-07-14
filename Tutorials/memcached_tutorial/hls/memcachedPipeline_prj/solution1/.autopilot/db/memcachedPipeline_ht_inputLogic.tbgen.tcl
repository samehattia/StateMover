set moduleName memcachedPipeline_ht_inputLogic
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function_flushable
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set pipeII 1
set pipeLatency 3
set C_modelName {memcachedPipeline_ht_inputLogic}
set C_modelType { void 0 }
set C_modelArgList { 
	{ requestParser2hashTable_V int 256 regular {fifo 0 volatile } {global 0}  }
	{ hashKeyBuffer_V_V int 64 regular {fifo 1 volatile } {global 1}  }
	{ in2hashKeyLength_V_V int 8 regular {fifo 1 volatile } {global 1}  }
	{ in2cc_V int 130 regular {fifo 1 volatile } {global 1}  }
	{ in2ccMd_V int 64 regular {fifo 1 volatile } {global 1}  }
	{ in2hash_V int 130 regular {fifo 1 volatile } {global 1}  }
	{ hashValueBuffer_V_V int 64 regular {fifo 1 volatile } {global 1}  }
	{ hashMdBuffer_V_V int 128 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "requestParser2hashTable_V", "interface" : "fifo", "bitwidth" : 256,"extern" : 0} , 
 	{ "Name" : "hashKeyBuffer_V_V", "interface" : "fifo", "bitwidth" : 64,"extern" : 0} , 
 	{ "Name" : "in2hashKeyLength_V_V", "interface" : "fifo", "bitwidth" : 8,"extern" : 0} , 
 	{ "Name" : "in2cc_V", "interface" : "fifo", "bitwidth" : 130,"extern" : 0} , 
 	{ "Name" : "in2ccMd_V", "interface" : "fifo", "bitwidth" : 64,"extern" : 0} , 
 	{ "Name" : "in2hash_V", "interface" : "fifo", "bitwidth" : 130,"extern" : 0} , 
 	{ "Name" : "hashValueBuffer_V_V", "interface" : "fifo", "bitwidth" : 64,"extern" : 0} , 
 	{ "Name" : "hashMdBuffer_V_V", "interface" : "fifo", "bitwidth" : 128,"extern" : 0} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_async } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ requestParser2hashTable_V_dout sc_in sc_lv 256 signal 0 } 
	{ requestParser2hashTable_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ requestParser2hashTable_V_read sc_out sc_logic 1 signal 0 } 
	{ hashValueBuffer_V_V_din sc_out sc_lv 64 signal 6 } 
	{ hashValueBuffer_V_V_full_n sc_in sc_logic 1 signal 6 } 
	{ hashValueBuffer_V_V_write sc_out sc_logic 1 signal 6 } 
	{ hashKeyBuffer_V_V_din sc_out sc_lv 64 signal 1 } 
	{ hashKeyBuffer_V_V_full_n sc_in sc_logic 1 signal 1 } 
	{ hashKeyBuffer_V_V_write sc_out sc_logic 1 signal 1 } 
	{ in2hashKeyLength_V_V_din sc_out sc_lv 8 signal 2 } 
	{ in2hashKeyLength_V_V_full_n sc_in sc_logic 1 signal 2 } 
	{ in2hashKeyLength_V_V_write sc_out sc_logic 1 signal 2 } 
	{ hashMdBuffer_V_V_din sc_out sc_lv 128 signal 7 } 
	{ hashMdBuffer_V_V_full_n sc_in sc_logic 1 signal 7 } 
	{ hashMdBuffer_V_V_write sc_out sc_logic 1 signal 7 } 
	{ in2cc_V_din sc_out sc_lv 130 signal 3 } 
	{ in2cc_V_full_n sc_in sc_logic 1 signal 3 } 
	{ in2cc_V_write sc_out sc_logic 1 signal 3 } 
	{ in2ccMd_V_din sc_out sc_lv 64 signal 4 } 
	{ in2ccMd_V_full_n sc_in sc_logic 1 signal 4 } 
	{ in2ccMd_V_write sc_out sc_logic 1 signal 4 } 
	{ in2hash_V_din sc_out sc_lv 130 signal 5 } 
	{ in2hash_V_full_n sc_in sc_logic 1 signal 5 } 
	{ in2hash_V_write sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "requestParser2hashTable_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "requestParser2hashTable_V", "role": "dout" }} , 
 	{ "name": "requestParser2hashTable_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "requestParser2hashTable_V", "role": "empty_n" }} , 
 	{ "name": "requestParser2hashTable_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "requestParser2hashTable_V", "role": "read" }} , 
 	{ "name": "hashValueBuffer_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "hashValueBuffer_V_V", "role": "din" }} , 
 	{ "name": "hashValueBuffer_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hashValueBuffer_V_V", "role": "full_n" }} , 
 	{ "name": "hashValueBuffer_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hashValueBuffer_V_V", "role": "write" }} , 
 	{ "name": "hashKeyBuffer_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "hashKeyBuffer_V_V", "role": "din" }} , 
 	{ "name": "hashKeyBuffer_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hashKeyBuffer_V_V", "role": "full_n" }} , 
 	{ "name": "hashKeyBuffer_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hashKeyBuffer_V_V", "role": "write" }} , 
 	{ "name": "in2hashKeyLength_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in2hashKeyLength_V_V", "role": "din" }} , 
 	{ "name": "in2hashKeyLength_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2hashKeyLength_V_V", "role": "full_n" }} , 
 	{ "name": "in2hashKeyLength_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2hashKeyLength_V_V", "role": "write" }} , 
 	{ "name": "hashMdBuffer_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "hashMdBuffer_V_V", "role": "din" }} , 
 	{ "name": "hashMdBuffer_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hashMdBuffer_V_V", "role": "full_n" }} , 
 	{ "name": "hashMdBuffer_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hashMdBuffer_V_V", "role": "write" }} , 
 	{ "name": "in2cc_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":130, "type": "signal", "bundle":{"name": "in2cc_V", "role": "din" }} , 
 	{ "name": "in2cc_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2cc_V", "role": "full_n" }} , 
 	{ "name": "in2cc_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2cc_V", "role": "write" }} , 
 	{ "name": "in2ccMd_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in2ccMd_V", "role": "din" }} , 
 	{ "name": "in2ccMd_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2ccMd_V", "role": "full_n" }} , 
 	{ "name": "in2ccMd_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2ccMd_V", "role": "write" }} , 
 	{ "name": "in2hash_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":130, "type": "signal", "bundle":{"name": "in2hash_V", "role": "din" }} , 
 	{ "name": "in2hash_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2hash_V", "role": "full_n" }} , 
 	{ "name": "in2hash_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2hash_V", "role": "write" }}  ]}
set Spec2ImplPortList { 
	requestParser2hashTable_V { ap_fifo {  { requestParser2hashTable_V_dout fifo_data 0 256 }  { requestParser2hashTable_V_empty_n fifo_status 0 1 }  { requestParser2hashTable_V_read fifo_update 1 1 } } }
	hashKeyBuffer_V_V { ap_fifo {  { hashKeyBuffer_V_V_din fifo_data 1 64 }  { hashKeyBuffer_V_V_full_n fifo_status 0 1 }  { hashKeyBuffer_V_V_write fifo_update 1 1 } } }
	in2hashKeyLength_V_V { ap_fifo {  { in2hashKeyLength_V_V_din fifo_data 1 8 }  { in2hashKeyLength_V_V_full_n fifo_status 0 1 }  { in2hashKeyLength_V_V_write fifo_update 1 1 } } }
	in2cc_V { ap_fifo {  { in2cc_V_din fifo_data 1 130 }  { in2cc_V_full_n fifo_status 0 1 }  { in2cc_V_write fifo_update 1 1 } } }
	in2ccMd_V { ap_fifo {  { in2ccMd_V_din fifo_data 1 64 }  { in2ccMd_V_full_n fifo_status 0 1 }  { in2ccMd_V_write fifo_update 1 1 } } }
	in2hash_V { ap_fifo {  { in2hash_V_din fifo_data 1 130 }  { in2hash_V_full_n fifo_status 0 1 }  { in2hash_V_write fifo_update 1 1 } } }
	hashValueBuffer_V_V { ap_fifo {  { hashValueBuffer_V_V_din fifo_data 1 64 }  { hashValueBuffer_V_V_full_n fifo_status 0 1 }  { hashValueBuffer_V_V_write fifo_update 1 1 } } }
	hashMdBuffer_V_V { ap_fifo {  { hashMdBuffer_V_V_din fifo_data 1 128 }  { hashMdBuffer_V_V_full_n fifo_status 0 1 }  { hashMdBuffer_V_V_write fifo_update 1 1 } } }
}
