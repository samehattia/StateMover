set moduleName dummyPCIeJoint
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dummyPCIeJoint}
set C_modelType { void 0 }
set C_modelArgList {
	{ inData_V_V int 32 regular {fifo 0 volatile }  }
	{ outDataFlash_V_V int 32 regular {fifo 1 volatile }  }
	{ outDataDram_V_V int 32 regular {fifo 1 volatile }  }
	{ flushReq_V int 1 regular  }
	{ flushAck_V int 1 regular {pointer 1}  }
	{ flushDone_V int 1 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inData_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "inData.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outDataFlash_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "outDataFlash.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outDataDram_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "outDataDram.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "flushReq_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "flushReq.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "flushAck_V", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "flushAck.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "flushDone_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "flushDone.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ inData_V_V_dout sc_in sc_lv 32 signal 0 } 
	{ inData_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ inData_V_V_read sc_out sc_logic 1 signal 0 } 
	{ outDataFlash_V_V_din sc_out sc_lv 32 signal 1 } 
	{ outDataFlash_V_V_full_n sc_in sc_logic 1 signal 1 } 
	{ outDataFlash_V_V_write sc_out sc_logic 1 signal 1 } 
	{ outDataDram_V_V_din sc_out sc_lv 32 signal 2 } 
	{ outDataDram_V_V_full_n sc_in sc_logic 1 signal 2 } 
	{ outDataDram_V_V_write sc_out sc_logic 1 signal 2 } 
	{ flushReq_V sc_in sc_lv 1 signal 3 } 
	{ flushAck_V sc_out sc_lv 1 signal 4 } 
	{ flushDone_V sc_in sc_lv 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "inData_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inData_V_V", "role": "dout" }} , 
 	{ "name": "inData_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inData_V_V", "role": "empty_n" }} , 
 	{ "name": "inData_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inData_V_V", "role": "read" }} , 
 	{ "name": "outDataFlash_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outDataFlash_V_V", "role": "din" }} , 
 	{ "name": "outDataFlash_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outDataFlash_V_V", "role": "full_n" }} , 
 	{ "name": "outDataFlash_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outDataFlash_V_V", "role": "write" }} , 
 	{ "name": "outDataDram_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outDataDram_V_V", "role": "din" }} , 
 	{ "name": "outDataDram_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outDataDram_V_V", "role": "full_n" }} , 
 	{ "name": "outDataDram_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outDataDram_V_V", "role": "write" }} , 
 	{ "name": "flushReq_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flushReq_V", "role": "default" }} , 
 	{ "name": "flushAck_V", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flushAck_V", "role": "default" }} , 
 	{ "name": "flushDone_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flushDone_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "dummyPCIeJoint",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "inData_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inData_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outDataFlash_V_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outDataFlash_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "outDataDram_V_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outDataDram_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "flushReq_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "flushAck_V", "Type" : "None", "Direction" : "O"},
			{"Name" : "flushDone_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "pcieState", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "streamInitializedFla", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "elementCounterDram_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "elementCounterFlash_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "flushFlag", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inputAddress_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "freeAddressArrayFlas_1", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "freeAddressArrayDram_1", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "pcie_flushAck_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dummyPCIeJoint_mac_muladd_6ns_14ns_14ns_18_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.freeAddressArrayDram_1_fifo_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.freeAddressArrayFlas_1_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dummyPCIeJoint {
		inData_V_V {Type I LastRead 1 FirstWrite -1}
		outDataFlash_V_V {Type O LastRead 1 FirstWrite 1}
		outDataDram_V_V {Type O LastRead 1 FirstWrite 1}
		flushReq_V {Type I LastRead 0 FirstWrite -1}
		flushAck_V {Type O LastRead -1 FirstWrite 2}
		flushDone_V {Type I LastRead 0 FirstWrite -1}
		pcieState {Type IO LastRead -1 FirstWrite -1}
		streamInitializedFla {Type IO LastRead -1 FirstWrite -1}
		elementCounterDram_V {Type IO LastRead -1 FirstWrite -1}
		elementCounterFlash_s {Type IO LastRead -1 FirstWrite -1}
		flushFlag {Type IO LastRead -1 FirstWrite -1}
		inputAddress_V {Type IO LastRead -1 FirstWrite -1}
		freeAddressArrayFlas_1 {Type IO LastRead -1 FirstWrite -1}
		freeAddressArrayDram_1 {Type IO LastRead -1 FirstWrite -1}
		pcie_flushAck_V {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "3"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	inData_V_V { ap_fifo {  { inData_V_V_dout fifo_data 0 32 }  { inData_V_V_empty_n fifo_status 0 1 }  { inData_V_V_read fifo_update 1 1 } } }
	outDataFlash_V_V { ap_fifo {  { outDataFlash_V_V_din fifo_data 1 32 }  { outDataFlash_V_V_full_n fifo_status 0 1 }  { outDataFlash_V_V_write fifo_update 1 1 } } }
	outDataDram_V_V { ap_fifo {  { outDataDram_V_V_din fifo_data 1 32 }  { outDataDram_V_V_full_n fifo_status 0 1 }  { outDataDram_V_V_write fifo_update 1 1 } } }
	flushReq_V { ap_none {  { flushReq_V in_data 0 1 } } }
	flushAck_V { ap_none {  { flushAck_V out_data 1 1 } } }
	flushDone_V { ap_none {  { flushDone_V in_data 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	inData_V_V { fifo_read 2 has_conditional }
	outDataFlash_V_V { fifo_write 2 has_conditional }
	outDataDram_V_V { fifo_write 2 has_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
