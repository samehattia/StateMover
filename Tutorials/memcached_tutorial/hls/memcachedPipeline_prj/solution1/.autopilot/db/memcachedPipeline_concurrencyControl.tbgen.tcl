set moduleName memcachedPipeline_concurrencyControl
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function_flushable
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set pipeII 1
set pipeLatency 1
set C_modelName {memcachedPipeline_concurrencyControl}
set C_modelType { void 0 }
set C_modelArgList { 
	{ dec2cc_V_V int 1 regular {fifo 0 volatile } {global 0}  }
	{ in2ccMd_V int 64 regular {fifo 0 volatile } {global 0}  }
	{ in2cc_V int 130 regular {fifo 0 volatile } {global 0}  }
	{ hash2cc_V_V int 32 regular {fifo 0 volatile } {global 0}  }
	{ cc2memReadMd_V int 64 regular {fifo 1 volatile } {global 1}  }
	{ cc2memRead_V int 130 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dec2cc_V_V", "interface" : "fifo", "bitwidth" : 1,"extern" : 0} , 
 	{ "Name" : "in2ccMd_V", "interface" : "fifo", "bitwidth" : 64,"extern" : 0} , 
 	{ "Name" : "in2cc_V", "interface" : "fifo", "bitwidth" : 130,"extern" : 0} , 
 	{ "Name" : "hash2cc_V_V", "interface" : "fifo", "bitwidth" : 32,"extern" : 0} , 
 	{ "Name" : "cc2memReadMd_V", "interface" : "fifo", "bitwidth" : 64,"extern" : 0} , 
 	{ "Name" : "cc2memRead_V", "interface" : "fifo", "bitwidth" : 130,"extern" : 0} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_async } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dec2cc_V_V_dout sc_in sc_lv 1 signal 0 } 
	{ dec2cc_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ dec2cc_V_V_read sc_out sc_logic 1 signal 0 } 
	{ in2cc_V_dout sc_in sc_lv 130 signal 2 } 
	{ in2cc_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ in2cc_V_read sc_out sc_logic 1 signal 2 } 
	{ in2ccMd_V_dout sc_in sc_lv 64 signal 1 } 
	{ in2ccMd_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ in2ccMd_V_read sc_out sc_logic 1 signal 1 } 
	{ hash2cc_V_V_dout sc_in sc_lv 32 signal 3 } 
	{ hash2cc_V_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ hash2cc_V_V_read sc_out sc_logic 1 signal 3 } 
	{ cc2memRead_V_din sc_out sc_lv 130 signal 5 } 
	{ cc2memRead_V_full_n sc_in sc_logic 1 signal 5 } 
	{ cc2memRead_V_write sc_out sc_logic 1 signal 5 } 
	{ cc2memReadMd_V_din sc_out sc_lv 64 signal 4 } 
	{ cc2memReadMd_V_full_n sc_in sc_logic 1 signal 4 } 
	{ cc2memReadMd_V_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dec2cc_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dec2cc_V_V", "role": "dout" }} , 
 	{ "name": "dec2cc_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dec2cc_V_V", "role": "empty_n" }} , 
 	{ "name": "dec2cc_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dec2cc_V_V", "role": "read" }} , 
 	{ "name": "in2cc_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":130, "type": "signal", "bundle":{"name": "in2cc_V", "role": "dout" }} , 
 	{ "name": "in2cc_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2cc_V", "role": "empty_n" }} , 
 	{ "name": "in2cc_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2cc_V", "role": "read" }} , 
 	{ "name": "in2ccMd_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "in2ccMd_V", "role": "dout" }} , 
 	{ "name": "in2ccMd_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2ccMd_V", "role": "empty_n" }} , 
 	{ "name": "in2ccMd_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2ccMd_V", "role": "read" }} , 
 	{ "name": "hash2cc_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hash2cc_V_V", "role": "dout" }} , 
 	{ "name": "hash2cc_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash2cc_V_V", "role": "empty_n" }} , 
 	{ "name": "hash2cc_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hash2cc_V_V", "role": "read" }} , 
 	{ "name": "cc2memRead_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":130, "type": "signal", "bundle":{"name": "cc2memRead_V", "role": "din" }} , 
 	{ "name": "cc2memRead_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cc2memRead_V", "role": "full_n" }} , 
 	{ "name": "cc2memRead_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cc2memRead_V", "role": "write" }} , 
 	{ "name": "cc2memReadMd_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "cc2memReadMd_V", "role": "din" }} , 
 	{ "name": "cc2memReadMd_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cc2memReadMd_V", "role": "full_n" }} , 
 	{ "name": "cc2memReadMd_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cc2memReadMd_V", "role": "write" }}  ]}
set Spec2ImplPortList { 
	dec2cc_V_V { ap_fifo {  { dec2cc_V_V_dout fifo_data 0 1 }  { dec2cc_V_V_empty_n fifo_status 0 1 }  { dec2cc_V_V_read fifo_update 1 1 } } }
	in2ccMd_V { ap_fifo {  { in2ccMd_V_dout fifo_data 0 64 }  { in2ccMd_V_empty_n fifo_status 0 1 }  { in2ccMd_V_read fifo_update 1 1 } } }
	in2cc_V { ap_fifo {  { in2cc_V_dout fifo_data 0 130 }  { in2cc_V_empty_n fifo_status 0 1 }  { in2cc_V_read fifo_update 1 1 } } }
	hash2cc_V_V { ap_fifo {  { hash2cc_V_V_dout fifo_data 0 32 }  { hash2cc_V_V_empty_n fifo_status 0 1 }  { hash2cc_V_V_read fifo_update 1 1 } } }
	cc2memReadMd_V { ap_fifo {  { cc2memReadMd_V_din fifo_data 1 64 }  { cc2memReadMd_V_full_n fifo_status 0 1 }  { cc2memReadMd_V_write fifo_update 1 1 } } }
	cc2memRead_V { ap_fifo {  { cc2memRead_V_din fifo_data 1 130 }  { cc2memRead_V_full_n fifo_status 0 1 }  { cc2memRead_V_write fifo_update 1 1 } } }
}
