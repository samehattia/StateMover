//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Wed Jul  6 13:51:47 2022
//Host        : pcsameh running 64-bit Ubuntu 20.04.4 LTS
//Command     : generate_target StateLink_AXIS_Ethernet.bd
//Design      : StateLink_AXIS_Ethernet
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module StateLink_AXIS_0_imp_1RJYS60
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
    data_in_tdata,
    data_in_tkeep,
    data_in_tlast,
    data_in_tready,
    data_in_tvalid,
    data_out_0_tdata,
    data_out_0_tkeep,
    data_out_0_tlast,
    data_out_0_tready,
    data_out_0_tvalid,
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
  input [63:0]data_in_tdata;
  input [7:0]data_in_tkeep;
  input [0:0]data_in_tlast;
  output data_in_tready;
  input data_in_tvalid;
  output [63:0]data_out_0_tdata;
  output [7:0]data_out_0_tkeep;
  output [0:0]data_out_0_tlast;
  input data_out_0_tready;
  output data_out_0_tvalid;
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
  wire axis_clk_bufg_1;
  wire [63:0]axis_register_slice_0_M_AXIS_TDATA;
  wire [7:0]axis_register_slice_0_M_AXIS_TKEEP;
  wire axis_register_slice_0_M_AXIS_TLAST;
  wire axis_register_slice_0_M_AXIS_TREADY;
  wire axis_register_slice_0_M_AXIS_TVALID;
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
  wire [63:0]axis_timestamper_0_data_out_TDATA;
  wire [7:0]axis_timestamper_0_data_out_TKEEP;
  wire [0:0]axis_timestamper_0_data_out_TLAST;
  wire axis_timestamper_0_data_out_TREADY;
  wire axis_timestamper_0_data_out_TVALID;
  wire [63:0]data_in_1_TDATA;
  wire [7:0]data_in_1_TKEEP;
  wire [0:0]data_in_1_TLAST;
  wire data_in_1_TREADY;
  wire data_in_1_TVALID;
  wire ddr4_0_addn_ui_clkout1;
  wire decouple_1_1;
  wire [63:0]ethernet_axis_0_data_out_TDATA;
  wire [7:0]ethernet_axis_0_data_out_TKEEP;
  wire [0:0]ethernet_axis_0_data_out_TLAST;
  wire ethernet_axis_0_data_out_TREADY;
  wire ethernet_axis_0_data_out_TVALID;
  wire [63:0]ethernet_axis_0_fifo_out_TDATA;
  wire [7:0]ethernet_axis_0_fifo_out_TKEEP;
  wire [0:0]ethernet_axis_0_fifo_out_TLAST;
  wire [1:1]ethernet_axis_0_fifo_out_TREADY;
  wire ethernet_axis_0_fifo_out_TVALID;
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
  assign data_in_1_TDATA = data_in_tdata[63:0];
  assign data_in_1_TKEEP = data_in_tkeep[7:0];
  assign data_in_1_TLAST = data_in_tlast[0];
  assign data_in_1_TVALID = data_in_tvalid;
  assign data_in_tready = data_in_1_TREADY;
  assign data_out_0_tdata[63:0] = ethernet_axis_0_data_out_TDATA;
  assign data_out_0_tkeep[7:0] = ethernet_axis_0_data_out_TKEEP;
  assign data_out_0_tlast[0] = ethernet_axis_0_data_out_TLAST;
  assign data_out_0_tvalid = ethernet_axis_0_data_out_TVALID;
  assign ddr4_0_addn_ui_clkout1 = axis_clk;
  assign decouple_1_1 = decouple_1;
  assign ethernet_axis_0_data_out_TREADY = data_out_0_tready;
  assign rst_ddr4_0_150M_peripheral_aresetn = axis_rst_n;
  assign stop_ack_1[1:0] = ti_trans_axis_wrapper_0_stop_ack;
  assign stop_req_1_1 = stop_req_1[1:0];
  assign ti_trans_axis_wrapper_0_M01_AXIS_TREADY = M00_AXIS1_tready;
  StateLink_AXIS_Ethernet_axis_register_slice_0_0 axis_register_slice_0
       (.aclk(ddr4_0_addn_ui_clkout1),
        .aresetn(rst_ddr4_0_150M_peripheral_aresetn),
        .m_axis_tdata(axis_register_slice_0_M_AXIS_TDATA),
        .m_axis_tkeep(axis_register_slice_0_M_AXIS_TKEEP),
        .m_axis_tlast(axis_register_slice_0_M_AXIS_TLAST),
        .m_axis_tready(axis_register_slice_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_register_slice_0_M_AXIS_TVALID),
        .s_axis_tdata(axis_timestamper_0_data_out_TDATA),
        .s_axis_tkeep(axis_timestamper_0_data_out_TKEEP),
        .s_axis_tlast(axis_timestamper_0_data_out_TLAST),
        .s_axis_tready(axis_timestamper_0_data_out_TREADY),
        .s_axis_tvalid(axis_timestamper_0_data_out_TVALID));
  StateLink_AXIS_Ethernet_axis_switch_0_0 axis_switch_0
       (.aclk(ddr4_0_addn_ui_clkout1),
        .aresetn(rst_ddr4_0_150M_peripheral_aresetn),
        .m_axis_tdata(axis_switch_0_M00_AXIS_TDATA),
        .m_axis_tkeep(axis_switch_0_M00_AXIS_TKEEP),
        .m_axis_tlast(axis_switch_0_M00_AXIS_TLAST),
        .m_axis_tready(axis_switch_0_M00_AXIS_TREADY),
        .m_axis_tvalid(axis_switch_0_M00_AXIS_TVALID),
        .s_axis_tdata({ethernet_axis_0_fifo_out_TDATA,ti_trans_axis_wrapper_0_M00_AXIS_TDATA}),
        .s_axis_tkeep({ethernet_axis_0_fifo_out_TKEEP,ti_trans_axis_wrapper_0_M00_AXIS_TKEEP}),
        .s_axis_tlast({ethernet_axis_0_fifo_out_TLAST,ti_trans_axis_wrapper_0_M00_AXIS_TLAST}),
        .s_axis_tready({ethernet_axis_0_fifo_out_TREADY,ti_trans_axis_wrapper_0_M00_AXIS_TREADY}),
        .s_axis_tvalid({ethernet_axis_0_fifo_out_TVALID,ti_trans_axis_wrapper_0_M00_AXIS_TVALID}),
        .s_req_suppress(xlconstant_0_dout));
  StateLink_AXIS_Ethernet_axis_switch_1_0 axis_switch_1
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
  StateLink_AXIS_Ethernet_axis_timestamper_0_0 axis_timestamper_0
       (.ap_clk(ddr4_0_addn_ui_clkout1),
        .ap_rst_n(rst_ddr4_0_150M_peripheral_aresetn),
        .data_in_TDATA(axis_switch_1_M01_AXIS_TDATA),
        .data_in_TKEEP(axis_switch_1_M01_AXIS_TKEEP),
        .data_in_TLAST(axis_switch_1_M01_AXIS_TLAST),
        .data_in_TREADY(axis_switch_1_M01_AXIS_TREADY),
        .data_in_TVALID(axis_switch_1_M01_AXIS_TVALID),
        .data_out_TDATA(axis_timestamper_0_data_out_TDATA),
        .data_out_TKEEP(axis_timestamper_0_data_out_TKEEP),
        .data_out_TLAST(axis_timestamper_0_data_out_TLAST),
        .data_out_TREADY(axis_timestamper_0_data_out_TREADY),
        .data_out_TVALID(axis_timestamper_0_data_out_TVALID),
        .start_V(decouple_1_1));
  StateLink_AXIS_Ethernet_ethernet_axis_0_0 ethernet_axis_0
       (.ap_clk(ddr4_0_addn_ui_clkout1),
        .ap_rst_n(rst_ddr4_0_150M_peripheral_aresetn),
        .data_in_TDATA(data_in_1_TDATA),
        .data_in_TKEEP(data_in_1_TKEEP),
        .data_in_TLAST(data_in_1_TLAST),
        .data_in_TREADY(data_in_1_TREADY),
        .data_in_TVALID(data_in_1_TVALID),
        .data_out_TDATA(ethernet_axis_0_data_out_TDATA),
        .data_out_TKEEP(ethernet_axis_0_data_out_TKEEP),
        .data_out_TLAST(ethernet_axis_0_data_out_TLAST),
        .data_out_TREADY(ethernet_axis_0_data_out_TREADY),
        .data_out_TVALID(ethernet_axis_0_data_out_TVALID),
        .fifo_in_TDATA(axis_register_slice_0_M_AXIS_TDATA),
        .fifo_in_TKEEP(axis_register_slice_0_M_AXIS_TKEEP),
        .fifo_in_TLAST(axis_register_slice_0_M_AXIS_TLAST),
        .fifo_in_TREADY(axis_register_slice_0_M_AXIS_TREADY),
        .fifo_in_TVALID(axis_register_slice_0_M_AXIS_TVALID),
        .fifo_out_TDATA(ethernet_axis_0_fifo_out_TDATA),
        .fifo_out_TKEEP(ethernet_axis_0_fifo_out_TKEEP),
        .fifo_out_TLAST(ethernet_axis_0_fifo_out_TLAST),
        .fifo_out_TREADY(ethernet_axis_0_fifo_out_TREADY),
        .fifo_out_TVALID(ethernet_axis_0_fifo_out_TVALID));
  StateLink_AXIS_Ethernet_ti_trans_axis_wrapper_0_0 ti_trans_axis_wrapper_0
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
  StateLink_AXIS_Ethernet_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule

(* CORE_GENERATION_INFO = "StateLink_AXIS_Ethernet,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=StateLink_AXIS_Ethernet,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=7,numNonXlnxBlks=1,numHierBlks=1,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=2,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "StateLink_AXIS_Ethernet.hwdef" *) 
module StateLink_AXIS_Ethernet
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
    data_in_0_tdata,
    data_in_0_tkeep,
    data_in_0_tlast,
    data_in_0_tready,
    data_in_0_tvalid,
    data_out_0_0_tdata,
    data_out_0_0_tkeep,
    data_out_0_0_tlast,
    data_out_0_0_tready,
    data_out_0_0_tvalid,
    decouple_1_0,
    stop_ack_1_0,
    stop_req_1_0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS1_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS1_0, CLK_DOMAIN StateLink_AXIS_Ethernet_axis_clk_bufg_0, FREQ_HZ 150000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [63:0]M00_AXIS1_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS1_0 TKEEP" *) output [7:0]M00_AXIS1_0_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS1_0 TLAST" *) output M00_AXIS1_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS1_0 TREADY" *) input M00_AXIS1_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS1_0 TVALID" *) output M00_AXIS1_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS_0, CLK_DOMAIN StateLink_AXIS_Ethernet_axis_clk_0, FREQ_HZ 150000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [63:0]M00_AXIS_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS_0 TKEEP" *) output [7:0]M00_AXIS_0_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS_0 TLAST" *) output [0:0]M00_AXIS_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS_0 TREADY" *) input [0:0]M00_AXIS_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS_0 TVALID" *) output [0:0]M00_AXIS_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS1_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS1_0, CLK_DOMAIN StateLink_AXIS_Ethernet_axis_clk_0, FREQ_HZ 150000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 64}, PHASE 0, TDATA_NUM_BYTES 8, TDEST_WIDTH 1, TID_WIDTH 0, TUSER_WIDTH 0" *) input [63:0]S00_AXIS1_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS1_0 TKEEP" *) input [7:0]S00_AXIS1_0_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS1_0 TLAST" *) input [0:0]S00_AXIS1_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS1_0 TREADY" *) output [0:0]S00_AXIS1_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS1_0 TVALID" *) input [0:0]S00_AXIS1_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS_0, CLK_DOMAIN StateLink_AXIS_Ethernet_axis_clk_bufg_0, FREQ_HZ 150000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 64 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 112} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER_WIDTH 112}, PHASE 0, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [63:0]S00_AXIS_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS_0 TKEEP" *) input [7:0]S00_AXIS_0_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS_0 TLAST" *) input S00_AXIS_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS_0 TREADY" *) output S00_AXIS_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS_0 TVALID" *) input S00_AXIS_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AXIS_CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AXIS_CLK_0, ASSOCIATED_BUSIF M00_AXIS_0:S00_AXIS1_0:data_in_0:data_out_0_0, ASSOCIATED_RESET axis_rst_n_0, CLK_DOMAIN StateLink_AXIS_Ethernet_axis_clk_0, FREQ_HZ 150000000, INSERT_VIP 0, PHASE 0" *) input axis_clk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AXIS_CLK_BUFG_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AXIS_CLK_BUFG_0, ASSOCIATED_BUSIF M00_AXIS1_0:S00_AXIS_0, ASSOCIATED_RESET axis_rst_n_bufg_0, CLK_DOMAIN StateLink_AXIS_Ethernet_axis_clk_bufg_0, FREQ_HZ 150000000, INSERT_VIP 0, PHASE 0" *) input axis_clk_bufg_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AXIS_RST_N_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AXIS_RST_N_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input axis_rst_n_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AXIS_RST_N_BUFG_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AXIS_RST_N_BUFG_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input axis_rst_n_bufg_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_in_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_in_0, CLK_DOMAIN StateLink_AXIS_Ethernet_axis_clk_0, FREQ_HZ 150000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 64}, PHASE 0, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [63:0]data_in_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_in_0 TKEEP" *) input [7:0]data_in_0_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_in_0 TLAST" *) input [0:0]data_in_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_in_0 TREADY" *) output data_in_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_in_0 TVALID" *) input data_in_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_out_0_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_out_0_0, CLK_DOMAIN StateLink_AXIS_Ethernet_axis_clk_0, FREQ_HZ 150000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 64}, PHASE 0, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [63:0]data_out_0_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_out_0_0 TKEEP" *) output [7:0]data_out_0_0_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_out_0_0 TLAST" *) output [0:0]data_out_0_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_out_0_0 TREADY" *) input data_out_0_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_out_0_0 TVALID" *) output data_out_0_0_tvalid;
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
  wire [63:0]StateLink_AXIS_0_data_out_0_TDATA;
  wire [7:0]StateLink_AXIS_0_data_out_0_TKEEP;
  wire [0:0]StateLink_AXIS_0_data_out_0_TLAST;
  wire StateLink_AXIS_0_data_out_0_TREADY;
  wire StateLink_AXIS_0_data_out_0_TVALID;
  wire [1:0]StateLink_AXIS_0_stop_ack_1;
  wire axis_clk_0_1;
  wire axis_clk_bufg_0_1;
  wire axis_rst_n_0_1;
  wire axis_rst_n_bufg_0_1;
  wire [63:0]data_in_0_1_TDATA;
  wire [7:0]data_in_0_1_TKEEP;
  wire [0:0]data_in_0_1_TLAST;
  wire data_in_0_1_TREADY;
  wire data_in_0_1_TVALID;
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
  assign StateLink_AXIS_0_data_out_0_TREADY = data_out_0_0_tready;
  assign axis_clk_0_1 = axis_clk_0;
  assign axis_clk_bufg_0_1 = axis_clk_bufg_0;
  assign axis_rst_n_0_1 = axis_rst_n_0;
  assign axis_rst_n_bufg_0_1 = axis_rst_n_bufg_0;
  assign data_in_0_1_TDATA = data_in_0_tdata[63:0];
  assign data_in_0_1_TKEEP = data_in_0_tkeep[7:0];
  assign data_in_0_1_TLAST = data_in_0_tlast[0];
  assign data_in_0_1_TVALID = data_in_0_tvalid;
  assign data_in_0_tready = data_in_0_1_TREADY;
  assign data_out_0_0_tdata[63:0] = StateLink_AXIS_0_data_out_0_TDATA;
  assign data_out_0_0_tkeep[7:0] = StateLink_AXIS_0_data_out_0_TKEEP;
  assign data_out_0_0_tlast[0] = StateLink_AXIS_0_data_out_0_TLAST;
  assign data_out_0_0_tvalid = StateLink_AXIS_0_data_out_0_TVALID;
  assign decouple_1_0_1 = decouple_1_0;
  assign stop_ack_1_0[1:0] = StateLink_AXIS_0_stop_ack_1;
  assign stop_req_1_0_1 = stop_req_1_0[1:0];
  StateLink_AXIS_0_imp_1RJYS60 StateLink_AXIS_0
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
        .data_in_tdata(data_in_0_1_TDATA),
        .data_in_tkeep(data_in_0_1_TKEEP),
        .data_in_tlast(data_in_0_1_TLAST),
        .data_in_tready(data_in_0_1_TREADY),
        .data_in_tvalid(data_in_0_1_TVALID),
        .data_out_0_tdata(StateLink_AXIS_0_data_out_0_TDATA),
        .data_out_0_tkeep(StateLink_AXIS_0_data_out_0_TKEEP),
        .data_out_0_tlast(StateLink_AXIS_0_data_out_0_TLAST),
        .data_out_0_tready(StateLink_AXIS_0_data_out_0_TREADY),
        .data_out_0_tvalid(StateLink_AXIS_0_data_out_0_TVALID),
        .decouple_1(decouple_1_0_1),
        .stop_ack_1(StateLink_AXIS_0_stop_ack_1),
        .stop_req_1(stop_req_1_0_1));
endmodule
