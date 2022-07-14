// ==============================================================
// File generated on Thu Aug 26 19:00:58 EDT 2021
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module readwriteconverteroffset_top (
dmRdCmd_V_TVALID,
dmRdCmd_V_TREADY,
dmRdCmd_V_TDATA,
dmRdData_V_TVALID,
dmRdData_V_TREADY,
dmRdData_V_TDATA,
dmRdData_V_TKEEP,
dmRdData_V_TLAST,
dmRdStatus_V_V_TVALID,
dmRdStatus_V_V_TREADY,
dmRdStatus_V_V_TDATA,
dmWrCmd_V_TVALID,
dmWrCmd_V_TREADY,
dmWrCmd_V_TDATA,
dmWrData_V_TVALID,
dmWrData_V_TREADY,
dmWrData_V_TDATA,
dmWrData_V_TKEEP,
dmWrData_V_TLAST,
dmWrStatus_V_V_TVALID,
dmWrStatus_V_V_TREADY,
dmWrStatus_V_V_TDATA,
memRdCmd_V_TVALID,
memRdCmd_V_TREADY,
memRdCmd_V_TDATA,
memRdData_V_V_TVALID,
memRdData_V_V_TREADY,
memRdData_V_V_TDATA,
memWrCmd_V_TVALID,
memWrCmd_V_TREADY,
memWrCmd_V_TDATA,
memWrData_V_V_TVALID,
memWrData_V_V_TREADY,
memWrData_V_V_TDATA,
aresetn,
aclk,
dmRdAddrPosted_V
);

parameter RESET_ACTIVE_LOW = 1;

output dmRdCmd_V_TVALID ;
input dmRdCmd_V_TREADY ;
output [72 - 1:0] dmRdCmd_V_TDATA ;


input dmRdData_V_TVALID ;
output dmRdData_V_TREADY ;
input [512 - 1:0] dmRdData_V_TDATA ;
input [64 - 1:0] dmRdData_V_TKEEP ;
input [1 - 1:0] dmRdData_V_TLAST ;


input dmRdStatus_V_V_TVALID ;
output dmRdStatus_V_V_TREADY ;
input [8 - 1:0] dmRdStatus_V_V_TDATA ;


output dmWrCmd_V_TVALID ;
input dmWrCmd_V_TREADY ;
output [72 - 1:0] dmWrCmd_V_TDATA ;


output dmWrData_V_TVALID ;
input dmWrData_V_TREADY ;
output [512 - 1:0] dmWrData_V_TDATA ;
output [64 - 1:0] dmWrData_V_TKEEP ;
output [1 - 1:0] dmWrData_V_TLAST ;


input dmWrStatus_V_V_TVALID ;
output dmWrStatus_V_V_TREADY ;
input [8 - 1:0] dmWrStatus_V_V_TDATA ;


input memRdCmd_V_TVALID ;
output memRdCmd_V_TREADY ;
input [40 - 1:0] memRdCmd_V_TDATA ;


output memRdData_V_V_TVALID ;
input memRdData_V_V_TREADY ;
output [512 - 1:0] memRdData_V_V_TDATA ;


input memWrCmd_V_TVALID ;
output memWrCmd_V_TREADY ;
input [40 - 1:0] memWrCmd_V_TDATA ;


input memWrData_V_V_TVALID ;
output memWrData_V_V_TREADY ;
input [512 - 1:0] memWrData_V_V_TDATA ;

input aresetn ;

input aclk ;

input [1 - 1:0] dmRdAddrPosted_V ;


wire dmRdCmd_V_TVALID;
wire dmRdCmd_V_TREADY;
wire [72 - 1:0] dmRdCmd_V_TDATA;


wire dmRdData_V_TVALID;
wire dmRdData_V_TREADY;
wire [512 - 1:0] dmRdData_V_TDATA;
wire [64 - 1:0] dmRdData_V_TKEEP;
wire [1 - 1:0] dmRdData_V_TLAST;


wire dmRdStatus_V_V_TVALID;
wire dmRdStatus_V_V_TREADY;
wire [8 - 1:0] dmRdStatus_V_V_TDATA;


wire dmWrCmd_V_TVALID;
wire dmWrCmd_V_TREADY;
wire [72 - 1:0] dmWrCmd_V_TDATA;


wire dmWrData_V_TVALID;
wire dmWrData_V_TREADY;
wire [512 - 1:0] dmWrData_V_TDATA;
wire [64 - 1:0] dmWrData_V_TKEEP;
wire [1 - 1:0] dmWrData_V_TLAST;


wire dmWrStatus_V_V_TVALID;
wire dmWrStatus_V_V_TREADY;
wire [8 - 1:0] dmWrStatus_V_V_TDATA;


wire memRdCmd_V_TVALID;
wire memRdCmd_V_TREADY;
wire [40 - 1:0] memRdCmd_V_TDATA;


wire memRdData_V_V_TVALID;
wire memRdData_V_V_TREADY;
wire [512 - 1:0] memRdData_V_V_TDATA;


wire memWrCmd_V_TVALID;
wire memWrCmd_V_TREADY;
wire [40 - 1:0] memWrCmd_V_TDATA;


wire memWrData_V_V_TVALID;
wire memWrData_V_V_TREADY;
wire [512 - 1:0] memWrData_V_V_TDATA;

wire aresetn;


wire [72 - 1:0] sig_readWriteConverterOffset_dmRdCmd_V_din;
wire sig_readWriteConverterOffset_dmRdCmd_V_full_n;
wire sig_readWriteConverterOffset_dmRdCmd_V_write;

wire [577 - 1:0] sig_readWriteConverterOffset_dmRdData_V_dout;
wire sig_readWriteConverterOffset_dmRdData_V_empty_n;
wire sig_readWriteConverterOffset_dmRdData_V_read;

wire [8 - 1:0] sig_readWriteConverterOffset_dmRdStatus_V_V_dout;
wire sig_readWriteConverterOffset_dmRdStatus_V_V_empty_n;
wire sig_readWriteConverterOffset_dmRdStatus_V_V_read;

wire [72 - 1:0] sig_readWriteConverterOffset_dmWrCmd_V_din;
wire sig_readWriteConverterOffset_dmWrCmd_V_full_n;
wire sig_readWriteConverterOffset_dmWrCmd_V_write;

wire [577 - 1:0] sig_readWriteConverterOffset_dmWrData_V_din;
wire sig_readWriteConverterOffset_dmWrData_V_full_n;
wire sig_readWriteConverterOffset_dmWrData_V_write;

wire [8 - 1:0] sig_readWriteConverterOffset_dmWrStatus_V_V_dout;
wire sig_readWriteConverterOffset_dmWrStatus_V_V_empty_n;
wire sig_readWriteConverterOffset_dmWrStatus_V_V_read;

wire [40 - 1:0] sig_readWriteConverterOffset_memRdCmd_V_dout;
wire sig_readWriteConverterOffset_memRdCmd_V_empty_n;
wire sig_readWriteConverterOffset_memRdCmd_V_read;

wire [512 - 1:0] sig_readWriteConverterOffset_memRdData_V_V_din;
wire sig_readWriteConverterOffset_memRdData_V_V_full_n;
wire sig_readWriteConverterOffset_memRdData_V_V_write;

wire [40 - 1:0] sig_readWriteConverterOffset_memWrCmd_V_dout;
wire sig_readWriteConverterOffset_memWrCmd_V_empty_n;
wire sig_readWriteConverterOffset_memWrCmd_V_read;

wire [512 - 1:0] sig_readWriteConverterOffset_memWrData_V_V_dout;
wire sig_readWriteConverterOffset_memWrData_V_V_empty_n;
wire sig_readWriteConverterOffset_memWrData_V_V_read;

wire sig_readWriteConverterOffset_ap_rst;



readWriteConverterOffset readWriteConverterOffset_U(
    .dmRdCmd_V_din(sig_readWriteConverterOffset_dmRdCmd_V_din),
    .dmRdCmd_V_full_n(sig_readWriteConverterOffset_dmRdCmd_V_full_n),
    .dmRdCmd_V_write(sig_readWriteConverterOffset_dmRdCmd_V_write),
    .dmRdData_V_dout(sig_readWriteConverterOffset_dmRdData_V_dout),
    .dmRdData_V_empty_n(sig_readWriteConverterOffset_dmRdData_V_empty_n),
    .dmRdData_V_read(sig_readWriteConverterOffset_dmRdData_V_read),
    .dmRdStatus_V_V_dout(sig_readWriteConverterOffset_dmRdStatus_V_V_dout),
    .dmRdStatus_V_V_empty_n(sig_readWriteConverterOffset_dmRdStatus_V_V_empty_n),
    .dmRdStatus_V_V_read(sig_readWriteConverterOffset_dmRdStatus_V_V_read),
    .dmWrCmd_V_din(sig_readWriteConverterOffset_dmWrCmd_V_din),
    .dmWrCmd_V_full_n(sig_readWriteConverterOffset_dmWrCmd_V_full_n),
    .dmWrCmd_V_write(sig_readWriteConverterOffset_dmWrCmd_V_write),
    .dmWrData_V_din(sig_readWriteConverterOffset_dmWrData_V_din),
    .dmWrData_V_full_n(sig_readWriteConverterOffset_dmWrData_V_full_n),
    .dmWrData_V_write(sig_readWriteConverterOffset_dmWrData_V_write),
    .dmWrStatus_V_V_dout(sig_readWriteConverterOffset_dmWrStatus_V_V_dout),
    .dmWrStatus_V_V_empty_n(sig_readWriteConverterOffset_dmWrStatus_V_V_empty_n),
    .dmWrStatus_V_V_read(sig_readWriteConverterOffset_dmWrStatus_V_V_read),
    .memRdCmd_V_dout(sig_readWriteConverterOffset_memRdCmd_V_dout),
    .memRdCmd_V_empty_n(sig_readWriteConverterOffset_memRdCmd_V_empty_n),
    .memRdCmd_V_read(sig_readWriteConverterOffset_memRdCmd_V_read),
    .memRdData_V_V_din(sig_readWriteConverterOffset_memRdData_V_V_din),
    .memRdData_V_V_full_n(sig_readWriteConverterOffset_memRdData_V_V_full_n),
    .memRdData_V_V_write(sig_readWriteConverterOffset_memRdData_V_V_write),
    .memWrCmd_V_dout(sig_readWriteConverterOffset_memWrCmd_V_dout),
    .memWrCmd_V_empty_n(sig_readWriteConverterOffset_memWrCmd_V_empty_n),
    .memWrCmd_V_read(sig_readWriteConverterOffset_memWrCmd_V_read),
    .memWrData_V_V_dout(sig_readWriteConverterOffset_memWrData_V_V_dout),
    .memWrData_V_V_empty_n(sig_readWriteConverterOffset_memWrData_V_V_empty_n),
    .memWrData_V_V_read(sig_readWriteConverterOffset_memWrData_V_V_read),
    .ap_rst(sig_readWriteConverterOffset_ap_rst),
    .ap_clk(aclk),
    .dmRdAddrPosted_V(dmRdAddrPosted_V)
);

readWriteConverterOffset_dmRdCmd_V_if readWriteConverterOffset_dmRdCmd_V_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .dmRdCmd_V_din(sig_readWriteConverterOffset_dmRdCmd_V_din),
    .dmRdCmd_V_full_n(sig_readWriteConverterOffset_dmRdCmd_V_full_n),
    .dmRdCmd_V_write(sig_readWriteConverterOffset_dmRdCmd_V_write),
    .TVALID(dmRdCmd_V_TVALID),
    .TREADY(dmRdCmd_V_TREADY),
    .TDATA(dmRdCmd_V_TDATA));

readWriteConverterOffset_dmRdData_V_if readWriteConverterOffset_dmRdData_V_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .dmRdData_V_dout(sig_readWriteConverterOffset_dmRdData_V_dout),
    .dmRdData_V_empty_n(sig_readWriteConverterOffset_dmRdData_V_empty_n),
    .dmRdData_V_read(sig_readWriteConverterOffset_dmRdData_V_read),
    .TVALID(dmRdData_V_TVALID),
    .TREADY(dmRdData_V_TREADY),
    .TDATA(dmRdData_V_TDATA),
    .TKEEP(dmRdData_V_TKEEP),
    .TLAST(dmRdData_V_TLAST));

readWriteConverterOffset_dmRdStatus_V_V_if readWriteConverterOffset_dmRdStatus_V_V_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .dmRdStatus_V_V_dout(sig_readWriteConverterOffset_dmRdStatus_V_V_dout),
    .dmRdStatus_V_V_empty_n(sig_readWriteConverterOffset_dmRdStatus_V_V_empty_n),
    .dmRdStatus_V_V_read(sig_readWriteConverterOffset_dmRdStatus_V_V_read),
    .TVALID(dmRdStatus_V_V_TVALID),
    .TREADY(dmRdStatus_V_V_TREADY),
    .TDATA(dmRdStatus_V_V_TDATA));

readWriteConverterOffset_dmWrCmd_V_if readWriteConverterOffset_dmWrCmd_V_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .dmWrCmd_V_din(sig_readWriteConverterOffset_dmWrCmd_V_din),
    .dmWrCmd_V_full_n(sig_readWriteConverterOffset_dmWrCmd_V_full_n),
    .dmWrCmd_V_write(sig_readWriteConverterOffset_dmWrCmd_V_write),
    .TVALID(dmWrCmd_V_TVALID),
    .TREADY(dmWrCmd_V_TREADY),
    .TDATA(dmWrCmd_V_TDATA));

readWriteConverterOffset_dmWrData_V_if readWriteConverterOffset_dmWrData_V_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .dmWrData_V_din(sig_readWriteConverterOffset_dmWrData_V_din),
    .dmWrData_V_full_n(sig_readWriteConverterOffset_dmWrData_V_full_n),
    .dmWrData_V_write(sig_readWriteConverterOffset_dmWrData_V_write),
    .TVALID(dmWrData_V_TVALID),
    .TREADY(dmWrData_V_TREADY),
    .TDATA(dmWrData_V_TDATA),
    .TKEEP(dmWrData_V_TKEEP),
    .TLAST(dmWrData_V_TLAST));

readWriteConverterOffset_dmWrStatus_V_V_if readWriteConverterOffset_dmWrStatus_V_V_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .dmWrStatus_V_V_dout(sig_readWriteConverterOffset_dmWrStatus_V_V_dout),
    .dmWrStatus_V_V_empty_n(sig_readWriteConverterOffset_dmWrStatus_V_V_empty_n),
    .dmWrStatus_V_V_read(sig_readWriteConverterOffset_dmWrStatus_V_V_read),
    .TVALID(dmWrStatus_V_V_TVALID),
    .TREADY(dmWrStatus_V_V_TREADY),
    .TDATA(dmWrStatus_V_V_TDATA));

readWriteConverterOffset_memRdCmd_V_if readWriteConverterOffset_memRdCmd_V_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .memRdCmd_V_dout(sig_readWriteConverterOffset_memRdCmd_V_dout),
    .memRdCmd_V_empty_n(sig_readWriteConverterOffset_memRdCmd_V_empty_n),
    .memRdCmd_V_read(sig_readWriteConverterOffset_memRdCmd_V_read),
    .TVALID(memRdCmd_V_TVALID),
    .TREADY(memRdCmd_V_TREADY),
    .TDATA(memRdCmd_V_TDATA));

readWriteConverterOffset_memRdData_V_V_if readWriteConverterOffset_memRdData_V_V_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .memRdData_V_V_din(sig_readWriteConverterOffset_memRdData_V_V_din),
    .memRdData_V_V_full_n(sig_readWriteConverterOffset_memRdData_V_V_full_n),
    .memRdData_V_V_write(sig_readWriteConverterOffset_memRdData_V_V_write),
    .TVALID(memRdData_V_V_TVALID),
    .TREADY(memRdData_V_V_TREADY),
    .TDATA(memRdData_V_V_TDATA));

readWriteConverterOffset_memWrCmd_V_if readWriteConverterOffset_memWrCmd_V_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .memWrCmd_V_dout(sig_readWriteConverterOffset_memWrCmd_V_dout),
    .memWrCmd_V_empty_n(sig_readWriteConverterOffset_memWrCmd_V_empty_n),
    .memWrCmd_V_read(sig_readWriteConverterOffset_memWrCmd_V_read),
    .TVALID(memWrCmd_V_TVALID),
    .TREADY(memWrCmd_V_TREADY),
    .TDATA(memWrCmd_V_TDATA));

readWriteConverterOffset_memWrData_V_V_if readWriteConverterOffset_memWrData_V_V_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .memWrData_V_V_dout(sig_readWriteConverterOffset_memWrData_V_V_dout),
    .memWrData_V_V_empty_n(sig_readWriteConverterOffset_memWrData_V_V_empty_n),
    .memWrData_V_V_read(sig_readWriteConverterOffset_memWrData_V_V_read),
    .TVALID(memWrData_V_V_TVALID),
    .TREADY(memWrData_V_V_TREADY),
    .TDATA(memWrData_V_V_TDATA));

readWriteConverterOffset_ap_rst_if #(
    .RESET_ACTIVE_LOW(RESET_ACTIVE_LOW))
ap_rst_if_U(
    .dout(sig_readWriteConverterOffset_ap_rst),
    .din(aresetn));

endmodule
