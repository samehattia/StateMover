set moduleName ethernet_axis_ip
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {ethernet_axis_ip}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_in_V_data_V int 64 regular {axi_s 0 volatile  { data_in Data } }  }
	{ data_in_V_keep_V int 8 regular {axi_s 0 volatile  { data_in Keep } }  }
	{ data_in_V_last_V int 1 regular {axi_s 0 volatile  { data_in Last } }  }
	{ data_out_V_data_V int 64 regular {axi_s 1 volatile  { data_out Data } }  }
	{ data_out_V_keep_V int 8 regular {axi_s 1 volatile  { data_out Keep } }  }
	{ data_out_V_last_V int 1 regular {axi_s 1 volatile  { data_out Last } }  }
	{ tx_fifo_V_data_V int 64 regular {axi_s 1 volatile  { fifo_out Data } }  }
	{ tx_fifo_V_keep_V int 8 regular {axi_s 1 volatile  { fifo_out Keep } }  }
	{ tx_fifo_V_last_V int 1 regular {axi_s 1 volatile  { fifo_out Last } }  }
	{ rx_fifo_V_data_V int 64 regular {fifo 0 volatile } {global 0}  }
	{ rx_fifo_V_keep_V int 8 regular {fifo 0 volatile } {global 0}  }
	{ rx_fifo_V_last_V int 1 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_in_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "data_out_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tx_fifo_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tx_fifo_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tx_fifo_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rx_fifo_V_data_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "rx_fifo_V_keep_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "rx_fifo_V_last_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_in_TVALID sc_in sc_logic 1 invld 2 } 
	{ data_out_TREADY sc_in sc_logic 1 outacc 5 } 
	{ fifo_out_TREADY sc_in sc_logic 1 outacc 8 } 
	{ data_in_TDATA sc_in sc_lv 64 signal 0 } 
	{ data_in_TREADY sc_out sc_logic 1 inacc 2 } 
	{ data_in_TKEEP sc_in sc_lv 8 signal 1 } 
	{ data_in_TLAST sc_in sc_lv 1 signal 2 } 
	{ data_out_TDATA sc_out sc_lv 64 signal 3 } 
	{ data_out_TVALID sc_out sc_logic 1 outvld 5 } 
	{ data_out_TKEEP sc_out sc_lv 8 signal 4 } 
	{ data_out_TLAST sc_out sc_lv 1 signal 5 } 
	{ fifo_out_TDATA sc_out sc_lv 64 signal 6 } 
	{ fifo_out_TVALID sc_out sc_logic 1 outvld 8 } 
	{ fifo_out_TKEEP sc_out sc_lv 8 signal 7 } 
	{ fifo_out_TLAST sc_out sc_lv 1 signal 8 } 
	{ rx_fifo_V_data_V_dout sc_in sc_lv 64 signal 9 } 
	{ rx_fifo_V_data_V_empty_n sc_in sc_logic 1 signal 9 } 
	{ rx_fifo_V_data_V_read sc_out sc_logic 1 signal 9 } 
	{ rx_fifo_V_keep_V_dout sc_in sc_lv 8 signal 10 } 
	{ rx_fifo_V_keep_V_empty_n sc_in sc_logic 1 signal 10 } 
	{ rx_fifo_V_keep_V_read sc_out sc_logic 1 signal 10 } 
	{ rx_fifo_V_last_V_dout sc_in sc_lv 1 signal 11 } 
	{ rx_fifo_V_last_V_empty_n sc_in sc_logic 1 signal 11 } 
	{ rx_fifo_V_last_V_read sc_out sc_logic 1 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_in_V_last_V", "role": "default" }} , 
 	{ "name": "data_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "data_out_V_last_V", "role": "default" }} , 
 	{ "name": "fifo_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "tx_fifo_V_last_V", "role": "default" }} , 
 	{ "name": "data_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data_in_V_data_V", "role": "default" }} , 
 	{ "name": "data_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_in_V_last_V", "role": "default" }} , 
 	{ "name": "data_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_in_V_keep_V", "role": "default" }} , 
 	{ "name": "data_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_V_last_V", "role": "default" }} , 
 	{ "name": "data_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data_out_V_data_V", "role": "default" }} , 
 	{ "name": "data_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_out_V_last_V", "role": "default" }} , 
 	{ "name": "data_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_out_V_keep_V", "role": "default" }} , 
 	{ "name": "data_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_V_last_V", "role": "default" }} , 
 	{ "name": "fifo_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tx_fifo_V_data_V", "role": "default" }} , 
 	{ "name": "fifo_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tx_fifo_V_last_V", "role": "default" }} , 
 	{ "name": "fifo_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "tx_fifo_V_keep_V", "role": "default" }} , 
 	{ "name": "fifo_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx_fifo_V_last_V", "role": "default" }} , 
 	{ "name": "rx_fifo_V_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rx_fifo_V_data_V", "role": "dout" }} , 
 	{ "name": "rx_fifo_V_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rx_fifo_V_data_V", "role": "empty_n" }} , 
 	{ "name": "rx_fifo_V_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rx_fifo_V_data_V", "role": "read" }} , 
 	{ "name": "rx_fifo_V_keep_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rx_fifo_V_keep_V", "role": "dout" }} , 
 	{ "name": "rx_fifo_V_keep_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rx_fifo_V_keep_V", "role": "empty_n" }} , 
 	{ "name": "rx_fifo_V_keep_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rx_fifo_V_keep_V", "role": "read" }} , 
 	{ "name": "rx_fifo_V_last_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rx_fifo_V_last_V", "role": "dout" }} , 
 	{ "name": "rx_fifo_V_last_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rx_fifo_V_last_V", "role": "empty_n" }} , 
 	{ "name": "rx_fifo_V_last_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rx_fifo_V_last_V", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "rx_fifo_V_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "rx_fifo_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rx_fifo_V_keep_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "rx_fifo_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rx_fifo_V_last_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "rx_fifo_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "word_count_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "axi_command_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tx_len_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "axis_len_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "send_tx_word_count_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "send_rx_word_count_V", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "3", "Max" : "3"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data_in_V_data_V { axis {  { data_in_TDATA in_data 0 64 } } }
	data_in_V_keep_V { axis {  { data_in_TKEEP in_data 0 8 } } }
	data_in_V_last_V { axis {  { data_in_TVALID in_vld 0 1 }  { data_in_TREADY in_acc 1 1 }  { data_in_TLAST in_data 0 1 } } }
	data_out_V_data_V { axis {  { data_out_TDATA out_data 1 64 } } }
	data_out_V_keep_V { axis {  { data_out_TKEEP out_data 1 8 } } }
	data_out_V_last_V { axis {  { data_out_TREADY out_acc 0 1 }  { data_out_TVALID out_vld 1 1 }  { data_out_TLAST out_data 1 1 } } }
	tx_fifo_V_data_V { axis {  { fifo_out_TDATA out_data 1 64 } } }
	tx_fifo_V_keep_V { axis {  { fifo_out_TKEEP out_data 1 8 } } }
	tx_fifo_V_last_V { axis {  { fifo_out_TREADY out_acc 0 1 }  { fifo_out_TVALID out_vld 1 1 }  { fifo_out_TLAST out_data 1 1 } } }
	rx_fifo_V_data_V { ap_fifo {  { rx_fifo_V_data_V_dout fifo_data 0 64 }  { rx_fifo_V_data_V_empty_n fifo_status 0 1 }  { rx_fifo_V_data_V_read fifo_update 1 1 } } }
	rx_fifo_V_keep_V { ap_fifo {  { rx_fifo_V_keep_V_dout fifo_data 0 8 }  { rx_fifo_V_keep_V_empty_n fifo_status 0 1 }  { rx_fifo_V_keep_V_read fifo_update 1 1 } } }
	rx_fifo_V_last_V { ap_fifo {  { rx_fifo_V_last_V_dout fifo_data 0 1 }  { rx_fifo_V_last_V_empty_n fifo_status 0 1 }  { rx_fifo_V_last_V_read fifo_update 1 1 } } }
}
