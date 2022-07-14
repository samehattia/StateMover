set moduleName memcachedPipeline_accessControl
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function_flushable
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set pipeII 1
set pipeLatency 1
set C_modelName {memcachedPipeline_accessControl}
set C_modelType { void 0 }
set C_modelArgList { 
	{ filterPopSet_V_V int 1 regular {fifo 0 volatile } {global 0}  }
	{ filterPopGet_V_V int 1 regular {fifo 0 volatile } {global 0}  }
	{ splitter2valueStoreDram_V int 256 regular {fifo 0 volatile } {global 0}  }
	{ accCtrl2demux_V int 256 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "filterPopSet_V_V", "interface" : "fifo", "bitwidth" : 1,"extern" : 0} , 
 	{ "Name" : "filterPopGet_V_V", "interface" : "fifo", "bitwidth" : 1,"extern" : 0} , 
 	{ "Name" : "splitter2valueStoreDram_V", "interface" : "fifo", "bitwidth" : 256,"extern" : 0} , 
 	{ "Name" : "accCtrl2demux_V", "interface" : "fifo", "bitwidth" : 256,"extern" : 0} ]}
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
	{ filterPopGet_V_V_dout sc_in sc_lv 1 signal 1 } 
	{ filterPopGet_V_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ filterPopGet_V_V_read sc_out sc_logic 1 signal 1 } 
	{ filterPopSet_V_V_dout sc_in sc_lv 1 signal 0 } 
	{ filterPopSet_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ filterPopSet_V_V_read sc_out sc_logic 1 signal 0 } 
	{ splitter2valueStoreDram_V_dout sc_in sc_lv 256 signal 2 } 
	{ splitter2valueStoreDram_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ splitter2valueStoreDram_V_read sc_out sc_logic 1 signal 2 } 
	{ accCtrl2demux_V_din sc_out sc_lv 256 signal 3 } 
	{ accCtrl2demux_V_full_n sc_in sc_logic 1 signal 3 } 
	{ accCtrl2demux_V_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "filterPopGet_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "filterPopGet_V_V", "role": "dout" }} , 
 	{ "name": "filterPopGet_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filterPopGet_V_V", "role": "empty_n" }} , 
 	{ "name": "filterPopGet_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filterPopGet_V_V", "role": "read" }} , 
 	{ "name": "filterPopSet_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "filterPopSet_V_V", "role": "dout" }} , 
 	{ "name": "filterPopSet_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filterPopSet_V_V", "role": "empty_n" }} , 
 	{ "name": "filterPopSet_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filterPopSet_V_V", "role": "read" }} , 
 	{ "name": "splitter2valueStoreDram_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "splitter2valueStoreDram_V", "role": "dout" }} , 
 	{ "name": "splitter2valueStoreDram_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "splitter2valueStoreDram_V", "role": "empty_n" }} , 
 	{ "name": "splitter2valueStoreDram_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "splitter2valueStoreDram_V", "role": "read" }} , 
 	{ "name": "accCtrl2demux_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "accCtrl2demux_V", "role": "din" }} , 
 	{ "name": "accCtrl2demux_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accCtrl2demux_V", "role": "full_n" }} , 
 	{ "name": "accCtrl2demux_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "accCtrl2demux_V", "role": "write" }}  ]}
set Spec2ImplPortList { 
	filterPopSet_V_V { ap_fifo {  { filterPopSet_V_V_dout fifo_data 0 1 }  { filterPopSet_V_V_empty_n fifo_status 0 1 }  { filterPopSet_V_V_read fifo_update 1 1 } } }
	filterPopGet_V_V { ap_fifo {  { filterPopGet_V_V_dout fifo_data 0 1 }  { filterPopGet_V_V_empty_n fifo_status 0 1 }  { filterPopGet_V_V_read fifo_update 1 1 } } }
	splitter2valueStoreDram_V { ap_fifo {  { splitter2valueStoreDram_V_dout fifo_data 0 256 }  { splitter2valueStoreDram_V_empty_n fifo_status 0 1 }  { splitter2valueStoreDram_V_read fifo_update 1 1 } } }
	accCtrl2demux_V { ap_fifo {  { accCtrl2demux_V_din fifo_data 1 256 }  { accCtrl2demux_V_full_n fifo_status 0 1 }  { accCtrl2demux_V_write fifo_update 1 1 } } }
}
