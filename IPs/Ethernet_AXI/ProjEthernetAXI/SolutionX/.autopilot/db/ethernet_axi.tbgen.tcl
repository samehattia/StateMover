set moduleName ethernet_axi
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function_flushable
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {ethernet_axi}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_in_V_data_V int 64 regular {axi_s 0 volatile  { data_in Data } }  }
	{ data_in_V_keep_V int 8 regular {axi_s 0 volatile  { data_in Keep } }  }
	{ data_in_V_last_V int 1 regular {axi_s 0 volatile  { data_in Last } }  }
	{ data_out_V_data_V int 64 regular {axi_s 1 volatile  { data_out Data } }  }
	{ data_out_V_keep_V int 8 regular {axi_s 1 volatile  { data_out Keep } }  }
	{ data_out_V_last_V int 1 regular {axi_s 1 volatile  { data_out Last } }  }
	{ mem_V int 64 regular {axi_master 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_in_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "data_in.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "data_in_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "data_in.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "data_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "data_in.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "data_out_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "data_out.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "data_out_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "data_out.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "data_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "data_out.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "mem_V", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "mem.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 65535,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 57
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ data_in_TDATA sc_in sc_lv 64 signal 0 } 
	{ data_in_TVALID sc_in sc_logic 1 invld 2 } 
	{ data_in_TREADY sc_out sc_logic 1 inacc 2 } 
	{ data_in_TKEEP sc_in sc_lv 8 signal 1 } 
	{ data_in_TLAST sc_in sc_lv 1 signal 2 } 
	{ data_out_TDATA sc_out sc_lv 64 signal 3 } 
	{ data_out_TVALID sc_out sc_logic 1 outvld 5 } 
	{ data_out_TREADY sc_in sc_logic 1 outacc 3 } 
	{ data_out_TKEEP sc_out sc_lv 8 signal 4 } 
	{ data_out_TLAST sc_out sc_lv 1 signal 5 } 
	{ m_axi_mem_V_AWVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_mem_V_AWREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_mem_V_AWADDR sc_out sc_lv 32 signal 6 } 
	{ m_axi_mem_V_AWID sc_out sc_lv 1 signal 6 } 
	{ m_axi_mem_V_AWLEN sc_out sc_lv 8 signal 6 } 
	{ m_axi_mem_V_AWSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_mem_V_AWBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_mem_V_AWLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_mem_V_AWCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_mem_V_AWPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_mem_V_AWQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_mem_V_AWREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_mem_V_AWUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_mem_V_WVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_mem_V_WREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_mem_V_WDATA sc_out sc_lv 64 signal 6 } 
	{ m_axi_mem_V_WSTRB sc_out sc_lv 8 signal 6 } 
	{ m_axi_mem_V_WLAST sc_out sc_logic 1 signal 6 } 
	{ m_axi_mem_V_WID sc_out sc_lv 1 signal 6 } 
	{ m_axi_mem_V_WUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_mem_V_ARVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_mem_V_ARREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_mem_V_ARADDR sc_out sc_lv 32 signal 6 } 
	{ m_axi_mem_V_ARID sc_out sc_lv 1 signal 6 } 
	{ m_axi_mem_V_ARLEN sc_out sc_lv 8 signal 6 } 
	{ m_axi_mem_V_ARSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_mem_V_ARBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_mem_V_ARLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_mem_V_ARCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_mem_V_ARPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_mem_V_ARQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_mem_V_ARREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_mem_V_ARUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_mem_V_RVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_mem_V_RREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_mem_V_RDATA sc_in sc_lv 64 signal 6 } 
	{ m_axi_mem_V_RLAST sc_in sc_logic 1 signal 6 } 
	{ m_axi_mem_V_RID sc_in sc_lv 1 signal 6 } 
	{ m_axi_mem_V_RUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_mem_V_RRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_mem_V_BVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_mem_V_BREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_mem_V_BRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_mem_V_BID sc_in sc_lv 1 signal 6 } 
	{ m_axi_mem_V_BUSER sc_in sc_lv 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "data_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data_in_V_data_V", "role": "default" }} , 
 	{ "name": "data_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_in_V_last_V", "role": "default" }} , 
 	{ "name": "data_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_in_V_last_V", "role": "default" }} , 
 	{ "name": "data_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_in_V_keep_V", "role": "default" }} , 
 	{ "name": "data_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_V_last_V", "role": "default" }} , 
 	{ "name": "data_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data_out_V_data_V", "role": "default" }} , 
 	{ "name": "data_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_out_V_last_V", "role": "default" }} , 
 	{ "name": "data_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "data_out_V_data_V", "role": "default" }} , 
 	{ "name": "data_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_out_V_keep_V", "role": "default" }} , 
 	{ "name": "data_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_V_last_V", "role": "default" }} , 
 	{ "name": "m_axi_mem_V_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "AWVALID" }} , 
 	{ "name": "m_axi_mem_V_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "AWREADY" }} , 
 	{ "name": "m_axi_mem_V_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mem_V", "role": "AWADDR" }} , 
 	{ "name": "m_axi_mem_V_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "AWID" }} , 
 	{ "name": "m_axi_mem_V_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mem_V", "role": "AWLEN" }} , 
 	{ "name": "m_axi_mem_V_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mem_V", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_mem_V_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem_V", "role": "AWBURST" }} , 
 	{ "name": "m_axi_mem_V_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem_V", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_mem_V_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem_V", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_mem_V_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mem_V", "role": "AWPROT" }} , 
 	{ "name": "m_axi_mem_V_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem_V", "role": "AWQOS" }} , 
 	{ "name": "m_axi_mem_V_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem_V", "role": "AWREGION" }} , 
 	{ "name": "m_axi_mem_V_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "AWUSER" }} , 
 	{ "name": "m_axi_mem_V_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "WVALID" }} , 
 	{ "name": "m_axi_mem_V_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "WREADY" }} , 
 	{ "name": "m_axi_mem_V_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mem_V", "role": "WDATA" }} , 
 	{ "name": "m_axi_mem_V_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mem_V", "role": "WSTRB" }} , 
 	{ "name": "m_axi_mem_V_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "WLAST" }} , 
 	{ "name": "m_axi_mem_V_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "WID" }} , 
 	{ "name": "m_axi_mem_V_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "WUSER" }} , 
 	{ "name": "m_axi_mem_V_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "ARVALID" }} , 
 	{ "name": "m_axi_mem_V_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "ARREADY" }} , 
 	{ "name": "m_axi_mem_V_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mem_V", "role": "ARADDR" }} , 
 	{ "name": "m_axi_mem_V_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "ARID" }} , 
 	{ "name": "m_axi_mem_V_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mem_V", "role": "ARLEN" }} , 
 	{ "name": "m_axi_mem_V_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mem_V", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_mem_V_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem_V", "role": "ARBURST" }} , 
 	{ "name": "m_axi_mem_V_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem_V", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_mem_V_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem_V", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_mem_V_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mem_V", "role": "ARPROT" }} , 
 	{ "name": "m_axi_mem_V_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem_V", "role": "ARQOS" }} , 
 	{ "name": "m_axi_mem_V_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem_V", "role": "ARREGION" }} , 
 	{ "name": "m_axi_mem_V_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "ARUSER" }} , 
 	{ "name": "m_axi_mem_V_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "RVALID" }} , 
 	{ "name": "m_axi_mem_V_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "RREADY" }} , 
 	{ "name": "m_axi_mem_V_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mem_V", "role": "RDATA" }} , 
 	{ "name": "m_axi_mem_V_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "RLAST" }} , 
 	{ "name": "m_axi_mem_V_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "RID" }} , 
 	{ "name": "m_axi_mem_V_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "RUSER" }} , 
 	{ "name": "m_axi_mem_V_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem_V", "role": "RRESP" }} , 
 	{ "name": "m_axi_mem_V_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "BVALID" }} , 
 	{ "name": "m_axi_mem_V_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "BREADY" }} , 
 	{ "name": "m_axi_mem_V_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem_V", "role": "BRESP" }} , 
 	{ "name": "m_axi_mem_V_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "BID" }} , 
 	{ "name": "m_axi_mem_V_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "ethernet_axi",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Unaligned", "UnalignedPipeline" : "1", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "14", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
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
			{"Name" : "mem_V", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "mem_V_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "mem_V_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "mem_V_blk_n_B", "Type" : "RtlSignal"},
					{"Name" : "mem_V_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "mem_V_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "fsm_state_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dest_address_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "src_address_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "axi_command_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "read_len_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "word_count_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "write_len_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mac_type_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ethernet_axi_id_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "axi_address_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "axi_len_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "write_address_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "read_address_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "send_word_count_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ethernet_axi_mem_V_m_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ethernet_axi {
		data_in_V_data_V {Type I LastRead 0 FirstWrite -1}
		data_in_V_keep_V {Type I LastRead 0 FirstWrite -1}
		data_in_V_last_V {Type I LastRead 0 FirstWrite -1}
		data_out_V_data_V {Type O LastRead -1 FirstWrite 13}
		data_out_V_keep_V {Type O LastRead -1 FirstWrite 13}
		data_out_V_last_V {Type O LastRead -1 FirstWrite 13}
		mem_V {Type IO LastRead 10 FirstWrite 9}
		fsm_state_V {Type IO LastRead -1 FirstWrite -1}
		dest_address_V {Type IO LastRead -1 FirstWrite -1}
		src_address_V {Type IO LastRead -1 FirstWrite -1}
		axi_command_V {Type IO LastRead -1 FirstWrite -1}
		read_len_V {Type IO LastRead -1 FirstWrite -1}
		word_count_V {Type IO LastRead -1 FirstWrite -1}
		write_len_V {Type IO LastRead -1 FirstWrite -1}
		mac_type_V {Type IO LastRead -1 FirstWrite -1}
		ethernet_axi_id_V {Type IO LastRead -1 FirstWrite -1}
		axi_address_V {Type IO LastRead -1 FirstWrite -1}
		axi_len_V {Type IO LastRead -1 FirstWrite -1}
		write_address_V {Type IO LastRead -1 FirstWrite -1}
		read_address_V {Type IO LastRead -1 FirstWrite -1}
		send_word_count_V {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "14", "Max" : "14"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_in_V_data_V { axis {  { data_in_TDATA in_data 0 64 } } }
	data_in_V_keep_V { axis {  { data_in_TKEEP in_data 0 8 } } }
	data_in_V_last_V { axis {  { data_in_TVALID in_vld 0 1 }  { data_in_TREADY in_acc 1 1 }  { data_in_TLAST in_data 0 1 } } }
	data_out_V_data_V { axis {  { data_out_TDATA out_data 1 64 }  { data_out_TREADY out_acc 0 1 } } }
	data_out_V_keep_V { axis {  { data_out_TKEEP out_data 1 8 } } }
	data_out_V_last_V { axis {  { data_out_TVALID out_vld 1 1 }  { data_out_TLAST out_data 1 1 } } }
	mem_V { m_axi {  { m_axi_mem_V_AWVALID VALID 1 1 }  { m_axi_mem_V_AWREADY READY 0 1 }  { m_axi_mem_V_AWADDR ADDR 1 32 }  { m_axi_mem_V_AWID ID 1 1 }  { m_axi_mem_V_AWLEN LEN 1 8 }  { m_axi_mem_V_AWSIZE SIZE 1 3 }  { m_axi_mem_V_AWBURST BURST 1 2 }  { m_axi_mem_V_AWLOCK LOCK 1 2 }  { m_axi_mem_V_AWCACHE CACHE 1 4 }  { m_axi_mem_V_AWPROT PROT 1 3 }  { m_axi_mem_V_AWQOS QOS 1 4 }  { m_axi_mem_V_AWREGION REGION 1 4 }  { m_axi_mem_V_AWUSER USER 1 1 }  { m_axi_mem_V_WVALID VALID 1 1 }  { m_axi_mem_V_WREADY READY 0 1 }  { m_axi_mem_V_WDATA DATA 1 64 }  { m_axi_mem_V_WSTRB STRB 1 8 }  { m_axi_mem_V_WLAST LAST 1 1 }  { m_axi_mem_V_WID ID 1 1 }  { m_axi_mem_V_WUSER USER 1 1 }  { m_axi_mem_V_ARVALID VALID 1 1 }  { m_axi_mem_V_ARREADY READY 0 1 }  { m_axi_mem_V_ARADDR ADDR 1 32 }  { m_axi_mem_V_ARID ID 1 1 }  { m_axi_mem_V_ARLEN LEN 1 8 }  { m_axi_mem_V_ARSIZE SIZE 1 3 }  { m_axi_mem_V_ARBURST BURST 1 2 }  { m_axi_mem_V_ARLOCK LOCK 1 2 }  { m_axi_mem_V_ARCACHE CACHE 1 4 }  { m_axi_mem_V_ARPROT PROT 1 3 }  { m_axi_mem_V_ARQOS QOS 1 4 }  { m_axi_mem_V_ARREGION REGION 1 4 }  { m_axi_mem_V_ARUSER USER 1 1 }  { m_axi_mem_V_RVALID VALID 0 1 }  { m_axi_mem_V_RREADY READY 1 1 }  { m_axi_mem_V_RDATA DATA 0 64 }  { m_axi_mem_V_RLAST LAST 0 1 }  { m_axi_mem_V_RID ID 0 1 }  { m_axi_mem_V_RUSER USER 0 1 }  { m_axi_mem_V_RRESP RESP 0 2 }  { m_axi_mem_V_BVALID VALID 0 1 }  { m_axi_mem_V_BREADY READY 1 1 }  { m_axi_mem_V_BRESP RESP 0 2 }  { m_axi_mem_V_BID ID 0 1 }  { m_axi_mem_V_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ mem_V { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ mem_V 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ mem_V 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
