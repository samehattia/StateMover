set moduleName memcachedPipeline_ht_compare
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function_flushable
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set pipeII 1
set pipeLatency 1
set C_modelName {memcachedPipeline_ht_compare}
set C_modelType { void 0 }
set C_modelArgList { 
	{ memRdData_V_V int 512 regular {axi_s 0 volatile  { memRdData_V_V data } }  }
	{ memRd2compMd_V int 64 regular {fifo 0 volatile } {global 0}  }
	{ comp2memWrMemData_V_V int 512 regular {fifo 1 volatile } {global 1}  }
	{ memRd2comp_V int 130 regular {fifo 0 volatile } {global 0}  }
	{ comp2memWrKey_V int 130 regular {fifo 1 volatile } {global 1}  }
	{ comp2memWrMd_V int 64 regular {fifo 1 volatile } {global 1}  }
	{ comp2memWrStatus_V_bin int 8 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "memRdData_V_V", "interface" : "axis", "bitwidth" : 512} , 
 	{ "Name" : "memRd2compMd_V", "interface" : "fifo", "bitwidth" : 64,"extern" : 0} , 
 	{ "Name" : "comp2memWrMemData_V_V", "interface" : "fifo", "bitwidth" : 512,"extern" : 0} , 
 	{ "Name" : "memRd2comp_V", "interface" : "fifo", "bitwidth" : 130,"extern" : 0} , 
 	{ "Name" : "comp2memWrKey_V", "interface" : "fifo", "bitwidth" : 130,"extern" : 0} , 
 	{ "Name" : "comp2memWrMd_V", "interface" : "fifo", "bitwidth" : 64,"extern" : 0} , 
 	{ "Name" : "comp2memWrStatus_V_bin", "interface" : "fifo", "bitwidth" : 8,"extern" : 0} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ memRd2comp_V_dout sc_in sc_lv 130 signal 3 } 
	{ memRd2comp_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ memRd2comp_V_read sc_out sc_logic 1 signal 3 } 
	{ memRdData_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ memRd2compMd_V_dout sc_in sc_lv 64 signal 1 } 
	{ memRd2compMd_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ memRd2compMd_V_read sc_out sc_logic 1 signal 1 } 
	{ comp2memWrKey_V_din sc_out sc_lv 130 signal 4 } 
	{ comp2memWrKey_V_full_n sc_in sc_logic 1 signal 4 } 
	{ comp2memWrKey_V_write sc_out sc_logic 1 signal 4 } 
	{ comp2memWrMd_V_din sc_out sc_lv 64 signal 5 } 
	{ comp2memWrMd_V_full_n sc_in sc_logic 1 signal 5 } 
	{ comp2memWrMd_V_write sc_out sc_logic 1 signal 5 } 
	{ comp2memWrStatus_V_bin_din sc_out sc_lv 8 signal 6 } 
	{ comp2memWrStatus_V_bin_full_n sc_in sc_logic 1 signal 6 } 
	{ comp2memWrStatus_V_bin_write sc_out sc_logic 1 signal 6 } 
	{ comp2memWrMemData_V_V_din sc_out sc_lv 512 signal 2 } 
	{ comp2memWrMemData_V_V_full_n sc_in sc_logic 1 signal 2 } 
	{ comp2memWrMemData_V_V_write sc_out sc_logic 1 signal 2 } 
	{ memRdData_V_V_TDATA sc_in sc_lv 512 signal 0 } 
	{ memRdData_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "memRd2comp_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":130, "type": "signal", "bundle":{"name": "memRd2comp_V", "role": "dout" }} , 
 	{ "name": "memRd2comp_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memRd2comp_V", "role": "empty_n" }} , 
 	{ "name": "memRd2comp_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memRd2comp_V", "role": "read" }} , 
 	{ "name": "memRdData_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "memRdData_V_V", "role": "TVALID" }} , 
 	{ "name": "memRd2compMd_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "memRd2compMd_V", "role": "dout" }} , 
 	{ "name": "memRd2compMd_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memRd2compMd_V", "role": "empty_n" }} , 
 	{ "name": "memRd2compMd_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memRd2compMd_V", "role": "read" }} , 
 	{ "name": "comp2memWrKey_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":130, "type": "signal", "bundle":{"name": "comp2memWrKey_V", "role": "din" }} , 
 	{ "name": "comp2memWrKey_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "comp2memWrKey_V", "role": "full_n" }} , 
 	{ "name": "comp2memWrKey_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "comp2memWrKey_V", "role": "write" }} , 
 	{ "name": "comp2memWrMd_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "comp2memWrMd_V", "role": "din" }} , 
 	{ "name": "comp2memWrMd_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "comp2memWrMd_V", "role": "full_n" }} , 
 	{ "name": "comp2memWrMd_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "comp2memWrMd_V", "role": "write" }} , 
 	{ "name": "comp2memWrStatus_V_bin_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "comp2memWrStatus_V_bin", "role": "din" }} , 
 	{ "name": "comp2memWrStatus_V_bin_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "comp2memWrStatus_V_bin", "role": "full_n" }} , 
 	{ "name": "comp2memWrStatus_V_bin_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "comp2memWrStatus_V_bin", "role": "write" }} , 
 	{ "name": "comp2memWrMemData_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "comp2memWrMemData_V_V", "role": "din" }} , 
 	{ "name": "comp2memWrMemData_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "comp2memWrMemData_V_V", "role": "full_n" }} , 
 	{ "name": "comp2memWrMemData_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "comp2memWrMemData_V_V", "role": "write" }} , 
 	{ "name": "memRdData_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "memRdData_V_V", "role": "TDATA" }} , 
 	{ "name": "memRdData_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "memRdData_V_V", "role": "TREADY" }}  ]}
set Spec2ImplPortList { 
	memRdData_V_V { axis {  { memRdData_V_V_TVALID in_vld 0 1 }  { memRdData_V_V_TDATA in_data 0 512 }  { memRdData_V_V_TREADY in_acc 1 1 } } }
	memRd2compMd_V { ap_fifo {  { memRd2compMd_V_dout fifo_data 0 64 }  { memRd2compMd_V_empty_n fifo_status 0 1 }  { memRd2compMd_V_read fifo_update 1 1 } } }
	comp2memWrMemData_V_V { ap_fifo {  { comp2memWrMemData_V_V_din fifo_data 1 512 }  { comp2memWrMemData_V_V_full_n fifo_status 0 1 }  { comp2memWrMemData_V_V_write fifo_update 1 1 } } }
	memRd2comp_V { ap_fifo {  { memRd2comp_V_dout fifo_data 0 130 }  { memRd2comp_V_empty_n fifo_status 0 1 }  { memRd2comp_V_read fifo_update 1 1 } } }
	comp2memWrKey_V { ap_fifo {  { comp2memWrKey_V_din fifo_data 1 130 }  { comp2memWrKey_V_full_n fifo_status 0 1 }  { comp2memWrKey_V_write fifo_update 1 1 } } }
	comp2memWrMd_V { ap_fifo {  { comp2memWrMd_V_din fifo_data 1 64 }  { comp2memWrMd_V_full_n fifo_status 0 1 }  { comp2memWrMd_V_write fifo_update 1 1 } } }
	comp2memWrStatus_V_bin { ap_fifo {  { comp2memWrStatus_V_bin_din fifo_data 1 8 }  { comp2memWrStatus_V_bin_full_n fifo_status 0 1 }  { comp2memWrStatus_V_bin_write fifo_update 1 1 } } }
}
