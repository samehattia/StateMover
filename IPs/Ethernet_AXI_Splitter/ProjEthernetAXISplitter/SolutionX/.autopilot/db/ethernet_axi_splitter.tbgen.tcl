set moduleName ethernet_axi_splitter
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
set C_modelName {ethernet_axi_splitter}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_in_V_data_V int 64 regular {axi_s 0 volatile  { data_in Data } }  }
	{ data_in_V_keep_V int 8 regular {axi_s 0 volatile  { data_in Keep } }  }
	{ data_in_V_last_V int 1 regular {axi_s 0 volatile  { data_in Last } }  }
	{ ethernet_axi_0_V_data_V int 64 regular {axi_s 1 volatile  { ethernet_axi_0 Data } }  }
	{ ethernet_axi_0_V_keep_V int 8 regular {axi_s 1 volatile  { ethernet_axi_0 Keep } }  }
	{ ethernet_axi_0_V_last_V int 1 regular {axi_s 1 volatile  { ethernet_axi_0 Last } }  }
	{ ethernet_axi_1_V_data_V int 64 regular {axi_s 1 volatile  { ethernet_axi_1 Data } }  }
	{ ethernet_axi_1_V_keep_V int 8 regular {axi_s 1 volatile  { ethernet_axi_1 Keep } }  }
	{ ethernet_axi_1_V_last_V int 1 regular {axi_s 1 volatile  { ethernet_axi_1 Last } }  }
	{ ethernet_axi_2_V_data_V int 64 regular {axi_s 1 volatile  { ethernet_axi_2 Data } }  }
	{ ethernet_axi_2_V_keep_V int 8 regular {axi_s 1 volatile  { ethernet_axi_2 Keep } }  }
	{ ethernet_axi_2_V_last_V int 1 regular {axi_s 1 volatile  { ethernet_axi_2 Last } }  }
	{ ethernet_axi_3_V_data_V int 64 regular {axi_s 1 volatile  { ethernet_axi_3 Data } }  }
	{ ethernet_axi_3_V_keep_V int 8 regular {axi_s 1 volatile  { ethernet_axi_3 Keep } }  }
	{ ethernet_axi_3_V_last_V int 1 regular {axi_s 1 volatile  { ethernet_axi_3 Last } }  }
	{ ethernet_axi_4_V_data_V int 64 regular {axi_s 1 volatile  { ethernet_axi_4 Data } }  }
	{ ethernet_axi_4_V_keep_V int 8 regular {axi_s 1 volatile  { ethernet_axi_4 Keep } }  }
	{ ethernet_axi_4_V_last_V int 1 regular {axi_s 1 volatile  { ethernet_axi_4 Last } }  }
	{ ethernet_axi_5_V_data_V int 64 regular {axi_s 1 volatile  { ethernet_axi_5 Data } }  }
	{ ethernet_axi_5_V_keep_V int 8 regular {axi_s 1 volatile  { ethernet_axi_5 Keep } }  }
	{ ethernet_axi_5_V_last_V int 1 regular {axi_s 1 volatile  { ethernet_axi_5 Last } }  }
	{ ethernet_axi_6_V_data_V int 64 regular {axi_s 1 volatile  { ethernet_axi_6 Data } }  }
	{ ethernet_axi_6_V_keep_V int 8 regular {axi_s 1 volatile  { ethernet_axi_6 Keep } }  }
	{ ethernet_axi_6_V_last_V int 1 regular {axi_s 1 volatile  { ethernet_axi_6 Last } }  }
	{ ethernet_axi_7_V_data_V int 64 regular {axi_s 1 volatile  { ethernet_axi_7 Data } }  }
	{ ethernet_axi_7_V_keep_V int 8 regular {axi_s 1 volatile  { ethernet_axi_7 Keep } }  }
	{ ethernet_axi_7_V_last_V int 1 regular {axi_s 1 volatile  { ethernet_axi_7 Last } }  }
	{ data_out_V_data_V int 64 regular {axi_s 1 volatile  { data_out Data } }  }
	{ data_out_V_keep_V int 8 regular {axi_s 1 volatile  { data_out Keep } }  }
	{ data_out_V_last_V int 1 regular {axi_s 1 volatile  { data_out Last } }  }
	{ my_mac_address_V int 48 regular {ap_stable 0} }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_in_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "data_in.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "data_in_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "data_in.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "data_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "data_in.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ethernet_axi_0_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "ethernet_axi_0.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ethernet_axi_0_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ethernet_axi_0.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ethernet_axi_0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "ethernet_axi_0.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ethernet_axi_1_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "ethernet_axi_1.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ethernet_axi_1_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ethernet_axi_1.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ethernet_axi_1_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "ethernet_axi_1.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ethernet_axi_2_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "ethernet_axi_2.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ethernet_axi_2_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ethernet_axi_2.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ethernet_axi_2_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "ethernet_axi_2.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ethernet_axi_3_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "ethernet_axi_3.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ethernet_axi_3_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ethernet_axi_3.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ethernet_axi_3_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "ethernet_axi_3.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ethernet_axi_4_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "ethernet_axi_4.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ethernet_axi_4_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ethernet_axi_4.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ethernet_axi_4_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "ethernet_axi_4.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ethernet_axi_5_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "ethernet_axi_5.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ethernet_axi_5_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ethernet_axi_5.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ethernet_axi_5_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "ethernet_axi_5.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ethernet_axi_6_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "ethernet_axi_6.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ethernet_axi_6_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ethernet_axi_6.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ethernet_axi_6_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "ethernet_axi_6.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ethernet_axi_7_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "ethernet_axi_7.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ethernet_axi_7_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ethernet_axi_7.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "ethernet_axi_7_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "ethernet_axi_7.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "data_out_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "data_out.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "data_out_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "data_out.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "data_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "data_out.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "my_mac_address_V", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY", "bitSlice":[{"low":0,"up":47,"cElement": [{"cName": "my_mac_address.V","cData": "uint48","bit_use": { "low": 0,"up": 47},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 53
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ data_in_TDATA sc_in sc_lv 64 signal 0 } 
	{ data_in_TVALID sc_in sc_logic 1 invld 2 } 
	{ data_in_TREADY sc_out sc_logic 1 inacc 2 } 
	{ data_in_TKEEP sc_in sc_lv 8 signal 1 } 
	{ data_in_TLAST sc_in sc_lv 1 signal 2 } 
	{ ethernet_axi_0_TDATA sc_out sc_lv 64 signal 3 } 
	{ ethernet_axi_0_TVALID sc_out sc_logic 1 outvld 5 } 
	{ ethernet_axi_0_TREADY sc_in sc_logic 1 outacc 3 } 
	{ ethernet_axi_0_TKEEP sc_out sc_lv 8 signal 4 } 
	{ ethernet_axi_0_TLAST sc_out sc_lv 1 signal 5 } 
	{ ethernet_axi_1_TDATA sc_out sc_lv 64 signal 6 } 
	{ ethernet_axi_1_TVALID sc_out sc_logic 1 outvld 8 } 
	{ ethernet_axi_1_TREADY sc_in sc_logic 1 outacc 6 } 
	{ ethernet_axi_1_TKEEP sc_out sc_lv 8 signal 7 } 
	{ ethernet_axi_1_TLAST sc_out sc_lv 1 signal 8 } 
	{ ethernet_axi_2_TDATA sc_out sc_lv 64 signal 9 } 
	{ ethernet_axi_2_TVALID sc_out sc_logic 1 outvld 11 } 
	{ ethernet_axi_2_TREADY sc_in sc_logic 1 outacc 9 } 
	{ ethernet_axi_2_TKEEP sc_out sc_lv 8 signal 10 } 
	{ ethernet_axi_2_TLAST sc_out sc_lv 1 signal 11 } 
	{ ethernet_axi_3_TDATA sc_out sc_lv 64 signal 12 } 
	{ ethernet_axi_3_TVALID sc_out sc_logic 1 outvld 14 } 
	{ ethernet_axi_3_TREADY sc_in sc_logic 1 outacc 12 } 
	{ ethernet_axi_3_TKEEP sc_out sc_lv 8 signal 13 } 
	{ ethernet_axi_3_TLAST sc_out sc_lv 1 signal 14 } 
	{ ethernet_axi_4_TDATA sc_out sc_lv 64 signal 15 } 
	{ ethernet_axi_4_TVALID sc_out sc_logic 1 outvld 17 } 
	{ ethernet_axi_4_TREADY sc_in sc_logic 1 outacc 15 } 
	{ ethernet_axi_4_TKEEP sc_out sc_lv 8 signal 16 } 
	{ ethernet_axi_4_TLAST sc_out sc_lv 1 signal 17 } 
	{ ethernet_axi_5_TDATA sc_out sc_lv 64 signal 18 } 
	{ ethernet_axi_5_TVALID sc_out sc_logic 1 outvld 20 } 
	{ ethernet_axi_5_TREADY sc_in sc_logic 1 outacc 18 } 
	{ ethernet_axi_5_TKEEP sc_out sc_lv 8 signal 19 } 
	{ ethernet_axi_5_TLAST sc_out sc_lv 1 signal 20 } 
	{ ethernet_axi_6_TDATA sc_out sc_lv 64 signal 21 } 
	{ ethernet_axi_6_TVALID sc_out sc_logic 1 outvld 23 } 
	{ ethernet_axi_6_TREADY sc_in sc_logic 1 outacc 21 } 
	{ ethernet_axi_6_TKEEP sc_out sc_lv 8 signal 22 } 
	{ ethernet_axi_6_TLAST sc_out sc_lv 1 signal 23 } 
	{ ethernet_axi_7_TDATA sc_out sc_lv 64 signal 24 } 
	{ ethernet_axi_7_TVALID sc_out sc_logic 1 outvld 26 } 
	{ ethernet_axi_7_TREADY sc_in sc_logic 1 outacc 24 } 
	{ ethernet_axi_7_TKEEP sc_out sc_lv 8 signal 25 } 
	{ ethernet_axi_7_TLAST sc_out sc_lv 1 signal 26 } 
	{ data_out_TDATA sc_out sc_lv 64 signal 27 } 
	{ data_out_TVALID sc_out sc_logic 1 outvld 29 } 
	{ data_out_TREADY sc_in sc_logic 1 outacc 27 } 
	{ data_out_TKEEP sc_out sc_lv 8 signal 28 } 
	{ data_out_TLAST sc_out sc_lv 1 signal 29 } 
	{ my_mac_address_V sc_in sc_lv 48 signal 30 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "data_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data_in_V_data_V", "role": "default" }} , 
 	{ "name": "data_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_in_V_last_V", "role": "default" }} , 
 	{ "name": "data_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_in_V_last_V", "role": "default" }} , 
 	{ "name": "data_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_in_V_keep_V", "role": "default" }} , 
 	{ "name": "data_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_V_last_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_0_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ethernet_axi_0_V_data_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_0_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ethernet_axi_0_V_last_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_0_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "ethernet_axi_0_V_data_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_0_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ethernet_axi_0_V_keep_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_0_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ethernet_axi_0_V_last_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_1_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ethernet_axi_1_V_data_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_1_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ethernet_axi_1_V_last_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_1_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "ethernet_axi_1_V_data_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_1_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ethernet_axi_1_V_keep_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_1_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ethernet_axi_1_V_last_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_2_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ethernet_axi_2_V_data_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_2_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ethernet_axi_2_V_last_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_2_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "ethernet_axi_2_V_data_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_2_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ethernet_axi_2_V_keep_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_2_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ethernet_axi_2_V_last_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_3_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ethernet_axi_3_V_data_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_3_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ethernet_axi_3_V_last_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_3_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "ethernet_axi_3_V_data_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_3_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ethernet_axi_3_V_keep_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_3_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ethernet_axi_3_V_last_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_4_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ethernet_axi_4_V_data_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_4_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ethernet_axi_4_V_last_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_4_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "ethernet_axi_4_V_data_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_4_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ethernet_axi_4_V_keep_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_4_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ethernet_axi_4_V_last_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_5_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ethernet_axi_5_V_data_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_5_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ethernet_axi_5_V_last_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_5_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "ethernet_axi_5_V_data_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_5_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ethernet_axi_5_V_keep_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_5_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ethernet_axi_5_V_last_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_6_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ethernet_axi_6_V_data_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_6_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ethernet_axi_6_V_last_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_6_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "ethernet_axi_6_V_data_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_6_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ethernet_axi_6_V_keep_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_6_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ethernet_axi_6_V_last_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_7_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ethernet_axi_7_V_data_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_7_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "ethernet_axi_7_V_last_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_7_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "ethernet_axi_7_V_data_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_7_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ethernet_axi_7_V_keep_V", "role": "default" }} , 
 	{ "name": "ethernet_axi_7_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ethernet_axi_7_V_last_V", "role": "default" }} , 
 	{ "name": "data_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data_out_V_data_V", "role": "default" }} , 
 	{ "name": "data_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_out_V_last_V", "role": "default" }} , 
 	{ "name": "data_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "data_out_V_data_V", "role": "default" }} , 
 	{ "name": "data_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_out_V_keep_V", "role": "default" }} , 
 	{ "name": "data_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_V_last_V", "role": "default" }} , 
 	{ "name": "my_mac_address_V", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "my_mac_address_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "ethernet_axi_splitter",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Unaligned", "UnalignedPipeline" : "1", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
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
			{"Name" : "ethernet_axi_0_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ethernet_axi_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ethernet_axi_0_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ethernet_axi_0_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ethernet_axi_1_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ethernet_axi_1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ethernet_axi_1_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ethernet_axi_1_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ethernet_axi_2_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ethernet_axi_2_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ethernet_axi_2_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ethernet_axi_2_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ethernet_axi_3_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ethernet_axi_3_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ethernet_axi_3_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ethernet_axi_3_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ethernet_axi_4_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ethernet_axi_4_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ethernet_axi_4_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ethernet_axi_4_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ethernet_axi_5_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ethernet_axi_5_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ethernet_axi_5_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ethernet_axi_5_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ethernet_axi_6_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ethernet_axi_6_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ethernet_axi_6_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ethernet_axi_6_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ethernet_axi_7_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "ethernet_axi_7_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ethernet_axi_7_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ethernet_axi_7_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "data_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "data_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_out_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "data_out_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "my_mac_address_V", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "fsm_state_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mac_type_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ethernet_axi_id_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prev_word_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prev_word_keep_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prev_word_last_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "word_count_V", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	ethernet_axi_splitter {
		data_in_V_data_V {Type I LastRead 0 FirstWrite -1}
		data_in_V_keep_V {Type I LastRead 0 FirstWrite -1}
		data_in_V_last_V {Type I LastRead 0 FirstWrite -1}
		ethernet_axi_0_V_data_V {Type O LastRead -1 FirstWrite 2}
		ethernet_axi_0_V_keep_V {Type O LastRead -1 FirstWrite 2}
		ethernet_axi_0_V_last_V {Type O LastRead -1 FirstWrite 2}
		ethernet_axi_1_V_data_V {Type O LastRead -1 FirstWrite 2}
		ethernet_axi_1_V_keep_V {Type O LastRead -1 FirstWrite 2}
		ethernet_axi_1_V_last_V {Type O LastRead -1 FirstWrite 2}
		ethernet_axi_2_V_data_V {Type O LastRead -1 FirstWrite 2}
		ethernet_axi_2_V_keep_V {Type O LastRead -1 FirstWrite 2}
		ethernet_axi_2_V_last_V {Type O LastRead -1 FirstWrite 2}
		ethernet_axi_3_V_data_V {Type O LastRead -1 FirstWrite 2}
		ethernet_axi_3_V_keep_V {Type O LastRead -1 FirstWrite 2}
		ethernet_axi_3_V_last_V {Type O LastRead -1 FirstWrite 2}
		ethernet_axi_4_V_data_V {Type O LastRead -1 FirstWrite 2}
		ethernet_axi_4_V_keep_V {Type O LastRead -1 FirstWrite 2}
		ethernet_axi_4_V_last_V {Type O LastRead -1 FirstWrite 2}
		ethernet_axi_5_V_data_V {Type O LastRead -1 FirstWrite 2}
		ethernet_axi_5_V_keep_V {Type O LastRead -1 FirstWrite 2}
		ethernet_axi_5_V_last_V {Type O LastRead -1 FirstWrite 2}
		ethernet_axi_6_V_data_V {Type O LastRead -1 FirstWrite 2}
		ethernet_axi_6_V_keep_V {Type O LastRead -1 FirstWrite 2}
		ethernet_axi_6_V_last_V {Type O LastRead -1 FirstWrite 2}
		ethernet_axi_7_V_data_V {Type O LastRead -1 FirstWrite 2}
		ethernet_axi_7_V_keep_V {Type O LastRead -1 FirstWrite 2}
		ethernet_axi_7_V_last_V {Type O LastRead -1 FirstWrite 2}
		data_out_V_data_V {Type O LastRead -1 FirstWrite 2}
		data_out_V_keep_V {Type O LastRead -1 FirstWrite 2}
		data_out_V_last_V {Type O LastRead -1 FirstWrite 2}
		my_mac_address_V {Type I LastRead 0 FirstWrite -1}
		fsm_state_V {Type IO LastRead -1 FirstWrite -1}
		mac_type_V {Type IO LastRead -1 FirstWrite -1}
		ethernet_axi_id_V {Type IO LastRead -1 FirstWrite -1}
		prev_word_data_V {Type IO LastRead -1 FirstWrite -1}
		prev_word_keep_V {Type IO LastRead -1 FirstWrite -1}
		prev_word_last_V {Type IO LastRead -1 FirstWrite -1}
		word_count_V {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "3"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_in_V_data_V { axis {  { data_in_TDATA in_data 0 64 } } }
	data_in_V_keep_V { axis {  { data_in_TKEEP in_data 0 8 } } }
	data_in_V_last_V { axis {  { data_in_TVALID in_vld 0 1 }  { data_in_TREADY in_acc 1 1 }  { data_in_TLAST in_data 0 1 } } }
	ethernet_axi_0_V_data_V { axis {  { ethernet_axi_0_TDATA out_data 1 64 }  { ethernet_axi_0_TREADY out_acc 0 1 } } }
	ethernet_axi_0_V_keep_V { axis {  { ethernet_axi_0_TKEEP out_data 1 8 } } }
	ethernet_axi_0_V_last_V { axis {  { ethernet_axi_0_TVALID out_vld 1 1 }  { ethernet_axi_0_TLAST out_data 1 1 } } }
	ethernet_axi_1_V_data_V { axis {  { ethernet_axi_1_TDATA out_data 1 64 }  { ethernet_axi_1_TREADY out_acc 0 1 } } }
	ethernet_axi_1_V_keep_V { axis {  { ethernet_axi_1_TKEEP out_data 1 8 } } }
	ethernet_axi_1_V_last_V { axis {  { ethernet_axi_1_TVALID out_vld 1 1 }  { ethernet_axi_1_TLAST out_data 1 1 } } }
	ethernet_axi_2_V_data_V { axis {  { ethernet_axi_2_TDATA out_data 1 64 }  { ethernet_axi_2_TREADY out_acc 0 1 } } }
	ethernet_axi_2_V_keep_V { axis {  { ethernet_axi_2_TKEEP out_data 1 8 } } }
	ethernet_axi_2_V_last_V { axis {  { ethernet_axi_2_TVALID out_vld 1 1 }  { ethernet_axi_2_TLAST out_data 1 1 } } }
	ethernet_axi_3_V_data_V { axis {  { ethernet_axi_3_TDATA out_data 1 64 }  { ethernet_axi_3_TREADY out_acc 0 1 } } }
	ethernet_axi_3_V_keep_V { axis {  { ethernet_axi_3_TKEEP out_data 1 8 } } }
	ethernet_axi_3_V_last_V { axis {  { ethernet_axi_3_TVALID out_vld 1 1 }  { ethernet_axi_3_TLAST out_data 1 1 } } }
	ethernet_axi_4_V_data_V { axis {  { ethernet_axi_4_TDATA out_data 1 64 }  { ethernet_axi_4_TREADY out_acc 0 1 } } }
	ethernet_axi_4_V_keep_V { axis {  { ethernet_axi_4_TKEEP out_data 1 8 } } }
	ethernet_axi_4_V_last_V { axis {  { ethernet_axi_4_TVALID out_vld 1 1 }  { ethernet_axi_4_TLAST out_data 1 1 } } }
	ethernet_axi_5_V_data_V { axis {  { ethernet_axi_5_TDATA out_data 1 64 }  { ethernet_axi_5_TREADY out_acc 0 1 } } }
	ethernet_axi_5_V_keep_V { axis {  { ethernet_axi_5_TKEEP out_data 1 8 } } }
	ethernet_axi_5_V_last_V { axis {  { ethernet_axi_5_TVALID out_vld 1 1 }  { ethernet_axi_5_TLAST out_data 1 1 } } }
	ethernet_axi_6_V_data_V { axis {  { ethernet_axi_6_TDATA out_data 1 64 }  { ethernet_axi_6_TREADY out_acc 0 1 } } }
	ethernet_axi_6_V_keep_V { axis {  { ethernet_axi_6_TKEEP out_data 1 8 } } }
	ethernet_axi_6_V_last_V { axis {  { ethernet_axi_6_TVALID out_vld 1 1 }  { ethernet_axi_6_TLAST out_data 1 1 } } }
	ethernet_axi_7_V_data_V { axis {  { ethernet_axi_7_TDATA out_data 1 64 }  { ethernet_axi_7_TREADY out_acc 0 1 } } }
	ethernet_axi_7_V_keep_V { axis {  { ethernet_axi_7_TKEEP out_data 1 8 } } }
	ethernet_axi_7_V_last_V { axis {  { ethernet_axi_7_TVALID out_vld 1 1 }  { ethernet_axi_7_TLAST out_data 1 1 } } }
	data_out_V_data_V { axis {  { data_out_TDATA out_data 1 64 }  { data_out_TREADY out_acc 0 1 } } }
	data_out_V_keep_V { axis {  { data_out_TKEEP out_data 1 8 } } }
	data_out_V_last_V { axis {  { data_out_TVALID out_vld 1 1 }  { data_out_TLAST out_data 1 1 } } }
	my_mac_address_V { ap_stable {  { my_mac_address_V in_data 0 48 } } }
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
