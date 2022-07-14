set moduleName strip_mac_header
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function_flushable
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {strip_mac_header}
set C_modelType { void 0 }
set C_modelArgList {
	{ dataOut_V_data_V int 64 regular {axi_s 1 volatile  { IPdataOut Data } }  }
	{ dataOut_V_keep_V int 8 regular {axi_s 1 volatile  { IPdataOut Keep } }  }
	{ dataOut_V_last_V int 1 regular {axi_s 1 volatile  { IPdataOut Last } }  }
	{ dataOut_V_user_V int 112 regular {axi_s 1 volatile  { IPdataOut User } }  }
	{ ipDataFifo_V int 185 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dataOut_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dataOut_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dataOut_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dataOut_V_user_V", "interface" : "axis", "bitwidth" : 112, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ipDataFifo_V", "interface" : "fifo", "bitwidth" : 185, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ipDataFifo_V_dout sc_in sc_lv 185 signal 4 } 
	{ ipDataFifo_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ ipDataFifo_V_read sc_out sc_logic 1 signal 4 } 
	{ IPdataOut_TREADY sc_in sc_logic 1 outacc 3 } 
	{ IPdataOut_TDATA sc_out sc_lv 64 signal 0 } 
	{ IPdataOut_TVALID sc_out sc_logic 1 outvld 3 } 
	{ IPdataOut_TKEEP sc_out sc_lv 8 signal 1 } 
	{ IPdataOut_TLAST sc_out sc_lv 1 signal 2 } 
	{ IPdataOut_TUSER sc_out sc_lv 112 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ipDataFifo_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":185, "type": "signal", "bundle":{"name": "ipDataFifo_V", "role": "dout" }} , 
 	{ "name": "ipDataFifo_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ipDataFifo_V", "role": "empty_n" }} , 
 	{ "name": "ipDataFifo_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ipDataFifo_V", "role": "read" }} , 
 	{ "name": "IPdataOut_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "dataOut_V_user_V", "role": "default" }} , 
 	{ "name": "IPdataOut_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataOut_V_data_V", "role": "default" }} , 
 	{ "name": "IPdataOut_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dataOut_V_user_V", "role": "default" }} , 
 	{ "name": "IPdataOut_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dataOut_V_keep_V", "role": "default" }} , 
 	{ "name": "IPdataOut_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dataOut_V_last_V", "role": "default" }} , 
 	{ "name": "IPdataOut_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":112, "type": "signal", "bundle":{"name": "dataOut_V_user_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "strip_mac_header",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Unaligned", "UnalignedPipeline" : "1", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "dataOut_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "IPdataOut_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataOut_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "dataOut_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "dataOut_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ipDataFifo_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ipDataFifo_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cics_wasLast", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dataLen_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sentBytes_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_prevWord_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_prevWord_keep_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_wordCount_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "destMacAddress_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "srcMacAddress_V", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	strip_mac_header {
		dataOut_V_data_V {Type O LastRead -1 FirstWrite 1}
		dataOut_V_keep_V {Type O LastRead -1 FirstWrite 1}
		dataOut_V_last_V {Type O LastRead -1 FirstWrite 1}
		dataOut_V_user_V {Type O LastRead -1 FirstWrite 1}
		ipDataFifo_V {Type I LastRead 0 FirstWrite -1}
		cics_wasLast {Type IO LastRead -1 FirstWrite -1}
		dataLen_V {Type IO LastRead -1 FirstWrite -1}
		sentBytes_V {Type IO LastRead -1 FirstWrite -1}
		cics_prevWord_data_V {Type IO LastRead -1 FirstWrite -1}
		cics_prevWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		cics_wordCount_V {Type IO LastRead -1 FirstWrite -1}
		destMacAddress_V {Type IO LastRead -1 FirstWrite -1}
		srcMacAddress_V {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	dataOut_V_data_V { axis {  { IPdataOut_TDATA out_data 1 64 } } }
	dataOut_V_keep_V { axis {  { IPdataOut_TKEEP out_data 1 8 } } }
	dataOut_V_last_V { axis {  { IPdataOut_TLAST out_data 1 1 } } }
	dataOut_V_user_V { axis {  { IPdataOut_TREADY out_acc 0 1 }  { IPdataOut_TVALID out_vld 1 1 }  { IPdataOut_TUSER out_data 1 112 } } }
	ipDataFifo_V { ap_fifo {  { ipDataFifo_V_dout fifo_data 0 185 }  { ipDataFifo_V_empty_n fifo_status 0 1 }  { ipDataFifo_V_read fifo_update 1 1 } } }
}
set moduleName strip_mac_header
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function_flushable
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {strip_mac_header}
set C_modelType { void 0 }
set C_modelArgList {
	{ dataOut_V_data_V int 64 regular {axi_s 1 volatile  { IPdataOut Data } }  }
	{ dataOut_V_keep_V int 8 regular {axi_s 1 volatile  { IPdataOut Keep } }  }
	{ dataOut_V_last_V int 1 regular {axi_s 1 volatile  { IPdataOut Last } }  }
	{ dataOut_V_user_V int 112 regular {axi_s 1 volatile  { IPdataOut User } }  }
	{ ipDataFifo_V int 185 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dataOut_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dataOut_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dataOut_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dataOut_V_user_V", "interface" : "axis", "bitwidth" : 112, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ipDataFifo_V", "interface" : "fifo", "bitwidth" : 185, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ipDataFifo_V_dout sc_in sc_lv 185 signal 4 } 
	{ ipDataFifo_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ ipDataFifo_V_read sc_out sc_logic 1 signal 4 } 
	{ IPdataOut_TREADY sc_in sc_logic 1 outacc 3 } 
	{ IPdataOut_TDATA sc_out sc_lv 64 signal 0 } 
	{ IPdataOut_TVALID sc_out sc_logic 1 outvld 3 } 
	{ IPdataOut_TKEEP sc_out sc_lv 8 signal 1 } 
	{ IPdataOut_TLAST sc_out sc_lv 1 signal 2 } 
	{ IPdataOut_TUSER sc_out sc_lv 112 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ipDataFifo_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":185, "type": "signal", "bundle":{"name": "ipDataFifo_V", "role": "dout" }} , 
 	{ "name": "ipDataFifo_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ipDataFifo_V", "role": "empty_n" }} , 
 	{ "name": "ipDataFifo_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ipDataFifo_V", "role": "read" }} , 
 	{ "name": "IPdataOut_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "dataOut_V_user_V", "role": "default" }} , 
 	{ "name": "IPdataOut_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataOut_V_data_V", "role": "default" }} , 
 	{ "name": "IPdataOut_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dataOut_V_user_V", "role": "default" }} , 
 	{ "name": "IPdataOut_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dataOut_V_keep_V", "role": "default" }} , 
 	{ "name": "IPdataOut_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dataOut_V_last_V", "role": "default" }} , 
 	{ "name": "IPdataOut_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":112, "type": "signal", "bundle":{"name": "dataOut_V_user_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "strip_mac_header",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Unaligned", "UnalignedPipeline" : "1", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "dataOut_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "IPdataOut_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataOut_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "dataOut_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "dataOut_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ipDataFifo_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ipDataFifo_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cics_wasLast", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dataLen_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sentBytes_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_prevWord_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_prevWord_keep_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_wordCount_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "destMacAddress_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "srcMacAddress_V", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	strip_mac_header {
		dataOut_V_data_V {Type O LastRead -1 FirstWrite 1}
		dataOut_V_keep_V {Type O LastRead -1 FirstWrite 1}
		dataOut_V_last_V {Type O LastRead -1 FirstWrite 1}
		dataOut_V_user_V {Type O LastRead -1 FirstWrite 1}
		ipDataFifo_V {Type I LastRead 0 FirstWrite -1}
		cics_wasLast {Type IO LastRead -1 FirstWrite -1}
		dataLen_V {Type IO LastRead -1 FirstWrite -1}
		sentBytes_V {Type IO LastRead -1 FirstWrite -1}
		cics_prevWord_data_V {Type IO LastRead -1 FirstWrite -1}
		cics_prevWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		cics_wordCount_V {Type IO LastRead -1 FirstWrite -1}
		destMacAddress_V {Type IO LastRead -1 FirstWrite -1}
		srcMacAddress_V {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	dataOut_V_data_V { axis {  { IPdataOut_TDATA out_data 1 64 } } }
	dataOut_V_keep_V { axis {  { IPdataOut_TKEEP out_data 1 8 } } }
	dataOut_V_last_V { axis {  { IPdataOut_TLAST out_data 1 1 } } }
	dataOut_V_user_V { axis {  { IPdataOut_TREADY out_acc 0 1 }  { IPdataOut_TVALID out_vld 1 1 }  { IPdataOut_TUSER out_data 1 112 } } }
	ipDataFifo_V { ap_fifo {  { ipDataFifo_V_dout fifo_data 0 185 }  { ipDataFifo_V_empty_n fifo_status 0 1 }  { ipDataFifo_V_read fifo_update 1 1 } } }
}
