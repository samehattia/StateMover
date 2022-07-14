// ==============================================================
// File generated on Thu Jul 14 17:17:44 EDT 2022
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// timestamp
// 0x00000000 : reserved
// 0x00000004 : reserved
// 0x00000008 : reserved
// 0x0000000c : reserved
// 0x80000000 : Data signal of write_timestamp_V
//              bit 31~0 - write_timestamp_V[31:0] (Read)
// 0x80000004 : Control signal of write_timestamp_V
//              bit 0  - write_timestamp_V_ap_vld (Read/COR)
//              others - reserved
// 0x80000010 : Data signal of read_timestamp_V
//              bit 31~0 - read_timestamp_V[31:0] (Read)
// 0x80000014 : Control signal of read_timestamp_V
//              bit 0  - read_timestamp_V_ap_vld (Read/COR)
//              others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XAXI_TIMESTAMPER_TIMESTAMP_ADDR_WRITE_TIMESTAMP_V_DATA 0x80000000
#define XAXI_TIMESTAMPER_TIMESTAMP_BITS_WRITE_TIMESTAMP_V_DATA 32
#define XAXI_TIMESTAMPER_TIMESTAMP_ADDR_WRITE_TIMESTAMP_V_CTRL 0x80000004
#define XAXI_TIMESTAMPER_TIMESTAMP_ADDR_READ_TIMESTAMP_V_DATA  0x80000010
#define XAXI_TIMESTAMPER_TIMESTAMP_BITS_READ_TIMESTAMP_V_DATA  32
#define XAXI_TIMESTAMPER_TIMESTAMP_ADDR_READ_TIMESTAMP_V_CTRL  0x80000014

