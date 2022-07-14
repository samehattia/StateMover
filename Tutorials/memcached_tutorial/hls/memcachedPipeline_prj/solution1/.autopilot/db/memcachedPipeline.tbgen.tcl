set moduleName memcachedPipeline
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set C_modelName {memcachedPipeline}
set C_modelType { void 0 }
set C_modelArgList { 
	{ inData_V_data_V int 64 regular {axi_s 0 volatile  { inData data } }  }
	{ inData_V_user_V int 112 regular {axi_s 0 volatile  { inData user } }  }
	{ inData_V_keep_V int 8 regular {axi_s 0 volatile  { inData keep } }  }
	{ inData_V_last_V int 1 regular {axi_s 0 volatile  { inData last } }  }
	{ outData_V_data_V int 64 regular {axi_s 1 volatile  { outData data } }  }
	{ outData_V_user_V int 112 regular {axi_s 1 volatile  { outData user } }  }
	{ outData_V_keep_V int 8 regular {axi_s 1 volatile  { outData keep } }  }
	{ outData_V_last_V int 1 regular {axi_s 1 volatile  { outData last } }  }
	{ dramValueStoreMemRdCmd_V int 40 regular {axi_s 1 volatile  { dramValueStoreMemRdCmd_V data } }  }
	{ dramValueStoreMemRdData_V_V int 512 regular {axi_s 0 volatile  { dramValueStoreMemRdData_V_V data } }  }
	{ dramValueStoreMemWrCmd_V int 40 regular {axi_s 1 volatile  { dramValueStoreMemWrCmd_V data } }  }
	{ dramValueStoreMemWrData_V_V int 512 regular {axi_s 1 volatile  { dramValueStoreMemWrData_V_V data } }  }
	{ flashValueStoreMemRdCmd_V int 48 regular {axi_s 1 volatile  { flashValueStoreMemRdCmd_V data } }  }
	{ flashValueStoreMemRdData_V_V int 64 regular {axi_s 0 volatile  { flashValueStoreMemRdData_V_V data } }  }
	{ flashValueStoreMemWrCmd_V int 48 regular {axi_s 1 volatile  { flashValueStoreMemWrCmd_V data } }  }
	{ flashValueStoreMemWrData_V_V int 64 regular {axi_s 1 volatile  { flashValueStoreMemWrData_V_V data } }  }
	{ hashTableMemRdData_V_V int 512 regular {axi_s 0 volatile  { hashTableMemRdData_V_V data } }  }
	{ hashTableMemRdCmd_V int 40 regular {axi_s 1 volatile  { hashTableMemRdCmd_V data } }  }
	{ hashTableMemWrData_V_V int 512 regular {axi_s 1 volatile  { hashTableMemWrData_V_V data } }  }
	{ hashTableMemWrCmd_V int 40 regular {axi_s 1 volatile  { hashTableMemWrCmd_V data } }  }
	{ addressReturnOut_V_V int 32 regular {axi_s 1 volatile  { addressReturnOut_V_V data } }  }
	{ addressAssignDramIn_V_V int 32 regular {axi_s 0 volatile  { addressAssignDramIn_V_V data } }  }
	{ addressAssignFlashIn_V_V int 32 regular {axi_s 0 volatile  { addressAssignFlashIn_V_V data } }  }
	{ flushReq_V int 1 regular {pointer 1}  }
	{ flushAck_V int 1 regular  }
	{ flushDone_V int 1 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inData_V_data_V", "interface" : "axis", "bitwidth" : 64,"bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "inData.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inData_V_user_V", "interface" : "axis", "bitwidth" : 112,"bitSlice":[{"low":0,"up":111,"cElement": [{"cName": "inData.V.user.V","cData": "uint112","bit_use": { "low": 0,"up": 111},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inData_V_keep_V", "interface" : "axis", "bitwidth" : 8,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "inData.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "inData_V_last_V", "interface" : "axis", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "inData.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outData_V_data_V", "interface" : "axis", "bitwidth" : 64,"bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "outData.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outData_V_user_V", "interface" : "axis", "bitwidth" : 112,"bitSlice":[{"low":0,"up":111,"cElement": [{"cName": "outData.V.user.V","cData": "uint112","bit_use": { "low": 0,"up": 111},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outData_V_keep_V", "interface" : "axis", "bitwidth" : 8,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "outData.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outData_V_last_V", "interface" : "axis", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "outData.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dramValueStoreMemRdCmd_V", "interface" : "axis", "bitwidth" : 40,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "dramValueStoreMemRdCmd.V.address.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":32,"up":39,"cElement": [{"cName": "dramValueStoreMemRdCmd.V.count.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dramValueStoreMemRdData_V_V", "interface" : "axis", "bitwidth" : 512,"bitSlice":[{"low":0,"up":511,"cElement": [{"cName": "dramValueStoreMemRdData.V.V","cData": "uint512","bit_use": { "low": 0,"up": 511},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dramValueStoreMemWrCmd_V", "interface" : "axis", "bitwidth" : 40,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "dramValueStoreMemWrCmd.V.address.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":32,"up":39,"cElement": [{"cName": "dramValueStoreMemWrCmd.V.count.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dramValueStoreMemWrData_V_V", "interface" : "axis", "bitwidth" : 512,"bitSlice":[{"low":0,"up":511,"cElement": [{"cName": "dramValueStoreMemWrData.V.V","cData": "uint512","bit_use": { "low": 0,"up": 511},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "flashValueStoreMemRdCmd_V", "interface" : "axis", "bitwidth" : 48,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "flashValueStoreMemRdCmd.V.address.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":32,"up":44,"cElement": [{"cName": "flashValueStoreMemRdCmd.V.count.V","cData": "uint13","bit_use": { "low": 0,"up": 12},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "flashValueStoreMemRdData_V_V", "interface" : "axis", "bitwidth" : 64,"bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "flashValueStoreMemRdData.V.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "flashValueStoreMemWrCmd_V", "interface" : "axis", "bitwidth" : 48,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "flashValueStoreMemWrCmd.V.address.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":32,"up":44,"cElement": [{"cName": "flashValueStoreMemWrCmd.V.count.V","cData": "uint13","bit_use": { "low": 0,"up": 12},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "flashValueStoreMemWrData_V_V", "interface" : "axis", "bitwidth" : 64,"bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "flashValueStoreMemWrData.V.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "hashTableMemRdData_V_V", "interface" : "axis", "bitwidth" : 512,"bitSlice":[{"low":0,"up":511,"cElement": [{"cName": "hashTableMemRdData.V.V","cData": "uint512","bit_use": { "low": 0,"up": 511},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "hashTableMemRdCmd_V", "interface" : "axis", "bitwidth" : 40,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "hashTableMemRdCmd.V.address.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":32,"up":39,"cElement": [{"cName": "hashTableMemRdCmd.V.count.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "hashTableMemWrData_V_V", "interface" : "axis", "bitwidth" : 512,"bitSlice":[{"low":0,"up":511,"cElement": [{"cName": "hashTableMemWrData.V.V","cData": "uint512","bit_use": { "low": 0,"up": 511},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "hashTableMemWrCmd_V", "interface" : "axis", "bitwidth" : 40,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "hashTableMemWrCmd.V.address.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":32,"up":39,"cElement": [{"cName": "hashTableMemWrCmd.V.count.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "addressReturnOut_V_V", "interface" : "axis", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "addressReturnOut.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "addressAssignDramIn_V_V", "interface" : "axis", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "addressAssignDramIn.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "addressAssignFlashIn_V_V", "interface" : "axis", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "addressAssignFlashIn.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "flushReq_V", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "flushReq.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "flushAck_V", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "flushAck.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "flushDone_V", "interface" : "wire", "bitwidth" : 1,"bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "flushDone.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 62
set portList { 
	{ inData_TDATA sc_in sc_lv 64 signal 0 } 
	{ inData_TUSER sc_in sc_lv 112 signal 1 } 
	{ inData_TKEEP sc_in sc_lv 8 signal 2 } 
	{ inData_TLAST sc_in sc_lv 1 signal 3 } 
	{ outData_TDATA sc_out sc_lv 64 signal 4 } 
	{ outData_TUSER sc_out sc_lv 112 signal 5 } 
	{ outData_TKEEP sc_out sc_lv 8 signal 6 } 
	{ outData_TLAST sc_out sc_lv 1 signal 7 } 
	{ dramValueStoreMemRdCmd_V_TDATA sc_out sc_lv 40 signal 8 } 
	{ dramValueStoreMemRdData_V_V_TDATA sc_in sc_lv 512 signal 9 } 
	{ dramValueStoreMemWrCmd_V_TDATA sc_out sc_lv 40 signal 10 } 
	{ dramValueStoreMemWrData_V_V_TDATA sc_out sc_lv 512 signal 11 } 
	{ flashValueStoreMemRdCmd_V_TDATA sc_out sc_lv 48 signal 12 } 
	{ flashValueStoreMemRdData_V_V_TDATA sc_in sc_lv 64 signal 13 } 
	{ flashValueStoreMemWrCmd_V_TDATA sc_out sc_lv 48 signal 14 } 
	{ flashValueStoreMemWrData_V_V_TDATA sc_out sc_lv 64 signal 15 } 
	{ hashTableMemRdData_V_V_TDATA sc_in sc_lv 512 signal 16 } 
	{ hashTableMemRdCmd_V_TDATA sc_out sc_lv 40 signal 17 } 
	{ hashTableMemWrData_V_V_TDATA sc_out sc_lv 512 signal 18 } 
	{ hashTableMemWrCmd_V_TDATA sc_out sc_lv 40 signal 19 } 
	{ addressReturnOut_V_V_TDATA sc_out sc_lv 32 signal 20 } 
	{ addressAssignDramIn_V_V_TDATA sc_in sc_lv 32 signal 21 } 
	{ addressAssignFlashIn_V_V_TDATA sc_in sc_lv 32 signal 22 } 
	{ flushReq_V sc_out sc_lv 1 signal 23 } 
	{ flushAck_V sc_in sc_lv 1 signal 24 } 
	{ flushDone_V sc_out sc_lv 1 signal 25 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ inData_TVALID sc_in sc_logic 1 invld 3 } 
	{ inData_TREADY sc_out sc_logic 1 inacc 3 } 
	{ hashTableMemRdCmd_V_TVALID sc_out sc_logic 1 outvld 17 } 
	{ hashTableMemRdCmd_V_TREADY sc_in sc_logic 1 outacc 17 } 
	{ hashTableMemRdData_V_V_TVALID sc_in sc_logic 1 invld 16 } 
	{ hashTableMemRdData_V_V_TREADY sc_out sc_logic 1 inacc 16 } 
	{ hashTableMemWrCmd_V_TVALID sc_out sc_logic 1 outvld 19 } 
	{ hashTableMemWrCmd_V_TREADY sc_in sc_logic 1 outacc 19 } 
	{ hashTableMemWrData_V_V_TVALID sc_out sc_logic 1 outvld 18 } 
	{ hashTableMemWrData_V_V_TREADY sc_in sc_logic 1 outacc 18 } 
	{ addressReturnOut_V_V_TVALID sc_out sc_logic 1 outvld 20 } 
	{ addressReturnOut_V_V_TREADY sc_in sc_logic 1 outacc 20 } 
	{ addressAssignDramIn_V_V_TVALID sc_in sc_logic 1 invld 21 } 
	{ addressAssignDramIn_V_V_TREADY sc_out sc_logic 1 inacc 21 } 
	{ addressAssignFlashIn_V_V_TVALID sc_in sc_logic 1 invld 22 } 
	{ addressAssignFlashIn_V_V_TREADY sc_out sc_logic 1 inacc 22 } 
	{ dramValueStoreMemWrCmd_V_TVALID sc_out sc_logic 1 outvld 10 } 
	{ dramValueStoreMemWrCmd_V_TREADY sc_in sc_logic 1 outacc 10 } 
	{ dramValueStoreMemWrData_V_V_TVALID sc_out sc_logic 1 outvld 11 } 
	{ dramValueStoreMemWrData_V_V_TREADY sc_in sc_logic 1 outacc 11 } 
	{ dramValueStoreMemRdCmd_V_TVALID sc_out sc_logic 1 outvld 8 } 
	{ dramValueStoreMemRdCmd_V_TREADY sc_in sc_logic 1 outacc 8 } 
	{ dramValueStoreMemRdData_V_V_TVALID sc_in sc_logic 1 invld 9 } 
	{ dramValueStoreMemRdData_V_V_TREADY sc_out sc_logic 1 inacc 9 } 
	{ flashValueStoreMemWrCmd_V_TVALID sc_out sc_logic 1 outvld 14 } 
	{ flashValueStoreMemWrCmd_V_TREADY sc_in sc_logic 1 outacc 14 } 
	{ flashValueStoreMemWrData_V_V_TVALID sc_out sc_logic 1 outvld 15 } 
	{ flashValueStoreMemWrData_V_V_TREADY sc_in sc_logic 1 outacc 15 } 
	{ flashValueStoreMemRdCmd_V_TVALID sc_out sc_logic 1 outvld 12 } 
	{ flashValueStoreMemRdCmd_V_TREADY sc_in sc_logic 1 outacc 12 } 
	{ flashValueStoreMemRdData_V_V_TVALID sc_in sc_logic 1 invld 13 } 
	{ flashValueStoreMemRdData_V_V_TREADY sc_out sc_logic 1 inacc 13 } 
	{ outData_TVALID sc_out sc_logic 1 outvld 7 } 
	{ outData_TREADY sc_in sc_logic 1 outacc 7 } 
}
set NewPortList {[ 
	{ "name": "inData_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inData_V_data_V", "role": "default" }} , 
 	{ "name": "inData_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":112, "type": "signal", "bundle":{"name": "inData_V_user_V", "role": "default" }} , 
 	{ "name": "inData_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inData_V_keep_V", "role": "default" }} , 
 	{ "name": "inData_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "inData_V_last_V", "role": "default" }} , 
 	{ "name": "outData_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "outData_V_data_V", "role": "default" }} , 
 	{ "name": "outData_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":112, "type": "signal", "bundle":{"name": "outData_V_user_V", "role": "default" }} , 
 	{ "name": "outData_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outData_V_keep_V", "role": "default" }} , 
 	{ "name": "outData_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "outData_V_last_V", "role": "default" }} , 
 	{ "name": "dramValueStoreMemRdCmd_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "dramValueStoreMemRdCmd_V", "role": "TDATA" }} , 
 	{ "name": "dramValueStoreMemRdData_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dramValueStoreMemRdData_V_V", "role": "TDATA" }} , 
 	{ "name": "dramValueStoreMemWrCmd_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "dramValueStoreMemWrCmd_V", "role": "TDATA" }} , 
 	{ "name": "dramValueStoreMemWrData_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dramValueStoreMemWrData_V_V", "role": "TDATA" }} , 
 	{ "name": "flashValueStoreMemRdCmd_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "flashValueStoreMemRdCmd_V", "role": "TDATA" }} , 
 	{ "name": "flashValueStoreMemRdData_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "flashValueStoreMemRdData_V_V", "role": "TDATA" }} , 
 	{ "name": "flashValueStoreMemWrCmd_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "flashValueStoreMemWrCmd_V", "role": "TDATA" }} , 
 	{ "name": "flashValueStoreMemWrData_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "flashValueStoreMemWrData_V_V", "role": "TDATA" }} , 
 	{ "name": "hashTableMemRdData_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "hashTableMemRdData_V_V", "role": "TDATA" }} , 
 	{ "name": "hashTableMemRdCmd_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "hashTableMemRdCmd_V", "role": "TDATA" }} , 
 	{ "name": "hashTableMemWrData_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "hashTableMemWrData_V_V", "role": "TDATA" }} , 
 	{ "name": "hashTableMemWrCmd_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "hashTableMemWrCmd_V", "role": "TDATA" }} , 
 	{ "name": "addressReturnOut_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addressReturnOut_V_V", "role": "TDATA" }} , 
 	{ "name": "addressAssignDramIn_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addressAssignDramIn_V_V", "role": "TDATA" }} , 
 	{ "name": "addressAssignFlashIn_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "addressAssignFlashIn_V_V", "role": "TDATA" }} , 
 	{ "name": "flushReq_V", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flushReq_V", "role": "default" }} , 
 	{ "name": "flushAck_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flushAck_V", "role": "default" }} , 
 	{ "name": "flushDone_V", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "flushDone_V", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "inData_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "inData_V_last_V", "role": "default" }} , 
 	{ "name": "inData_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "inData_V_last_V", "role": "default" }} , 
 	{ "name": "hashTableMemRdCmd_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hashTableMemRdCmd_V", "role": "TVALID" }} , 
 	{ "name": "hashTableMemRdCmd_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "hashTableMemRdCmd_V", "role": "TREADY" }} , 
 	{ "name": "hashTableMemRdData_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "hashTableMemRdData_V_V", "role": "TVALID" }} , 
 	{ "name": "hashTableMemRdData_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "hashTableMemRdData_V_V", "role": "TREADY" }} , 
 	{ "name": "hashTableMemWrCmd_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hashTableMemWrCmd_V", "role": "TVALID" }} , 
 	{ "name": "hashTableMemWrCmd_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "hashTableMemWrCmd_V", "role": "TREADY" }} , 
 	{ "name": "hashTableMemWrData_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hashTableMemWrData_V_V", "role": "TVALID" }} , 
 	{ "name": "hashTableMemWrData_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "hashTableMemWrData_V_V", "role": "TREADY" }} , 
 	{ "name": "addressReturnOut_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "addressReturnOut_V_V", "role": "TVALID" }} , 
 	{ "name": "addressReturnOut_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "addressReturnOut_V_V", "role": "TREADY" }} , 
 	{ "name": "addressAssignDramIn_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "addressAssignDramIn_V_V", "role": "TVALID" }} , 
 	{ "name": "addressAssignDramIn_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "addressAssignDramIn_V_V", "role": "TREADY" }} , 
 	{ "name": "addressAssignFlashIn_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "addressAssignFlashIn_V_V", "role": "TVALID" }} , 
 	{ "name": "addressAssignFlashIn_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "addressAssignFlashIn_V_V", "role": "TREADY" }} , 
 	{ "name": "dramValueStoreMemWrCmd_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dramValueStoreMemWrCmd_V", "role": "TVALID" }} , 
 	{ "name": "dramValueStoreMemWrCmd_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "dramValueStoreMemWrCmd_V", "role": "TREADY" }} , 
 	{ "name": "dramValueStoreMemWrData_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dramValueStoreMemWrData_V_V", "role": "TVALID" }} , 
 	{ "name": "dramValueStoreMemWrData_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "dramValueStoreMemWrData_V_V", "role": "TREADY" }} , 
 	{ "name": "dramValueStoreMemRdCmd_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dramValueStoreMemRdCmd_V", "role": "TVALID" }} , 
 	{ "name": "dramValueStoreMemRdCmd_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "dramValueStoreMemRdCmd_V", "role": "TREADY" }} , 
 	{ "name": "dramValueStoreMemRdData_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "dramValueStoreMemRdData_V_V", "role": "TVALID" }} , 
 	{ "name": "dramValueStoreMemRdData_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "dramValueStoreMemRdData_V_V", "role": "TREADY" }} , 
 	{ "name": "flashValueStoreMemWrCmd_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "flashValueStoreMemWrCmd_V", "role": "TVALID" }} , 
 	{ "name": "flashValueStoreMemWrCmd_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "flashValueStoreMemWrCmd_V", "role": "TREADY" }} , 
 	{ "name": "flashValueStoreMemWrData_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "flashValueStoreMemWrData_V_V", "role": "TVALID" }} , 
 	{ "name": "flashValueStoreMemWrData_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "flashValueStoreMemWrData_V_V", "role": "TREADY" }} , 
 	{ "name": "flashValueStoreMemRdCmd_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "flashValueStoreMemRdCmd_V", "role": "TVALID" }} , 
 	{ "name": "flashValueStoreMemRdCmd_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "flashValueStoreMemRdCmd_V", "role": "TREADY" }} , 
 	{ "name": "flashValueStoreMemRdData_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "flashValueStoreMemRdData_V_V", "role": "TVALID" }} , 
 	{ "name": "flashValueStoreMemRdData_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "flashValueStoreMemRdData_V_V", "role": "TREADY" }} , 
 	{ "name": "outData_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outData_V_last_V", "role": "default" }} , 
 	{ "name": "outData_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "outData_V_last_V", "role": "default" }}  ]}
set Spec2ImplPortList { 
	inData_V_data_V { axis {  { inData_TDATA in_data 0 64 } } }
	inData_V_user_V { axis {  { inData_TUSER in_data 0 112 } } }
	inData_V_keep_V { axis {  { inData_TKEEP in_data 0 8 } } }
	inData_V_last_V { axis {  { inData_TLAST in_data 0 1 }  { inData_TVALID in_vld 0 1 }  { inData_TREADY in_acc 1 1 } } }
	outData_V_data_V { axis {  { outData_TDATA out_data 1 64 } } }
	outData_V_user_V { axis {  { outData_TUSER out_data 1 112 } } }
	outData_V_keep_V { axis {  { outData_TKEEP out_data 1 8 } } }
	outData_V_last_V { axis {  { outData_TLAST out_data 1 1 }  { outData_TVALID out_vld 1 1 }  { outData_TREADY out_acc 0 1 } } }
	dramValueStoreMemRdCmd_V { axis {  { dramValueStoreMemRdCmd_V_TDATA out_data 1 40 }  { dramValueStoreMemRdCmd_V_TVALID out_vld 1 1 }  { dramValueStoreMemRdCmd_V_TREADY out_acc 0 1 } } }
	dramValueStoreMemRdData_V_V { axis {  { dramValueStoreMemRdData_V_V_TDATA in_data 0 512 }  { dramValueStoreMemRdData_V_V_TVALID in_vld 0 1 }  { dramValueStoreMemRdData_V_V_TREADY in_acc 1 1 } } }
	dramValueStoreMemWrCmd_V { axis {  { dramValueStoreMemWrCmd_V_TDATA out_data 1 40 }  { dramValueStoreMemWrCmd_V_TVALID out_vld 1 1 }  { dramValueStoreMemWrCmd_V_TREADY out_acc 0 1 } } }
	dramValueStoreMemWrData_V_V { axis {  { dramValueStoreMemWrData_V_V_TDATA out_data 1 512 }  { dramValueStoreMemWrData_V_V_TVALID out_vld 1 1 }  { dramValueStoreMemWrData_V_V_TREADY out_acc 0 1 } } }
	flashValueStoreMemRdCmd_V { axis {  { flashValueStoreMemRdCmd_V_TDATA out_data 1 48 }  { flashValueStoreMemRdCmd_V_TVALID out_vld 1 1 }  { flashValueStoreMemRdCmd_V_TREADY out_acc 0 1 } } }
	flashValueStoreMemRdData_V_V { axis {  { flashValueStoreMemRdData_V_V_TDATA in_data 0 64 }  { flashValueStoreMemRdData_V_V_TVALID in_vld 0 1 }  { flashValueStoreMemRdData_V_V_TREADY in_acc 1 1 } } }
	flashValueStoreMemWrCmd_V { axis {  { flashValueStoreMemWrCmd_V_TDATA out_data 1 48 }  { flashValueStoreMemWrCmd_V_TVALID out_vld 1 1 }  { flashValueStoreMemWrCmd_V_TREADY out_acc 0 1 } } }
	flashValueStoreMemWrData_V_V { axis {  { flashValueStoreMemWrData_V_V_TDATA out_data 1 64 }  { flashValueStoreMemWrData_V_V_TVALID out_vld 1 1 }  { flashValueStoreMemWrData_V_V_TREADY out_acc 0 1 } } }
	hashTableMemRdData_V_V { axis {  { hashTableMemRdData_V_V_TDATA in_data 0 512 }  { hashTableMemRdData_V_V_TVALID in_vld 0 1 }  { hashTableMemRdData_V_V_TREADY in_acc 1 1 } } }
	hashTableMemRdCmd_V { axis {  { hashTableMemRdCmd_V_TDATA out_data 1 40 }  { hashTableMemRdCmd_V_TVALID out_vld 1 1 }  { hashTableMemRdCmd_V_TREADY out_acc 0 1 } } }
	hashTableMemWrData_V_V { axis {  { hashTableMemWrData_V_V_TDATA out_data 1 512 }  { hashTableMemWrData_V_V_TVALID out_vld 1 1 }  { hashTableMemWrData_V_V_TREADY out_acc 0 1 } } }
	hashTableMemWrCmd_V { axis {  { hashTableMemWrCmd_V_TDATA out_data 1 40 }  { hashTableMemWrCmd_V_TVALID out_vld 1 1 }  { hashTableMemWrCmd_V_TREADY out_acc 0 1 } } }
	addressReturnOut_V_V { axis {  { addressReturnOut_V_V_TDATA out_data 1 32 }  { addressReturnOut_V_V_TVALID out_vld 1 1 }  { addressReturnOut_V_V_TREADY out_acc 0 1 } } }
	addressAssignDramIn_V_V { axis {  { addressAssignDramIn_V_V_TDATA in_data 0 32 }  { addressAssignDramIn_V_V_TVALID in_vld 0 1 }  { addressAssignDramIn_V_V_TREADY in_acc 1 1 } } }
	addressAssignFlashIn_V_V { axis {  { addressAssignFlashIn_V_V_TDATA in_data 0 32 }  { addressAssignFlashIn_V_V_TVALID in_vld 0 1 }  { addressAssignFlashIn_V_V_TREADY in_acc 1 1 } } }
	flushReq_V { ap_none {  { flushReq_V out_data 1 1 } } }
	flushAck_V { ap_none {  { flushAck_V in_data 0 1 } } }
	flushDone_V { ap_none {  { flushDone_V out_data 1 1 } } }
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
