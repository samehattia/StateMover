set moduleName axi_timestamper
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {axi_timestamper}
set C_modelType { void 0 }
set C_modelArgList {
	{ arvalid_V int 1 regular  }
	{ arready_V int 1 regular  }
	{ rvalid_V int 1 regular  }
	{ rready_V int 1 regular  }
	{ wvalid_V int 1 regular  }
	{ wready_V int 1 regular  }
	{ wlast_V int 1 regular  }
	{ bvalid_V int 1 regular  }
	{ bready_V int 1 regular  }
	{ write_timestamp_V int 32 regular {axi_slave 1}  }
	{ read_timestamp_V int 32 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "arvalid_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "arvalid.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "arready_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "arready.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "rvalid_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "rvalid.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "rready_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "rready.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "wvalid_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "wvalid.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "wready_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "wready.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "wlast_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "wlast.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "bvalid_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "bvalid.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "bready_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "bready.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "write_timestamp_V", "interface" : "axi_slave", "bundle":"timestamp","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "write_timestamp.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":2147483648}, "offset_end" : {"out":2147483655}} , 
 	{ "Name" : "read_timestamp_V", "interface" : "axi_slave", "bundle":"timestamp","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "read_timestamp.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":2147483664}, "offset_end" : {"out":2147483671}} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ arvalid_V sc_in sc_lv 1 signal 0 } 
	{ arready_V sc_in sc_lv 1 signal 1 } 
	{ rvalid_V sc_in sc_lv 1 signal 2 } 
	{ rready_V sc_in sc_lv 1 signal 3 } 
	{ wvalid_V sc_in sc_lv 1 signal 4 } 
	{ wready_V sc_in sc_lv 1 signal 5 } 
	{ wlast_V sc_in sc_lv 1 signal 6 } 
	{ bvalid_V sc_in sc_lv 1 signal 7 } 
	{ bready_V sc_in sc_lv 1 signal 8 } 
	{ s_axi_timestamp_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_timestamp_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_timestamp_AWADDR sc_in sc_lv 32 signal -1 } 
	{ s_axi_timestamp_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_timestamp_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_timestamp_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_timestamp_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_timestamp_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_timestamp_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_timestamp_ARADDR sc_in sc_lv 32 signal -1 } 
	{ s_axi_timestamp_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_timestamp_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_timestamp_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_timestamp_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_timestamp_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_timestamp_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_timestamp_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_timestamp_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "timestamp", "role": "AWADDR" },"address":[] },
	{ "name": "s_axi_timestamp_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "timestamp", "role": "AWVALID" } },
	{ "name": "s_axi_timestamp_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "timestamp", "role": "AWREADY" } },
	{ "name": "s_axi_timestamp_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "timestamp", "role": "WVALID" } },
	{ "name": "s_axi_timestamp_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "timestamp", "role": "WREADY" } },
	{ "name": "s_axi_timestamp_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "timestamp", "role": "WDATA" } },
	{ "name": "s_axi_timestamp_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "timestamp", "role": "WSTRB" } },
	{ "name": "s_axi_timestamp_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "timestamp", "role": "ARADDR" },"address":[{"name":"write_timestamp_V","role":"data","value":"2147483648"}, {"name":"write_timestamp_V","role":"valid","value":"2147483652","valid_bit":"0"},{"name":"read_timestamp_V","role":"data","value":"2147483664"}, {"name":"read_timestamp_V","role":"valid","value":"2147483668","valid_bit":"0"}] },
	{ "name": "s_axi_timestamp_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "timestamp", "role": "ARVALID" } },
	{ "name": "s_axi_timestamp_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "timestamp", "role": "ARREADY" } },
	{ "name": "s_axi_timestamp_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "timestamp", "role": "RVALID" } },
	{ "name": "s_axi_timestamp_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "timestamp", "role": "RREADY" } },
	{ "name": "s_axi_timestamp_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "timestamp", "role": "RDATA" } },
	{ "name": "s_axi_timestamp_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "timestamp", "role": "RRESP" } },
	{ "name": "s_axi_timestamp_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "timestamp", "role": "BVALID" } },
	{ "name": "s_axi_timestamp_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "timestamp", "role": "BREADY" } },
	{ "name": "s_axi_timestamp_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "timestamp", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "arvalid_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arvalid_V", "role": "default" }} , 
 	{ "name": "arready_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arready_V", "role": "default" }} , 
 	{ "name": "rvalid_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rvalid_V", "role": "default" }} , 
 	{ "name": "rready_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rready_V", "role": "default" }} , 
 	{ "name": "wvalid_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wvalid_V", "role": "default" }} , 
 	{ "name": "wready_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wready_V", "role": "default" }} , 
 	{ "name": "wlast_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "wlast_V", "role": "default" }} , 
 	{ "name": "bvalid_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bvalid_V", "role": "default" }} , 
 	{ "name": "bready_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bready_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "axi_timestamper",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "arvalid_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "arready_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "rvalid_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "rready_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "wvalid_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "wready_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "wlast_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bvalid_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bready_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "write_timestamp_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "read_timestamp_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_read_timestamp", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "local_write_timestam", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "read_latency_counter", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "read_count_flag_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "write_latency_counte", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "write_count_flag_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.axi_timestamper_timestamp_s_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	axi_timestamper {
		arvalid_V {Type I LastRead 0 FirstWrite -1}
		arready_V {Type I LastRead 0 FirstWrite -1}
		rvalid_V {Type I LastRead 0 FirstWrite -1}
		rready_V {Type I LastRead 0 FirstWrite -1}
		wvalid_V {Type I LastRead 0 FirstWrite -1}
		wready_V {Type I LastRead 0 FirstWrite -1}
		wlast_V {Type I LastRead 0 FirstWrite -1}
		bvalid_V {Type I LastRead 0 FirstWrite -1}
		bready_V {Type I LastRead 0 FirstWrite -1}
		write_timestamp_V {Type O LastRead -1 FirstWrite 0}
		read_timestamp_V {Type O LastRead -1 FirstWrite 0}
		local_read_timestamp {Type IO LastRead -1 FirstWrite -1}
		local_write_timestam {Type IO LastRead -1 FirstWrite -1}
		read_latency_counter {Type IO LastRead -1 FirstWrite -1}
		read_count_flag_V {Type IO LastRead -1 FirstWrite -1}
		write_latency_counte {Type IO LastRead -1 FirstWrite -1}
		write_count_flag_V {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	arvalid_V { ap_none {  { arvalid_V in_data 0 1 } } }
	arready_V { ap_none {  { arready_V in_data 0 1 } } }
	rvalid_V { ap_none {  { rvalid_V in_data 0 1 } } }
	rready_V { ap_none {  { rready_V in_data 0 1 } } }
	wvalid_V { ap_none {  { wvalid_V in_data 0 1 } } }
	wready_V { ap_none {  { wready_V in_data 0 1 } } }
	wlast_V { ap_none {  { wlast_V in_data 0 1 } } }
	bvalid_V { ap_none {  { bvalid_V in_data 0 1 } } }
	bready_V { ap_none {  { bready_V in_data 0 1 } } }
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
