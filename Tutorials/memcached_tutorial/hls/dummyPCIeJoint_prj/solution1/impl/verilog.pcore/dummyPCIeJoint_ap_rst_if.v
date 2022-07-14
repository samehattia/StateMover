// ==============================================================
// File generated on Wed Oct 14 13:17:35 EDT 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps

module dummyPCIeJoint_ap_rst_if
#(parameter
    RESET_ACTIVE_LOW = 0
)(
    input  wire din,
    output wire dout
);

assign dout = (RESET_ACTIVE_LOW == 1)? ~din : din;

endmodule

