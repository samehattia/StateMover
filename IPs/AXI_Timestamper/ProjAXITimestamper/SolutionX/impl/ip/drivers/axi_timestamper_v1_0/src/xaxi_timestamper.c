// ==============================================================
// File generated on Thu Jul 14 17:17:44 EDT 2022
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xaxi_timestamper.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XAxi_timestamper_CfgInitialize(XAxi_timestamper *InstancePtr, XAxi_timestamper_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Timestamp_BaseAddress = ConfigPtr->Timestamp_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

u32 XAxi_timestamper_Get_write_timestamp_V(XAxi_timestamper *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAxi_timestamper_ReadReg(InstancePtr->Timestamp_BaseAddress, XAXI_TIMESTAMPER_TIMESTAMP_ADDR_WRITE_TIMESTAMP_V_DATA);
    return Data;
}

u32 XAxi_timestamper_Get_write_timestamp_V_vld(XAxi_timestamper *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAxi_timestamper_ReadReg(InstancePtr->Timestamp_BaseAddress, XAXI_TIMESTAMPER_TIMESTAMP_ADDR_WRITE_TIMESTAMP_V_CTRL);
    return Data & 0x1;
}

u32 XAxi_timestamper_Get_read_timestamp_V(XAxi_timestamper *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAxi_timestamper_ReadReg(InstancePtr->Timestamp_BaseAddress, XAXI_TIMESTAMPER_TIMESTAMP_ADDR_READ_TIMESTAMP_V_DATA);
    return Data;
}

u32 XAxi_timestamper_Get_read_timestamp_V_vld(XAxi_timestamper *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAxi_timestamper_ReadReg(InstancePtr->Timestamp_BaseAddress, XAXI_TIMESTAMPER_TIMESTAMP_ADDR_READ_TIMESTAMP_V_CTRL);
    return Data & 0x1;
}

