set moduleName detect_mac_protocol
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
set C_modelName {detect_mac_protocol}
set C_modelType { void 0 }
set C_modelArgList {
	{ dataIn_V_data_V int 64 regular {axi_s 0 volatile  { dataIn Data } }  }
	{ dataIn_V_keep_V int 8 regular {axi_s 0 volatile  { dataIn Keep } }  }
	{ dataIn_V_last_V int 1 regular {axi_s 0 volatile  { dataIn Last } }  }
	{ dataIn_V_user_V int 112 regular {axi_s 0 volatile  { dataIn User } }  }
	{ ipDataFifo_V int 185 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dataIn_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "dataIn_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "dataIn_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "dataIn_V_user_V", "interface" : "axis", "bitwidth" : 112, "direction" : "READONLY"} , 
 	{ "Name" : "ipDataFifo_V", "interface" : "fifo", "bitwidth" : 185, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dataIn_TVALID sc_in sc_logic 1 invld 3 } 
	{ ipDataFifo_V_din sc_out sc_lv 185 signal 4 } 
	{ ipDataFifo_V_full_n sc_in sc_logic 1 signal 4 } 
	{ ipDataFifo_V_write sc_out sc_logic 1 signal 4 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ dataIn_TDATA sc_in sc_lv 64 signal 0 } 
	{ dataIn_TREADY sc_out sc_logic 1 inacc 3 } 
	{ dataIn_TKEEP sc_in sc_lv 8 signal 1 } 
	{ dataIn_TLAST sc_in sc_lv 1 signal 2 } 
	{ dataIn_TUSER sc_in sc_lv 112 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dataIn_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "dataIn_V_user_V", "role": "default" }} , 
 	{ "name": "ipDataFifo_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":185, "type": "signal", "bundle":{"name": "ipDataFifo_V", "role": "din" }} , 
 	{ "name": "ipDataFifo_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ipDataFifo_V", "role": "full_n" }} , 
 	{ "name": "ipDataFifo_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ipDataFifo_V", "role": "write" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "dataIn_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataIn_V_data_V", "role": "default" }} , 
 	{ "name": "dataIn_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "dataIn_V_user_V", "role": "default" }} , 
 	{ "name": "dataIn_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dataIn_V_keep_V", "role": "default" }} , 
 	{ "name": "dataIn_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dataIn_V_last_V", "role": "default" }} , 
 	{ "name": "dataIn_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":112, "type": "signal", "bundle":{"name": "dataIn_V_user_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "detect_mac_protocol",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Unaligned", "UnalignedPipeline" : "1", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "dataIn_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "dataIn_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataIn_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "dataIn_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "dataIn_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "dmp_fsmState_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dmp_macType_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dmp_prevWord_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dmp_prevWord_keep_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dmp_prevWord_last_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dmp_prevWord_user_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dmp_wordCount_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ipDataFifo_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ipDataFifo_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	detect_mac_protocol {
		dataIn_V_data_V {Type I LastRead 0 FirstWrite -1}
		dataIn_V_keep_V {Type I LastRead 0 FirstWrite -1}
		dataIn_V_last_V {Type I LastRead 0 FirstWrite -1}
		dataIn_V_user_V {Type I LastRead 0 FirstWrite -1}
		dmp_fsmState_V {Type IO LastRead -1 FirstWrite -1}
		dmp_macType_V {Type IO LastRead -1 FirstWrite -1}
		dmp_prevWord_data_V {Type IO LastRead -1 FirstWrite -1}
		dmp_prevWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		dmp_prevWord_last_V {Type IO LastRead -1 FirstWrite -1}
		dmp_prevWord_user_V {Type IO LastRead -1 FirstWrite -1}
		dmp_wordCount_V {Type IO LastRead -1 FirstWrite -1}
		ipDataFifo_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	dataIn_V_data_V { axis {  { dataIn_TDATA in_data 0 64 } } }
	dataIn_V_keep_V { axis {  { dataIn_TKEEP in_data 0 8 } } }
	dataIn_V_last_V { axis {  { dataIn_TLAST in_data 0 1 } } }
	dataIn_V_user_V { axis {  { dataIn_TVALID in_vld 0 1 }  { dataIn_TREADY in_acc 1 1 }  { dataIn_TUSER in_data 0 112 } } }
	ipDataFifo_V { ap_fifo {  { ipDataFifo_V_din fifo_data 1 185 }  { ipDataFifo_V_full_n fifo_status 0 1 }  { ipDataFifo_V_write fifo_update 1 1 } } }
}
set moduleName detect_mac_protocol
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
set C_modelName {detect_mac_protocol}
set C_modelType { void 0 }
set C_modelArgList {
	{ dataIn_V_data_V int 64 regular {axi_s 0 volatile  { dataIn Data } }  }
	{ dataIn_V_keep_V int 8 regular {axi_s 0 volatile  { dataIn Keep } }  }
	{ dataIn_V_last_V int 1 regular {axi_s 0 volatile  { dataIn Last } }  }
	{ dataIn_V_user_V int 112 regular {axi_s 0 volatile  { dataIn User } }  }
	{ myMacAddress_V int 48 regular {ap_stable 0} }
	{ ipDataFifo_V int 185 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dataIn_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "dataIn_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "dataIn_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "dataIn_V_user_V", "interface" : "axis", "bitwidth" : 112, "direction" : "READONLY"} , 
 	{ "Name" : "myMacAddress_V", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "ipDataFifo_V", "interface" : "fifo", "bitwidth" : 185, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dataIn_TVALID sc_in sc_logic 1 invld 3 } 
	{ ipDataFifo_V_din sc_out sc_lv 185 signal 5 } 
	{ ipDataFifo_V_full_n sc_in sc_logic 1 signal 5 } 
	{ ipDataFifo_V_write sc_out sc_logic 1 signal 5 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ dataIn_TDATA sc_in sc_lv 64 signal 0 } 
	{ dataIn_TREADY sc_out sc_logic 1 inacc 3 } 
	{ dataIn_TKEEP sc_in sc_lv 8 signal 1 } 
	{ dataIn_TLAST sc_in sc_lv 1 signal 2 } 
	{ dataIn_TUSER sc_in sc_lv 112 signal 3 } 
	{ myMacAddress_V sc_in sc_lv 48 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dataIn_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "dataIn_V_user_V", "role": "default" }} , 
 	{ "name": "ipDataFifo_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":185, "type": "signal", "bundle":{"name": "ipDataFifo_V", "role": "din" }} , 
 	{ "name": "ipDataFifo_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ipDataFifo_V", "role": "full_n" }} , 
 	{ "name": "ipDataFifo_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ipDataFifo_V", "role": "write" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "dataIn_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataIn_V_data_V", "role": "default" }} , 
 	{ "name": "dataIn_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "dataIn_V_user_V", "role": "default" }} , 
 	{ "name": "dataIn_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dataIn_V_keep_V", "role": "default" }} , 
 	{ "name": "dataIn_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dataIn_V_last_V", "role": "default" }} , 
 	{ "name": "dataIn_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":112, "type": "signal", "bundle":{"name": "dataIn_V_user_V", "role": "default" }} , 
 	{ "name": "myMacAddress_V", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "myMacAddress_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "detect_mac_protocol",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Unaligned", "UnalignedPipeline" : "1", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "dataIn_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "dataIn_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataIn_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "dataIn_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "dataIn_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "myMacAddress_V", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "dmp_fsmState_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dmp_macType_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dmp_prevWord_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dmp_prevWord_keep_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dmp_prevWord_last_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dmp_prevWord_user_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dmp_wordCount_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ipDataFifo_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ipDataFifo_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	detect_mac_protocol {
		dataIn_V_data_V {Type I LastRead 0 FirstWrite -1}
		dataIn_V_keep_V {Type I LastRead 0 FirstWrite -1}
		dataIn_V_last_V {Type I LastRead 0 FirstWrite -1}
		dataIn_V_user_V {Type I LastRead 0 FirstWrite -1}
		myMacAddress_V {Type I LastRead 0 FirstWrite -1}
		dmp_fsmState_V {Type IO LastRead -1 FirstWrite -1}
		dmp_macType_V {Type IO LastRead -1 FirstWrite -1}
		dmp_prevWord_data_V {Type IO LastRead -1 FirstWrite -1}
		dmp_prevWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		dmp_prevWord_last_V {Type IO LastRead -1 FirstWrite -1}
		dmp_prevWord_user_V {Type IO LastRead -1 FirstWrite -1}
		dmp_wordCount_V {Type IO LastRead -1 FirstWrite -1}
		ipDataFifo_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	dataIn_V_data_V { axis {  { dataIn_TDATA in_data 0 64 } } }
	dataIn_V_keep_V { axis {  { dataIn_TKEEP in_data 0 8 } } }
	dataIn_V_last_V { axis {  { dataIn_TLAST in_data 0 1 } } }
	dataIn_V_user_V { axis {  { dataIn_TVALID in_vld 0 1 }  { dataIn_TREADY in_acc 1 1 }  { dataIn_TUSER in_data 0 112 } } }
	myMacAddress_V { ap_stable {  { myMacAddress_V in_data 0 48 } } }
	ipDataFifo_V { ap_fifo {  { ipDataFifo_V_din fifo_data 1 185 }  { ipDataFifo_V_full_n fifo_status 0 1 }  { ipDataFifo_V_write fifo_update 1 1 } } }
}
