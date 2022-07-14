set moduleName memcachedPipeline_bp_f
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function_flushable
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set pipeII 1
set pipeLatency 1
set C_modelName {memcachedPipeline_bp_f}
set C_modelType { void 0 }
set C_modelArgList { 
	{ feInput_V_data_V int 64 regular {axi_s 0 volatile  { inData data } }  }
	{ feInput_V_user_V int 112 regular {axi_s 0 volatile  { inData user } }  }
	{ feInput_V_keep_V int 8 regular {axi_s 0 volatile  { inData keep } }  }
	{ feInput_V_last_V int 1 regular {axi_s 0 volatile  { inData last } }  }
	{ metadataBuffer_rp_V_V int 248 regular {fifo 1 volatile } {global 1}  }
	{ valueBuffer_rp_V_V int 64 regular {fifo 1 volatile } {global 1}  }
	{ keyBuffer_rp_V_V int 64 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "feInput_V_data_V", "interface" : "axis", "bitwidth" : 64} , 
 	{ "Name" : "feInput_V_user_V", "interface" : "axis", "bitwidth" : 112} , 
 	{ "Name" : "feInput_V_keep_V", "interface" : "axis", "bitwidth" : 8} , 
 	{ "Name" : "feInput_V_last_V", "interface" : "axis", "bitwidth" : 1} , 
 	{ "Name" : "metadataBuffer_rp_V_V", "interface" : "fifo", "bitwidth" : 248,"extern" : 0} , 
 	{ "Name" : "valueBuffer_rp_V_V", "interface" : "fifo", "bitwidth" : 64,"extern" : 0} , 
 	{ "Name" : "keyBuffer_rp_V_V", "interface" : "fifo", "bitwidth" : 64,"extern" : 0} ]}
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
	{ inData_TVALID sc_in sc_logic 1 invld 0 } 
	{ valueBuffer_rp_V_V_din sc_out sc_lv 64 signal 5 } 
	{ valueBuffer_rp_V_V_full_n sc_in sc_logic 1 signal 5 } 
	{ valueBuffer_rp_V_V_write sc_out sc_logic 1 signal 5 } 
	{ keyBuffer_rp_V_V_din sc_out sc_lv 64 signal 6 } 
	{ keyBuffer_rp_V_V_full_n sc_in sc_logic 1 signal 6 } 
	{ keyBuffer_rp_V_V_write sc_out sc_logic 1 signal 6 } 
	{ metadataBuffer_rp_V_V_din sc_out sc_lv 248 signal 4 } 
	{ metadataBuffer_rp_V_V_full_n sc_in sc_logic 1 signal 4 } 
	{ metadataBuffer_rp_V_V_write sc_out sc_logic 1 signal 4 } 
	{ inData_TDATA sc_in sc_lv 64 signal 0 } 
	{ inData_TREADY sc_out sc_logic 1 inacc 3 } 
	{ inData_TUSER sc_in sc_lv 112 signal 1 } 
	{ inData_TKEEP sc_in sc_lv 8 signal 2 } 
	{ inData_TLAST sc_in sc_lv 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "inData_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "feInput_V_data_V", "role": "default" }} , 
 	{ "name": "valueBuffer_rp_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "valueBuffer_rp_V_V", "role": "din" }} , 
 	{ "name": "valueBuffer_rp_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "valueBuffer_rp_V_V", "role": "full_n" }} , 
 	{ "name": "valueBuffer_rp_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "valueBuffer_rp_V_V", "role": "write" }} , 
 	{ "name": "keyBuffer_rp_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "keyBuffer_rp_V_V", "role": "din" }} , 
 	{ "name": "keyBuffer_rp_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyBuffer_rp_V_V", "role": "full_n" }} , 
 	{ "name": "keyBuffer_rp_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "keyBuffer_rp_V_V", "role": "write" }} , 
 	{ "name": "metadataBuffer_rp_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":248, "type": "signal", "bundle":{"name": "metadataBuffer_rp_V_V", "role": "din" }} , 
 	{ "name": "metadataBuffer_rp_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "metadataBuffer_rp_V_V", "role": "full_n" }} , 
 	{ "name": "metadataBuffer_rp_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "metadataBuffer_rp_V_V", "role": "write" }} , 
 	{ "name": "inData_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "feInput_V_data_V", "role": "default" }} , 
 	{ "name": "inData_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "feInput_V_last_V", "role": "default" }} , 
 	{ "name": "inData_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":112, "type": "signal", "bundle":{"name": "feInput_V_user_V", "role": "default" }} , 
 	{ "name": "inData_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "feInput_V_keep_V", "role": "default" }} , 
 	{ "name": "inData_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "feInput_V_last_V", "role": "default" }}  ]}
set Spec2ImplPortList { 
	feInput_V_data_V { axis {  { inData_TVALID in_vld 0 1 }  { inData_TDATA in_data 0 64 } } }
	feInput_V_user_V { axis {  { inData_TUSER in_data 0 112 } } }
	feInput_V_keep_V { axis {  { inData_TKEEP in_data 0 8 } } }
	feInput_V_last_V { axis {  { inData_TREADY in_acc 1 1 }  { inData_TLAST in_data 0 1 } } }
	metadataBuffer_rp_V_V { ap_fifo {  { metadataBuffer_rp_V_V_din fifo_data 1 248 }  { metadataBuffer_rp_V_V_full_n fifo_status 0 1 }  { metadataBuffer_rp_V_V_write fifo_update 1 1 } } }
	valueBuffer_rp_V_V { ap_fifo {  { valueBuffer_rp_V_V_din fifo_data 1 64 }  { valueBuffer_rp_V_V_full_n fifo_status 0 1 }  { valueBuffer_rp_V_V_write fifo_update 1 1 } } }
	keyBuffer_rp_V_V { ap_fifo {  { keyBuffer_rp_V_V_din fifo_data 1 64 }  { keyBuffer_rp_V_V_full_n fifo_status 0 1 }  { keyBuffer_rp_V_V_write fifo_update 1 1 } } }
}
