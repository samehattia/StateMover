set moduleName ethernet_axis
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
set C_modelName {ethernet_axis}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_in_V_data_V int 64 regular {axi_s 0 volatile  { data_in Data } }  }
	{ data_in_V_keep_V int 8 regular {axi_s 0 volatile  { data_in Keep } }  }
	{ data_in_V_last_V int 1 regular {axi_s 0 volatile  { data_in Last } }  }
	{ data_out_V_data_V int 64 regular {axi_s 1 volatile  { data_out Data } }  }
	{ data_out_V_keep_V int 8 regular {axi_s 1 volatile  { data_out Keep } }  }
	{ data_out_V_last_V int 1 regular {axi_s 1 volatile  { data_out Last } }  }
	{ fifo_in_V_data_V int 64 regular {axi_s 0 volatile  { fifo_in Data } }  }
	{ fifo_in_V_keep_V int 8 regular {axi_s 0 volatile  { fifo_in Keep } }  }
	{ fifo_in_V_last_V int 1 regular {axi_s 0 volatile  { fifo_in Last } }  }
	{ fifo_out_V_data_V int 64 regular {axi_s 1 volatile  { fifo_out Data } }  }
	{ fifo_out_V_keep_V int 8 regular {axi_s 1 volatile  { fifo_out Keep } }  }
	{ fifo_out_V_last_V int 1 regular {axi_s 1 volatile  { fifo_out Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_in_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "data_in.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "data_in_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "data_in.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "data_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "data_in.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "data_out_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "data_out.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "data_out_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "data_out.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "data_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "data_out.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "fifo_in_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "fifo_in.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "fifo_in_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "fifo_in.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "fifo_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "fifo_in.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "fifo_out_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "fifo_out.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "fifo_out_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "fifo_out.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "fifo_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "fifo_out.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ data_in_TDATA sc_in sc_lv 64 signal 0 } 
	{ data_in_TKEEP sc_in sc_lv 8 signal 1 } 
	{ data_in_TLAST sc_in sc_lv 1 signal 2 } 
	{ data_out_TDATA sc_out sc_lv 64 signal 3 } 
	{ data_out_TKEEP sc_out sc_lv 8 signal 4 } 
	{ data_out_TLAST sc_out sc_lv 1 signal 5 } 
	{ fifo_in_TDATA sc_in sc_lv 64 signal 6 } 
	{ fifo_in_TKEEP sc_in sc_lv 8 signal 7 } 
	{ fifo_in_TLAST sc_in sc_lv 1 signal 8 } 
	{ fifo_out_TDATA sc_out sc_lv 64 signal 9 } 
	{ fifo_out_TKEEP sc_out sc_lv 8 signal 10 } 
	{ fifo_out_TLAST sc_out sc_lv 1 signal 11 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ fifo_in_TVALID sc_in sc_logic 1 invld 8 } 
	{ fifo_in_TREADY sc_out sc_logic 1 inacc 8 } 
	{ data_in_TVALID sc_in sc_logic 1 invld 2 } 
	{ data_in_TREADY sc_out sc_logic 1 inacc 2 } 
	{ data_out_TVALID sc_out sc_logic 1 outvld 5 } 
	{ data_out_TREADY sc_in sc_logic 1 outacc 5 } 
	{ fifo_out_TVALID sc_out sc_logic 1 outvld 11 } 
	{ fifo_out_TREADY sc_in sc_logic 1 outacc 11 } 
}
set NewPortList {[ 
	{ "name": "data_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data_in_V_data_V", "role": "default" }} , 
 	{ "name": "data_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_in_V_keep_V", "role": "default" }} , 
 	{ "name": "data_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_V_last_V", "role": "default" }} , 
 	{ "name": "data_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data_out_V_data_V", "role": "default" }} , 
 	{ "name": "data_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_out_V_keep_V", "role": "default" }} , 
 	{ "name": "data_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_V_last_V", "role": "default" }} , 
 	{ "name": "fifo_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fifo_in_V_data_V", "role": "default" }} , 
 	{ "name": "fifo_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "fifo_in_V_keep_V", "role": "default" }} , 
 	{ "name": "fifo_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_in_V_last_V", "role": "default" }} , 
 	{ "name": "fifo_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fifo_out_V_data_V", "role": "default" }} , 
 	{ "name": "fifo_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "fifo_out_V_keep_V", "role": "default" }} , 
 	{ "name": "fifo_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_out_V_last_V", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "fifo_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "fifo_in_V_last_V", "role": "default" }} , 
 	{ "name": "fifo_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "fifo_in_V_last_V", "role": "default" }} , 
 	{ "name": "data_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_in_V_last_V", "role": "default" }} , 
 	{ "name": "data_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_in_V_last_V", "role": "default" }} , 
 	{ "name": "data_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_out_V_last_V", "role": "default" }} , 
 	{ "name": "data_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "data_out_V_last_V", "role": "default" }} , 
 	{ "name": "fifo_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "fifo_out_V_last_V", "role": "default" }} , 
 	{ "name": "fifo_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "fifo_out_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "ethernet_axis",
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
			{"ID" : "1", "Name" : "rx_fifo_ip_U0"},
			{"ID" : "2", "Name" : "ethernet_axis_ip_U0"}],
		"OutputProcess" : [
			{"ID" : "2", "Name" : "ethernet_axis_ip_U0"}],
		"Port" : [
			{"Name" : "data_in_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "ethernet_axis_ip_U0", "Port" : "data_in_V_data_V"}]},
			{"Name" : "data_in_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "ethernet_axis_ip_U0", "Port" : "data_in_V_keep_V"}]},
			{"Name" : "data_in_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "ethernet_axis_ip_U0", "Port" : "data_in_V_last_V"}]},
			{"Name" : "data_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "ethernet_axis_ip_U0", "Port" : "data_out_V_data_V"}]},
			{"Name" : "data_out_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "ethernet_axis_ip_U0", "Port" : "data_out_V_keep_V"}]},
			{"Name" : "data_out_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "ethernet_axis_ip_U0", "Port" : "data_out_V_last_V"}]},
			{"Name" : "fifo_in_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "rx_fifo_ip_U0", "Port" : "fifo_in_V_data_V"}]},
			{"Name" : "fifo_in_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "rx_fifo_ip_U0", "Port" : "fifo_in_V_keep_V"}]},
			{"Name" : "fifo_in_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "rx_fifo_ip_U0", "Port" : "fifo_in_V_last_V"}]},
			{"Name" : "fifo_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "ethernet_axis_ip_U0", "Port" : "tx_fifo_V_data_V"}]},
			{"Name" : "fifo_out_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "ethernet_axis_ip_U0", "Port" : "tx_fifo_V_keep_V"}]},
			{"Name" : "fifo_out_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "ethernet_axis_ip_U0", "Port" : "tx_fifo_V_last_V"}]},
			{"Name" : "rx_fifo_V_data_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "ethernet_axis_ip_U0", "Port" : "rx_fifo_V_data_V"},
					{"ID" : "1", "SubInstance" : "rx_fifo_ip_U0", "Port" : "rx_fifo_V_data_V"}]},
			{"Name" : "rx_fifo_V_keep_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "ethernet_axis_ip_U0", "Port" : "rx_fifo_V_keep_V"},
					{"ID" : "1", "SubInstance" : "rx_fifo_ip_U0", "Port" : "rx_fifo_V_keep_V"}]},
			{"Name" : "rx_fifo_V_last_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "ethernet_axis_ip_U0", "Port" : "rx_fifo_V_last_V"},
					{"ID" : "1", "SubInstance" : "rx_fifo_ip_U0", "Port" : "rx_fifo_V_last_V"}]},
			{"Name" : "fsm_state_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "ethernet_axis_ip_U0", "Port" : "fsm_state_V"}]},
			{"Name" : "rx_len_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "ethernet_axis_ip_U0", "Port" : "rx_len_V"}]},
			{"Name" : "rx_ready_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "ethernet_axis_ip_U0", "Port" : "rx_ready_V"}]},
			{"Name" : "dest_address_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "ethernet_axis_ip_U0", "Port" : "dest_address_V"}]},
			{"Name" : "src_address_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "ethernet_axis_ip_U0", "Port" : "src_address_V"}]},
			{"Name" : "mac_type_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "ethernet_axis_ip_U0", "Port" : "mac_type_V"}]},
			{"Name" : "ethernet_axi_id_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "ethernet_axis_ip_U0", "Port" : "ethernet_axi_id_V"}]},
			{"Name" : "word_count_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "ethernet_axis_ip_U0", "Port" : "word_count_V"}]},
			{"Name" : "axi_command_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "ethernet_axis_ip_U0", "Port" : "axi_command_V"}]},
			{"Name" : "tx_len_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "ethernet_axis_ip_U0", "Port" : "tx_len_V"}]},
			{"Name" : "axis_len_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "ethernet_axis_ip_U0", "Port" : "axis_len_V"}]},
			{"Name" : "send_tx_word_count_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "ethernet_axis_ip_U0", "Port" : "send_tx_word_count_V"}]},
			{"Name" : "send_rx_word_count_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "ethernet_axis_ip_U0", "Port" : "send_rx_word_count_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rx_fifo_ip_U0", "Parent" : "0",
		"CDFG" : "rx_fifo_ip",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "fifo_in_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fifo_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo_in_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "fifo_in_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "rx_fifo_V_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "3",
				"BlockSignal" : [
					{"Name" : "rx_fifo_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rx_fifo_V_keep_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "4",
				"BlockSignal" : [
					{"Name" : "rx_fifo_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rx_fifo_V_last_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "5",
				"BlockSignal" : [
					{"Name" : "rx_fifo_V_last_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ethernet_axis_ip_U0", "Parent" : "0",
		"CDFG" : "ethernet_axis_ip",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "data_in_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_in_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "data_in_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "data_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "data_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_out_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "data_out_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "tx_fifo_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "fifo_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tx_fifo_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "tx_fifo_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "fsm_state_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rx_len_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rx_ready_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dest_address_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "src_address_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mac_type_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ethernet_axi_id_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rx_fifo_V_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "3",
				"BlockSignal" : [
					{"Name" : "rx_fifo_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rx_fifo_V_keep_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "4",
				"BlockSignal" : [
					{"Name" : "rx_fifo_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rx_fifo_V_last_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "5",
				"BlockSignal" : [
					{"Name" : "rx_fifo_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "word_count_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "axi_command_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tx_len_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "axis_len_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "send_tx_word_count_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "send_rx_word_count_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rx_fifo_V_data_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rx_fifo_V_keep_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rx_fifo_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ethernet_axis {
		data_in_V_data_V {Type I LastRead 0 FirstWrite -1}
		data_in_V_keep_V {Type I LastRead 0 FirstWrite -1}
		data_in_V_last_V {Type I LastRead 0 FirstWrite -1}
		data_out_V_data_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_keep_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_last_V {Type O LastRead -1 FirstWrite 1}
		fifo_in_V_data_V {Type I LastRead 0 FirstWrite -1}
		fifo_in_V_keep_V {Type I LastRead 0 FirstWrite -1}
		fifo_in_V_last_V {Type I LastRead 0 FirstWrite -1}
		fifo_out_V_data_V {Type O LastRead -1 FirstWrite 2}
		fifo_out_V_keep_V {Type O LastRead -1 FirstWrite 2}
		fifo_out_V_last_V {Type O LastRead -1 FirstWrite 2}
		rx_fifo_V_data_V {Type IO LastRead -1 FirstWrite -1}
		rx_fifo_V_keep_V {Type IO LastRead -1 FirstWrite -1}
		rx_fifo_V_last_V {Type IO LastRead -1 FirstWrite -1}
		fsm_state_V {Type IO LastRead -1 FirstWrite -1}
		rx_len_V {Type IO LastRead -1 FirstWrite -1}
		rx_ready_V {Type IO LastRead -1 FirstWrite -1}
		dest_address_V {Type IO LastRead -1 FirstWrite -1}
		src_address_V {Type IO LastRead -1 FirstWrite -1}
		mac_type_V {Type IO LastRead -1 FirstWrite -1}
		ethernet_axi_id_V {Type IO LastRead -1 FirstWrite -1}
		word_count_V {Type IO LastRead -1 FirstWrite -1}
		axi_command_V {Type IO LastRead -1 FirstWrite -1}
		tx_len_V {Type IO LastRead -1 FirstWrite -1}
		axis_len_V {Type IO LastRead -1 FirstWrite -1}
		send_tx_word_count_V {Type IO LastRead -1 FirstWrite -1}
		send_rx_word_count_V {Type IO LastRead -1 FirstWrite -1}}
	rx_fifo_ip {
		fifo_in_V_data_V {Type I LastRead 0 FirstWrite -1}
		fifo_in_V_keep_V {Type I LastRead 0 FirstWrite -1}
		fifo_in_V_last_V {Type I LastRead 0 FirstWrite -1}
		rx_fifo_V_data_V {Type O LastRead -1 FirstWrite 1}
		rx_fifo_V_keep_V {Type O LastRead -1 FirstWrite 1}
		rx_fifo_V_last_V {Type O LastRead -1 FirstWrite 1}}
	ethernet_axis_ip {
		data_in_V_data_V {Type I LastRead 0 FirstWrite -1}
		data_in_V_keep_V {Type I LastRead 0 FirstWrite -1}
		data_in_V_last_V {Type I LastRead 0 FirstWrite -1}
		data_out_V_data_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_keep_V {Type O LastRead -1 FirstWrite 1}
		data_out_V_last_V {Type O LastRead -1 FirstWrite 1}
		tx_fifo_V_data_V {Type O LastRead -1 FirstWrite 2}
		tx_fifo_V_keep_V {Type O LastRead -1 FirstWrite 2}
		tx_fifo_V_last_V {Type O LastRead -1 FirstWrite 2}
		fsm_state_V {Type IO LastRead -1 FirstWrite -1}
		rx_len_V {Type IO LastRead -1 FirstWrite -1}
		rx_ready_V {Type IO LastRead -1 FirstWrite -1}
		dest_address_V {Type IO LastRead -1 FirstWrite -1}
		src_address_V {Type IO LastRead -1 FirstWrite -1}
		mac_type_V {Type IO LastRead -1 FirstWrite -1}
		ethernet_axi_id_V {Type IO LastRead -1 FirstWrite -1}
		rx_fifo_V_data_V {Type I LastRead 0 FirstWrite -1}
		rx_fifo_V_keep_V {Type I LastRead 0 FirstWrite -1}
		rx_fifo_V_last_V {Type I LastRead 0 FirstWrite -1}
		word_count_V {Type IO LastRead -1 FirstWrite -1}
		axi_command_V {Type IO LastRead -1 FirstWrite -1}
		tx_len_V {Type IO LastRead -1 FirstWrite -1}
		axis_len_V {Type IO LastRead -1 FirstWrite -1}
		send_tx_word_count_V {Type IO LastRead -1 FirstWrite -1}
		send_rx_word_count_V {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "5"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_in_V_data_V { axis {  { data_in_TDATA in_data 0 64 } } }
	data_in_V_keep_V { axis {  { data_in_TKEEP in_data 0 8 } } }
	data_in_V_last_V { axis {  { data_in_TLAST in_data 0 1 }  { data_in_TVALID in_vld 0 1 }  { data_in_TREADY in_acc 1 1 } } }
	data_out_V_data_V { axis {  { data_out_TDATA out_data 1 64 } } }
	data_out_V_keep_V { axis {  { data_out_TKEEP out_data 1 8 } } }
	data_out_V_last_V { axis {  { data_out_TLAST out_data 1 1 }  { data_out_TVALID out_vld 1 1 }  { data_out_TREADY out_acc 0 1 } } }
	fifo_in_V_data_V { axis {  { fifo_in_TDATA in_data 0 64 } } }
	fifo_in_V_keep_V { axis {  { fifo_in_TKEEP in_data 0 8 } } }
	fifo_in_V_last_V { axis {  { fifo_in_TLAST in_data 0 1 }  { fifo_in_TVALID in_vld 0 1 }  { fifo_in_TREADY in_acc 1 1 } } }
	fifo_out_V_data_V { axis {  { fifo_out_TDATA out_data 1 64 } } }
	fifo_out_V_keep_V { axis {  { fifo_out_TKEEP out_data 1 8 } } }
	fifo_out_V_last_V { axis {  { fifo_out_TLAST out_data 1 1 }  { fifo_out_TVALID out_vld 1 1 }  { fifo_out_TREADY out_acc 0 1 } } }
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
