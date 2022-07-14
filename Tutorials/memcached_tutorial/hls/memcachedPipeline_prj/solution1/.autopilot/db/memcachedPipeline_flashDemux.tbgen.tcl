set moduleName memcachedPipeline_flashDemux
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function_flushable
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set pipeII 1
set pipeLatency 1
set C_modelName {memcachedPipeline_flashDemux}
set C_modelType { void 0 }
set C_modelArgList { 
	{ splitter2valueStoreFlash_V int 256 regular {fifo 0 volatile } {global 0}  }
	{ flashMetadataBuffer_V int 128 regular {fifo 1 volatile } {global 1}  }
	{ flashKeyBuffer_V_V int 64 regular {fifo 1 volatile } {global 1}  }
	{ flashDemux2getPath_V int 48 regular {fifo 1 volatile } {global 1}  }
	{ flashDemux2setPathMetadata_V int 48 regular {fifo 1 volatile } {global 1}  }
	{ flashDemux2setPathValue_V int 66 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "splitter2valueStoreFlash_V", "interface" : "fifo", "bitwidth" : 256,"extern" : 0} , 
 	{ "Name" : "flashMetadataBuffer_V", "interface" : "fifo", "bitwidth" : 128,"extern" : 0} , 
 	{ "Name" : "flashKeyBuffer_V_V", "interface" : "fifo", "bitwidth" : 64,"extern" : 0} , 
 	{ "Name" : "flashDemux2getPath_V", "interface" : "fifo", "bitwidth" : 48,"extern" : 0} , 
 	{ "Name" : "flashDemux2setPathMetadata_V", "interface" : "fifo", "bitwidth" : 48,"extern" : 0} , 
 	{ "Name" : "flashDemux2setPathValue_V", "interface" : "fifo", "bitwidth" : 66,"extern" : 0} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_async } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ splitter2valueStoreFlash_V_dout sc_in sc_lv 256 signal 0 } 
	{ splitter2valueStoreFlash_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ splitter2valueStoreFlash_V_read sc_out sc_logic 1 signal 0 } 
	{ flashMetadataBuffer_V_din sc_out sc_lv 128 signal 1 } 
	{ flashMetadataBuffer_V_full_n sc_in sc_logic 1 signal 1 } 
	{ flashMetadataBuffer_V_write sc_out sc_logic 1 signal 1 } 
	{ flashKeyBuffer_V_V_din sc_out sc_lv 64 signal 2 } 
	{ flashKeyBuffer_V_V_full_n sc_in sc_logic 1 signal 2 } 
	{ flashKeyBuffer_V_V_write sc_out sc_logic 1 signal 2 } 
	{ flashDemux2setPathValue_V_din sc_out sc_lv 66 signal 5 } 
	{ flashDemux2setPathValue_V_full_n sc_in sc_logic 1 signal 5 } 
	{ flashDemux2setPathValue_V_write sc_out sc_logic 1 signal 5 } 
	{ flashDemux2setPathMetadata_V_din sc_out sc_lv 48 signal 4 } 
	{ flashDemux2setPathMetadata_V_full_n sc_in sc_logic 1 signal 4 } 
	{ flashDemux2setPathMetadata_V_write sc_out sc_logic 1 signal 4 } 
	{ flashDemux2getPath_V_din sc_out sc_lv 48 signal 3 } 
	{ flashDemux2getPath_V_full_n sc_in sc_logic 1 signal 3 } 
	{ flashDemux2getPath_V_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "splitter2valueStoreFlash_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "splitter2valueStoreFlash_V", "role": "dout" }} , 
 	{ "name": "splitter2valueStoreFlash_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "splitter2valueStoreFlash_V", "role": "empty_n" }} , 
 	{ "name": "splitter2valueStoreFlash_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "splitter2valueStoreFlash_V", "role": "read" }} , 
 	{ "name": "flashMetadataBuffer_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "flashMetadataBuffer_V", "role": "din" }} , 
 	{ "name": "flashMetadataBuffer_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashMetadataBuffer_V", "role": "full_n" }} , 
 	{ "name": "flashMetadataBuffer_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashMetadataBuffer_V", "role": "write" }} , 
 	{ "name": "flashKeyBuffer_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "flashKeyBuffer_V_V", "role": "din" }} , 
 	{ "name": "flashKeyBuffer_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashKeyBuffer_V_V", "role": "full_n" }} , 
 	{ "name": "flashKeyBuffer_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashKeyBuffer_V_V", "role": "write" }} , 
 	{ "name": "flashDemux2setPathValue_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":66, "type": "signal", "bundle":{"name": "flashDemux2setPathValue_V", "role": "din" }} , 
 	{ "name": "flashDemux2setPathValue_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashDemux2setPathValue_V", "role": "full_n" }} , 
 	{ "name": "flashDemux2setPathValue_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashDemux2setPathValue_V", "role": "write" }} , 
 	{ "name": "flashDemux2setPathMetadata_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "flashDemux2setPathMetadata_V", "role": "din" }} , 
 	{ "name": "flashDemux2setPathMetadata_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashDemux2setPathMetadata_V", "role": "full_n" }} , 
 	{ "name": "flashDemux2setPathMetadata_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashDemux2setPathMetadata_V", "role": "write" }} , 
 	{ "name": "flashDemux2getPath_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "flashDemux2getPath_V", "role": "din" }} , 
 	{ "name": "flashDemux2getPath_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashDemux2getPath_V", "role": "full_n" }} , 
 	{ "name": "flashDemux2getPath_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "flashDemux2getPath_V", "role": "write" }}  ]}
set Spec2ImplPortList { 
	splitter2valueStoreFlash_V { ap_fifo {  { splitter2valueStoreFlash_V_dout fifo_data 0 256 }  { splitter2valueStoreFlash_V_empty_n fifo_status 0 1 }  { splitter2valueStoreFlash_V_read fifo_update 1 1 } } }
	flashMetadataBuffer_V { ap_fifo {  { flashMetadataBuffer_V_din fifo_data 1 128 }  { flashMetadataBuffer_V_full_n fifo_status 0 1 }  { flashMetadataBuffer_V_write fifo_update 1 1 } } }
	flashKeyBuffer_V_V { ap_fifo {  { flashKeyBuffer_V_V_din fifo_data 1 64 }  { flashKeyBuffer_V_V_full_n fifo_status 0 1 }  { flashKeyBuffer_V_V_write fifo_update 1 1 } } }
	flashDemux2getPath_V { ap_fifo {  { flashDemux2getPath_V_din fifo_data 1 48 }  { flashDemux2getPath_V_full_n fifo_status 0 1 }  { flashDemux2getPath_V_write fifo_update 1 1 } } }
	flashDemux2setPathMetadata_V { ap_fifo {  { flashDemux2setPathMetadata_V_din fifo_data 1 48 }  { flashDemux2setPathMetadata_V_full_n fifo_status 0 1 }  { flashDemux2setPathMetadata_V_write fifo_update 1 1 } } }
	flashDemux2setPathValue_V { ap_fifo {  { flashDemux2setPathValue_V_din fifo_data 1 66 }  { flashDemux2setPathValue_V_full_n fifo_status 0 1 }  { flashDemux2setPathValue_V_write fifo_update 1 1 } } }
}
