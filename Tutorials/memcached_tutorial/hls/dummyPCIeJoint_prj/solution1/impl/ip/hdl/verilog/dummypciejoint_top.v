// ==============================================================
// File generated on Wed Oct 14 13:17:35 EDT 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module dummypciejoint_top (
inData_V_V_TVALID,
inData_V_V_TREADY,
inData_V_V_TDATA,
outDataDram_V_V_TVALID,
outDataDram_V_V_TREADY,
outDataDram_V_V_TDATA,
outDataFlash_V_V_TVALID,
outDataFlash_V_V_TREADY,
outDataFlash_V_V_TDATA,
aresetn,
aclk,
flushReq_V,
flushAck_V,
flushDone_V
);

parameter RESET_ACTIVE_LOW = 1;

input inData_V_V_TVALID ;
output inData_V_V_TREADY ;
input [32 - 1:0] inData_V_V_TDATA ;


output outDataDram_V_V_TVALID ;
input outDataDram_V_V_TREADY ;
output [32 - 1:0] outDataDram_V_V_TDATA ;


output outDataFlash_V_V_TVALID ;
input outDataFlash_V_V_TREADY ;
output [32 - 1:0] outDataFlash_V_V_TDATA ;

input aresetn ;

input aclk ;

input [1 - 1:0] flushReq_V ;
output [1 - 1:0] flushAck_V ;
input [1 - 1:0] flushDone_V ;


wire inData_V_V_TVALID;
wire inData_V_V_TREADY;
wire [32 - 1:0] inData_V_V_TDATA;


wire outDataDram_V_V_TVALID;
wire outDataDram_V_V_TREADY;
wire [32 - 1:0] outDataDram_V_V_TDATA;


wire outDataFlash_V_V_TVALID;
wire outDataFlash_V_V_TREADY;
wire [32 - 1:0] outDataFlash_V_V_TDATA;

wire aresetn;


wire [32 - 1:0] sig_dummyPCIeJoint_inData_V_V_dout;
wire sig_dummyPCIeJoint_inData_V_V_empty_n;
wire sig_dummyPCIeJoint_inData_V_V_read;

wire [32 - 1:0] sig_dummyPCIeJoint_outDataDram_V_V_din;
wire sig_dummyPCIeJoint_outDataDram_V_V_full_n;
wire sig_dummyPCIeJoint_outDataDram_V_V_write;

wire [32 - 1:0] sig_dummyPCIeJoint_outDataFlash_V_V_din;
wire sig_dummyPCIeJoint_outDataFlash_V_V_full_n;
wire sig_dummyPCIeJoint_outDataFlash_V_V_write;

wire sig_dummyPCIeJoint_ap_rst;



dummyPCIeJoint dummyPCIeJoint_U(
    .inData_V_V_dout(sig_dummyPCIeJoint_inData_V_V_dout),
    .inData_V_V_empty_n(sig_dummyPCIeJoint_inData_V_V_empty_n),
    .inData_V_V_read(sig_dummyPCIeJoint_inData_V_V_read),
    .outDataDram_V_V_din(sig_dummyPCIeJoint_outDataDram_V_V_din),
    .outDataDram_V_V_full_n(sig_dummyPCIeJoint_outDataDram_V_V_full_n),
    .outDataDram_V_V_write(sig_dummyPCIeJoint_outDataDram_V_V_write),
    .outDataFlash_V_V_din(sig_dummyPCIeJoint_outDataFlash_V_V_din),
    .outDataFlash_V_V_full_n(sig_dummyPCIeJoint_outDataFlash_V_V_full_n),
    .outDataFlash_V_V_write(sig_dummyPCIeJoint_outDataFlash_V_V_write),
    .ap_rst(sig_dummyPCIeJoint_ap_rst),
    .ap_clk(aclk),
    .flushReq_V(flushReq_V),
    .flushAck_V(flushAck_V),
    .flushDone_V(flushDone_V)
);

dummyPCIeJoint_inData_V_V_if dummyPCIeJoint_inData_V_V_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .inData_V_V_dout(sig_dummyPCIeJoint_inData_V_V_dout),
    .inData_V_V_empty_n(sig_dummyPCIeJoint_inData_V_V_empty_n),
    .inData_V_V_read(sig_dummyPCIeJoint_inData_V_V_read),
    .TVALID(inData_V_V_TVALID),
    .TREADY(inData_V_V_TREADY),
    .TDATA(inData_V_V_TDATA));

dummyPCIeJoint_outDataDram_V_V_if dummyPCIeJoint_outDataDram_V_V_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .outDataDram_V_V_din(sig_dummyPCIeJoint_outDataDram_V_V_din),
    .outDataDram_V_V_full_n(sig_dummyPCIeJoint_outDataDram_V_V_full_n),
    .outDataDram_V_V_write(sig_dummyPCIeJoint_outDataDram_V_V_write),
    .TVALID(outDataDram_V_V_TVALID),
    .TREADY(outDataDram_V_V_TREADY),
    .TDATA(outDataDram_V_V_TDATA));

dummyPCIeJoint_outDataFlash_V_V_if dummyPCIeJoint_outDataFlash_V_V_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .outDataFlash_V_V_din(sig_dummyPCIeJoint_outDataFlash_V_V_din),
    .outDataFlash_V_V_full_n(sig_dummyPCIeJoint_outDataFlash_V_V_full_n),
    .outDataFlash_V_V_write(sig_dummyPCIeJoint_outDataFlash_V_V_write),
    .TVALID(outDataFlash_V_V_TVALID),
    .TREADY(outDataFlash_V_V_TREADY),
    .TDATA(outDataFlash_V_V_TDATA));

dummyPCIeJoint_ap_rst_if #(
    .RESET_ACTIVE_LOW(RESET_ACTIVE_LOW))
ap_rst_if_U(
    .dout(sig_dummyPCIeJoint_ap_rst),
    .din(aresetn));

endmodule
