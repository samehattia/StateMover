// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="flashModel,hls_ip_2018_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xcku040-ffva1156-2-e,HLS_INPUT_CLOCK=6.400000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=3.183500,HLS_SYN_LAT=3,HLS_SYN_TPT=1,HLS_SYN_MEM=231,HLS_SYN_DSP=0,HLS_SYN_FF=253,HLS_SYN_LUT=334,HLS_VERSION=2018_3}" *)

module flashModel (
        rdCmdIn_V_TDATA,
        rdDataOut_V_V_TDATA,
        wrCmdIn_V_TDATA,
        wrDataIn_V_V_TDATA,
        ap_clk,
        ap_rst_n,
        rdCmdIn_V_TVALID,
        rdCmdIn_V_TREADY,
        wrCmdIn_V_TVALID,
        wrCmdIn_V_TREADY,
        rdDataOut_V_V_TVALID,
        rdDataOut_V_V_TREADY,
        wrDataIn_V_V_TVALID,
        wrDataIn_V_V_TREADY
);


input  [47:0] rdCmdIn_V_TDATA;
output  [63:0] rdDataOut_V_V_TDATA;
input  [47:0] wrCmdIn_V_TDATA;
input  [63:0] wrDataIn_V_V_TDATA;
input   ap_clk;
input   ap_rst_n;
input   rdCmdIn_V_TVALID;
output   rdCmdIn_V_TREADY;
input   wrCmdIn_V_TVALID;
output   wrCmdIn_V_TREADY;
output   rdDataOut_V_V_TVALID;
input   rdDataOut_V_V_TREADY;
input   wrDataIn_V_V_TVALID;
output   wrDataIn_V_V_TREADY;

 reg    ap_rst_n_inv;
wire    flashCmdAggregator_U0_ap_start;
wire    flashCmdAggregator_U0_ap_done;
wire    flashCmdAggregator_U0_ap_continue;
wire    flashCmdAggregator_U0_ap_idle;
wire    flashCmdAggregator_U0_ap_ready;
wire    flashCmdAggregator_U0_rdCmdIn_V_TREADY;
wire    flashCmdAggregator_U0_wrCmdIn_V_TREADY;
wire   [45:0] flashCmdAggregator_U0_flashAggregateMemCmd_1_din;
wire    flashCmdAggregator_U0_flashAggregateMemCmd_1_write;
wire    flashMemAccess_U0_ap_start;
wire    flashMemAccess_U0_ap_done;
wire    flashMemAccess_U0_ap_continue;
wire    flashMemAccess_U0_ap_idle;
wire    flashMemAccess_U0_ap_ready;
wire    flashMemAccess_U0_flashAggregateMemCmd_1_read;
wire   [63:0] flashMemAccess_U0_rdDataOut_V_V_TDATA;
wire    flashMemAccess_U0_rdDataOut_V_V_TVALID;
wire    flashMemAccess_U0_wrDataIn_V_V_TREADY;
wire    ap_sync_continue;
wire    flashAggregateMemCmd_1_full_n;
wire   [45:0] flashAggregateMemCmd_1_dout;
wire    flashAggregateMemCmd_1_empty_n;
wire    flashCmdAggregator_U0_start_full_n;
wire    flashCmdAggregator_U0_start_write;
wire    flashMemAccess_U0_start_full_n;
wire    flashMemAccess_U0_start_write;

flashCmdAggregator flashCmdAggregator_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(flashCmdAggregator_U0_ap_start),
    .ap_done(flashCmdAggregator_U0_ap_done),
    .ap_continue(flashCmdAggregator_U0_ap_continue),
    .ap_idle(flashCmdAggregator_U0_ap_idle),
    .ap_ready(flashCmdAggregator_U0_ap_ready),
    .rdCmdIn_V_TDATA(rdCmdIn_V_TDATA),
    .rdCmdIn_V_TVALID(rdCmdIn_V_TVALID),
    .rdCmdIn_V_TREADY(flashCmdAggregator_U0_rdCmdIn_V_TREADY),
    .wrCmdIn_V_TDATA(wrCmdIn_V_TDATA),
    .wrCmdIn_V_TVALID(wrCmdIn_V_TVALID),
    .wrCmdIn_V_TREADY(flashCmdAggregator_U0_wrCmdIn_V_TREADY),
    .flashAggregateMemCmd_1_din(flashCmdAggregator_U0_flashAggregateMemCmd_1_din),
    .flashAggregateMemCmd_1_full_n(flashAggregateMemCmd_1_full_n),
    .flashAggregateMemCmd_1_write(flashCmdAggregator_U0_flashAggregateMemCmd_1_write)
);

flashMemAccess flashMemAccess_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(flashMemAccess_U0_ap_start),
    .ap_done(flashMemAccess_U0_ap_done),
    .ap_continue(flashMemAccess_U0_ap_continue),
    .ap_idle(flashMemAccess_U0_ap_idle),
    .ap_ready(flashMemAccess_U0_ap_ready),
    .flashAggregateMemCmd_1_dout(flashAggregateMemCmd_1_dout),
    .flashAggregateMemCmd_1_empty_n(flashAggregateMemCmd_1_empty_n),
    .flashAggregateMemCmd_1_read(flashMemAccess_U0_flashAggregateMemCmd_1_read),
    .wrDataIn_V_V_TVALID(wrDataIn_V_V_TVALID),
    .rdDataOut_V_V_TREADY(rdDataOut_V_V_TREADY),
    .rdDataOut_V_V_TDATA(flashMemAccess_U0_rdDataOut_V_V_TDATA),
    .rdDataOut_V_V_TVALID(flashMemAccess_U0_rdDataOut_V_V_TVALID),
    .wrDataIn_V_V_TDATA(wrDataIn_V_V_TDATA),
    .wrDataIn_V_V_TREADY(flashMemAccess_U0_wrDataIn_V_V_TREADY)
);

fifo_w46_d16_A flashAggregateMemCmd_1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(flashCmdAggregator_U0_flashAggregateMemCmd_1_din),
    .if_full_n(flashAggregateMemCmd_1_full_n),
    .if_write(flashCmdAggregator_U0_flashAggregateMemCmd_1_write),
    .if_dout(flashAggregateMemCmd_1_dout),
    .if_empty_n(flashAggregateMemCmd_1_empty_n),
    .if_read(flashMemAccess_U0_flashAggregateMemCmd_1_read)
);

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_continue = 1'b0;

assign flashCmdAggregator_U0_ap_continue = 1'b1;

assign flashCmdAggregator_U0_ap_start = 1'b1;

assign flashCmdAggregator_U0_start_full_n = 1'b1;

assign flashCmdAggregator_U0_start_write = 1'b0;

assign flashMemAccess_U0_ap_continue = 1'b1;

assign flashMemAccess_U0_ap_start = 1'b1;

assign flashMemAccess_U0_start_full_n = 1'b1;

assign flashMemAccess_U0_start_write = 1'b0;

assign rdCmdIn_V_TREADY = flashCmdAggregator_U0_rdCmdIn_V_TREADY;

assign rdDataOut_V_V_TDATA = flashMemAccess_U0_rdDataOut_V_V_TDATA;

assign rdDataOut_V_V_TVALID = flashMemAccess_U0_rdDataOut_V_V_TVALID;

assign wrCmdIn_V_TREADY = flashCmdAggregator_U0_wrCmdIn_V_TREADY;

assign wrDataIn_V_V_TREADY = flashMemAccess_U0_wrDataIn_V_V_TREADY;

endmodule //flashModel
