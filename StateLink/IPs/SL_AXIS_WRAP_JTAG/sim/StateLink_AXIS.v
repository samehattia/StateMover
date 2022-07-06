//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Wed Jul  6 13:28:36 2022
//Host        : pcsameh running 64-bit Ubuntu 20.04.4 LTS
//Command     : generate_target StateLink_AXIS.bd
//Design      : StateLink_AXIS
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "StateLink_AXIS,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=StateLink_AXIS,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=9,numReposBlks=8,numNonXlnxBlks=1,numHierBlks=1,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "StateLink_AXIS.hwdef" *) 
module StateLink_AXIS
   (M00_AXIS1_0_tdata,
    M00_AXIS1_0_tkeep,
    M00_AXIS1_0_tlast,
    M00_AXIS1_0_tready,
    M00_AXIS1_0_tvalid,
    M00_AXIS_0_tdata,
    M00_AXIS_0_tkeep,
    M00_AXIS_0_tlast,
    M00_AXIS_0_tready,
    M00_AXIS_0_tvalid,
    S00_AXIS1_0_tdata,
    S00_AXIS1_0_tkeep,
    S00_AXIS1_0_tlast,
    S00_AXIS1_0_tready,
    S00_AXIS1_0_tvalid,
    S00_AXIS_0_tdata,
    S00_AXIS_0_tkeep,
    S00_AXIS_0_tlast,
    S00_AXIS_0_tready,
    S00_AXIS_0_tvalid,
    axis_clk_0,
    axis_clk_bufg_0,
    axis_rst_n_0,
    axis_rst_n_bufg_0,
    decouple_1_0,
    stop_ack_1_0,
    stop_req_1_0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS1_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS1_0, CLK_DOMAIN StateLink_AXIS_axis_clk_bufg_0, FREQ_HZ 150000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [63:0]M00_AXIS1_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS1_0 TKEEP" *) output [7:0]M00_AXIS1_0_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS1_0 TLAST" *) output M00_AXIS1_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS1_0 TREADY" *) input M00_AXIS1_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS1_0 TVALID" *) output M00_AXIS1_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS_0, CLK_DOMAIN StateLink_AXIS_axis_clk_0, FREQ_HZ 150000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [63:0]M00_AXIS_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS_0 TKEEP" *) output [7:0]M00_AXIS_0_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS_0 TLAST" *) output [0:0]M00_AXIS_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS_0 TREADY" *) input [0:0]M00_AXIS_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS_0 TVALID" *) output [0:0]M00_AXIS_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS1_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS1_0, CLK_DOMAIN StateLink_AXIS_axis_clk_0, FREQ_HZ 150000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 64}, PHASE 0, TDATA_NUM_BYTES 8, TDEST_WIDTH 1, TID_WIDTH 0, TUSER_WIDTH 0" *) input [63:0]S00_AXIS1_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS1_0 TKEEP" *) input [7:0]S00_AXIS1_0_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS1_0 TLAST" *) input [0:0]S00_AXIS1_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS1_0 TREADY" *) output [0:0]S00_AXIS1_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS1_0 TVALID" *) input [0:0]S00_AXIS1_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS_0, CLK_DOMAIN StateLink_AXIS_axis_clk_bufg_0, FREQ_HZ 150000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 64 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 112} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER_WIDTH 112}, PHASE 0, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [63:0]S00_AXIS_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS_0 TKEEP" *) input [7:0]S00_AXIS_0_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS_0 TLAST" *) input S00_AXIS_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS_0 TREADY" *) output S00_AXIS_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS_0 TVALID" *) input S00_AXIS_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AXIS_CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AXIS_CLK_0, ASSOCIATED_BUSIF M00_AXIS_0:S00_AXIS1_0, ASSOCIATED_RESET axis_rst_n_0, CLK_DOMAIN StateLink_AXIS_axis_clk_0, FREQ_HZ 150000000, INSERT_VIP 0, PHASE 0" *) input axis_clk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AXIS_CLK_BUFG_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AXIS_CLK_BUFG_0, ASSOCIATED_BUSIF M00_AXIS1_0:S00_AXIS_0, ASSOCIATED_RESET axis_rst_n_bufg_0, CLK_DOMAIN StateLink_AXIS_axis_clk_bufg_0, FREQ_HZ 150000000, INSERT_VIP 0, PHASE 0" *) input axis_clk_bufg_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AXIS_RST_N_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AXIS_RST_N_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input axis_rst_n_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AXIS_RST_N_BUFG_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AXIS_RST_N_BUFG_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input axis_rst_n_bufg_0;
  input decouple_1_0;
  output [1:0]stop_ack_1_0;
  input [1:0]stop_req_1_0;

  wire [63:0]S00_AXIS1_0_1_TDATA;
  wire [7:0]S00_AXIS1_0_1_TKEEP;
  wire [0:0]S00_AXIS1_0_1_TLAST;
  wire [0:0]S00_AXIS1_0_1_TREADY;
  wire [0:0]S00_AXIS1_0_1_TVALID;
  wire [63:0]S00_AXIS_0_1_TDATA;
  wire [7:0]S00_AXIS_0_1_TKEEP;
  wire S00_AXIS_0_1_TLAST;
  wire S00_AXIS_0_1_TREADY;
  wire S00_AXIS_0_1_TVALID;
  wire [63:0]StateLink_AXIS_0_M00_AXIS1_TDATA;
  wire [7:0]StateLink_AXIS_0_M00_AXIS1_TKEEP;
  wire StateLink_AXIS_0_M00_AXIS1_TLAST;
  wire StateLink_AXIS_0_M00_AXIS1_TREADY;
  wire StateLink_AXIS_0_M00_AXIS1_TVALID;
  wire [63:0]StateLink_AXIS_0_M00_AXIS_TDATA;
  wire [7:0]StateLink_AXIS_0_M00_AXIS_TKEEP;
  wire [0:0]StateLink_AXIS_0_M00_AXIS_TLAST;
  wire [0:0]StateLink_AXIS_0_M00_AXIS_TREADY;
  wire [0:0]StateLink_AXIS_0_M00_AXIS_TVALID;
  wire [1:0]StateLink_AXIS_0_stop_ack_1;
  wire axis_clk_0_1;
  wire axis_clk_bufg_0_1;
  wire axis_rst_n_0_1;
  wire axis_rst_n_bufg_0_1;
  wire decouple_1_0_1;
  wire [1:0]stop_req_1_0_1;

  assign M00_AXIS1_0_tdata[63:0] = StateLink_AXIS_0_M00_AXIS1_TDATA;
  assign M00_AXIS1_0_tkeep[7:0] = StateLink_AXIS_0_M00_AXIS1_TKEEP;
  assign M00_AXIS1_0_tlast = StateLink_AXIS_0_M00_AXIS1_TLAST;
  assign M00_AXIS1_0_tvalid = StateLink_AXIS_0_M00_AXIS1_TVALID;
  assign M00_AXIS_0_tdata[63:0] = StateLink_AXIS_0_M00_AXIS_TDATA;
  assign M00_AXIS_0_tkeep[7:0] = StateLink_AXIS_0_M00_AXIS_TKEEP;
  assign M00_AXIS_0_tlast[0] = StateLink_AXIS_0_M00_AXIS_TLAST;
  assign M00_AXIS_0_tvalid[0] = StateLink_AXIS_0_M00_AXIS_TVALID;
  assign S00_AXIS1_0_1_TDATA = S00_AXIS1_0_tdata[63:0];
  assign S00_AXIS1_0_1_TKEEP = S00_AXIS1_0_tkeep[7:0];
  assign S00_AXIS1_0_1_TLAST = S00_AXIS1_0_tlast[0];
  assign S00_AXIS1_0_1_TVALID = S00_AXIS1_0_tvalid[0];
  assign S00_AXIS1_0_tready[0] = S00_AXIS1_0_1_TREADY;
  assign S00_AXIS_0_1_TDATA = S00_AXIS_0_tdata[63:0];
  assign S00_AXIS_0_1_TKEEP = S00_AXIS_0_tkeep[7:0];
  assign S00_AXIS_0_1_TLAST = S00_AXIS_0_tlast;
  assign S00_AXIS_0_1_TVALID = S00_AXIS_0_tvalid;
  assign S00_AXIS_0_tready = S00_AXIS_0_1_TREADY;
  assign StateLink_AXIS_0_M00_AXIS1_TREADY = M00_AXIS1_0_tready;
  assign StateLink_AXIS_0_M00_AXIS_TREADY = M00_AXIS_0_tready[0];
  assign axis_clk_0_1 = axis_clk_0;
  assign axis_clk_bufg_0_1 = axis_clk_bufg_0;
  assign axis_rst_n_0_1 = axis_rst_n_0;
  assign axis_rst_n_bufg_0_1 = axis_rst_n_bufg_0;
  assign decouple_1_0_1 = decouple_1_0;
  assign stop_ack_1_0[1:0] = StateLink_AXIS_0_stop_ack_1;
  assign stop_req_1_0_1 = stop_req_1_0[1:0];
  StateLink_AXIS_0_imp_1WBZ9IW StateLink_AXIS_0
       (.M00_AXIS1_tdata(StateLink_AXIS_0_M00_AXIS1_TDATA),
        .M00_AXIS1_tkeep(StateLink_AXIS_0_M00_AXIS1_TKEEP),
        .M00_AXIS1_tlast(StateLink_AXIS_0_M00_AXIS1_TLAST),
        .M00_AXIS1_tready(StateLink_AXIS_0_M00_AXIS1_TREADY),
        .M00_AXIS1_tvalid(StateLink_AXIS_0_M00_AXIS1_TVALID),
        .M00_AXIS_tdata(StateLink_AXIS_0_M00_AXIS_TDATA),
        .M00_AXIS_tkeep(StateLink_AXIS_0_M00_AXIS_TKEEP),
        .M00_AXIS_tlast(StateLink_AXIS_0_M00_AXIS_TLAST),
        .M00_AXIS_tready(StateLink_AXIS_0_M00_AXIS_TREADY),
        .M00_AXIS_tvalid(StateLink_AXIS_0_M00_AXIS_TVALID),
        .S00_AXIS1_tdata(S00_AXIS1_0_1_TDATA),
        .S00_AXIS1_tkeep(S00_AXIS1_0_1_TKEEP),
        .S00_AXIS1_tlast(S00_AXIS1_0_1_TLAST),
        .S00_AXIS1_tready(S00_AXIS1_0_1_TREADY),
        .S00_AXIS1_tvalid(S00_AXIS1_0_1_TVALID),
        .S00_AXIS_tdata(S00_AXIS_0_1_TDATA),
        .S00_AXIS_tkeep(S00_AXIS_0_1_TKEEP),
        .S00_AXIS_tlast(S00_AXIS_0_1_TLAST),
        .S00_AXIS_tready(S00_AXIS_0_1_TREADY),
        .S00_AXIS_tvalid(S00_AXIS_0_1_TVALID),
        .axis_clk(axis_clk_0_1),
        .axis_clk_bufg(axis_clk_bufg_0_1),
        .axis_rst_n(axis_rst_n_0_1),
        .axis_rst_n_bufg(axis_rst_n_bufg_0_1),
        .decouple_1(decouple_1_0_1),
        .stop_ack_1(StateLink_AXIS_0_stop_ack_1),
        .stop_req_1(stop_req_1_0_1));
endmodule

module StateLink_AXIS_0_imp_1WBZ9IW
   (M00_AXIS1_tdata,
    M00_AXIS1_tkeep,
    M00_AXIS1_tlast,
    M00_AXIS1_tready,
    M00_AXIS1_tvalid,
    M00_AXIS_tdata,
    M00_AXIS_tkeep,
    M00_AXIS_tlast,
    M00_AXIS_tready,
    M00_AXIS_tvalid,
    S00_AXIS1_tdata,
    S00_AXIS1_tkeep,
    S00_AXIS1_tlast,
    S00_AXIS1_tready,
    S00_AXIS1_tvalid,
    S00_AXIS_tdata,
    S00_AXIS_tkeep,
    S00_AXIS_tlast,
    S00_AXIS_tready,
    S00_AXIS_tvalid,
    axis_clk,
    axis_clk_bufg,
    axis_rst_n,
    axis_rst_n_bufg,
    decouple_1,
    stop_ack_1,
    stop_req_1);
  output [63:0]M00_AXIS1_tdata;
  output [7:0]M00_AXIS1_tkeep;
  output M00_AXIS1_tlast;
  input M00_AXIS1_tready;
  output M00_AXIS1_tvalid;
  output [63:0]M00_AXIS_tdata;
  output [7:0]M00_AXIS_tkeep;
  output [0:0]M00_AXIS_tlast;
  input [0:0]M00_AXIS_tready;
  output [0:0]M00_AXIS_tvalid;
  input [63:0]S00_AXIS1_tdata;
  input [7:0]S00_AXIS1_tkeep;
  input [0:0]S00_AXIS1_tlast;
  output [0:0]S00_AXIS1_tready;
  input [0:0]S00_AXIS1_tvalid;
  input [63:0]S00_AXIS_tdata;
  input [7:0]S00_AXIS_tkeep;
  input S00_AXIS_tlast;
  output S00_AXIS_tready;
  input S00_AXIS_tvalid;
  input axis_clk;
  input axis_clk_bufg;
  input axis_rst_n;
  input axis_rst_n_bufg;
  input decouple_1;
  output [1:0]stop_ack_1;
  input [1:0]stop_req_1;

  wire [63:0]S00_AXIS1_1_TDATA;
  wire [7:0]S00_AXIS1_1_TKEEP;
  wire [0:0]S00_AXIS1_1_TLAST;
  wire [0:0]S00_AXIS1_1_TREADY;
  wire [0:0]S00_AXIS1_1_TVALID;
  wire [63:0]S00_AXIS_1_TDATA;
  wire [7:0]S00_AXIS_1_TKEEP;
  wire S00_AXIS_1_TLAST;
  wire S00_AXIS_1_TREADY;
  wire S00_AXIS_1_TVALID;
  wire [63:0]axi_fifo_mm_s_0_AXI_STR_TXD_TDATA;
  wire [7:0]axi_fifo_mm_s_0_AXI_STR_TXD_TKEEP;
  wire axi_fifo_mm_s_0_AXI_STR_TXD_TLAST;
  wire [1:1]axi_fifo_mm_s_0_AXI_STR_TXD_TREADY;
  wire axi_fifo_mm_s_0_AXI_STR_TXD_TVALID;
  wire axi_fifo_mm_s_0_interrupt;
  wire axis_clk_bufg_1;
  wire axis_rst_n_bufg_1;
  wire [63:0]axis_switch_0_M00_AXIS_TDATA;
  wire [7:0]axis_switch_0_M00_AXIS_TKEEP;
  wire [0:0]axis_switch_0_M00_AXIS_TLAST;
  wire [0:0]axis_switch_0_M00_AXIS_TREADY;
  wire [0:0]axis_switch_0_M00_AXIS_TVALID;
  wire [63:0]axis_switch_1_M00_AXIS_TDATA;
  wire [7:0]axis_switch_1_M00_AXIS_TKEEP;
  wire [0:0]axis_switch_1_M00_AXIS_TLAST;
  wire axis_switch_1_M00_AXIS_TREADY;
  wire [0:0]axis_switch_1_M00_AXIS_TVALID;
  wire [127:64]axis_switch_1_M01_AXIS_TDATA;
  wire [15:8]axis_switch_1_M01_AXIS_TKEEP;
  wire [1:1]axis_switch_1_M01_AXIS_TLAST;
  wire axis_switch_1_M01_AXIS_TREADY;
  wire [1:1]axis_switch_1_M01_AXIS_TVALID;
  wire ddr4_0_addn_ui_clkout1;
  wire decouple_1_1;
  wire [31:0]jtag_axi_0_M_AXI_ARADDR;
  wire jtag_axi_0_M_AXI_ARREADY;
  wire jtag_axi_0_M_AXI_ARVALID;
  wire [31:0]jtag_axi_0_M_AXI_AWADDR;
  wire jtag_axi_0_M_AXI_AWREADY;
  wire jtag_axi_0_M_AXI_AWVALID;
  wire jtag_axi_0_M_AXI_BREADY;
  wire [1:0]jtag_axi_0_M_AXI_BRESP;
  wire jtag_axi_0_M_AXI_BVALID;
  wire [31:0]jtag_axi_0_M_AXI_RDATA;
  wire jtag_axi_0_M_AXI_RREADY;
  wire [1:0]jtag_axi_0_M_AXI_RRESP;
  wire jtag_axi_0_M_AXI_RVALID;
  wire [31:0]jtag_axi_0_M_AXI_WDATA;
  wire jtag_axi_0_M_AXI_WREADY;
  wire [3:0]jtag_axi_0_M_AXI_WSTRB;
  wire jtag_axi_0_M_AXI_WVALID;
  wire [31:0]jtag_axi_1_M_AXI_ARADDR;
  wire [1:0]jtag_axi_1_M_AXI_ARBURST;
  wire [3:0]jtag_axi_1_M_AXI_ARCACHE;
  wire [0:0]jtag_axi_1_M_AXI_ARID;
  wire [7:0]jtag_axi_1_M_AXI_ARLEN;
  wire jtag_axi_1_M_AXI_ARLOCK;
  wire [2:0]jtag_axi_1_M_AXI_ARPROT;
  wire jtag_axi_1_M_AXI_ARREADY;
  wire [2:0]jtag_axi_1_M_AXI_ARSIZE;
  wire jtag_axi_1_M_AXI_ARVALID;
  wire [31:0]jtag_axi_1_M_AXI_AWADDR;
  wire [1:0]jtag_axi_1_M_AXI_AWBURST;
  wire [3:0]jtag_axi_1_M_AXI_AWCACHE;
  wire [0:0]jtag_axi_1_M_AXI_AWID;
  wire [7:0]jtag_axi_1_M_AXI_AWLEN;
  wire jtag_axi_1_M_AXI_AWLOCK;
  wire [2:0]jtag_axi_1_M_AXI_AWPROT;
  wire jtag_axi_1_M_AXI_AWREADY;
  wire [2:0]jtag_axi_1_M_AXI_AWSIZE;
  wire jtag_axi_1_M_AXI_AWVALID;
  wire [0:0]jtag_axi_1_M_AXI_BID;
  wire jtag_axi_1_M_AXI_BREADY;
  wire [1:0]jtag_axi_1_M_AXI_BRESP;
  wire jtag_axi_1_M_AXI_BVALID;
  wire [63:0]jtag_axi_1_M_AXI_RDATA;
  wire [0:0]jtag_axi_1_M_AXI_RID;
  wire jtag_axi_1_M_AXI_RLAST;
  wire jtag_axi_1_M_AXI_RREADY;
  wire [1:0]jtag_axi_1_M_AXI_RRESP;
  wire jtag_axi_1_M_AXI_RVALID;
  wire [63:0]jtag_axi_1_M_AXI_WDATA;
  wire jtag_axi_1_M_AXI_WLAST;
  wire jtag_axi_1_M_AXI_WREADY;
  wire [7:0]jtag_axi_1_M_AXI_WSTRB;
  wire jtag_axi_1_M_AXI_WVALID;
  wire rst_ddr4_0_150M_peripheral_aresetn;
  wire [1:0]stop_req_1_1;
  wire [63:0]ti_trans_axis_wrapper_0_M00_AXIS_TDATA;
  wire [7:0]ti_trans_axis_wrapper_0_M00_AXIS_TKEEP;
  wire ti_trans_axis_wrapper_0_M00_AXIS_TLAST;
  wire [0:0]ti_trans_axis_wrapper_0_M00_AXIS_TREADY;
  wire ti_trans_axis_wrapper_0_M00_AXIS_TVALID;
  wire [63:0]ti_trans_axis_wrapper_0_M01_AXIS_TDATA;
  wire [7:0]ti_trans_axis_wrapper_0_M01_AXIS_TKEEP;
  wire ti_trans_axis_wrapper_0_M01_AXIS_TLAST;
  wire ti_trans_axis_wrapper_0_M01_AXIS_TREADY;
  wire ti_trans_axis_wrapper_0_M01_AXIS_TVALID;
  wire [1:0]ti_trans_axis_wrapper_0_stop_ack;
  wire [1:0]xlconstant_0_dout;

  assign M00_AXIS1_tdata[63:0] = ti_trans_axis_wrapper_0_M01_AXIS_TDATA;
  assign M00_AXIS1_tkeep[7:0] = ti_trans_axis_wrapper_0_M01_AXIS_TKEEP;
  assign M00_AXIS1_tlast = ti_trans_axis_wrapper_0_M01_AXIS_TLAST;
  assign M00_AXIS1_tvalid = ti_trans_axis_wrapper_0_M01_AXIS_TVALID;
  assign M00_AXIS_tdata[63:0] = axis_switch_0_M00_AXIS_TDATA;
  assign M00_AXIS_tkeep[7:0] = axis_switch_0_M00_AXIS_TKEEP;
  assign M00_AXIS_tlast[0] = axis_switch_0_M00_AXIS_TLAST;
  assign M00_AXIS_tvalid[0] = axis_switch_0_M00_AXIS_TVALID;
  assign S00_AXIS1_1_TDATA = S00_AXIS1_tdata[63:0];
  assign S00_AXIS1_1_TKEEP = S00_AXIS1_tkeep[7:0];
  assign S00_AXIS1_1_TLAST = S00_AXIS1_tlast[0];
  assign S00_AXIS1_1_TVALID = S00_AXIS1_tvalid[0];
  assign S00_AXIS1_tready[0] = S00_AXIS1_1_TREADY;
  assign S00_AXIS_1_TDATA = S00_AXIS_tdata[63:0];
  assign S00_AXIS_1_TKEEP = S00_AXIS_tkeep[7:0];
  assign S00_AXIS_1_TLAST = S00_AXIS_tlast;
  assign S00_AXIS_1_TVALID = S00_AXIS_tvalid;
  assign S00_AXIS_tready = S00_AXIS_1_TREADY;
  assign axis_clk_bufg_1 = axis_clk_bufg;
  assign axis_rst_n_bufg_1 = axis_rst_n_bufg;
  assign axis_switch_0_M00_AXIS_TREADY = M00_AXIS_tready[0];
  assign ddr4_0_addn_ui_clkout1 = axis_clk;
  assign decouple_1_1 = decouple_1;
  assign rst_ddr4_0_150M_peripheral_aresetn = axis_rst_n;
  assign stop_ack_1[1:0] = ti_trans_axis_wrapper_0_stop_ack;
  assign stop_req_1_1 = stop_req_1[1:0];
  assign ti_trans_axis_wrapper_0_M01_AXIS_TREADY = M00_AXIS1_tready;
  StateLink_AXIS_axi_fifo_mm_s_0_0 axi_fifo_mm_s_0
       (.axi_str_rxd_tdata(axis_switch_1_M01_AXIS_TDATA),
        .axi_str_rxd_tkeep(axis_switch_1_M01_AXIS_TKEEP),
        .axi_str_rxd_tlast(axis_switch_1_M01_AXIS_TLAST),
        .axi_str_rxd_tready(axis_switch_1_M01_AXIS_TREADY),
        .axi_str_rxd_tvalid(axis_switch_1_M01_AXIS_TVALID),
        .axi_str_txd_tdata(axi_fifo_mm_s_0_AXI_STR_TXD_TDATA),
        .axi_str_txd_tkeep(axi_fifo_mm_s_0_AXI_STR_TXD_TKEEP),
        .axi_str_txd_tlast(axi_fifo_mm_s_0_AXI_STR_TXD_TLAST),
        .axi_str_txd_tready(axi_fifo_mm_s_0_AXI_STR_TXD_TREADY),
        .axi_str_txd_tvalid(axi_fifo_mm_s_0_AXI_STR_TXD_TVALID),
        .interrupt(axi_fifo_mm_s_0_interrupt),
        .s_axi4_araddr(jtag_axi_1_M_AXI_ARADDR),
        .s_axi4_arburst(jtag_axi_1_M_AXI_ARBURST),
        .s_axi4_arcache(jtag_axi_1_M_AXI_ARCACHE),
        .s_axi4_arid(jtag_axi_1_M_AXI_ARID),
        .s_axi4_arlen(jtag_axi_1_M_AXI_ARLEN),
        .s_axi4_arlock(jtag_axi_1_M_AXI_ARLOCK),
        .s_axi4_arprot(jtag_axi_1_M_AXI_ARPROT),
        .s_axi4_arready(jtag_axi_1_M_AXI_ARREADY),
        .s_axi4_arsize(jtag_axi_1_M_AXI_ARSIZE),
        .s_axi4_arvalid(jtag_axi_1_M_AXI_ARVALID),
        .s_axi4_awaddr(jtag_axi_1_M_AXI_AWADDR),
        .s_axi4_awburst(jtag_axi_1_M_AXI_AWBURST),
        .s_axi4_awcache(jtag_axi_1_M_AXI_AWCACHE),
        .s_axi4_awid(jtag_axi_1_M_AXI_AWID),
        .s_axi4_awlen(jtag_axi_1_M_AXI_AWLEN),
        .s_axi4_awlock(jtag_axi_1_M_AXI_AWLOCK),
        .s_axi4_awprot(jtag_axi_1_M_AXI_AWPROT),
        .s_axi4_awready(jtag_axi_1_M_AXI_AWREADY),
        .s_axi4_awsize(jtag_axi_1_M_AXI_AWSIZE),
        .s_axi4_awvalid(jtag_axi_1_M_AXI_AWVALID),
        .s_axi4_bid(jtag_axi_1_M_AXI_BID),
        .s_axi4_bready(jtag_axi_1_M_AXI_BREADY),
        .s_axi4_bresp(jtag_axi_1_M_AXI_BRESP),
        .s_axi4_bvalid(jtag_axi_1_M_AXI_BVALID),
        .s_axi4_rdata(jtag_axi_1_M_AXI_RDATA),
        .s_axi4_rid(jtag_axi_1_M_AXI_RID),
        .s_axi4_rlast(jtag_axi_1_M_AXI_RLAST),
        .s_axi4_rready(jtag_axi_1_M_AXI_RREADY),
        .s_axi4_rresp(jtag_axi_1_M_AXI_RRESP),
        .s_axi4_rvalid(jtag_axi_1_M_AXI_RVALID),
        .s_axi4_wdata(jtag_axi_1_M_AXI_WDATA),
        .s_axi4_wlast(jtag_axi_1_M_AXI_WLAST),
        .s_axi4_wready(jtag_axi_1_M_AXI_WREADY),
        .s_axi4_wstrb(jtag_axi_1_M_AXI_WSTRB),
        .s_axi4_wvalid(jtag_axi_1_M_AXI_WVALID),
        .s_axi_aclk(ddr4_0_addn_ui_clkout1),
        .s_axi_araddr(jtag_axi_0_M_AXI_ARADDR),
        .s_axi_aresetn(rst_ddr4_0_150M_peripheral_aresetn),
        .s_axi_arready(jtag_axi_0_M_AXI_ARREADY),
        .s_axi_arvalid(jtag_axi_0_M_AXI_ARVALID),
        .s_axi_awaddr(jtag_axi_0_M_AXI_AWADDR),
        .s_axi_awready(jtag_axi_0_M_AXI_AWREADY),
        .s_axi_awvalid(jtag_axi_0_M_AXI_AWVALID),
        .s_axi_bready(jtag_axi_0_M_AXI_BREADY),
        .s_axi_bresp(jtag_axi_0_M_AXI_BRESP),
        .s_axi_bvalid(jtag_axi_0_M_AXI_BVALID),
        .s_axi_rdata(jtag_axi_0_M_AXI_RDATA),
        .s_axi_rready(jtag_axi_0_M_AXI_RREADY),
        .s_axi_rresp(jtag_axi_0_M_AXI_RRESP),
        .s_axi_rvalid(jtag_axi_0_M_AXI_RVALID),
        .s_axi_wdata(jtag_axi_0_M_AXI_WDATA),
        .s_axi_wready(jtag_axi_0_M_AXI_WREADY),
        .s_axi_wstrb(jtag_axi_0_M_AXI_WSTRB),
        .s_axi_wvalid(jtag_axi_0_M_AXI_WVALID));
  StateLink_AXIS_axis_switch_0_0 axis_switch_0
       (.aclk(ddr4_0_addn_ui_clkout1),
        .aresetn(rst_ddr4_0_150M_peripheral_aresetn),
        .m_axis_tdata(axis_switch_0_M00_AXIS_TDATA),
        .m_axis_tkeep(axis_switch_0_M00_AXIS_TKEEP),
        .m_axis_tlast(axis_switch_0_M00_AXIS_TLAST),
        .m_axis_tready(axis_switch_0_M00_AXIS_TREADY),
        .m_axis_tvalid(axis_switch_0_M00_AXIS_TVALID),
        .s_axis_tdata({axi_fifo_mm_s_0_AXI_STR_TXD_TDATA,ti_trans_axis_wrapper_0_M00_AXIS_TDATA}),
        .s_axis_tkeep({axi_fifo_mm_s_0_AXI_STR_TXD_TKEEP,ti_trans_axis_wrapper_0_M00_AXIS_TKEEP}),
        .s_axis_tlast({axi_fifo_mm_s_0_AXI_STR_TXD_TLAST,ti_trans_axis_wrapper_0_M00_AXIS_TLAST}),
        .s_axis_tready({axi_fifo_mm_s_0_AXI_STR_TXD_TREADY,ti_trans_axis_wrapper_0_M00_AXIS_TREADY}),
        .s_axis_tvalid({axi_fifo_mm_s_0_AXI_STR_TXD_TVALID,ti_trans_axis_wrapper_0_M00_AXIS_TVALID}),
        .s_req_suppress(xlconstant_0_dout));
  StateLink_AXIS_axis_switch_1_0 axis_switch_1
       (.aclk(ddr4_0_addn_ui_clkout1),
        .aresetn(rst_ddr4_0_150M_peripheral_aresetn),
        .m_axis_tdata({axis_switch_1_M01_AXIS_TDATA,axis_switch_1_M00_AXIS_TDATA}),
        .m_axis_tkeep({axis_switch_1_M01_AXIS_TKEEP,axis_switch_1_M00_AXIS_TKEEP}),
        .m_axis_tlast({axis_switch_1_M01_AXIS_TLAST,axis_switch_1_M00_AXIS_TLAST}),
        .m_axis_tready({axis_switch_1_M01_AXIS_TREADY,axis_switch_1_M00_AXIS_TREADY}),
        .m_axis_tvalid({axis_switch_1_M01_AXIS_TVALID,axis_switch_1_M00_AXIS_TVALID}),
        .s_axis_tdata(S00_AXIS1_1_TDATA),
        .s_axis_tdest(decouple_1_1),
        .s_axis_tkeep(S00_AXIS1_1_TKEEP),
        .s_axis_tlast(S00_AXIS1_1_TLAST),
        .s_axis_tready(S00_AXIS1_1_TREADY),
        .s_axis_tvalid(S00_AXIS1_1_TVALID));
  StateLink_AXIS_jtag_axi_0_0 jtag_axi_0
       (.aclk(ddr4_0_addn_ui_clkout1),
        .aresetn(rst_ddr4_0_150M_peripheral_aresetn),
        .m_axi_araddr(jtag_axi_0_M_AXI_ARADDR),
        .m_axi_arready(jtag_axi_0_M_AXI_ARREADY),
        .m_axi_arvalid(jtag_axi_0_M_AXI_ARVALID),
        .m_axi_awaddr(jtag_axi_0_M_AXI_AWADDR),
        .m_axi_awready(jtag_axi_0_M_AXI_AWREADY),
        .m_axi_awvalid(jtag_axi_0_M_AXI_AWVALID),
        .m_axi_bready(jtag_axi_0_M_AXI_BREADY),
        .m_axi_bresp(jtag_axi_0_M_AXI_BRESP),
        .m_axi_bvalid(jtag_axi_0_M_AXI_BVALID),
        .m_axi_rdata(jtag_axi_0_M_AXI_RDATA),
        .m_axi_rready(jtag_axi_0_M_AXI_RREADY),
        .m_axi_rresp(jtag_axi_0_M_AXI_RRESP),
        .m_axi_rvalid(jtag_axi_0_M_AXI_RVALID),
        .m_axi_wdata(jtag_axi_0_M_AXI_WDATA),
        .m_axi_wready(jtag_axi_0_M_AXI_WREADY),
        .m_axi_wstrb(jtag_axi_0_M_AXI_WSTRB),
        .m_axi_wvalid(jtag_axi_0_M_AXI_WVALID));
  StateLink_AXIS_jtag_axi_1_0 jtag_axi_1
       (.aclk(ddr4_0_addn_ui_clkout1),
        .aresetn(rst_ddr4_0_150M_peripheral_aresetn),
        .m_axi_araddr(jtag_axi_1_M_AXI_ARADDR),
        .m_axi_arburst(jtag_axi_1_M_AXI_ARBURST),
        .m_axi_arcache(jtag_axi_1_M_AXI_ARCACHE),
        .m_axi_arid(jtag_axi_1_M_AXI_ARID),
        .m_axi_arlen(jtag_axi_1_M_AXI_ARLEN),
        .m_axi_arlock(jtag_axi_1_M_AXI_ARLOCK),
        .m_axi_arprot(jtag_axi_1_M_AXI_ARPROT),
        .m_axi_arready(jtag_axi_1_M_AXI_ARREADY),
        .m_axi_arsize(jtag_axi_1_M_AXI_ARSIZE),
        .m_axi_arvalid(jtag_axi_1_M_AXI_ARVALID),
        .m_axi_awaddr(jtag_axi_1_M_AXI_AWADDR),
        .m_axi_awburst(jtag_axi_1_M_AXI_AWBURST),
        .m_axi_awcache(jtag_axi_1_M_AXI_AWCACHE),
        .m_axi_awid(jtag_axi_1_M_AXI_AWID),
        .m_axi_awlen(jtag_axi_1_M_AXI_AWLEN),
        .m_axi_awlock(jtag_axi_1_M_AXI_AWLOCK),
        .m_axi_awprot(jtag_axi_1_M_AXI_AWPROT),
        .m_axi_awready(jtag_axi_1_M_AXI_AWREADY),
        .m_axi_awsize(jtag_axi_1_M_AXI_AWSIZE),
        .m_axi_awvalid(jtag_axi_1_M_AXI_AWVALID),
        .m_axi_bid(jtag_axi_1_M_AXI_BID),
        .m_axi_bready(jtag_axi_1_M_AXI_BREADY),
        .m_axi_bresp(jtag_axi_1_M_AXI_BRESP),
        .m_axi_bvalid(jtag_axi_1_M_AXI_BVALID),
        .m_axi_rdata(jtag_axi_1_M_AXI_RDATA),
        .m_axi_rid(jtag_axi_1_M_AXI_RID),
        .m_axi_rlast(jtag_axi_1_M_AXI_RLAST),
        .m_axi_rready(jtag_axi_1_M_AXI_RREADY),
        .m_axi_rresp(jtag_axi_1_M_AXI_RRESP),
        .m_axi_rvalid(jtag_axi_1_M_AXI_RVALID),
        .m_axi_wdata(jtag_axi_1_M_AXI_WDATA),
        .m_axi_wlast(jtag_axi_1_M_AXI_WLAST),
        .m_axi_wready(jtag_axi_1_M_AXI_WREADY),
        .m_axi_wstrb(jtag_axi_1_M_AXI_WSTRB),
        .m_axi_wvalid(jtag_axi_1_M_AXI_WVALID));
  StateLink_AXIS_ti_trans_axis_wrapper_0_0 ti_trans_axis_wrapper_0
       (.decouple(decouple_1_1),
        .m00_axis_aclk(ddr4_0_addn_ui_clkout1),
        .m00_axis_aresetn(rst_ddr4_0_150M_peripheral_aresetn),
        .m00_axis_tdata(ti_trans_axis_wrapper_0_M00_AXIS_TDATA),
        .m00_axis_tkeep(ti_trans_axis_wrapper_0_M00_AXIS_TKEEP),
        .m00_axis_tlast(ti_trans_axis_wrapper_0_M00_AXIS_TLAST),
        .m00_axis_tready(ti_trans_axis_wrapper_0_M00_AXIS_TREADY),
        .m00_axis_tvalid(ti_trans_axis_wrapper_0_M00_AXIS_TVALID),
        .m01_axis_aclk(axis_clk_bufg_1),
        .m01_axis_aresetn(axis_rst_n_bufg_1),
        .m01_axis_tdata(ti_trans_axis_wrapper_0_M01_AXIS_TDATA),
        .m01_axis_tkeep(ti_trans_axis_wrapper_0_M01_AXIS_TKEEP),
        .m01_axis_tlast(ti_trans_axis_wrapper_0_M01_AXIS_TLAST),
        .m01_axis_tready(ti_trans_axis_wrapper_0_M01_AXIS_TREADY),
        .m01_axis_tvalid(ti_trans_axis_wrapper_0_M01_AXIS_TVALID),
        .s00_axis_aclk(axis_clk_bufg_1),
        .s00_axis_aresetn(axis_rst_n_bufg_1),
        .s00_axis_tdata(S00_AXIS_1_TDATA),
        .s00_axis_tkeep(S00_AXIS_1_TKEEP),
        .s00_axis_tlast(S00_AXIS_1_TLAST),
        .s00_axis_tready(S00_AXIS_1_TREADY),
        .s00_axis_tvalid(S00_AXIS_1_TVALID),
        .s01_axis_aclk(ddr4_0_addn_ui_clkout1),
        .s01_axis_aresetn(rst_ddr4_0_150M_peripheral_aresetn),
        .s01_axis_tdata(axis_switch_1_M00_AXIS_TDATA),
        .s01_axis_tkeep(axis_switch_1_M00_AXIS_TKEEP),
        .s01_axis_tlast(axis_switch_1_M00_AXIS_TLAST),
        .s01_axis_tready(axis_switch_1_M00_AXIS_TREADY),
        .s01_axis_tvalid(axis_switch_1_M00_AXIS_TVALID),
        .stop_ack(ti_trans_axis_wrapper_0_stop_ack),
        .stop_req(stop_req_1_1));
  StateLink_AXIS_vio_0_0 vio_0
       (.clk(ddr4_0_addn_ui_clkout1),
        .probe_in0(axi_fifo_mm_s_0_interrupt));
  StateLink_AXIS_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
