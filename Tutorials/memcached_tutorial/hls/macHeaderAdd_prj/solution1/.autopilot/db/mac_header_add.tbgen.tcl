set moduleName mac_header_add
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
set C_modelName {mac_header_add}
set C_modelType { void 0 }
set C_modelArgList {
	{ dataIn_V_data_V int 64 regular {axi_s 0 volatile  { dataIn Data } }  }
	{ dataIn_V_keep_V int 8 regular {axi_s 0 volatile  { dataIn Keep } }  }
	{ dataIn_V_last_V int 1 regular {axi_s 0 volatile  { dataIn Last } }  }
	{ dataIn_V_user_V int 112 regular {axi_s 0 volatile  { dataIn User } }  }
	{ dataOut_V_data_V int 64 regular {axi_s 1 volatile  { dataOut Data } }  }
	{ dataOut_V_keep_V int 8 regular {axi_s 1 volatile  { dataOut Keep } }  }
	{ dataOut_V_last_V int 1 regular {axi_s 1 volatile  { dataOut Last } }  }
	{ dataOut_V_user_V int 112 regular {axi_s 1 volatile  { dataOut User } }  }
	{ SrcMacAddress_V int 48 unused {ap_stable 0} }
	{ DestMacAddress_V int 48 unused {ap_stable 0} }
}
set C_modelArgMapList {[ 
	{ "Name" : "dataIn_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "dataIn.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dataIn_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "dataIn.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dataIn_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dataIn.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dataIn_V_user_V", "interface" : "axis", "bitwidth" : 112, "direction" : "READONLY", "bitSlice":[{"low":0,"up":111,"cElement": [{"cName": "dataIn.V.user.V","cData": "uint112","bit_use": { "low": 0,"up": 111},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dataOut_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "dataOut.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dataOut_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "dataOut.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dataOut_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dataOut.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dataOut_V_user_V", "interface" : "axis", "bitwidth" : 112, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":111,"cElement": [{"cName": "dataOut.V.user.V","cData": "uint112","bit_use": { "low": 0,"up": 111},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "SrcMacAddress_V", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY", "bitSlice":[{"low":0,"up":47,"cElement": [{"cName": "SrcMacAddress.V","cData": "uint48","bit_use": { "low": 0,"up": 47},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "DestMacAddress_V", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY", "bitSlice":[{"low":0,"up":47,"cElement": [{"cName": "DestMacAddress.V","cData": "uint48","bit_use": { "low": 0,"up": 47},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ dataIn_TDATA sc_in sc_lv 64 signal 0 } 
	{ dataIn_TKEEP sc_in sc_lv 8 signal 1 } 
	{ dataIn_TLAST sc_in sc_lv 1 signal 2 } 
	{ dataIn_TUSER sc_in sc_lv 112 signal 3 } 
	{ dataOut_TDATA sc_out sc_lv 64 signal 4 } 
	{ dataOut_TKEEP sc_out sc_lv 8 signal 5 } 
	{ dataOut_TLAST sc_out sc_lv 1 signal 6 } 
	{ dataOut_TUSER sc_out sc_lv 112 signal 7 } 
	{ SrcMacAddress_V sc_in sc_lv 48 signal 8 } 
	{ DestMacAddress_V sc_in sc_lv 48 signal 9 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ dataIn_TVALID sc_in sc_logic 1 invld 3 } 
	{ dataIn_TREADY sc_out sc_logic 1 inacc 3 } 
	{ dataOut_TVALID sc_out sc_logic 1 outvld 7 } 
	{ dataOut_TREADY sc_in sc_logic 1 outacc 7 } 
}
set NewPortList {[ 
	{ "name": "dataIn_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataIn_V_data_V", "role": "default" }} , 
 	{ "name": "dataIn_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dataIn_V_keep_V", "role": "default" }} , 
 	{ "name": "dataIn_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dataIn_V_last_V", "role": "default" }} , 
 	{ "name": "dataIn_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":112, "type": "signal", "bundle":{"name": "dataIn_V_user_V", "role": "default" }} , 
 	{ "name": "dataOut_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataOut_V_data_V", "role": "default" }} , 
 	{ "name": "dataOut_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dataOut_V_keep_V", "role": "default" }} , 
 	{ "name": "dataOut_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dataOut_V_last_V", "role": "default" }} , 
 	{ "name": "dataOut_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":112, "type": "signal", "bundle":{"name": "dataOut_V_user_V", "role": "default" }} , 
 	{ "name": "SrcMacAddress_V", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "SrcMacAddress_V", "role": "default" }} , 
 	{ "name": "DestMacAddress_V", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "DestMacAddress_V", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "dataIn_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "dataIn_V_user_V", "role": "default" }} , 
 	{ "name": "dataIn_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "dataIn_V_user_V", "role": "default" }} , 
 	{ "name": "dataOut_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dataOut_V_user_V", "role": "default" }} , 
 	{ "name": "dataOut_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "dataOut_V_user_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "mac_header_add",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "add_mac_header_U0"}],
		"OutputProcess" : [
			{"ID" : "2", "Name" : "edit_len_field_U0"}],
		"Port" : [
			{"Name" : "dataIn_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "add_mac_header_U0", "Port" : "dataIn_V_data_V"}]},
			{"Name" : "dataIn_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "add_mac_header_U0", "Port" : "dataIn_V_keep_V"}]},
			{"Name" : "dataIn_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "add_mac_header_U0", "Port" : "dataIn_V_last_V"}]},
			{"Name" : "dataIn_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "add_mac_header_U0", "Port" : "dataIn_V_user_V"}]},
			{"Name" : "dataOut_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "edit_len_field_U0", "Port" : "dataOut_V_data_V"}]},
			{"Name" : "dataOut_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "edit_len_field_U0", "Port" : "dataOut_V_keep_V"}]},
			{"Name" : "dataOut_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "edit_len_field_U0", "Port" : "dataOut_V_last_V"}]},
			{"Name" : "dataOut_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "edit_len_field_U0", "Port" : "dataOut_V_user_V"}]},
			{"Name" : "SrcMacAddress_V", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "DestMacAddress_V", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "mw_writeLast", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "add_mac_header_U0", "Port" : "mw_writeLast"}]},
			{"Name" : "mw_prevWord_data_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "add_mac_header_U0", "Port" : "mw_prevWord_data_V"}]},
			{"Name" : "mw_prevWord_keep_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "add_mac_header_U0", "Port" : "mw_prevWord_keep_V"}]},
			{"Name" : "dataFifo_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "edit_len_field_U0", "Port" : "dataFifo_V"},
					{"ID" : "1", "SubInstance" : "add_mac_header_U0", "Port" : "dataFifo_V"}]},
			{"Name" : "mw_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "add_mac_header_U0", "Port" : "mw_state"}]},
			{"Name" : "headWord_data_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "add_mac_header_U0", "Port" : "headWord_data_V"}]},
			{"Name" : "headWord_keep_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "add_mac_header_U0", "Port" : "headWord_keep_V"}]},
			{"Name" : "headWord_last_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "add_mac_header_U0", "Port" : "headWord_last_V"}]},
			{"Name" : "dataLen_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "add_mac_header_U0", "Port" : "dataLen_V"}]},
			{"Name" : "dataLenW", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "add_mac_header_U0", "Port" : "dataLenW"}]},
			{"Name" : "srcMacAddress_V_r", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "add_mac_header_U0", "Port" : "srcMacAddress_V_r"}]},
			{"Name" : "dataLenFifo_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "edit_len_field_U0", "Port" : "dataLenFifo_V_V"},
					{"ID" : "1", "SubInstance" : "add_mac_header_U0", "Port" : "dataLenFifo_V_V"}]},
			{"Name" : "pkt_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "edit_len_field_U0", "Port" : "pkt_state"}]},
			{"Name" : "dataLen_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "edit_len_field_U0", "Port" : "dataLen_V_1"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_mac_header_U0", "Parent" : "0",
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
			{"Name" : "dataFifo_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "3",
				"BlockSignal" : [
					{"Name" : "dataFifo_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mw_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "headWord_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "headWord_keep_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "headWord_last_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dataLen_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dataLenW", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "srcMacAddress_V_r", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dataLenFifo_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "4",
				"BlockSignal" : [
					{"Name" : "dataLenFifo_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.edit_len_field_U0", "Parent" : "0",
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
		"StartSource" : "1",
		"StartFifo" : "start_for_edit_len_field_U0_U",
		"Port" : [
			{"Name" : "dataOut_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dataOut_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataOut_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "dataOut_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "dataOut_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "pkt_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dataLen_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dataFifo_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "3",
				"BlockSignal" : [
					{"Name" : "dataFifo_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataLenFifo_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "4",
				"BlockSignal" : [
					{"Name" : "dataLenFifo_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataFifo_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataLenFifo_V_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_edit_len_field_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mac_header_add {
		dataIn_V_data_V {Type I LastRead 1 FirstWrite -1}
		dataIn_V_keep_V {Type I LastRead 1 FirstWrite -1}
		dataIn_V_last_V {Type I LastRead 1 FirstWrite -1}
		dataIn_V_user_V {Type I LastRead 1 FirstWrite -1}
		dataOut_V_data_V {Type O LastRead -1 FirstWrite 1}
		dataOut_V_keep_V {Type O LastRead -1 FirstWrite 1}
		dataOut_V_last_V {Type O LastRead -1 FirstWrite 1}
		dataOut_V_user_V {Type O LastRead -1 FirstWrite 1}
		SrcMacAddress_V {Type I LastRead -1 FirstWrite -1}
		DestMacAddress_V {Type I LastRead -1 FirstWrite -1}
		mw_writeLast {Type IO LastRead -1 FirstWrite -1}
		mw_prevWord_data_V {Type IO LastRead -1 FirstWrite -1}
		mw_prevWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		dataFifo_V {Type IO LastRead -1 FirstWrite -1}
		mw_state {Type IO LastRead -1 FirstWrite -1}
		headWord_data_V {Type IO LastRead -1 FirstWrite -1}
		headWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		headWord_last_V {Type IO LastRead -1 FirstWrite -1}
		dataLen_V {Type IO LastRead -1 FirstWrite -1}
		dataLenW {Type IO LastRead -1 FirstWrite -1}
		srcMacAddress_V_r {Type IO LastRead -1 FirstWrite -1}
		dataLenFifo_V_V {Type IO LastRead -1 FirstWrite -1}
		pkt_state {Type IO LastRead -1 FirstWrite -1}
		dataLen_V_1 {Type IO LastRead -1 FirstWrite -1}}
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
		dataLenFifo_V_V {Type O LastRead -1 FirstWrite 1}}
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
	{"Name" : "Latency", "Min" : "5", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	dataIn_V_data_V { axis {  { dataIn_TDATA in_data 0 64 } } }
	dataIn_V_keep_V { axis {  { dataIn_TKEEP in_data 0 8 } } }
	dataIn_V_last_V { axis {  { dataIn_TLAST in_data 0 1 } } }
	dataIn_V_user_V { axis {  { dataIn_TUSER in_data 0 112 }  { dataIn_TVALID in_vld 0 1 }  { dataIn_TREADY in_acc 1 1 } } }
	dataOut_V_data_V { axis {  { dataOut_TDATA out_data 1 64 } } }
	dataOut_V_keep_V { axis {  { dataOut_TKEEP out_data 1 8 } } }
	dataOut_V_last_V { axis {  { dataOut_TLAST out_data 1 1 } } }
	dataOut_V_user_V { axis {  { dataOut_TUSER out_data 1 112 }  { dataOut_TVALID out_vld 1 1 }  { dataOut_TREADY out_acc 0 1 } } }
	SrcMacAddress_V { ap_stable {  { SrcMacAddress_V in_data 0 48 } } }
	DestMacAddress_V { ap_stable {  { DestMacAddress_V in_data 0 48 } } }
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
