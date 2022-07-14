set moduleName add_mac_header
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
set C_modelName {add_mac_header}
set C_modelType { void 0 }
set C_modelArgList {
	{ dataIn_V_data_V int 64 regular {axi_s 0 volatile  { dataIn Data } }  }
	{ dataIn_V_keep_V int 8 regular {axi_s 0 volatile  { dataIn Keep } }  }
	{ dataIn_V_last_V int 1 regular {axi_s 0 volatile  { dataIn Last } }  }
	{ dataIn_V_user_V int 112 regular {axi_s 0 volatile  { dataIn User } }  }
	{ dataFifo_V int 185 regular {fifo 1 volatile } {global 1}  }
	{ dataLenFifo_V_V int 16 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dataIn_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "dataIn_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "dataIn_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "dataIn_V_user_V", "interface" : "axis", "bitwidth" : 112, "direction" : "READONLY"} , 
 	{ "Name" : "dataFifo_V", "interface" : "fifo", "bitwidth" : 185, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "dataLenFifo_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dataFifo_V_din sc_out sc_lv 185 signal 4 } 
	{ dataFifo_V_full_n sc_in sc_logic 1 signal 4 } 
	{ dataFifo_V_write sc_out sc_logic 1 signal 4 } 
	{ dataLenFifo_V_V_din sc_out sc_lv 16 signal 5 } 
	{ dataLenFifo_V_V_full_n sc_in sc_logic 1 signal 5 } 
	{ dataLenFifo_V_V_write sc_out sc_logic 1 signal 5 } 
	{ dataIn_TVALID sc_in sc_logic 1 invld 3 } 
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
 	{ "name": "dataFifo_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":185, "type": "signal", "bundle":{"name": "dataFifo_V", "role": "din" }} , 
 	{ "name": "dataFifo_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataFifo_V", "role": "full_n" }} , 
 	{ "name": "dataFifo_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataFifo_V", "role": "write" }} , 
 	{ "name": "dataLenFifo_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "dataLenFifo_V_V", "role": "din" }} , 
 	{ "name": "dataLenFifo_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataLenFifo_V_V", "role": "full_n" }} , 
 	{ "name": "dataLenFifo_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataLenFifo_V_V", "role": "write" }} , 
 	{ "name": "dataIn_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "dataIn_V_user_V", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "dataIn_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataIn_V_data_V", "role": "default" }} , 
 	{ "name": "dataIn_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "dataIn_V_user_V", "role": "default" }} , 
 	{ "name": "dataIn_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dataIn_V_keep_V", "role": "default" }} , 
 	{ "name": "dataIn_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dataIn_V_last_V", "role": "default" }} , 
 	{ "name": "dataIn_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":112, "type": "signal", "bundle":{"name": "dataIn_V_user_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "add_mac_header",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Unaligned", "UnalignedPipeline" : "1", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "2",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
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
			{"Name" : "mw_writeLast", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mw_prevWord_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mw_prevWord_keep_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dataFifo_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "dataFifo_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mw_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "headWord_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "headWord_keep_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "headWord_last_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dataLen_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dataLenW", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "srcMacAddress_V_r", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dataLenFifo_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "dataLenFifo_V_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	add_mac_header {
		dataIn_V_data_V {Type I LastRead 1 FirstWrite -1}
		dataIn_V_keep_V {Type I LastRead 1 FirstWrite -1}
		dataIn_V_last_V {Type I LastRead 1 FirstWrite -1}
		dataIn_V_user_V {Type I LastRead 1 FirstWrite -1}
		mw_writeLast {Type IO LastRead -1 FirstWrite -1}
		mw_prevWord_data_V {Type IO LastRead -1 FirstWrite -1}
		mw_prevWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		dataFifo_V {Type O LastRead -1 FirstWrite 1}
		mw_state {Type IO LastRead -1 FirstWrite -1}
		headWord_data_V {Type IO LastRead -1 FirstWrite -1}
		headWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		headWord_last_V {Type IO LastRead -1 FirstWrite -1}
		dataLen_V {Type IO LastRead -1 FirstWrite -1}
		dataLenW {Type IO LastRead -1 FirstWrite -1}
		srcMacAddress_V_r {Type IO LastRead -1 FirstWrite -1}
		dataLenFifo_V_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	dataIn_V_data_V { axis {  { dataIn_TDATA in_data 0 64 } } }
	dataIn_V_keep_V { axis {  { dataIn_TKEEP in_data 0 8 } } }
	dataIn_V_last_V { axis {  { dataIn_TLAST in_data 0 1 } } }
	dataIn_V_user_V { axis {  { dataIn_TVALID in_vld 0 1 }  { dataIn_TREADY in_acc 1 1 }  { dataIn_TUSER in_data 0 112 } } }
	dataFifo_V { ap_fifo {  { dataFifo_V_din fifo_data 1 185 }  { dataFifo_V_full_n fifo_status 0 1 }  { dataFifo_V_write fifo_update 1 1 } } }
	dataLenFifo_V_V { ap_fifo {  { dataLenFifo_V_V_din fifo_data 1 16 }  { dataLenFifo_V_V_full_n fifo_status 0 1 }  { dataLenFifo_V_V_write fifo_update 1 1 } } }
}
