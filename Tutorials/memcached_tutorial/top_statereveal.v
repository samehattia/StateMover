// The top module after StateReveal Signals are automatically added
// Copied from memcached_syn_netlist_new.v

`timescale 1 ps / 1 ps

module top
   (
`ifdef MODEL_TECH   
    clk_en,
    breakpoint,
    clk_step,
    clk_step_1,
    ti_req,
    pr_done,
`endif

`ifndef MODEL_TECH
    // Ethernet I/Os
    phy_rst_n,

    sgmii_rxn,
    sgmii_rxp,
    sgmii_txn,
    sgmii_txp,

    mgt_clk_n,
    mgt_clk_p,

    mdio,
    mdc,
`endif

`ifdef MODEL_TECH
    axis_clk,
    rx_axis_tdata,
    rx_axis_tvalid,
    rx_axis_tlast,
    rx_axis_tready,

    tx_axis_tdata,
    tx_axis_tvalid,
    tx_axis_tlast,
    tx_axis_tready,
`endif

    // DDR4 I/Os
    ddr4_sdram_act_n,
    ddr4_sdram_adr,
    ddr4_sdram_ba,
    ddr4_sdram_bg,
    ddr4_sdram_ck_c,
    ddr4_sdram_ck_t,
    ddr4_sdram_cke,
    ddr4_sdram_cs_n,
    ddr4_sdram_dm_n,
    ddr4_sdram_dq,
    ddr4_sdram_dqs_c,
    ddr4_sdram_dqs_t,
    ddr4_sdram_odt,
    ddr4_sdram_reset_n,

    // Clock and Reset
    default_sysclk_300_clk_n,
    default_sysclk_300_clk_p,
    reset);

`ifdef MODEL_TECH   
  input clk_en;
  input [31:0] breakpoint;
  input clk_step;
  input clk_step_1;
  input ti_req;
  input pr_done;
`endif

`ifndef MODEL_TECH
  output phy_rst_n;

  input sgmii_rxn;
  input sgmii_rxp;
  output sgmii_txn;
  output sgmii_txp;

  input mgt_clk_n;
  input mgt_clk_p;

  inout mdio;
  output mdc;
`endif

`ifdef MODEL_TECH
  output axis_clk;
  input [7:0] rx_axis_tdata;
  input rx_axis_tvalid;
  input rx_axis_tlast;
  output rx_axis_tready;

  output [7:0] tx_axis_tdata;
  output tx_axis_tvalid;
  output tx_axis_tlast;
  input tx_axis_tready;
`endif

  output ddr4_sdram_act_n;
  output [16:0]ddr4_sdram_adr;
  output [1:0]ddr4_sdram_ba;
  output ddr4_sdram_bg;
  output ddr4_sdram_ck_c;
  output ddr4_sdram_ck_t;
  output ddr4_sdram_cke;
  output ddr4_sdram_cs_n;
  inout [7:0]ddr4_sdram_dm_n;
  inout [63:0]ddr4_sdram_dq;
  inout [7:0]ddr4_sdram_dqs_c;
  inout [7:0]ddr4_sdram_dqs_t;
  output ddr4_sdram_odt;
  output ddr4_sdram_reset_n;

  input default_sysclk_300_clk_n;
  input default_sysclk_300_clk_p;

  input reset;

  wire ddr4_sdram_act_n;
  wire [16:0]ddr4_sdram_adr;
  wire [1:0]ddr4_sdram_ba;
  wire ddr4_sdram_bg;
  wire ddr4_sdram_ck_c;
  wire ddr4_sdram_ck_t;
  wire ddr4_sdram_cke;
  wire ddr4_sdram_cs_n;
  wire [7:0]ddr4_sdram_dm_n;
  wire [63:0]ddr4_sdram_dq;
  wire [7:0]ddr4_sdram_dqs_c;
  wire [7:0]ddr4_sdram_dqs_t;
  wire ddr4_sdram_odt;
  wire ddr4_sdram_reset_n;
  wire default_sysclk_300_clk_n;
  wire default_sysclk_300_clk_p;
  wire reset;
  wire sys_clk;
  wire sys_rst_n;
  
  wire [7:0] rx_axis_tdata;
  wire rx_axis_tvalid;
  wire rx_axis_tlast;
  wire rx_axis_tready;

  wire [7:0] tx_axis_tdata;
  wire tx_axis_tvalid;
  wire tx_axis_tlast;
  wire tx_axis_tready;

wire sys_clk_bufg;
wire axis_clk_bufg;
wire sys_rst_n_bufg;
wire axis_rst_n_bufg;

reg sys_rst_n_1 = 0;
reg sys_rst_n_2 = 0;
reg sys_rst_n_3 = 0;
assign sys_rst_n_bufg = sys_rst_n_1;

always@(posedge sys_clk_bufg)
begin
  sys_rst_n_1 <= sys_rst_n_2;
  sys_rst_n_2 <= sys_rst_n_3;
  sys_rst_n_3 <= 1'b1;
end

reg axis_rst_n_1 = 0;
reg axis_rst_n_2 = 0;
reg axis_rst_n_3 = 0;
assign axis_rst_n_bufg = axis_rst_n_1;

always@(posedge axis_clk_bufg)
begin
  axis_rst_n_1 <= axis_rst_n_2;
  axis_rst_n_2 <= axis_rst_n_3;
  axis_rst_n_3 <= 1'b1;
end

  localparam NUM_TI_WRAPPERS = 4;
  wire [NUM_TI_WRAPPERS-1:0] stop_req;
  wire [NUM_TI_WRAPPERS-1:0] stop_ack;
  
  interruption_logic #(
    .NUM_TI_WRAPPERS(NUM_TI_WRAPPERS)
  ) 
  il (
`ifdef MODEL_TECH
    .clk_en(clk_en),
    .breakpoint(breakpoint),
    .clk_step(clk_step),
    .clk_step_1(clk_step_1),
    .ti_req(ti_req),
    .pr_done(pr_done),
`endif
    .sys_clk(sys_clk),
    .sys_reset(~sys_rst_n),
    .task_clk(sys_clk_bufg),
    .clk_2(axis_clk),
    .clk_2_bufg(axis_clk_bufg),
    .stop_req(stop_req),
    .stop_ack(stop_ack),
    .decouple(decouple),
    .user_signal(rx_axis_tvalid & rx_axis_tready & rx_axis_tlast)
  );

  // For StateReveal
  (* dont_touch = "true" *) wire break;
  assign break = decouple;

  /**
   * register decoupler signal
   */
 (* ASYNC_REG = "TRUE" *) reg decouple_r, decouple_rr;
  
  always @(posedge axis_clk)
  begin 
      if(~axis_rst_n_bufg) 
      begin
        decouple_r <= 2'b0;
        decouple_rr <= 2'b0;
      end
      else
      begin
        decouple_r <= decouple;
        decouple_rr <= decouple_r;
      end
  end

  // register the stop_req and stop_ack signals
  (* ASYNC_REG = "TRUE" *) reg [1:0] stop_req_r, stop_req_rr;
  (* ASYNC_REG = "TRUE" *) reg [1:0] stop_ack_r, stop_ack_rr;
  wire [1:0] stop_ack_s;
  
  always @(posedge axis_clk)
  begin 
      if(~axis_rst_n_bufg) 
      begin
        stop_req_r <= 2'b0;
        stop_req_rr <= 2'b0;
      end
      else
      begin
        stop_req_r <= stop_req[1:0];
        stop_req_rr <= stop_req_r;
      end
  end 
  
  assign stop_ack[1:0] = stop_ack_rr;
  
  always @(posedge sys_clk)
  begin 
      if(~sys_rst_n) 
      begin
        stop_ack_r <= 2'b0;
        stop_ack_rr <= 2'b0;
      end
      else
      begin
        stop_ack_r <= stop_ack_s;
        stop_ack_rr <= stop_ack_r;
      end
  end 

  parameter SRCMACADDR_0 = 48'h020100350A00;  //hE59D02350A00
  parameter DESTMACADDR_0 = 48'h25DA924537D0; //hE59D02350B00

  memcached memcached_i (
    .DestMacAddress_V_0(DESTMACADDR_0),
    .SrcMacAddress_V_0(SRCMACADDR_0),
    .myMacAddress_V_0(SRCMACADDR_0),

    .M_AXIS_0_tdata(tx_axis_tdata),
    .M_AXIS_0_tkeep(),
    .M_AXIS_0_tlast(tx_axis_tlast),
    .M_AXIS_0_tready(tx_axis_tready),
    .M_AXIS_0_tvalid(tx_axis_tvalid),

    .data_in_0_tdata(rx_axis_tdata),
    .data_in_0_tlast(rx_axis_tlast),
    .data_in_0_tready(rx_axis_tready),
    .data_in_0_tvalid(rx_axis_tvalid),

    .axis_clk(axis_clk),
    .axis_rst_n(axis_rst_n),

    .ddr4_sdram_act_n(ddr4_sdram_act_n),
    .ddr4_sdram_adr(ddr4_sdram_adr),
    .ddr4_sdram_ba(ddr4_sdram_ba),
    .ddr4_sdram_bg(ddr4_sdram_bg),
    .ddr4_sdram_ck_c(ddr4_sdram_ck_c),
    .ddr4_sdram_ck_t(ddr4_sdram_ck_t),
    .ddr4_sdram_cke(ddr4_sdram_cke),
    .ddr4_sdram_cs_n(ddr4_sdram_cs_n),
    .ddr4_sdram_dm_n(ddr4_sdram_dm_n),
    .ddr4_sdram_dq(ddr4_sdram_dq),
    .ddr4_sdram_dqs_c(ddr4_sdram_dqs_c),
    .ddr4_sdram_dqs_t(ddr4_sdram_dqs_t),
    .ddr4_sdram_odt(ddr4_sdram_odt),
    .ddr4_sdram_reset_n(ddr4_sdram_reset_n),

    .default_sysclk_300_clk_n(default_sysclk_300_clk_n),
    .default_sysclk_300_clk_p(default_sysclk_300_clk_p),
    
    .reset(reset),

    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),

    .sys_clk_bufg(sys_clk_bufg),
    .sys_rst_n_bufg(sys_rst_n_bufg),

    .axis_clk_bufg(axis_clk_bufg),
    .axis_rst_n_bufg(axis_rst_n_bufg),

    .decouple_0(decouple),
    .stop_req_0(stop_req[3:2]),
    .stop_ack_0(stop_ack[3:2]),

    .decouple_1(decouple_rr),
    .stop_req_1(stop_req_rr),
    .stop_ack_1(stop_ack_s),
    .gen_wr_agen_word_narrowmem_reg_write_disable_0(break ),
    .gen_wr_agen_word_narrowmem_reg_write_disable_1(break ),
    .gen_wr_agen_word_narrowmem_reg_bram_0_write_disable_2(break ),
    .gen_wr_agen_word_narrowmem_reg_bram_0_write_disable_3(break ),
    .gen_wr_agen_word_narrowmem_reg_0_write_disable_4(break ),
    .gen_wr_agen_word_narrowmem_reg_1_write_disable_5(break ),
    .gen_wr_agen_word_narrowmem_reg_2_write_disable_6(break ),
    .gen_wr_agen_word_narrowmem_reg_3_write_disable_7(break ),
    .gen_wr_agen_word_narrowmem_reg_4_write_disable_8(break ),
    .gen_wr_agen_word_narrowmem_reg_5_write_disable_9(break ),
    .gen_wr_agen_word_narrowmem_reg_6_write_disable_10(break ),
    .gen_wr_agen_word_narrowmem_reg_7_write_disable_11(break ),
    .gen_wr_agen_word_narrowmem_reg_0_write_disable_13(break ),
    .gen_wr_agen_word_narrowmem_reg_0_write_disable_15(break ),
    .gen_wr_agen_word_narrowmem_reg_1_write_disable_16(break ),
    .gen_wr_agen_word_narrowmem_reg_2_write_disable_17(break ),
    .gen_wr_agen_word_narrowmem_reg_3_write_disable_18(break ),
    .gen_wr_agen_word_narrowmem_reg_4_write_disable_19(break ),
    .gen_wr_agen_word_narrowmem_reg_5_write_disable_20(break ),
    .gen_wr_agen_word_narrowmem_reg_6_write_disable_21(break ),
    .gen_wr_agen_word_narrowmem_reg_write_disable_23(break ),
    .gen_wr_agen_word_narrowmem_reg_write_disable_24(break ),
    .gen_wr_agen_word_narrowmem_reg_bram_0_write_disable_25(break ),
    .gen_wr_agen_word_narrowmem_reg_bram_0_write_disable_26(break ),
    .gen_wr_agen_word_narrowmem_reg_0_write_disable_27(break ),
    .gen_wr_agen_word_narrowmem_reg_1_write_disable_28(break ),
    .gen_wr_agen_word_narrowmem_reg_2_write_disable_29(break ),
    .gen_wr_agen_word_narrowmem_reg_3_write_disable_30(break ),
    .gen_wr_agen_word_narrowmem_reg_4_write_disable_31(break ),
    .gen_wr_agen_word_narrowmem_reg_5_write_disable_32(break ),
    .gen_wr_agen_word_narrowmem_reg_6_write_disable_33(break ),
    .gen_wr_agen_word_narrowmem_reg_7_write_disable_34(break ),
    .gen_wr_agen_word_narrowmem_reg_0_write_disable_36(break ),
    .gen_wr_agen_word_narrowmem_reg_0_write_disable_38(break ),
    .gen_wr_agen_word_narrowmem_reg_1_write_disable_39(break ),
    .gen_wr_agen_word_narrowmem_reg_2_write_disable_40(break ),
    .gen_wr_agen_word_narrowmem_reg_3_write_disable_41(break ),
    .gen_wr_agen_word_narrowmem_reg_4_write_disable_42(break ),
    .gen_wr_agen_word_narrowmem_reg_5_write_disable_43(break ),
    .gen_wr_agen_word_narrowmem_reg_6_write_disable_44(break ));

`ifndef MODEL_TECH
  ethernet_system eth_sys (
    // Board I/Os
    .sys_rst  (reset),
    .phy_rst_n(phy_rst_n),

    .sgmii_rxn(sgmii_rxn),
    .sgmii_rxp(sgmii_rxp),
    .sgmii_txn(sgmii_txn),
    .sgmii_txp(sgmii_txp),

    .mgt_clk_n(mgt_clk_n),
    .mgt_clk_p(mgt_clk_p),

    .mdio     (mdio),
    .mdc      (mdc),

    .sys_clk (sys_clk),

    // USER side RX/TX AXI-S interface
    .tx_axis_clk         (axis_clk),
    .tx_axis_aresetn     (axis_rst_n),

    .rx_axis_tdata       (rx_axis_tdata),
    .rx_axis_tvalid      (rx_axis_tvalid),
    .rx_axis_tlast       (rx_axis_tlast),
    .rx_axis_tready      (rx_axis_tready),

    .tx_axis_tdata       (tx_axis_tdata),
    .tx_axis_tvalid      (tx_axis_tvalid),
    .tx_axis_tlast       (tx_axis_tlast),
    .tx_axis_tready      (tx_axis_tready)
);
`endif

endmodule