set moduleName mac_header_strip
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {mac_header_strip}
set C_modelType { void 0 }
set C_modelArgList {
	{ dataIn_V_data_V int 64 regular {axi_s 0 volatile  { dataIn Data } }  }
	{ dataIn_V_keep_V int 8 regular {axi_s 0 volatile  { dataIn Keep } }  }
	{ dataIn_V_last_V int 1 regular {axi_s 0 volatile  { dataIn Last } }  }
	{ dataIn_V_user_V int 112 regular {axi_s 0 volatile  { dataIn User } }  }
	{ IPdataOut_V_data_V int 64 regular {axi_s 1 volatile  { IPdataOut Data } }  }
	{ IPdataOut_V_keep_V int 8 regular {axi_s 1 volatile  { IPdataOut Keep } }  }
	{ IPdataOut_V_last_V int 1 regular {axi_s 1 volatile  { IPdataOut Last } }  }
	{ IPdataOut_V_user_V int 112 regular {axi_s 1 volatile  { IPdataOut User } }  }
	{ myMacAddress_V int 48 unused {ap_stable 0} }
}
set C_modelArgMapList {[ 
	{ "Name" : "dataIn_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "dataIn.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dataIn_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "dataIn.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dataIn_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dataIn.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dataIn_V_user_V", "interface" : "axis", "bitwidth" : 112, "direction" : "READONLY", "bitSlice":[{"low":0,"up":111,"cElement": [{"cName": "dataIn.V.user.V","cData": "uint112","bit_use": { "low": 0,"up": 111},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "IPdataOut_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "IPdataOut.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "IPdataOut_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "IPdataOut.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "IPdataOut_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "IPdataOut.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "IPdataOut_V_user_V", "interface" : "axis", "bitwidth" : 112, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":111,"cElement": [{"cName": "IPdataOut.V.user.V","cData": "uint112","bit_use": { "low": 0,"up": 111},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "myMacAddress_V", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY", "bitSlice":[{"low":0,"up":47,"cElement": [{"cName": "myMacAddress.V","cData": "uint48","bit_use": { "low": 0,"up": 47},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ dataIn_TDATA sc_in sc_lv 64 signal 0 } 
	{ dataIn_TKEEP sc_in sc_lv 8 signal 1 } 
	{ dataIn_TLAST sc_in sc_lv 1 signal 2 } 
	{ dataIn_TUSER sc_in sc_lv 112 signal 3 } 
	{ IPdataOut_TDATA sc_out sc_lv 64 signal 4 } 
	{ IPdataOut_TKEEP sc_out sc_lv 8 signal 5 } 
	{ IPdataOut_TLAST sc_out sc_lv 1 signal 6 } 
	{ IPdataOut_TUSER sc_out sc_lv 112 signal 7 } 
	{ myMacAddress_V sc_in sc_lv 48 signal 8 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ dataIn_TVALID sc_in sc_logic 1 invld 3 } 
	{ dataIn_TREADY sc_out sc_logic 1 inacc 3 } 
	{ IPdataOut_TVALID sc_out sc_logic 1 outvld 7 } 
	{ IPdataOut_TREADY sc_in sc_logic 1 outacc 7 } 
}
set NewPortList {[ 
	{ "name": "dataIn_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataIn_V_data_V", "role": "default" }} , 
 	{ "name": "dataIn_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dataIn_V_keep_V", "role": "default" }} , 
 	{ "name": "dataIn_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dataIn_V_last_V", "role": "default" }} , 
 	{ "name": "dataIn_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":112, "type": "signal", "bundle":{"name": "dataIn_V_user_V", "role": "default" }} , 
 	{ "name": "IPdataOut_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "IPdataOut_V_data_V", "role": "default" }} , 
 	{ "name": "IPdataOut_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "IPdataOut_V_keep_V", "role": "default" }} , 
 	{ "name": "IPdataOut_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IPdataOut_V_last_V", "role": "default" }} , 
 	{ "name": "IPdataOut_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":112, "type": "signal", "bundle":{"name": "IPdataOut_V_user_V", "role": "default" }} , 
 	{ "name": "myMacAddress_V", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "myMacAddress_V", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "dataIn_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "dataIn_V_user_V", "role": "default" }} , 
 	{ "name": "dataIn_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "dataIn_V_user_V", "role": "default" }} , 
 	{ "name": "IPdataOut_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "IPdataOut_V_user_V", "role": "default" }} , 
 	{ "name": "IPdataOut_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "IPdataOut_V_user_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "mac_header_strip",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "detect_mac_protocol_U0"}],
		"OutputProcess" : [
			{"ID" : "2", "Name" : "strip_mac_header_U0"}],
		"Port" : [
			{"Name" : "dataIn_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "detect_mac_protocol_U0", "Port" : "dataIn_V_data_V"}]},
			{"Name" : "dataIn_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "detect_mac_protocol_U0", "Port" : "dataIn_V_keep_V"}]},
			{"Name" : "dataIn_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "detect_mac_protocol_U0", "Port" : "dataIn_V_last_V"}]},
			{"Name" : "dataIn_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "detect_mac_protocol_U0", "Port" : "dataIn_V_user_V"}]},
			{"Name" : "IPdataOut_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "strip_mac_header_U0", "Port" : "dataOut_V_data_V"}]},
			{"Name" : "IPdataOut_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "strip_mac_header_U0", "Port" : "dataOut_V_keep_V"}]},
			{"Name" : "IPdataOut_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "strip_mac_header_U0", "Port" : "dataOut_V_last_V"}]},
			{"Name" : "IPdataOut_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "strip_mac_header_U0", "Port" : "dataOut_V_user_V"}]},
			{"Name" : "myMacAddress_V", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "dmp_fsmState_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "detect_mac_protocol_U0", "Port" : "dmp_fsmState_V"}]},
			{"Name" : "dmp_macType_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "detect_mac_protocol_U0", "Port" : "dmp_macType_V"}]},
			{"Name" : "dmp_prevWord_data_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "detect_mac_protocol_U0", "Port" : "dmp_prevWord_data_V"}]},
			{"Name" : "dmp_prevWord_keep_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "detect_mac_protocol_U0", "Port" : "dmp_prevWord_keep_V"}]},
			{"Name" : "dmp_prevWord_last_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "detect_mac_protocol_U0", "Port" : "dmp_prevWord_last_V"}]},
			{"Name" : "dmp_prevWord_user_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "detect_mac_protocol_U0", "Port" : "dmp_prevWord_user_V"}]},
			{"Name" : "dmp_wordCount_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "detect_mac_protocol_U0", "Port" : "dmp_wordCount_V"}]},
			{"Name" : "ipDataFifo_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "strip_mac_header_U0", "Port" : "ipDataFifo_V"},
					{"ID" : "1", "SubInstance" : "detect_mac_protocol_U0", "Port" : "ipDataFifo_V"}]},
			{"Name" : "cics_wasLast", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "strip_mac_header_U0", "Port" : "cics_wasLast"}]},
			{"Name" : "dataLen_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "strip_mac_header_U0", "Port" : "dataLen_V"}]},
			{"Name" : "sentBytes_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "strip_mac_header_U0", "Port" : "sentBytes_V"}]},
			{"Name" : "cics_prevWord_data_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "strip_mac_header_U0", "Port" : "cics_prevWord_data_V"}]},
			{"Name" : "cics_prevWord_keep_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "strip_mac_header_U0", "Port" : "cics_prevWord_keep_V"}]},
			{"Name" : "cics_wordCount_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "strip_mac_header_U0", "Port" : "cics_wordCount_V"}]},
			{"Name" : "destMacAddress_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "strip_mac_header_U0", "Port" : "destMacAddress_V"}]},
			{"Name" : "srcMacAddress_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "strip_mac_header_U0", "Port" : "srcMacAddress_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.detect_mac_protocol_U0", "Parent" : "0",
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
			{"Name" : "ipDataFifo_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "3",
				"BlockSignal" : [
					{"Name" : "ipDataFifo_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.strip_mac_header_U0", "Parent" : "0",
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
		"StartSource" : "1",
		"StartFifo" : "start_for_strip_mac_header_U0_U",
		"Port" : [
			{"Name" : "dataOut_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "IPdataOut_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataOut_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "dataOut_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "dataOut_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ipDataFifo_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "3",
				"BlockSignal" : [
					{"Name" : "ipDataFifo_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cics_wasLast", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dataLen_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sentBytes_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_prevWord_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_prevWord_keep_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_wordCount_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "destMacAddress_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "srcMacAddress_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ipDataFifo_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_strip_mac_header_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mac_header_strip {
		dataIn_V_data_V {Type I LastRead 0 FirstWrite -1}
		dataIn_V_keep_V {Type I LastRead 0 FirstWrite -1}
		dataIn_V_last_V {Type I LastRead 0 FirstWrite -1}
		dataIn_V_user_V {Type I LastRead 0 FirstWrite -1}
		IPdataOut_V_data_V {Type O LastRead -1 FirstWrite 1}
		IPdataOut_V_keep_V {Type O LastRead -1 FirstWrite 1}
		IPdataOut_V_last_V {Type O LastRead -1 FirstWrite 1}
		IPdataOut_V_user_V {Type O LastRead -1 FirstWrite 1}
		myMacAddress_V {Type I LastRead -1 FirstWrite -1}
		dmp_fsmState_V {Type IO LastRead -1 FirstWrite -1}
		dmp_macType_V {Type IO LastRead -1 FirstWrite -1}
		dmp_prevWord_data_V {Type IO LastRead -1 FirstWrite -1}
		dmp_prevWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		dmp_prevWord_last_V {Type IO LastRead -1 FirstWrite -1}
		dmp_prevWord_user_V {Type IO LastRead -1 FirstWrite -1}
		dmp_wordCount_V {Type IO LastRead -1 FirstWrite -1}
		ipDataFifo_V {Type IO LastRead -1 FirstWrite -1}
		cics_wasLast {Type IO LastRead -1 FirstWrite -1}
		dataLen_V {Type IO LastRead -1 FirstWrite -1}
		sentBytes_V {Type IO LastRead -1 FirstWrite -1}
		cics_prevWord_data_V {Type IO LastRead -1 FirstWrite -1}
		cics_prevWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		cics_wordCount_V {Type IO LastRead -1 FirstWrite -1}
		destMacAddress_V {Type IO LastRead -1 FirstWrite -1}
		srcMacAddress_V {Type IO LastRead -1 FirstWrite -1}}
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
		ipDataFifo_V {Type O LastRead -1 FirstWrite 1}}
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
	{"Name" : "Latency", "Min" : "4", "Max" : "4"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	dataIn_V_data_V { axis {  { dataIn_TDATA in_data 0 64 } } }
	dataIn_V_keep_V { axis {  { dataIn_TKEEP in_data 0 8 } } }
	dataIn_V_last_V { axis {  { dataIn_TLAST in_data 0 1 } } }
	dataIn_V_user_V { axis {  { dataIn_TUSER in_data 0 112 }  { dataIn_TVALID in_vld 0 1 }  { dataIn_TREADY in_acc 1 1 } } }
	IPdataOut_V_data_V { axis {  { IPdataOut_TDATA out_data 1 64 } } }
	IPdataOut_V_keep_V { axis {  { IPdataOut_TKEEP out_data 1 8 } } }
	IPdataOut_V_last_V { axis {  { IPdataOut_TLAST out_data 1 1 } } }
	IPdataOut_V_user_V { axis {  { IPdataOut_TUSER out_data 1 112 }  { IPdataOut_TVALID out_vld 1 1 }  { IPdataOut_TREADY out_acc 0 1 } } }
	myMacAddress_V { ap_stable {  { myMacAddress_V in_data 0 48 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
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
set moduleName mac_header_strip
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {mac_header_strip}
set C_modelType { void 0 }
set C_modelArgList {
	{ dataIn_V_data_V int 64 regular {axi_s 0 volatile  { dataIn Data } }  }
	{ dataIn_V_keep_V int 8 regular {axi_s 0 volatile  { dataIn Keep } }  }
	{ dataIn_V_last_V int 1 regular {axi_s 0 volatile  { dataIn Last } }  }
	{ dataIn_V_user_V int 112 regular {axi_s 0 volatile  { dataIn User } }  }
	{ IPdataOut_V_data_V int 64 regular {axi_s 1 volatile  { IPdataOut Data } }  }
	{ IPdataOut_V_keep_V int 8 regular {axi_s 1 volatile  { IPdataOut Keep } }  }
	{ IPdataOut_V_last_V int 1 regular {axi_s 1 volatile  { IPdataOut Last } }  }
	{ IPdataOut_V_user_V int 112 regular {axi_s 1 volatile  { IPdataOut User } }  }
	{ myMacAddress_V int 48 regular {ap_stable 0} }
}
set C_modelArgMapList {[ 
	{ "Name" : "dataIn_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "dataIn.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dataIn_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "dataIn.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dataIn_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dataIn.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dataIn_V_user_V", "interface" : "axis", "bitwidth" : 112, "direction" : "READONLY", "bitSlice":[{"low":0,"up":111,"cElement": [{"cName": "dataIn.V.user.V","cData": "uint112","bit_use": { "low": 0,"up": 111},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "IPdataOut_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "IPdataOut.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "IPdataOut_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "IPdataOut.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "IPdataOut_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "IPdataOut.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "IPdataOut_V_user_V", "interface" : "axis", "bitwidth" : 112, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":111,"cElement": [{"cName": "IPdataOut.V.user.V","cData": "uint112","bit_use": { "low": 0,"up": 111},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "myMacAddress_V", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY", "bitSlice":[{"low":0,"up":47,"cElement": [{"cName": "myMacAddress.V","cData": "uint48","bit_use": { "low": 0,"up": 47},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ dataIn_TDATA sc_in sc_lv 64 signal 0 } 
	{ dataIn_TKEEP sc_in sc_lv 8 signal 1 } 
	{ dataIn_TLAST sc_in sc_lv 1 signal 2 } 
	{ dataIn_TUSER sc_in sc_lv 112 signal 3 } 
	{ IPdataOut_TDATA sc_out sc_lv 64 signal 4 } 
	{ IPdataOut_TKEEP sc_out sc_lv 8 signal 5 } 
	{ IPdataOut_TLAST sc_out sc_lv 1 signal 6 } 
	{ IPdataOut_TUSER sc_out sc_lv 112 signal 7 } 
	{ myMacAddress_V sc_in sc_lv 48 signal 8 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ dataIn_TVALID sc_in sc_logic 1 invld 3 } 
	{ dataIn_TREADY sc_out sc_logic 1 inacc 3 } 
	{ IPdataOut_TVALID sc_out sc_logic 1 outvld 7 } 
	{ IPdataOut_TREADY sc_in sc_logic 1 outacc 7 } 
}
set NewPortList {[ 
	{ "name": "dataIn_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataIn_V_data_V", "role": "default" }} , 
 	{ "name": "dataIn_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dataIn_V_keep_V", "role": "default" }} , 
 	{ "name": "dataIn_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dataIn_V_last_V", "role": "default" }} , 
 	{ "name": "dataIn_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":112, "type": "signal", "bundle":{"name": "dataIn_V_user_V", "role": "default" }} , 
 	{ "name": "IPdataOut_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "IPdataOut_V_data_V", "role": "default" }} , 
 	{ "name": "IPdataOut_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "IPdataOut_V_keep_V", "role": "default" }} , 
 	{ "name": "IPdataOut_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "IPdataOut_V_last_V", "role": "default" }} , 
 	{ "name": "IPdataOut_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":112, "type": "signal", "bundle":{"name": "IPdataOut_V_user_V", "role": "default" }} , 
 	{ "name": "myMacAddress_V", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "myMacAddress_V", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "dataIn_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "dataIn_V_user_V", "role": "default" }} , 
 	{ "name": "dataIn_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "dataIn_V_user_V", "role": "default" }} , 
 	{ "name": "IPdataOut_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "IPdataOut_V_user_V", "role": "default" }} , 
 	{ "name": "IPdataOut_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "IPdataOut_V_user_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "mac_header_strip",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "detect_mac_protocol_U0"}],
		"OutputProcess" : [
			{"ID" : "2", "Name" : "strip_mac_header_U0"}],
		"Port" : [
			{"Name" : "dataIn_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "detect_mac_protocol_U0", "Port" : "dataIn_V_data_V"}]},
			{"Name" : "dataIn_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "detect_mac_protocol_U0", "Port" : "dataIn_V_keep_V"}]},
			{"Name" : "dataIn_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "detect_mac_protocol_U0", "Port" : "dataIn_V_last_V"}]},
			{"Name" : "dataIn_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "detect_mac_protocol_U0", "Port" : "dataIn_V_user_V"}]},
			{"Name" : "IPdataOut_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "strip_mac_header_U0", "Port" : "dataOut_V_data_V"}]},
			{"Name" : "IPdataOut_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "strip_mac_header_U0", "Port" : "dataOut_V_keep_V"}]},
			{"Name" : "IPdataOut_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "strip_mac_header_U0", "Port" : "dataOut_V_last_V"}]},
			{"Name" : "IPdataOut_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "strip_mac_header_U0", "Port" : "dataOut_V_user_V"}]},
			{"Name" : "myMacAddress_V", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "dmp_fsmState_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "detect_mac_protocol_U0", "Port" : "dmp_fsmState_V"}]},
			{"Name" : "dmp_macType_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "detect_mac_protocol_U0", "Port" : "dmp_macType_V"}]},
			{"Name" : "dmp_prevWord_data_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "detect_mac_protocol_U0", "Port" : "dmp_prevWord_data_V"}]},
			{"Name" : "dmp_prevWord_keep_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "detect_mac_protocol_U0", "Port" : "dmp_prevWord_keep_V"}]},
			{"Name" : "dmp_prevWord_last_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "detect_mac_protocol_U0", "Port" : "dmp_prevWord_last_V"}]},
			{"Name" : "dmp_prevWord_user_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "detect_mac_protocol_U0", "Port" : "dmp_prevWord_user_V"}]},
			{"Name" : "dmp_wordCount_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "detect_mac_protocol_U0", "Port" : "dmp_wordCount_V"}]},
			{"Name" : "ipDataFifo_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "strip_mac_header_U0", "Port" : "ipDataFifo_V"},
					{"ID" : "1", "SubInstance" : "detect_mac_protocol_U0", "Port" : "ipDataFifo_V"}]},
			{"Name" : "cics_wasLast", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "strip_mac_header_U0", "Port" : "cics_wasLast"}]},
			{"Name" : "dataLen_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "strip_mac_header_U0", "Port" : "dataLen_V"}]},
			{"Name" : "sentBytes_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "strip_mac_header_U0", "Port" : "sentBytes_V"}]},
			{"Name" : "cics_prevWord_data_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "strip_mac_header_U0", "Port" : "cics_prevWord_data_V"}]},
			{"Name" : "cics_prevWord_keep_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "strip_mac_header_U0", "Port" : "cics_prevWord_keep_V"}]},
			{"Name" : "cics_wordCount_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "strip_mac_header_U0", "Port" : "cics_wordCount_V"}]},
			{"Name" : "destMacAddress_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "strip_mac_header_U0", "Port" : "destMacAddress_V"}]},
			{"Name" : "srcMacAddress_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "strip_mac_header_U0", "Port" : "srcMacAddress_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.detect_mac_protocol_U0", "Parent" : "0",
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
			{"Name" : "ipDataFifo_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "3",
				"BlockSignal" : [
					{"Name" : "ipDataFifo_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.strip_mac_header_U0", "Parent" : "0",
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
		"StartSource" : "1",
		"StartFifo" : "start_for_strip_mac_header_U0_U",
		"Port" : [
			{"Name" : "dataOut_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "IPdataOut_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataOut_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "dataOut_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "dataOut_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ipDataFifo_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "3",
				"BlockSignal" : [
					{"Name" : "ipDataFifo_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cics_wasLast", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dataLen_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sentBytes_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_prevWord_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_prevWord_keep_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "cics_wordCount_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "destMacAddress_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "srcMacAddress_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ipDataFifo_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_strip_mac_header_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mac_header_strip {
		dataIn_V_data_V {Type I LastRead 0 FirstWrite -1}
		dataIn_V_keep_V {Type I LastRead 0 FirstWrite -1}
		dataIn_V_last_V {Type I LastRead 0 FirstWrite -1}
		dataIn_V_user_V {Type I LastRead 0 FirstWrite -1}
		IPdataOut_V_data_V {Type O LastRead -1 FirstWrite 1}
		IPdataOut_V_keep_V {Type O LastRead -1 FirstWrite 1}
		IPdataOut_V_last_V {Type O LastRead -1 FirstWrite 1}
		IPdataOut_V_user_V {Type O LastRead -1 FirstWrite 1}
		myMacAddress_V {Type I LastRead 0 FirstWrite -1}
		dmp_fsmState_V {Type IO LastRead -1 FirstWrite -1}
		dmp_macType_V {Type IO LastRead -1 FirstWrite -1}
		dmp_prevWord_data_V {Type IO LastRead -1 FirstWrite -1}
		dmp_prevWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		dmp_prevWord_last_V {Type IO LastRead -1 FirstWrite -1}
		dmp_prevWord_user_V {Type IO LastRead -1 FirstWrite -1}
		dmp_wordCount_V {Type IO LastRead -1 FirstWrite -1}
		ipDataFifo_V {Type IO LastRead -1 FirstWrite -1}
		cics_wasLast {Type IO LastRead -1 FirstWrite -1}
		dataLen_V {Type IO LastRead -1 FirstWrite -1}
		sentBytes_V {Type IO LastRead -1 FirstWrite -1}
		cics_prevWord_data_V {Type IO LastRead -1 FirstWrite -1}
		cics_prevWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		cics_wordCount_V {Type IO LastRead -1 FirstWrite -1}
		destMacAddress_V {Type IO LastRead -1 FirstWrite -1}
		srcMacAddress_V {Type IO LastRead -1 FirstWrite -1}}
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
		ipDataFifo_V {Type O LastRead -1 FirstWrite 1}}
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
	{"Name" : "Latency", "Min" : "4", "Max" : "4"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	dataIn_V_data_V { axis {  { dataIn_TDATA in_data 0 64 } } }
	dataIn_V_keep_V { axis {  { dataIn_TKEEP in_data 0 8 } } }
	dataIn_V_last_V { axis {  { dataIn_TLAST in_data 0 1 } } }
	dataIn_V_user_V { axis {  { dataIn_TUSER in_data 0 112 }  { dataIn_TVALID in_vld 0 1 }  { dataIn_TREADY in_acc 1 1 } } }
	IPdataOut_V_data_V { axis {  { IPdataOut_TDATA out_data 1 64 } } }
	IPdataOut_V_keep_V { axis {  { IPdataOut_TKEEP out_data 1 8 } } }
	IPdataOut_V_last_V { axis {  { IPdataOut_TLAST out_data 1 1 } } }
	IPdataOut_V_user_V { axis {  { IPdataOut_TUSER out_data 1 112 }  { IPdataOut_TVALID out_vld 1 1 }  { IPdataOut_TREADY out_acc 0 1 } } }
	myMacAddress_V { ap_stable {  { myMacAddress_V in_data 0 48 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
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
