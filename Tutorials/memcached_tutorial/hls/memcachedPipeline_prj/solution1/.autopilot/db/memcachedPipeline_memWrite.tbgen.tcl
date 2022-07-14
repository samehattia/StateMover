set moduleName memcachedPipeline_memWrite
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function_flushable
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set pipeII 1
set pipeLatency 5
set C_modelName {memcachedPipeline_memWrite}
set C_modelType { void 0 }
set C_modelArgList { 
	{ memWrCtrl_V int 40 regular {axi_s 1 volatile  { memWrCtrl_V data } }  }
	{ memWrData_V_V int 512 regular {axi_s 1 volatile  { memWrData_V_V data } }  }
	{ addressReturnOut_V_V int 32 regular {axi_s 1 volatile  { addressReturnOut_V_V data } }  }
	{ addressAssignDramIn_V_V int 32 regular {axi_s 0 volatile  { addressAssignDramIn_V_V data } }  }
	{ addressAssignFlashIn_V_V int 32 regular {axi_s 0 volatile  { addressAssignFlashIn_V_V data } }  }
	{ flushReq_V int 1 regular {pointer 1}  }
	{ flushAck_V int 1 regular  }
	{ flushDone_V int 1 regular {pointer 1}  }
	{ comp2memWrMd_V int 64 regular {fifo 0 volatile } {global 0}  }
	{ comp2memWrStatus_V_bin int 8 regular {fifo 0 volatile } {global 0}  }
	{ comp2memWrMemData_V_V int 512 regular {fifo 0 volatile } {global 0}  }
	{ memWr2out_V int 57 regular {fifo 1 volatile } {global 1}  }
	{ dec2cc_V_V int 1 regular {fifo 1 volatile } {global 1}  }
	{ comp2memWrKey_V int 130 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "memWrCtrl_V", "interface" : "axis", "bitwidth" : 40} , 
 	{ "Name" : "memWrData_V_V", "interface" : "axis", "bitwidth" : 512} , 
 	{ "Name" : "addressReturnOut_V_V", "interface" : "axis", "bitwidth" : 32} , 
 	{ "Name" : "addressAssignDramIn_V_V", "interface" : "axis", "bitwidth" : 32} , 
 	{ "Name" : "addressAssignFlashIn_V_V", "interface" : "axis", "bitwidth" : 32} , 
 	{ "Name" : "flushReq_V", "interface" : "wire", "bitwidth" : 1} , 
 	{ "Name" : "flushAck_V", "interface" : "wire", "bitwidth" : 1} , 
 	{ "Name" : "flushDone_V", "interface" : "wire", "bitwidth" : 1} , 
 	{ "Name" : "comp2memWrMd_V", "interface" : "fifo", "bitwidth" : 64,"extern" : 0} , 
 	{ "Name" : "comp2memWrStatus_V_bin", "interface" : "fifo", "bitwidth" : 8,"extern" : 0} , 
 	{ "Name" : "comp2memWrMemData_V_V", "interface" : "fifo", "bitwidth" : 512,"extern" : 0} , 
 	{ "Name" : "memWr2out_V", "interface" : "fifo", "bitwidth" : 57,"extern" : 0} , 
 	{ "Name" : "dec2cc_V_V", "interface" : "fifo", "bitwidth" : 1,"extern" : 0} , 
 	{ "Name" : "comp2memWrKey_V", "interface" : "fifo", "bitwidth" : 130,"extern" : 0} ]}
# RTL Port declarations: 
set portNum 45
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ comp2memWrKey_V_dout sc_in sc_lv 130 signal 13 } 
	{ comp2memWrKey_V_empty_n sc_in sc_logic 1 signal 13 } 
	{ comp2memWrKey_V_read sc_out sc_logic 1 signal 13 } 
	{ comp2memWrMemData_V_V_dout sc_in sc_lv 512 signal 10 } 
	{ comp2memWrMemData_V_V_empty_n sc_in sc_logic 1 signal 10 } 
	{ comp2memWrMemData_V_V_read sc_out sc_logic 1 signal 10 } 
	{ addressAssignFlashIn_V_V_TVALID sc_in sc_logic 1 invld 4 } 
	{ addressAssignDramIn_V_V_TVALID sc_in sc_logic 1 invld 3 } 
	{ comp2memWrStatus_V_bin_dout sc_in sc_lv 8 signal 9 } 
	{ comp2memWrStatus_V_bin_empty_n sc_in sc_logic 1 signal 9 } 
	{ comp2memWrStatus_V_bin_read sc_out sc_logic 1 signal 9 } 
	{ comp2memWrMd_V_dout sc_in sc_lv 64 signal 8 } 
	{ comp2memWrMd_V_empty_n sc_in sc_logic 1 signal 8 } 
	{ comp2memWrMd_V_read sc_out sc_logic 1 signal 8 } 
	{ dec2cc_V_V_din sc_out sc_lv 1 signal 12 } 
	{ dec2cc_V_V_full_n sc_in sc_logic 1 signal 12 } 
	{ dec2cc_V_V_write sc_out sc_logic 1 signal 12 } 
	{ memWr2out_V_din sc_out sc_lv 57 signal 11 } 
	{ memWr2out_V_full_n sc_in sc_logic 1 signal 11 } 
	{ memWr2out_V_write sc_out sc_logic 1 signal 11 } 
	{ memWrCtrl_V_TREADY sc_in sc_logic 1 outacc 0 } 
	{ memWrData_V_V_TREADY sc_in sc_logic 1 outacc 1 } 
	{ addressReturnOut_V_V_TREADY sc_in sc_logic 1 outacc 2 } 
	{ memWrCtrl_V_TDATA sc_out sc_lv 40 signal 0 } 
	{ memWrCtrl_V_TVALID sc_out sc_logic 1 outvld 0 } 
	{ memWrData_V_V_TDATA sc_out sc_lv 512 signal 1 } 
	{ memWrData_V_V_TVALID sc_out sc_logic 1 outvld 1 } 
	{ addressReturnOut_V_V_TDATA sc_out sc_lv 32 signal 2 } 
	{ addressReturnOut_V_V_TVALID sc_out sc_logic 1 outvld 2 } 
	{ addressAssignDramIn_V_V_TDATA sc_in sc_lv 32 signal 3 } 
	{ addressAssignDramIn_V_V_TREADY sc_out sc_logic 1 inacc 3 } 
	{ addressAssignFlashIn_V_V_TDATA sc_in sc_lv 32 signal 4 } 
	{ addressAssignFlashIn_V_V_TREADY sc_out sc_logic 1 inacc 4 } 
	{ flushReq_V sc_out sc_lv 1 signal 5 } 
	{ flushReq_V_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ flushAck_V sc_in sc_lv 1 signal 6 } 
	{ flushDone_V sc_out sc_lv 1 signal 7 } 
	{ flushDone_V_ap_vld sc_out sc_logic 1 outvld 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "comp2memWrKey_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":130, "type": "signal", "bundle":{"name": "comp2memWrKey_V", "role": "dout" }} , 
 	{ "name": "comp2memWrKey_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "comp2memWrKey_V", "role": "empty_n" }} , 
 	{ "name": "comp2memWrKey_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "comp2memWrKey_V", "role": "read" }} , 
 	{ "name": "comp2memWrMemData_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "comp2memWrMemData_V_V", "role": "dout" }} , 
 	{ "name": "comp2memWrMemData_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "comp2memWrMemData_V_V", "role": "empty_n" }} , 
 	{ "name": "comp2memWrMemData_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "comp2memWrMemData_V_V", "role": "read" }} , 
 	{ "name": "addressAssignFlashIn_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "addressAssignFlashIn_V_V", "role": "TVALID" }} , 
 	{ "name": "addressAssignDramIn_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "addressAssignDramIn_V_V", "role": "TVALID" }} , 
 	{ "name": "comp2memWrStatus_V_bin_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "comp2memWrStatus_V_bin", "role": "dout" }} , 
 	{ "name": "comp2memWrStatus_V_bin_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "comp2memWrStatus_V_bin", "role": "empty_n" }} , 
 	{ "name": "comp2memWrStatus_V_bin_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "comp2memWrStatus_V_bin", "role": "read" }} , 
 	{ "name": "comp2memWrMd_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "comp2memWrMd_V", "role": "dout" }} , 
 	{ "name": "comp2memWrMd_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "comp2memWrMd_V", "role": "empty_n" }} , 
 	{ "name": "comp2memWrMd_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "comp2memWrMd_V", "role": "read" }} , 
 	{ "name": "dec2cc_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dec2cc_V_V", "role": "din" }} , 
 	{ "name": "dec2cc_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dec2cc_V_V", "role": "full_n" }} , 
 	{ "name": "dec2cc_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dec2cc_V_V", "role": "write" }} , 
 	{ "name": "memWr2out_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":57, "type": "signal", "bundle":{"name": "memWr2out_V", "role": "din" }} , 
 	{ "name": "memWr2out_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memWr2out_V", "role": "full_n" }} , 
 	{ "name": "memWr2out_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memWr2out_V", "role": "write" }} , 
 	{ "name": "memWrCtrl_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "memWrCtrl_V", "role": "TREADY" }} , 
 	{ "name": "memWrData_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "memWrData_V_V", "role": "TREADY" }} , 
 	{ "name": "addressReturnOut_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "addressReturnOut_V_V", "role": "TREADY" }} , 
 	{ "name": "memWrCtrl_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "memWrCtrl_V", "role": "TDATA" }} , 
 	{ "name": "memWrCtrl_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "memWrCtrl_V", "role": "TVALID" }} , 
 	{ "name": "memWrData_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "memWrData_V_V", "role": "TDATA" }} , 
 	{ "name": "memWrData_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "memWrData_V_V", "role": "TVALID" }} , 
 	{ "name": "addressReturnOut_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addressReturnOut_V_V", "role": "TDATA" }} , 
 	{ "name": "addressReturnOut_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "addressReturnOut_V_V", "role": "TVALID" }} , 
 	{ "name": "addressAssignDramIn_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addressAssignDramIn_V_V", "role": "TDATA" }} , 
 	{ "name": "addressAssignDramIn_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "addressAssignDramIn_V_V", "role": "TREADY" }} , 
 	{ "name": "addressAssignFlashIn_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addressAssignFlashIn_V_V", "role": "TDATA" }} , 
 	{ "name": "addressAssignFlashIn_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "addressAssignFlashIn_V_V", "role": "TREADY" }} , 
 	{ "name": "flushReq_V", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flushReq_V", "role": "default" }} , 
 	{ "name": "flushReq_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "flushReq_V", "role": "ap_vld" }} , 
 	{ "name": "flushAck_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flushAck_V", "role": "default" }} , 
 	{ "name": "flushDone_V", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flushDone_V", "role": "default" }} , 
 	{ "name": "flushDone_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "flushDone_V", "role": "ap_vld" }}  ]}
set Spec2ImplPortList { 
	memWrCtrl_V { axis {  { memWrCtrl_V_TREADY out_acc 0 1 }  { memWrCtrl_V_TDATA out_data 1 40 }  { memWrCtrl_V_TVALID out_vld 1 1 } } }
	memWrData_V_V { axis {  { memWrData_V_V_TREADY out_acc 0 1 }  { memWrData_V_V_TDATA out_data 1 512 }  { memWrData_V_V_TVALID out_vld 1 1 } } }
	addressReturnOut_V_V { axis {  { addressReturnOut_V_V_TREADY out_acc 0 1 }  { addressReturnOut_V_V_TDATA out_data 1 32 }  { addressReturnOut_V_V_TVALID out_vld 1 1 } } }
	addressAssignDramIn_V_V { axis {  { addressAssignDramIn_V_V_TVALID in_vld 0 1 }  { addressAssignDramIn_V_V_TDATA in_data 0 32 }  { addressAssignDramIn_V_V_TREADY in_acc 1 1 } } }
	addressAssignFlashIn_V_V { axis {  { addressAssignFlashIn_V_V_TVALID in_vld 0 1 }  { addressAssignFlashIn_V_V_TDATA in_data 0 32 }  { addressAssignFlashIn_V_V_TREADY in_acc 1 1 } } }
	flushReq_V { ap_vld {  { flushReq_V out_data 1 1 }  { flushReq_V_ap_vld out_vld 1 1 } } }
	flushAck_V { ap_none {  { flushAck_V in_data 0 1 } } }
	flushDone_V { ap_vld {  { flushDone_V out_data 1 1 }  { flushDone_V_ap_vld out_vld 1 1 } } }
	comp2memWrMd_V { ap_fifo {  { comp2memWrMd_V_dout fifo_data 0 64 }  { comp2memWrMd_V_empty_n fifo_status 0 1 }  { comp2memWrMd_V_read fifo_update 1 1 } } }
	comp2memWrStatus_V_bin { ap_fifo {  { comp2memWrStatus_V_bin_dout fifo_data 0 8 }  { comp2memWrStatus_V_bin_empty_n fifo_status 0 1 }  { comp2memWrStatus_V_bin_read fifo_update 1 1 } } }
	comp2memWrMemData_V_V { ap_fifo {  { comp2memWrMemData_V_V_dout fifo_data 0 512 }  { comp2memWrMemData_V_V_empty_n fifo_status 0 1 }  { comp2memWrMemData_V_V_read fifo_update 1 1 } } }
	memWr2out_V { ap_fifo {  { memWr2out_V_din fifo_data 1 57 }  { memWr2out_V_full_n fifo_status 0 1 }  { memWr2out_V_write fifo_update 1 1 } } }
	dec2cc_V_V { ap_fifo {  { dec2cc_V_V_din fifo_data 1 1 }  { dec2cc_V_V_full_n fifo_status 0 1 }  { dec2cc_V_V_write fifo_update 1 1 } } }
	comp2memWrKey_V { ap_fifo {  { comp2memWrKey_V_dout fifo_data 0 130 }  { comp2memWrKey_V_empty_n fifo_status 0 1 }  { comp2memWrKey_V_read fifo_update 1 1 } } }
}
