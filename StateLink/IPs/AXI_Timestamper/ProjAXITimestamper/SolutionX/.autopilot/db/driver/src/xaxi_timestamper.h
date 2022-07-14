// ==============================================================
// File generated on Thu Jul 14 17:17:44 EDT 2022
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XAXI_TIMESTAMPER_H
#define XAXI_TIMESTAMPER_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xaxi_timestamper_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Timestamp_BaseAddress;
} XAxi_timestamper_Config;
#endif

typedef struct {
    u32 Timestamp_BaseAddress;
    u32 IsReady;
} XAxi_timestamper;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XAxi_timestamper_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XAxi_timestamper_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XAxi_timestamper_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAxi_timestamper_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XAxi_timestamper_Initialize(XAxi_timestamper *InstancePtr, u16 DeviceId);
XAxi_timestamper_Config* XAxi_timestamper_LookupConfig(u16 DeviceId);
int XAxi_timestamper_CfgInitialize(XAxi_timestamper *InstancePtr, XAxi_timestamper_Config *ConfigPtr);
#else
int XAxi_timestamper_Initialize(XAxi_timestamper *InstancePtr, const char* InstanceName);
int XAxi_timestamper_Release(XAxi_timestamper *InstancePtr);
#endif


u32 XAxi_timestamper_Get_write_timestamp_V(XAxi_timestamper *InstancePtr);
u32 XAxi_timestamper_Get_write_timestamp_V_vld(XAxi_timestamper *InstancePtr);
u32 XAxi_timestamper_Get_read_timestamp_V(XAxi_timestamper *InstancePtr);
u32 XAxi_timestamper_Get_read_timestamp_V_vld(XAxi_timestamper *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
