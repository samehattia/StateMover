// ==============================================================
// File generated on Thu Jul 14 17:17:44 EDT 2022
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xaxi_timestamper.h"

extern XAxi_timestamper_Config XAxi_timestamper_ConfigTable[];

XAxi_timestamper_Config *XAxi_timestamper_LookupConfig(u16 DeviceId) {
	XAxi_timestamper_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XAXI_TIMESTAMPER_NUM_INSTANCES; Index++) {
		if (XAxi_timestamper_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XAxi_timestamper_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAxi_timestamper_Initialize(XAxi_timestamper *InstancePtr, u16 DeviceId) {
	XAxi_timestamper_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAxi_timestamper_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAxi_timestamper_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

