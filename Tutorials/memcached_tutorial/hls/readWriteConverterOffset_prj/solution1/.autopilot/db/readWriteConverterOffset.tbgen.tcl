set moduleName readWriteConverterOffset
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {readWriteConverterOffset}
set C_modelType { void 0 }
set C_modelArgList {
	{ memWrCmd_V int 40 regular {fifo 0 volatile }  }
	{ memWrData_V_V int 512 regular {fifo 0 volatile }  }
	{ dmWrCmd_V int 72 regular {fifo 1 volatile }  }
	{ dmWrData_V int 577 regular {fifo 1 volatile }  }
	{ dmWrStatus_V_V int 8 regular {fifo 0 volatile }  }
	{ memRdCmd_V int 40 regular {fifo 0 volatile }  }
	{ memRdData_V_V int 512 regular {fifo 1 volatile }  }
	{ dmRdCmd_V int 72 regular {fifo 1 volatile }  }
	{ dmRdData_V int 577 regular {fifo 0 volatile }  }
	{ dmRdStatus_V_V int 8 regular {fifo 0 volatile }  }
	{ dmRdAddrPosted_V int 1 regular  }
	{ dmWrAddrPosted_V int 1 unused  }
}
set C_modelArgMapList {[ 
	{ "Name" : "memWrCmd_V", "interface" : "fifo", "bitwidth" : 40, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "memWrCmd.V.address.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":32,"up":39,"cElement": [{"cName": "memWrCmd.V.count.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "memWrData_V_V", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[{"low":0,"up":511,"cElement": [{"cName": "memWrData.V.V","cData": "uint512","bit_use": { "low": 0,"up": 511},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dmWrCmd_V", "interface" : "fifo", "bitwidth" : 72, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":22,"cElement": [{"cName": "dmWrCmd.V.btt.V","cData": "uint23","bit_use": { "low": 0,"up": 22},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":23,"up":23,"cElement": [{"cName": "dmWrCmd.V.type.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":24,"up":29,"cElement": [{"cName": "dmWrCmd.V.dsa.V","cData": "uint6","bit_use": { "low": 0,"up": 5},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":30,"up":30,"cElement": [{"cName": "dmWrCmd.V.eof.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":31,"up":31,"cElement": [{"cName": "dmWrCmd.V.drr.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":32,"up":63,"cElement": [{"cName": "dmWrCmd.V.startAddress.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":64,"up":67,"cElement": [{"cName": "dmWrCmd.V.tag.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":68,"up":71,"cElement": [{"cName": "dmWrCmd.V.rsvd.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dmWrData_V", "interface" : "fifo", "bitwidth" : 577, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":511,"cElement": [{"cName": "dmWrData.V.data.V","cData": "uint512","bit_use": { "low": 0,"up": 511},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":512,"up":575,"cElement": [{"cName": "dmWrData.V.keep.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":576,"up":576,"cElement": [{"cName": "dmWrData.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dmWrStatus_V_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "dmWrStatus.V.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "memRdCmd_V", "interface" : "fifo", "bitwidth" : 40, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "memRdCmd.V.address.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":32,"up":39,"cElement": [{"cName": "memRdCmd.V.count.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "memRdData_V_V", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":511,"cElement": [{"cName": "memRdData.V.V","cData": "uint512","bit_use": { "low": 0,"up": 511},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dmRdCmd_V", "interface" : "fifo", "bitwidth" : 72, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":22,"cElement": [{"cName": "dmRdCmd.V.btt.V","cData": "uint23","bit_use": { "low": 0,"up": 22},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":23,"up":23,"cElement": [{"cName": "dmRdCmd.V.type.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":24,"up":29,"cElement": [{"cName": "dmRdCmd.V.dsa.V","cData": "uint6","bit_use": { "low": 0,"up": 5},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":30,"up":30,"cElement": [{"cName": "dmRdCmd.V.eof.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":31,"up":31,"cElement": [{"cName": "dmRdCmd.V.drr.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":32,"up":63,"cElement": [{"cName": "dmRdCmd.V.startAddress.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":64,"up":67,"cElement": [{"cName": "dmRdCmd.V.tag.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":68,"up":71,"cElement": [{"cName": "dmRdCmd.V.rsvd.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dmRdData_V", "interface" : "fifo", "bitwidth" : 577, "direction" : "READONLY", "bitSlice":[{"low":0,"up":511,"cElement": [{"cName": "dmRdData.V.data.V","cData": "uint512","bit_use": { "low": 0,"up": 511},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":512,"up":575,"cElement": [{"cName": "dmRdData.V.keep.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":576,"up":576,"cElement": [{"cName": "dmRdData.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dmRdStatus_V_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "dmRdStatus.V.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dmRdAddrPosted_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dmRdAddrPosted.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "dmWrAddrPosted_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dmWrAddrPosted.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_async } 
	{ memWrCmd_V_dout sc_in sc_lv 40 signal 0 } 
	{ memWrCmd_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ memWrCmd_V_read sc_out sc_logic 1 signal 0 } 
	{ memWrData_V_V_dout sc_in sc_lv 512 signal 1 } 
	{ memWrData_V_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ memWrData_V_V_read sc_out sc_logic 1 signal 1 } 
	{ dmWrCmd_V_din sc_out sc_lv 72 signal 2 } 
	{ dmWrCmd_V_full_n sc_in sc_logic 1 signal 2 } 
	{ dmWrCmd_V_write sc_out sc_logic 1 signal 2 } 
	{ dmWrData_V_din sc_out sc_lv 577 signal 3 } 
	{ dmWrData_V_full_n sc_in sc_logic 1 signal 3 } 
	{ dmWrData_V_write sc_out sc_logic 1 signal 3 } 
	{ dmWrStatus_V_V_dout sc_in sc_lv 8 signal 4 } 
	{ dmWrStatus_V_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ dmWrStatus_V_V_read sc_out sc_logic 1 signal 4 } 
	{ memRdCmd_V_dout sc_in sc_lv 40 signal 5 } 
	{ memRdCmd_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ memRdCmd_V_read sc_out sc_logic 1 signal 5 } 
	{ memRdData_V_V_din sc_out sc_lv 512 signal 6 } 
	{ memRdData_V_V_full_n sc_in sc_logic 1 signal 6 } 
	{ memRdData_V_V_write sc_out sc_logic 1 signal 6 } 
	{ dmRdCmd_V_din sc_out sc_lv 72 signal 7 } 
	{ dmRdCmd_V_full_n sc_in sc_logic 1 signal 7 } 
	{ dmRdCmd_V_write sc_out sc_logic 1 signal 7 } 
	{ dmRdData_V_dout sc_in sc_lv 577 signal 8 } 
	{ dmRdData_V_empty_n sc_in sc_logic 1 signal 8 } 
	{ dmRdData_V_read sc_out sc_logic 1 signal 8 } 
	{ dmRdStatus_V_V_dout sc_in sc_lv 8 signal 9 } 
	{ dmRdStatus_V_V_empty_n sc_in sc_logic 1 signal 9 } 
	{ dmRdStatus_V_V_read sc_out sc_logic 1 signal 9 } 
	{ dmRdAddrPosted_V sc_in sc_lv 1 signal 10 } 
	{ dmWrAddrPosted_V sc_in sc_lv 1 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "memWrCmd_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "memWrCmd_V", "role": "dout" }} , 
 	{ "name": "memWrCmd_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memWrCmd_V", "role": "empty_n" }} , 
 	{ "name": "memWrCmd_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memWrCmd_V", "role": "read" }} , 
 	{ "name": "memWrData_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "memWrData_V_V", "role": "dout" }} , 
 	{ "name": "memWrData_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memWrData_V_V", "role": "empty_n" }} , 
 	{ "name": "memWrData_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memWrData_V_V", "role": "read" }} , 
 	{ "name": "dmWrCmd_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":72, "type": "signal", "bundle":{"name": "dmWrCmd_V", "role": "din" }} , 
 	{ "name": "dmWrCmd_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dmWrCmd_V", "role": "full_n" }} , 
 	{ "name": "dmWrCmd_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dmWrCmd_V", "role": "write" }} , 
 	{ "name": "dmWrData_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":577, "type": "signal", "bundle":{"name": "dmWrData_V", "role": "din" }} , 
 	{ "name": "dmWrData_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dmWrData_V", "role": "full_n" }} , 
 	{ "name": "dmWrData_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dmWrData_V", "role": "write" }} , 
 	{ "name": "dmWrStatus_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dmWrStatus_V_V", "role": "dout" }} , 
 	{ "name": "dmWrStatus_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dmWrStatus_V_V", "role": "empty_n" }} , 
 	{ "name": "dmWrStatus_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dmWrStatus_V_V", "role": "read" }} , 
 	{ "name": "memRdCmd_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "memRdCmd_V", "role": "dout" }} , 
 	{ "name": "memRdCmd_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memRdCmd_V", "role": "empty_n" }} , 
 	{ "name": "memRdCmd_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memRdCmd_V", "role": "read" }} , 
 	{ "name": "memRdData_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "memRdData_V_V", "role": "din" }} , 
 	{ "name": "memRdData_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memRdData_V_V", "role": "full_n" }} , 
 	{ "name": "memRdData_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memRdData_V_V", "role": "write" }} , 
 	{ "name": "dmRdCmd_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":72, "type": "signal", "bundle":{"name": "dmRdCmd_V", "role": "din" }} , 
 	{ "name": "dmRdCmd_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dmRdCmd_V", "role": "full_n" }} , 
 	{ "name": "dmRdCmd_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dmRdCmd_V", "role": "write" }} , 
 	{ "name": "dmRdData_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":577, "type": "signal", "bundle":{"name": "dmRdData_V", "role": "dout" }} , 
 	{ "name": "dmRdData_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dmRdData_V", "role": "empty_n" }} , 
 	{ "name": "dmRdData_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dmRdData_V", "role": "read" }} , 
 	{ "name": "dmRdStatus_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dmRdStatus_V_V", "role": "dout" }} , 
 	{ "name": "dmRdStatus_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dmRdStatus_V_V", "role": "empty_n" }} , 
 	{ "name": "dmRdStatus_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dmRdStatus_V_V", "role": "read" }} , 
 	{ "name": "dmRdAddrPosted_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dmRdAddrPosted_V", "role": "default" }} , 
 	{ "name": "dmWrAddrPosted_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dmWrAddrPosted_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "readWriteConverterOffset",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "2",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "memWrCmd_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "memWrCmd_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "memWrData_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "memWrData_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dmWrCmd_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dmWrCmd_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dmWrData_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dmWrData_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dmWrStatus_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "dmWrStatus_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "memRdCmd_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "memRdCmd_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "memRdData_V_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "memRdData_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dmRdCmd_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dmRdCmd_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dmRdData_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "dmRdData_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dmRdStatus_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "dmRdStatus_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dmRdAddrPosted_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "dmWrAddrPosted_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "readWriteConverterSt", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lastReadCmd", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dmRdCmdCount_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dmRdStatusCount_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "noOfBytesToWrite_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dmRdAddrPostedCount_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "aggregateMemCmdType_s_0", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "readCmd", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "memWriteCmd_V_addres", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "memWriteCmd_V_count_s", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "wrTagCounter_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "memReadCmd_V_address", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "memReadCmd_V_count_V", "Type" : "Fifo", "Direction" : "IO"},
			{"Name" : "rdTagCounter_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "byteCount_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aggregateMemCmdType_s_0_fifo_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.memReadCmd_V_address_fifo_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.memReadCmd_V_count_V_fifo_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.memWriteCmd_V_addres_fifo_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.memWriteCmd_V_count_s_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	readWriteConverterOffset {
		memWrCmd_V {Type I LastRead 1 FirstWrite -1}
		memWrData_V_V {Type I LastRead 1 FirstWrite -1}
		dmWrCmd_V {Type O LastRead 0 FirstWrite 1}
		dmWrData_V {Type O LastRead 0 FirstWrite 1}
		dmWrStatus_V_V {Type I LastRead 1 FirstWrite -1}
		memRdCmd_V {Type I LastRead 1 FirstWrite -1}
		memRdData_V_V {Type O LastRead 0 FirstWrite 1}
		dmRdCmd_V {Type O LastRead 0 FirstWrite 1}
		dmRdData_V {Type I LastRead 1 FirstWrite -1}
		dmRdStatus_V_V {Type I LastRead 1 FirstWrite -1}
		dmRdAddrPosted_V {Type I LastRead 0 FirstWrite -1}
		dmWrAddrPosted_V {Type I LastRead -1 FirstWrite -1}
		readWriteConverterSt {Type IO LastRead -1 FirstWrite -1}
		lastReadCmd {Type IO LastRead -1 FirstWrite -1}
		dmRdCmdCount_V {Type IO LastRead -1 FirstWrite -1}
		dmRdStatusCount_V {Type IO LastRead -1 FirstWrite -1}
		noOfBytesToWrite_V {Type IO LastRead -1 FirstWrite -1}
		dmRdAddrPostedCount_s {Type IO LastRead -1 FirstWrite -1}
		aggregateMemCmdType_s_0 {Type IO LastRead -1 FirstWrite -1}
		readCmd {Type IO LastRead -1 FirstWrite -1}
		memWriteCmd_V_addres {Type IO LastRead -1 FirstWrite -1}
		memWriteCmd_V_count_s {Type IO LastRead -1 FirstWrite -1}
		wrTagCounter_V {Type IO LastRead -1 FirstWrite -1}
		memReadCmd_V_address {Type IO LastRead -1 FirstWrite -1}
		memReadCmd_V_count_V {Type IO LastRead -1 FirstWrite -1}
		rdTagCounter_V {Type IO LastRead -1 FirstWrite -1}
		byteCount_V {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	memWrCmd_V { ap_fifo {  { memWrCmd_V_dout fifo_data 0 40 }  { memWrCmd_V_empty_n fifo_status 0 1 }  { memWrCmd_V_read fifo_update 1 1 } } }
	memWrData_V_V { ap_fifo {  { memWrData_V_V_dout fifo_data 0 512 }  { memWrData_V_V_empty_n fifo_status 0 1 }  { memWrData_V_V_read fifo_update 1 1 } } }
	dmWrCmd_V { ap_fifo {  { dmWrCmd_V_din fifo_data 1 72 }  { dmWrCmd_V_full_n fifo_status 0 1 }  { dmWrCmd_V_write fifo_update 1 1 } } }
	dmWrData_V { ap_fifo {  { dmWrData_V_din fifo_data 1 577 }  { dmWrData_V_full_n fifo_status 0 1 }  { dmWrData_V_write fifo_update 1 1 } } }
	dmWrStatus_V_V { ap_fifo {  { dmWrStatus_V_V_dout fifo_data 0 8 }  { dmWrStatus_V_V_empty_n fifo_status 0 1 }  { dmWrStatus_V_V_read fifo_update 1 1 } } }
	memRdCmd_V { ap_fifo {  { memRdCmd_V_dout fifo_data 0 40 }  { memRdCmd_V_empty_n fifo_status 0 1 }  { memRdCmd_V_read fifo_update 1 1 } } }
	memRdData_V_V { ap_fifo {  { memRdData_V_V_din fifo_data 1 512 }  { memRdData_V_V_full_n fifo_status 0 1 }  { memRdData_V_V_write fifo_update 1 1 } } }
	dmRdCmd_V { ap_fifo {  { dmRdCmd_V_din fifo_data 1 72 }  { dmRdCmd_V_full_n fifo_status 0 1 }  { dmRdCmd_V_write fifo_update 1 1 } } }
	dmRdData_V { ap_fifo {  { dmRdData_V_dout fifo_data 0 577 }  { dmRdData_V_empty_n fifo_status 0 1 }  { dmRdData_V_read fifo_update 1 1 } } }
	dmRdStatus_V_V { ap_fifo {  { dmRdStatus_V_V_dout fifo_data 0 8 }  { dmRdStatus_V_V_empty_n fifo_status 0 1 }  { dmRdStatus_V_V_read fifo_update 1 1 } } }
	dmRdAddrPosted_V { ap_none {  { dmRdAddrPosted_V in_data 0 1 } } }
	dmWrAddrPosted_V { ap_none {  { dmWrAddrPosted_V in_data 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	memWrCmd_V { fifo_read 2 has_conditional }
	memWrData_V_V { fifo_read 2 has_conditional }
	dmWrCmd_V { fifo_write 2 has_conditional }
	dmWrData_V { fifo_write 2 has_conditional }
	dmWrStatus_V_V { fifo_read 2 has_conditional }
	memRdCmd_V { fifo_read 2 has_conditional }
	memRdData_V_V { fifo_write 2 has_conditional }
	dmRdCmd_V { fifo_write 2 has_conditional }
	dmRdData_V { fifo_read 2 has_conditional }
	dmRdStatus_V_V { fifo_read 2 has_conditional }
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
