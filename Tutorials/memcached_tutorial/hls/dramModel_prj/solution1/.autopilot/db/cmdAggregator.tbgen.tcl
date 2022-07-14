set moduleName cmdAggregator
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
set C_modelName {cmdAggregator}
set C_modelType { void 0 }
set C_modelArgList {
	{ rdCmdIn_V int 40 regular {axi_s 0 volatile  { rdCmdIn_V Data } }  }
	{ wrCmdIn_V int 40 regular {axi_s 0 volatile  { wrCmdIn_V Data } }  }
	{ aggregateMemCmd_V int 21 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rdCmdIn_V", "interface" : "axis", "bitwidth" : 40, "direction" : "READONLY"} , 
 	{ "Name" : "wrCmdIn_V", "interface" : "axis", "bitwidth" : 40, "direction" : "READONLY"} , 
 	{ "Name" : "aggregateMemCmd_V", "interface" : "fifo", "bitwidth" : 21, "direction" : "WRITEONLY", "extern" : 0} ]}
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
	{ rdCmdIn_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ wrCmdIn_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ aggregateMemCmd_V_din sc_out sc_lv 21 signal 2 } 
	{ aggregateMemCmd_V_full_n sc_in sc_logic 1 signal 2 } 
	{ aggregateMemCmd_V_write sc_out sc_logic 1 signal 2 } 
	{ rdCmdIn_V_TDATA sc_in sc_lv 40 signal 0 } 
	{ rdCmdIn_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ wrCmdIn_V_TDATA sc_in sc_lv 40 signal 1 } 
	{ wrCmdIn_V_TREADY sc_out sc_logic 1 inacc 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rdCmdIn_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "rdCmdIn_V", "role": "TVALID" }} , 
 	{ "name": "wrCmdIn_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "wrCmdIn_V", "role": "TVALID" }} , 
 	{ "name": "aggregateMemCmd_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "aggregateMemCmd_V", "role": "din" }} , 
 	{ "name": "aggregateMemCmd_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aggregateMemCmd_V", "role": "full_n" }} , 
 	{ "name": "aggregateMemCmd_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aggregateMemCmd_V", "role": "write" }} , 
 	{ "name": "rdCmdIn_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "rdCmdIn_V", "role": "TDATA" }} , 
 	{ "name": "rdCmdIn_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "rdCmdIn_V", "role": "TREADY" }} , 
 	{ "name": "wrCmdIn_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "wrCmdIn_V", "role": "TDATA" }} , 
 	{ "name": "wrCmdIn_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "wrCmdIn_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "cmdAggregator",
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
			{"Name" : "rdCmdIn_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "rdCmdIn_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wrCmdIn_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "wrCmdIn_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aggregateMemCmd_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "aggregateMemCmd_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	cmdAggregator {
		rdCmdIn_V {Type I LastRead 0 FirstWrite -1}
		wrCmdIn_V {Type I LastRead 0 FirstWrite -1}
		aggregateMemCmd_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rdCmdIn_V { axis {  { rdCmdIn_V_TVALID in_vld 0 1 }  { rdCmdIn_V_TDATA in_data 0 40 }  { rdCmdIn_V_TREADY in_acc 1 1 } } }
	wrCmdIn_V { axis {  { wrCmdIn_V_TVALID in_vld 0 1 }  { wrCmdIn_V_TDATA in_data 0 40 }  { wrCmdIn_V_TREADY in_acc 1 1 } } }
	aggregateMemCmd_V { ap_fifo {  { aggregateMemCmd_V_din fifo_data 1 21 }  { aggregateMemCmd_V_full_n fifo_status 0 1 }  { aggregateMemCmd_V_write fifo_update 1 1 } } }
}
