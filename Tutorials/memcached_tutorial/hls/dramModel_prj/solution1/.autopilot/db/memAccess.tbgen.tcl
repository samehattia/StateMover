set moduleName memAccess
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
set C_modelName {memAccess}
set C_modelType { void 0 }
set C_modelArgList {
	{ rdDataOut_V_V int 512 regular {axi_s 1 volatile  { rdDataOut_V_V Data } }  }
	{ wrDataIn_V_V int 512 regular {axi_s 0 volatile  { wrDataIn_V_V Data } }  }
	{ aggregateMemCmd_V int 21 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rdDataOut_V_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wrDataIn_V_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "aggregateMemCmd_V", "interface" : "fifo", "bitwidth" : 21, "direction" : "READONLY", "extern" : 0} ]}
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
	{ aggregateMemCmd_V_dout sc_in sc_lv 21 signal 2 } 
	{ aggregateMemCmd_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ aggregateMemCmd_V_read sc_out sc_logic 1 signal 2 } 
	{ wrDataIn_V_V_TVALID sc_in sc_logic 1 invld 1 } 
	{ rdDataOut_V_V_TREADY sc_in sc_logic 1 outacc 0 } 
	{ rdDataOut_V_V_TDATA sc_out sc_lv 512 signal 0 } 
	{ rdDataOut_V_V_TVALID sc_out sc_logic 1 outvld 0 } 
	{ wrDataIn_V_V_TDATA sc_in sc_lv 512 signal 1 } 
	{ wrDataIn_V_V_TREADY sc_out sc_logic 1 inacc 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "aggregateMemCmd_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "aggregateMemCmd_V", "role": "dout" }} , 
 	{ "name": "aggregateMemCmd_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aggregateMemCmd_V", "role": "empty_n" }} , 
 	{ "name": "aggregateMemCmd_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aggregateMemCmd_V", "role": "read" }} , 
 	{ "name": "wrDataIn_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "wrDataIn_V_V", "role": "TVALID" }} , 
 	{ "name": "rdDataOut_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "rdDataOut_V_V", "role": "TREADY" }} , 
 	{ "name": "rdDataOut_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "rdDataOut_V_V", "role": "TDATA" }} , 
 	{ "name": "rdDataOut_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "rdDataOut_V_V", "role": "TVALID" }} , 
 	{ "name": "wrDataIn_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "wrDataIn_V_V", "role": "TDATA" }} , 
 	{ "name": "wrDataIn_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "wrDataIn_V_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "memAccess",
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
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_22", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_43", "FromFinalSV" : "1", "FromAddress" : "memArray_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_35", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_45", "ToFinalSV" : "1", "ToAddress" : "memArray_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "12", "II" : "1", "Pragma" : "(src/otherModules/dramModel/dramModel.cpp:38:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_35", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_45", "FromFinalSV" : "1", "FromAddress" : "memArray_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_22", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_43", "ToFinalSV" : "1", "ToAddress" : "memArray_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "12", "II" : "1", "Pragma" : "(src/otherModules/dramModel/dramModel.cpp:38:1)", "Type" : "RAW"}],
		"Port" : [
			{"Name" : "rdDataOut_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "rdDataOut_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wrDataIn_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "wrDataIn_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "memState", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inputWord_address_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inputWord_count_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inputWord_rdOrWr_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "aggregateMemCmd_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "aggregateMemCmd_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "memArray_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.memArray_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	memAccess {
		rdDataOut_V_V {Type O LastRead -1 FirstWrite 1}
		wrDataIn_V_V {Type I LastRead 0 FirstWrite -1}
		memState {Type IO LastRead -1 FirstWrite -1}
		inputWord_address_V {Type IO LastRead -1 FirstWrite -1}
		inputWord_count_V {Type IO LastRead -1 FirstWrite -1}
		inputWord_rdOrWr_V {Type IO LastRead -1 FirstWrite -1}
		aggregateMemCmd_V {Type I LastRead 0 FirstWrite -1}
		memArray_V {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	rdDataOut_V_V { axis {  { rdDataOut_V_V_TREADY out_acc 0 1 }  { rdDataOut_V_V_TDATA out_data 1 512 }  { rdDataOut_V_V_TVALID out_vld 1 1 } } }
	wrDataIn_V_V { axis {  { wrDataIn_V_V_TVALID in_vld 0 1 }  { wrDataIn_V_V_TDATA in_data 0 512 }  { wrDataIn_V_V_TREADY in_acc 1 1 } } }
	aggregateMemCmd_V { ap_fifo {  { aggregateMemCmd_V_dout fifo_data 0 21 }  { aggregateMemCmd_V_empty_n fifo_status 0 1 }  { aggregateMemCmd_V_read fifo_update 1 1 } } }
}
