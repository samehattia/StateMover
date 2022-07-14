set moduleName rx_fifo_ip
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
set C_modelName {rx_fifo_ip}
set C_modelType { void 0 }
set C_modelArgList {
	{ fifo_in_V_data_V int 64 regular {axi_s 0 volatile  { fifo_in Data } }  }
	{ fifo_in_V_keep_V int 8 regular {axi_s 0 volatile  { fifo_in Keep } }  }
	{ fifo_in_V_last_V int 1 regular {axi_s 0 volatile  { fifo_in Last } }  }
	{ rx_fifo_V_data_V int 64 regular {fifo 1 volatile } {global 1}  }
	{ rx_fifo_V_keep_V int 8 regular {fifo 1 volatile } {global 1}  }
	{ rx_fifo_V_last_V int 1 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fifo_in_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_in_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "fifo_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "rx_fifo_V_data_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "rx_fifo_V_keep_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "rx_fifo_V_last_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ fifo_in_TVALID sc_in sc_logic 1 invld 2 } 
	{ fifo_in_TDATA sc_in sc_lv 64 signal 0 } 
	{ fifo_in_TREADY sc_out sc_logic 1 inacc 2 } 
	{ fifo_in_TKEEP sc_in sc_lv 8 signal 1 } 
	{ fifo_in_TLAST sc_in sc_lv 1 signal 2 } 
	{ rx_fifo_V_data_V_din sc_out sc_lv 64 signal 3 } 
	{ rx_fifo_V_data_V_full_n sc_in sc_logic 1 signal 3 } 
	{ rx_fifo_V_data_V_write sc_out sc_logic 1 signal 3 } 
	{ rx_fifo_V_keep_V_din sc_out sc_lv 8 signal 4 } 
	{ rx_fifo_V_keep_V_full_n sc_in sc_logic 1 signal 4 } 
	{ rx_fifo_V_keep_V_write sc_out sc_logic 1 signal 4 } 
	{ rx_fifo_V_last_V_din sc_out sc_lv 1 signal 5 } 
	{ rx_fifo_V_last_V_full_n sc_in sc_logic 1 signal 5 } 
	{ rx_fifo_V_last_V_write sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fifo_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "fifo_in_V_last_V", "role": "default" }} , 
 	{ "name": "fifo_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fifo_in_V_data_V", "role": "default" }} , 
 	{ "name": "fifo_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "fifo_in_V_last_V", "role": "default" }} , 
 	{ "name": "fifo_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "fifo_in_V_keep_V", "role": "default" }} , 
 	{ "name": "fifo_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo_in_V_last_V", "role": "default" }} , 
 	{ "name": "rx_fifo_V_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rx_fifo_V_data_V", "role": "din" }} , 
 	{ "name": "rx_fifo_V_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rx_fifo_V_data_V", "role": "full_n" }} , 
 	{ "name": "rx_fifo_V_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rx_fifo_V_data_V", "role": "write" }} , 
 	{ "name": "rx_fifo_V_keep_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rx_fifo_V_keep_V", "role": "din" }} , 
 	{ "name": "rx_fifo_V_keep_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rx_fifo_V_keep_V", "role": "full_n" }} , 
 	{ "name": "rx_fifo_V_keep_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rx_fifo_V_keep_V", "role": "write" }} , 
 	{ "name": "rx_fifo_V_last_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rx_fifo_V_last_V", "role": "din" }} , 
 	{ "name": "rx_fifo_V_last_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rx_fifo_V_last_V", "role": "full_n" }} , 
 	{ "name": "rx_fifo_V_last_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rx_fifo_V_last_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "rx_fifo_V_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "rx_fifo_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rx_fifo_V_keep_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "rx_fifo_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rx_fifo_V_last_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "rx_fifo_V_last_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	rx_fifo_ip {
		fifo_in_V_data_V {Type I LastRead 0 FirstWrite -1}
		fifo_in_V_keep_V {Type I LastRead 0 FirstWrite -1}
		fifo_in_V_last_V {Type I LastRead 0 FirstWrite -1}
		rx_fifo_V_data_V {Type O LastRead -1 FirstWrite 1}
		rx_fifo_V_keep_V {Type O LastRead -1 FirstWrite 1}
		rx_fifo_V_last_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	fifo_in_V_data_V { axis {  { fifo_in_TDATA in_data 0 64 } } }
	fifo_in_V_keep_V { axis {  { fifo_in_TKEEP in_data 0 8 } } }
	fifo_in_V_last_V { axis {  { fifo_in_TVALID in_vld 0 1 }  { fifo_in_TREADY in_acc 1 1 }  { fifo_in_TLAST in_data 0 1 } } }
	rx_fifo_V_data_V { ap_fifo {  { rx_fifo_V_data_V_din fifo_data 1 64 }  { rx_fifo_V_data_V_full_n fifo_status 0 1 }  { rx_fifo_V_data_V_write fifo_update 1 1 } } }
	rx_fifo_V_keep_V { ap_fifo {  { rx_fifo_V_keep_V_din fifo_data 1 8 }  { rx_fifo_V_keep_V_full_n fifo_status 0 1 }  { rx_fifo_V_keep_V_write fifo_update 1 1 } } }
	rx_fifo_V_last_V { ap_fifo {  { rx_fifo_V_last_V_din fifo_data 1 1 }  { rx_fifo_V_last_V_full_n fifo_status 0 1 }  { rx_fifo_V_last_V_write fifo_update 1 1 } } }
}
