set moduleName flashCmdAggregator
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {flashCmdAggregator}
set C_modelType { void 0 }
set C_modelArgList {
	{ rdCmdIn_V int 48 regular {axi_s 0 volatile  { rdCmdIn_V Data } }  }
	{ wrCmdIn_V int 48 regular {axi_s 0 volatile  { wrCmdIn_V Data } }  }
	{ flashAggregateMemCmd_1 int 46 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rdCmdIn_V", "interface" : "axis", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "wrCmdIn_V", "interface" : "axis", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "flashAggregateMemCmd_1", "interface" : "fifo", "bitwidth" : 46, "direction" : "WRITEONLY", "extern" : 0} ]}
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
	{ rdCmdIn_V_TDATA sc_in sc_lv 48 signal 0 } 
	{ rdCmdIn_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ rdCmdIn_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ wrCmdIn_V_TDATA sc_in sc_lv 48 signal 1 } 
	{ wrCmdIn_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ wrCmdIn_V_TREADY sc_out sc_logic 1 inacc 1 } 
	{ flashAggregateMemCmd_1_din sc_out sc_lv 46 signal 2 } 
	{ flashAggregateMemCmd_1_full_n sc_in sc_logic 1 signal 2 } 
	{ flashAggregateMemCmd_1_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rdCmdIn_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "rdCmdIn_V", "role": "TDATA" }} , 
 	{ "name": "rdCmdIn_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "rdCmdIn_V", "role": "TVALID" }} , 
 	{ "name": "rdCmdIn_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "rdCmdIn_V", "role": "TREADY" }} , 
 	{ "name": "wrCmdIn_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "wrCmdIn_V", "role": "TDATA" }} , 
 	{ "name": "wrCmdIn_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "wrCmdIn_V", "role": "TVALID" }} , 
 	{ "name": "wrCmdIn_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "wrCmdIn_V", "role": "TREADY" }} , 
 	{ "name": "flashAggregateMemCmd_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":46, "type": "signal", "bundle":{"name": "flashAggregateMemCmd_1", "role": "din" }} , 
 	{ "name": "flashAggregateMemCmd_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashAggregateMemCmd_1", "role": "full_n" }} , 
 	{ "name": "flashAggregateMemCmd_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashAggregateMemCmd_1", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "flashCmdAggregator",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "rdCmdIn_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "rdCmdIn_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wrCmdIn_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "wrCmdIn_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "flashAggregateMemCmd_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "flashAggregateMemCmd_1_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	flashCmdAggregator {
		rdCmdIn_V {Type I LastRead 0 FirstWrite -1}
		wrCmdIn_V {Type I LastRead 0 FirstWrite -1}
		flashAggregateMemCmd_1 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rdCmdIn_V { axis {  { rdCmdIn_V_TDATA in_data 0 48 }  { rdCmdIn_V_TVALID in_vld 0 1 }  { rdCmdIn_V_TREADY in_acc 1 1 } } }
	wrCmdIn_V { axis {  { wrCmdIn_V_TDATA in_data 0 48 }  { wrCmdIn_V_TVALID in_vld 0 1 }  { wrCmdIn_V_TREADY in_acc 1 1 } } }
	flashAggregateMemCmd_1 { ap_fifo {  { flashAggregateMemCmd_1_din fifo_data 1 46 }  { flashAggregateMemCmd_1_full_n fifo_status 0 1 }  { flashAggregateMemCmd_1_write fifo_update 1 1 } } }
}
