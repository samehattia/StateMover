set moduleName edit_len_field
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
set C_modelName {edit_len_field}
set C_modelType { void 0 }
set C_modelArgList {
	{ dataOut_V_data_V int 64 regular {axi_s 1 volatile  { dataOut Data } }  }
	{ dataOut_V_keep_V int 8 regular {axi_s 1 volatile  { dataOut Keep } }  }
	{ dataOut_V_last_V int 1 regular {axi_s 1 volatile  { dataOut Last } }  }
	{ dataOut_V_user_V int 112 regular {axi_s 1 volatile  { dataOut User } }  }
	{ dataFifo_V int 185 regular {fifo 0 volatile } {global 0}  }
	{ dataLenFifo_V_V int 16 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dataOut_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dataOut_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dataOut_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dataOut_V_user_V", "interface" : "axis", "bitwidth" : 112, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dataFifo_V", "interface" : "fifo", "bitwidth" : 185, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "dataLenFifo_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dataFifo_V_dout sc_in sc_lv 185 signal 4 } 
	{ dataFifo_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ dataFifo_V_read sc_out sc_logic 1 signal 4 } 
	{ dataLenFifo_V_V_dout sc_in sc_lv 16 signal 5 } 
	{ dataLenFifo_V_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ dataLenFifo_V_V_read sc_out sc_logic 1 signal 5 } 
	{ dataOut_TREADY sc_in sc_logic 1 outacc 3 } 
	{ dataOut_TDATA sc_out sc_lv 64 signal 0 } 
	{ dataOut_TVALID sc_out sc_logic 1 outvld 3 } 
	{ dataOut_TKEEP sc_out sc_lv 8 signal 1 } 
	{ dataOut_TLAST sc_out sc_lv 1 signal 2 } 
	{ dataOut_TUSER sc_out sc_lv 112 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dataFifo_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":185, "type": "signal", "bundle":{"name": "dataFifo_V", "role": "dout" }} , 
 	{ "name": "dataFifo_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataFifo_V", "role": "empty_n" }} , 
 	{ "name": "dataFifo_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataFifo_V", "role": "read" }} , 
 	{ "name": "dataLenFifo_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "dataLenFifo_V_V", "role": "dout" }} , 
 	{ "name": "dataLenFifo_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataLenFifo_V_V", "role": "empty_n" }} , 
 	{ "name": "dataLenFifo_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataLenFifo_V_V", "role": "read" }} , 
 	{ "name": "dataOut_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "dataOut_V_user_V", "role": "default" }} , 
 	{ "name": "dataOut_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataOut_V_data_V", "role": "default" }} , 
 	{ "name": "dataOut_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dataOut_V_user_V", "role": "default" }} , 
 	{ "name": "dataOut_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dataOut_V_keep_V", "role": "default" }} , 
 	{ "name": "dataOut_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dataOut_V_last_V", "role": "default" }} , 
 	{ "name": "dataOut_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":112, "type": "signal", "bundle":{"name": "dataOut_V_user_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "edit_len_field",
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
					{"Name" : "dataOut_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataOut_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "dataOut_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "dataOut_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "pkt_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dataLen_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dataFifo_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "dataFifo_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataLenFifo_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "dataLenFifo_V_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	edit_len_field {
		dataOut_V_data_V {Type O LastRead -1 FirstWrite 1}
		dataOut_V_keep_V {Type O LastRead -1 FirstWrite 1}
		dataOut_V_last_V {Type O LastRead -1 FirstWrite 1}
		dataOut_V_user_V {Type O LastRead -1 FirstWrite 1}
		pkt_state {Type IO LastRead -1 FirstWrite -1}
		dataLen_V_1 {Type IO LastRead -1 FirstWrite -1}
		dataFifo_V {Type I LastRead 0 FirstWrite -1}
		dataLenFifo_V_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	dataOut_V_data_V { axis {  { dataOut_TDATA out_data 1 64 } } }
	dataOut_V_keep_V { axis {  { dataOut_TKEEP out_data 1 8 } } }
	dataOut_V_last_V { axis {  { dataOut_TLAST out_data 1 1 } } }
	dataOut_V_user_V { axis {  { dataOut_TREADY out_acc 0 1 }  { dataOut_TVALID out_vld 1 1 }  { dataOut_TUSER out_data 1 112 } } }
	dataFifo_V { ap_fifo {  { dataFifo_V_dout fifo_data 0 185 }  { dataFifo_V_empty_n fifo_status 0 1 }  { dataFifo_V_read fifo_update 1 1 } } }
	dataLenFifo_V_V { ap_fifo {  { dataLenFifo_V_V_dout fifo_data 0 16 }  { dataLenFifo_V_V_empty_n fifo_status 0 1 }  { dataLenFifo_V_V_read fifo_update 1 1 } } }
}
