// This module contains only the instantiation of the task (Memcached Server: DUT_imp_1OCIMA7) and clock/reset modules 
// The interfaces of the task are driven from StateLink 
// The module defintion and the instantiation are taken from memcached_syn_netlist_new.v after StateReveal Signals are automatically added

module memcached
   (DestMacAddress_V_0,
    M_AXIS_0_tdata,
    M_AXIS_0_tkeep,
    M_AXIS_0_tlast,
    M_AXIS_0_tready,
    M_AXIS_0_tvalid,
    SrcMacAddress_V_0,
    axis_clk,
    axis_clk_bufg,
    axis_rst_n,
    axis_rst_n_bufg,
    data_in_0_tdata,
    data_in_0_tlast,
    data_in_0_tready,
    data_in_0_tvalid,
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
    decouple_0,
    decouple_1,
    default_sysclk_300_clk_n,
    default_sysclk_300_clk_p,
    myMacAddress_V_0,
    reset,
    stop_ack_0,
    stop_ack_1,
    stop_req_0,
    stop_req_1,
    sys_clk,
    sys_clk_bufg,
    sys_rst_n,
    sys_rst_n_bufg,
    gen_wr_agen_word_narrowmem_reg_write_disable_0,
    gen_wr_agen_word_narrowmem_reg_write_disable_1,
    gen_wr_agen_word_narrowmem_reg_bram_0_write_disable_2,
    gen_wr_agen_word_narrowmem_reg_bram_0_write_disable_3,
    gen_wr_agen_word_narrowmem_reg_0_write_disable_4,
    gen_wr_agen_word_narrowmem_reg_1_write_disable_5,
    gen_wr_agen_word_narrowmem_reg_2_write_disable_6,
    gen_wr_agen_word_narrowmem_reg_3_write_disable_7,
    gen_wr_agen_word_narrowmem_reg_4_write_disable_8,
    gen_wr_agen_word_narrowmem_reg_5_write_disable_9,
    gen_wr_agen_word_narrowmem_reg_6_write_disable_10,
    gen_wr_agen_word_narrowmem_reg_7_write_disable_11,
    gen_wr_agen_word_narrowmem_reg_0_write_disable_13,
    gen_wr_agen_word_narrowmem_reg_0_write_disable_15,
    gen_wr_agen_word_narrowmem_reg_1_write_disable_16,
    gen_wr_agen_word_narrowmem_reg_2_write_disable_17,
    gen_wr_agen_word_narrowmem_reg_3_write_disable_18,
    gen_wr_agen_word_narrowmem_reg_4_write_disable_19,
    gen_wr_agen_word_narrowmem_reg_5_write_disable_20,
    gen_wr_agen_word_narrowmem_reg_6_write_disable_21,
    gen_wr_agen_word_narrowmem_reg_write_disable_23,
    gen_wr_agen_word_narrowmem_reg_write_disable_24,
    gen_wr_agen_word_narrowmem_reg_bram_0_write_disable_25,
    gen_wr_agen_word_narrowmem_reg_bram_0_write_disable_26,
    gen_wr_agen_word_narrowmem_reg_0_write_disable_27,
    gen_wr_agen_word_narrowmem_reg_1_write_disable_28,
    gen_wr_agen_word_narrowmem_reg_2_write_disable_29,
    gen_wr_agen_word_narrowmem_reg_3_write_disable_30,
    gen_wr_agen_word_narrowmem_reg_4_write_disable_31,
    gen_wr_agen_word_narrowmem_reg_5_write_disable_32,
    gen_wr_agen_word_narrowmem_reg_6_write_disable_33,
    gen_wr_agen_word_narrowmem_reg_7_write_disable_34,
    gen_wr_agen_word_narrowmem_reg_0_write_disable_36,
    gen_wr_agen_word_narrowmem_reg_0_write_disable_38,
    gen_wr_agen_word_narrowmem_reg_1_write_disable_39,
    gen_wr_agen_word_narrowmem_reg_2_write_disable_40,
    gen_wr_agen_word_narrowmem_reg_3_write_disable_41,
    gen_wr_agen_word_narrowmem_reg_4_write_disable_42,
    gen_wr_agen_word_narrowmem_reg_5_write_disable_43,
    gen_wr_agen_word_narrowmem_reg_6_write_disable_44);
  input gen_wr_agen_word_narrowmem_reg_6_write_disable_44;
  input gen_wr_agen_word_narrowmem_reg_5_write_disable_43;
  input gen_wr_agen_word_narrowmem_reg_4_write_disable_42;
  input gen_wr_agen_word_narrowmem_reg_3_write_disable_41;
  input gen_wr_agen_word_narrowmem_reg_2_write_disable_40;
  input gen_wr_agen_word_narrowmem_reg_1_write_disable_39;
  input gen_wr_agen_word_narrowmem_reg_0_write_disable_38;
  input gen_wr_agen_word_narrowmem_reg_0_write_disable_36;
  input gen_wr_agen_word_narrowmem_reg_7_write_disable_34;
  input gen_wr_agen_word_narrowmem_reg_6_write_disable_33;
  input gen_wr_agen_word_narrowmem_reg_5_write_disable_32;
  input gen_wr_agen_word_narrowmem_reg_4_write_disable_31;
  input gen_wr_agen_word_narrowmem_reg_3_write_disable_30;
  input gen_wr_agen_word_narrowmem_reg_2_write_disable_29;
  input gen_wr_agen_word_narrowmem_reg_1_write_disable_28;
  input gen_wr_agen_word_narrowmem_reg_0_write_disable_27;
  input gen_wr_agen_word_narrowmem_reg_bram_0_write_disable_26;
  input gen_wr_agen_word_narrowmem_reg_bram_0_write_disable_25;
  input gen_wr_agen_word_narrowmem_reg_write_disable_24;
  input gen_wr_agen_word_narrowmem_reg_write_disable_23;
  input gen_wr_agen_word_narrowmem_reg_6_write_disable_21;
  input gen_wr_agen_word_narrowmem_reg_5_write_disable_20;
  input gen_wr_agen_word_narrowmem_reg_4_write_disable_19;
  input gen_wr_agen_word_narrowmem_reg_3_write_disable_18;
  input gen_wr_agen_word_narrowmem_reg_2_write_disable_17;
  input gen_wr_agen_word_narrowmem_reg_1_write_disable_16;
  input gen_wr_agen_word_narrowmem_reg_0_write_disable_15;
  input gen_wr_agen_word_narrowmem_reg_0_write_disable_13;
  input gen_wr_agen_word_narrowmem_reg_7_write_disable_11;
  input gen_wr_agen_word_narrowmem_reg_6_write_disable_10;
  input gen_wr_agen_word_narrowmem_reg_5_write_disable_9;
  input gen_wr_agen_word_narrowmem_reg_4_write_disable_8;
  input gen_wr_agen_word_narrowmem_reg_3_write_disable_7;
  input gen_wr_agen_word_narrowmem_reg_2_write_disable_6;
  input gen_wr_agen_word_narrowmem_reg_1_write_disable_5;
  input gen_wr_agen_word_narrowmem_reg_0_write_disable_4;
  input gen_wr_agen_word_narrowmem_reg_bram_0_write_disable_3;
  input gen_wr_agen_word_narrowmem_reg_bram_0_write_disable_2;
  input gen_wr_agen_word_narrowmem_reg_write_disable_1;
  input gen_wr_agen_word_narrowmem_reg_write_disable_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DESTMACADDRESS_V_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DESTMACADDRESS_V_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 48} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [47:0]DestMacAddress_V_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_0, CLK_DOMAIN memcached_ddr4_0_0_c0_ddr4_ui_clk, FREQ_HZ 150000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [7:0]M_AXIS_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_0 TKEEP" *) output [0:0]M_AXIS_0_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_0 TLAST" *) output M_AXIS_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_0 TREADY" *) input M_AXIS_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_0 TVALID" *) output M_AXIS_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.SRCMACADDRESS_V_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.SRCMACADDRESS_V_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 48} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [47:0]SrcMacAddress_V_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AXIS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AXIS_CLK, ASSOCIATED_BUSIF M_AXIS_0:data_in_0, CLK_DOMAIN memcached_ddr4_0_0_c0_ddr4_ui_clk, FREQ_HZ 150000000, INSERT_VIP 0, PHASE 0" *) output axis_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AXIS_CLK_BUFG CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AXIS_CLK_BUFG, ASSOCIATED_RESET axis_rst_n_bufg, CLK_DOMAIN memcached_axis_clk_bufg, FREQ_HZ 150000000, INSERT_VIP 0, PHASE 0" *) input axis_clk_bufg;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AXIS_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AXIS_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]axis_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AXIS_RST_N_BUFG RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AXIS_RST_N_BUFG, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input axis_rst_n_bufg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_in_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_in_0, CLK_DOMAIN memcached_ddr4_0_0_c0_ddr4_ui_clk, FREQ_HZ 150000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, PHASE 0, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [7:0]data_in_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_in_0 TLAST" *) input [0:0]data_in_0_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_in_0 TREADY" *) output data_in_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 data_in_0 TVALID" *) input data_in_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram ACT_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ddr4_sdram, AXI_ARBITRATION_SCHEME RD_PRI_REG, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 17, CAS_WRITE_LATENCY 12, CS_ENABLED true, CUSTOM_PARTS no_file_loaded, DATA_MASK_ENABLED DM_NO_DBI, DATA_WIDTH 64, MEMORY_PART EDY4016AABG-DR-F, MEMORY_TYPE Components, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 833" *) output ddr4_sdram_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram ADR" *) output [16:0]ddr4_sdram_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram BA" *) output [1:0]ddr4_sdram_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram BG" *) output ddr4_sdram_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram CK_C" *) output ddr4_sdram_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram CK_T" *) output ddr4_sdram_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram CKE" *) output ddr4_sdram_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram CS_N" *) output ddr4_sdram_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram DM_N" *) inout [7:0]ddr4_sdram_dm_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram DQ" *) inout [63:0]ddr4_sdram_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram DQS_C" *) inout [7:0]ddr4_sdram_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram DQS_T" *) inout [7:0]ddr4_sdram_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram ODT" *) output ddr4_sdram_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 ddr4_sdram RESET_N" *) output ddr4_sdram_reset_n;
  input decouple_0;
  input decouple_1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 default_sysclk_300 CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME default_sysclk_300, CAN_DEBUG false, FREQ_HZ 300000000" *) input default_sysclk_300_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 default_sysclk_300 CLK_P" *) input default_sysclk_300_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.MYMACADDRESS_V_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.MYMACADDRESS_V_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 48} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [47:0]myMacAddress_V_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;
  output [1:0]stop_ack_0;
  output [1:0]stop_ack_1;
  input [1:0]stop_req_0;
  input [1:0]stop_req_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLK, CLK_DOMAIN memcached_ddr4_0_0_c0_ddr4_ui_clk, FREQ_HZ 300000000, INSERT_VIP 0, PHASE 0.00" *) output sys_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLK_BUFG CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLK_BUFG, ASSOCIATED_RESET sys_rst_n_bufg, CLK_DOMAIN memcached_sys_clk_bufg, FREQ_HZ 300000000, INSERT_VIP 0, PHASE 0.00" *) input sys_clk_bufg;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.SYS_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.SYS_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]sys_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.SYS_RST_N_BUFG RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.SYS_RST_N_BUFG, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input sys_rst_n_bufg;

  wire [31:0]DUT_M00_AXI_ARADDR;
  wire [1:0]DUT_M00_AXI_ARBURST;
  wire [3:0]DUT_M00_AXI_ARCACHE;
  wire [5:0]DUT_M00_AXI_ARID;
  wire [7:0]DUT_M00_AXI_ARLEN;
  wire DUT_M00_AXI_ARLOCK;
  wire [2:0]DUT_M00_AXI_ARPROT;
  wire [3:0]DUT_M00_AXI_ARQOS;
  wire DUT_M00_AXI_ARREADY;
  wire [3:0]DUT_M00_AXI_ARREGION;
  wire [2:0]DUT_M00_AXI_ARSIZE;
  wire [3:0]DUT_M00_AXI_ARUSER;
  wire DUT_M00_AXI_ARVALID;
  wire [31:0]DUT_M00_AXI_AWADDR;
  wire [1:0]DUT_M00_AXI_AWBURST;
  wire [3:0]DUT_M00_AXI_AWCACHE;
  wire [5:0]DUT_M00_AXI_AWID;
  wire [7:0]DUT_M00_AXI_AWLEN;
  wire DUT_M00_AXI_AWLOCK;
  wire [2:0]DUT_M00_AXI_AWPROT;
  wire [3:0]DUT_M00_AXI_AWQOS;
  wire DUT_M00_AXI_AWREADY;
  wire [3:0]DUT_M00_AXI_AWREGION;
  wire [2:0]DUT_M00_AXI_AWSIZE;
  wire [3:0]DUT_M00_AXI_AWUSER;
  wire DUT_M00_AXI_AWVALID;
  wire [5:0]DUT_M00_AXI_BID;
  wire DUT_M00_AXI_BREADY;
  wire [1:0]DUT_M00_AXI_BRESP;
  wire DUT_M00_AXI_BVALID;
  wire [511:0]DUT_M00_AXI_RDATA;
  wire [5:0]DUT_M00_AXI_RID;
  wire DUT_M00_AXI_RLAST;
  wire DUT_M00_AXI_RREADY;
  wire [1:0]DUT_M00_AXI_RRESP;
  wire DUT_M00_AXI_RVALID;
  wire [511:0]DUT_M00_AXI_WDATA;
  wire DUT_M00_AXI_WLAST;
  wire DUT_M00_AXI_WREADY;
  wire [63:0]DUT_M00_AXI_WSTRB;
  wire DUT_M00_AXI_WVALID;
  wire [47:0]DestMacAddress_V_0_1;
  wire [47:0]SrcMacAddress_V_0_1;
  wire [1:0]StateLink_AXIS_0_stop_ack_1;
  wire [1:0]StateLink_AXI_0_stop_ack_0;
  wire [31:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_ARBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_ARCACHE;
  wire [7:0]axi_interconnect_0_M00_AXI_ARLEN;
  wire [0:0]axi_interconnect_0_M00_AXI_ARLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_ARPROT;
  wire [3:0]axi_interconnect_0_M00_AXI_ARQOS;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire [2:0]axi_interconnect_0_M00_AXI_ARSIZE;
  wire axi_interconnect_0_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_AWBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_AWCACHE;
  wire [7:0]axi_interconnect_0_M00_AXI_AWLEN;
  wire [0:0]axi_interconnect_0_M00_AXI_AWLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_AWPROT;
  wire [3:0]axi_interconnect_0_M00_AXI_AWQOS;
  wire axi_interconnect_0_M00_AXI_AWREADY;
  wire [2:0]axi_interconnect_0_M00_AXI_AWSIZE;
  wire axi_interconnect_0_M00_AXI_AWVALID;
  wire axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire axi_interconnect_0_M00_AXI_BVALID;
  wire [511:0]axi_interconnect_0_M00_AXI_RDATA;
  wire axi_interconnect_0_M00_AXI_RLAST;
  wire axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire axi_interconnect_0_M00_AXI_RVALID;
  wire [511:0]axi_interconnect_0_M00_AXI_WDATA;
  wire axi_interconnect_0_M00_AXI_WLAST;
  wire axi_interconnect_0_M00_AXI_WREADY;
  wire [63:0]axi_interconnect_0_M00_AXI_WSTRB;
  wire axi_interconnect_0_M00_AXI_WVALID;
  wire axis_clk_0_1;
  wire [7:0]axis_dwidth_converter_0_M_AXIS_TDATA;
  wire [0:0]axis_dwidth_converter_0_M_AXIS_TKEEP;
  wire axis_dwidth_converter_0_M_AXIS_TLAST;
  wire axis_dwidth_converter_0_M_AXIS_TREADY;
  wire axis_dwidth_converter_0_M_AXIS_TVALID;
  wire axis_rst_n_0_1;
  wire [63:0]axis_switch_0_M00_AXIS_TDATA;
  wire [7:0]axis_switch_0_M00_AXIS_TKEEP;
  wire axis_switch_0_M00_AXIS_TLAST;
  wire axis_switch_0_M00_AXIS_TREADY;
  wire axis_switch_0_M00_AXIS_TVALID;
  wire [63:0]axis_switch_1_M00_AXIS_TDATA;
  wire [7:0]axis_switch_1_M00_AXIS_TKEEP;
  wire axis_switch_1_M00_AXIS_TLAST;
  wire axis_switch_1_M00_AXIS_TREADY;
  wire axis_switch_1_M00_AXIS_TVALID;
  wire [63:0]axis_width_upsizer_0_data_out_TDATA;
  wire [7:0]axis_width_upsizer_0_data_out_TKEEP;
  wire [0:0]axis_width_upsizer_0_data_out_TLAST;
  wire axis_width_upsizer_0_data_out_TREADY;
  wire axis_width_upsizer_0_data_out_TVALID;
  wire [7:0]data_in_0_1_TDATA;
  wire [0:0]data_in_0_1_TLAST;
  wire data_in_0_1_TREADY;
  wire data_in_0_1_TVALID;
  wire ddr4_0_C0_DDR4_ACT_N;
  wire [16:0]ddr4_0_C0_DDR4_ADR;
  wire [1:0]ddr4_0_C0_DDR4_BA;
  wire [0:0]ddr4_0_C0_DDR4_BG;
  wire [0:0]ddr4_0_C0_DDR4_CKE;
  wire [0:0]ddr4_0_C0_DDR4_CK_C;
  wire [0:0]ddr4_0_C0_DDR4_CK_T;
  wire [0:0]ddr4_0_C0_DDR4_CS_N;
  wire [7:0]ddr4_0_C0_DDR4_DM_N;
  wire [63:0]ddr4_0_C0_DDR4_DQ;
  wire [7:0]ddr4_0_C0_DDR4_DQS_C;
  wire [7:0]ddr4_0_C0_DDR4_DQS_T;
  wire [0:0]ddr4_0_C0_DDR4_ODT;
  wire ddr4_0_C0_DDR4_RESET_N;
  wire ddr4_0_addn_ui_clkout1;
  wire ddr4_0_c0_ddr4_ui_clk;
  wire ddr4_0_c0_ddr4_ui_clk_sync_rst;
  wire decouple_0_1;
  wire decouple_1_1;
  wire default_sysclk_300_1_CLK_N;
  wire default_sysclk_300_1_CLK_P;
  wire [63:0]mac_header_add_0_dataOut_TDATA;
  wire [7:0]mac_header_add_0_dataOut_TKEEP;
  wire mac_header_add_0_dataOut_TLAST;
  wire mac_header_add_0_dataOut_TREADY;
  wire mac_header_add_0_dataOut_TVALID;
  wire [47:0]myMacAddress_V_0_1;
  wire reset_1;
  wire [0:0]rst_ddr4_0_150M_peripheral_aresetn;
  wire [0:0]rst_ddr4_0_300M_peripheral_aresetn;
  wire [1:0]stop_req_0_1;
  wire [1:0]stop_req_1_1;
  wire sys_clk_0_1;
  wire sys_rst_n_0_1;

  assign DestMacAddress_V_0_1 = DestMacAddress_V_0[47:0];
  assign M_AXIS_0_tdata[7:0] = axis_dwidth_converter_0_M_AXIS_TDATA;
  assign M_AXIS_0_tkeep[0] = axis_dwidth_converter_0_M_AXIS_TKEEP;
  assign M_AXIS_0_tlast = axis_dwidth_converter_0_M_AXIS_TLAST;
  assign M_AXIS_0_tvalid = axis_dwidth_converter_0_M_AXIS_TVALID;
  assign SrcMacAddress_V_0_1 = SrcMacAddress_V_0[47:0];
  assign axis_clk = ddr4_0_addn_ui_clkout1;
  assign axis_clk_0_1 = axis_clk_bufg;
  assign axis_dwidth_converter_0_M_AXIS_TREADY = M_AXIS_0_tready;
  assign axis_rst_n[0] = rst_ddr4_0_150M_peripheral_aresetn;
  assign axis_rst_n_0_1 = axis_rst_n_bufg;
  assign data_in_0_1_TDATA = data_in_0_tdata[7:0];
  assign data_in_0_1_TLAST = data_in_0_tlast[0];
  assign data_in_0_1_TVALID = data_in_0_tvalid;
  assign data_in_0_tready = data_in_0_1_TREADY;
  assign ddr4_sdram_act_n = ddr4_0_C0_DDR4_ACT_N;
  assign ddr4_sdram_adr[16:0] = ddr4_0_C0_DDR4_ADR;
  assign ddr4_sdram_ba[1:0] = ddr4_0_C0_DDR4_BA;
  assign ddr4_sdram_bg = ddr4_0_C0_DDR4_BG;
  assign ddr4_sdram_ck_c = ddr4_0_C0_DDR4_CK_C;
  assign ddr4_sdram_ck_t = ddr4_0_C0_DDR4_CK_T;
  assign ddr4_sdram_cke = ddr4_0_C0_DDR4_CKE;
  assign ddr4_sdram_cs_n = ddr4_0_C0_DDR4_CS_N;
  assign ddr4_sdram_odt = ddr4_0_C0_DDR4_ODT;
  assign ddr4_sdram_reset_n = ddr4_0_C0_DDR4_RESET_N;
  assign decouple_0_1 = decouple_0;
  assign decouple_1_1 = decouple_1;
  assign default_sysclk_300_1_CLK_N = default_sysclk_300_clk_n;
  assign default_sysclk_300_1_CLK_P = default_sysclk_300_clk_p;
  assign myMacAddress_V_0_1 = myMacAddress_V_0[47:0];
  assign reset_1 = reset;
  assign stop_ack_0[1:0] = StateLink_AXI_0_stop_ack_0;
  assign stop_ack_1[1:0] = StateLink_AXIS_0_stop_ack_1;
  assign stop_req_0_1 = stop_req_0[1:0];
  assign stop_req_1_1 = stop_req_1[1:0];
  assign sys_clk = ddr4_0_c0_ddr4_ui_clk;
  assign sys_clk_0_1 = sys_clk_bufg;
  assign sys_rst_n[0] = rst_ddr4_0_300M_peripheral_aresetn;
  assign sys_rst_n_0_1 = sys_rst_n_bufg;


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Clocking primitive
  IBUFGDS clkin1_buf (
    .O  (clkin1), //clkin1
    .I  (default_sysclk_300_1_CLK_P),
    .IB (default_sysclk_300_1_CLK_N)
  );

  MMCME3_ADV
      #(.BANDWIDTH            ("OPTIMIZED"),
        .CLKOUT4_CASCADE      ("FALSE"),
        .COMPENSATION         ("INTERNAL"),
        .STARTUP_WAIT         ("FALSE"),
        .DIVCLK_DIVIDE        (1),

        .CLKFBOUT_MULT_F      (2),
        .CLKFBOUT_PHASE       (0.000),
        .CLKFBOUT_USE_FINE_PS ("FALSE"),

        .CLKOUT0_DIVIDE_F     (2),
        .CLKOUT0_PHASE        (0.000),
        .CLKOUT0_DUTY_CYCLE   (0.500),
        .CLKOUT0_USE_FINE_PS  ("FALSE"),

        .CLKOUT1_DIVIDE       (4),
        .CLKOUT1_PHASE        (0.000),
        .CLKOUT1_DUTY_CYCLE   (0.500),
        .CLKOUT1_USE_FINE_PS  ("FALSE"),

        .CLKIN1_PERIOD        (3.333),
        .REF_JITTER1          (0.010))
      u_mmcme_adv_inst
        // Output clocks
       (
        .CLKFBOUT            (), //mmcm_fb
        .CLKFBOUTB           (),
        .CLKOUT0             (clkout0),
        .CLKOUT0B            (),
        .CLKOUT1             (clkout1),
        .CLKOUT1B            (),
        .CLKOUT2             (),
        .CLKOUT2B            (),
        .CLKOUT3             (),
        .CLKOUT3B            (),
        .CLKOUT4             (),
        .CLKOUT5             (),
        .CLKOUT6             (),
         // Input clock control
        .CLKFBIN             (), //mmcm_fb
        .CLKIN1              (clkin1),
        .CLKIN2              (1'b0),
        // Other control and status signals
        .LOCKED              (LOCKED),
        .PWRDWN              (1'b0),
        .RST                 (reset_1),
      
        .CDDCDONE            (),
        .CLKFBSTOPPED        (),
        .CLKINSTOPPED        (),
        .DO                  (),
        .DRDY                (),
        .PSDONE              (),
        .CDDCREQ             (1'b0),
        .CLKINSEL            (1'b1),
        .DADDR               (7'b0),
        .DCLK                (1'b0),
        .DEN                 (1'b0),
        .DI                  (16'b0),
        .DWE                 (1'b0),
        .PSCLK               (1'b0),
        .PSEN                (1'b0),
        .PSINCDEC            (1'b0)
      );
  // Output buffering
  //-----------------------------------

  BUFG clkout0_buf (
    .O (ddr4_0_c0_ddr4_ui_clk),
    .I (clkout0)
  );

  BUFG clkout1_buf (
    .O (ddr4_0_addn_ui_clkout1),
    .I (clkout1)
  );

  reg sync_rst_1 = 1;
  reg sync_rst_2 = 1;
  reg sync_rst_3 = 1;
  assign ddr4_0_c0_ddr4_ui_clk_sync_rst = sync_rst_1;

  always@(posedge ddr4_0_c0_ddr4_ui_clk)
  begin
    sync_rst_1 <= sync_rst_2;
    sync_rst_2 <= sync_rst_3;
    sync_rst_3 <= 1'b0;
  end

  assign DUT_M00_AXI_BID = DUT_M00_AXI_AWID;
  assign DUT_M00_AXI_RID = DUT_M00_AXI_ARID;

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  DUT_imp_1OCIMA7 DUT
       (.DestMacAddress_V_0(DestMacAddress_V_0_1),
        .M00_AXI_araddr(DUT_M00_AXI_ARADDR),
        .M00_AXI_arburst(DUT_M00_AXI_ARBURST),
        .M00_AXI_arcache(DUT_M00_AXI_ARCACHE),
        .M00_AXI_arid(DUT_M00_AXI_ARID),
        .M00_AXI_arlen(DUT_M00_AXI_ARLEN),
        .M00_AXI_arlock(DUT_M00_AXI_ARLOCK),
        .M00_AXI_arprot(DUT_M00_AXI_ARPROT),
        .M00_AXI_arqos(DUT_M00_AXI_ARQOS),
        .M00_AXI_arready(/*DUT_M00_AXI_ARREADY*/1),
        .M00_AXI_arregion(DUT_M00_AXI_ARREGION),
        .M00_AXI_arsize(DUT_M00_AXI_ARSIZE),
        .M00_AXI_aruser(DUT_M00_AXI_ARUSER),
        .M00_AXI_arvalid(DUT_M00_AXI_ARVALID),
        .M00_AXI_awaddr(DUT_M00_AXI_AWADDR),
        .M00_AXI_awburst(DUT_M00_AXI_AWBURST),
        .M00_AXI_awcache(DUT_M00_AXI_AWCACHE),
        .M00_AXI_awid(DUT_M00_AXI_AWID),
        .M00_AXI_awlen(DUT_M00_AXI_AWLEN),
        .M00_AXI_awlock(DUT_M00_AXI_AWLOCK),
        .M00_AXI_awprot(DUT_M00_AXI_AWPROT),
        .M00_AXI_awqos(DUT_M00_AXI_AWQOS),
        .M00_AXI_awready(/*DUT_M00_AXI_AWREADY*/1),
        .M00_AXI_awregion(DUT_M00_AXI_AWREGION),
        .M00_AXI_awsize(DUT_M00_AXI_AWSIZE),
        .M00_AXI_awuser(DUT_M00_AXI_AWUSER),
        .M00_AXI_awvalid(DUT_M00_AXI_AWVALID),
        .M00_AXI_bid(/*DUT_M00_AXI_BID*/0),
        .M00_AXI_bready(DUT_M00_AXI_BREADY),
        .M00_AXI_bresp(/*DUT_M00_AXI_BRESP*/0),
        .M00_AXI_bvalid(/*DUT_M00_AXI_BVALID*/0),
        .M00_AXI_rdata(/*DUT_M00_AXI_RDATA*/0),
        .M00_AXI_rid(/*DUT_M00_AXI_RID*/0),
        .M00_AXI_rlast(/*DUT_M00_AXI_RLAST*/0),
        .M00_AXI_rready(DUT_M00_AXI_RREADY),
        .M00_AXI_rresp(/*DUT_M00_AXI_RRESP*/0),
        .M00_AXI_rvalid(/*DUT_M00_AXI_RVALID*/0),
        .M00_AXI_wdata(DUT_M00_AXI_WDATA),
        .M00_AXI_wlast(DUT_M00_AXI_WLAST),
        .M00_AXI_wready(/*DUT_M00_AXI_WREADY*/0),
        .M00_AXI_wstrb(DUT_M00_AXI_WSTRB),
        .M00_AXI_wvalid(DUT_M00_AXI_WVALID),
        .SrcMacAddress_V_0(SrcMacAddress_V_0_1),
        .axis_clk(axis_clk_0_1),
        .axis_rst_n(axis_rst_n_0_1),
        .dataIn_tdata(/*axis_switch_1_M00_AXIS_TDATA*/0),
        .dataIn_tkeep(/*axis_switch_1_M00_AXIS_TKEEP*/0),
        .dataIn_tlast(/*axis_switch_1_M00_AXIS_TLAST*/0),
        .dataIn_tready(axis_switch_1_M00_AXIS_TREADY),
        .dataIn_tvalid(/*axis_switch_1_M00_AXIS_TVALID*/0),
        .dataOut_tdata(mac_header_add_0_dataOut_TDATA),
        .dataOut_tkeep(mac_header_add_0_dataOut_TKEEP),
        .dataOut_tlast(mac_header_add_0_dataOut_TLAST),
        .dataOut_tready(/*mac_header_add_0_dataOut_TREADY*/1),
        .dataOut_tvalid(mac_header_add_0_dataOut_TVALID),
        .myMacAddress_V_0(myMacAddress_V_0_1),
        .sys_clk(sys_clk_0_1),
        .sys_rst_n(sys_rst_n_0_1),
        .gen_wr_agen_word_narrowmem_reg_write_disable_0(gen_wr_agen_word_narrowmem_reg_write_disable_0),
        .gen_wr_agen_word_narrowmem_reg_write_disable_1(gen_wr_agen_word_narrowmem_reg_write_disable_1),
        .gen_wr_agen_word_narrowmem_reg_bram_0_write_disable_2(gen_wr_agen_word_narrowmem_reg_bram_0_write_disable_2),
        .gen_wr_agen_word_narrowmem_reg_bram_0_write_disable_3(gen_wr_agen_word_narrowmem_reg_bram_0_write_disable_3),
        .gen_wr_agen_word_narrowmem_reg_0_write_disable_4(gen_wr_agen_word_narrowmem_reg_0_write_disable_4),
        .gen_wr_agen_word_narrowmem_reg_1_write_disable_5(gen_wr_agen_word_narrowmem_reg_1_write_disable_5),
        .gen_wr_agen_word_narrowmem_reg_2_write_disable_6(gen_wr_agen_word_narrowmem_reg_2_write_disable_6),
        .gen_wr_agen_word_narrowmem_reg_3_write_disable_7(gen_wr_agen_word_narrowmem_reg_3_write_disable_7),
        .gen_wr_agen_word_narrowmem_reg_4_write_disable_8(gen_wr_agen_word_narrowmem_reg_4_write_disable_8),
        .gen_wr_agen_word_narrowmem_reg_5_write_disable_9(gen_wr_agen_word_narrowmem_reg_5_write_disable_9),
        .gen_wr_agen_word_narrowmem_reg_6_write_disable_10(gen_wr_agen_word_narrowmem_reg_6_write_disable_10),
        .gen_wr_agen_word_narrowmem_reg_7_write_disable_11(gen_wr_agen_word_narrowmem_reg_7_write_disable_11),
        .gen_wr_agen_word_narrowmem_reg_0_write_disable_13(gen_wr_agen_word_narrowmem_reg_0_write_disable_13),
        .gen_wr_agen_word_narrowmem_reg_0_write_disable_15(gen_wr_agen_word_narrowmem_reg_0_write_disable_15),
        .gen_wr_agen_word_narrowmem_reg_1_write_disable_16(gen_wr_agen_word_narrowmem_reg_1_write_disable_16),
        .gen_wr_agen_word_narrowmem_reg_2_write_disable_17(gen_wr_agen_word_narrowmem_reg_2_write_disable_17),
        .gen_wr_agen_word_narrowmem_reg_3_write_disable_18(gen_wr_agen_word_narrowmem_reg_3_write_disable_18),
        .gen_wr_agen_word_narrowmem_reg_4_write_disable_19(gen_wr_agen_word_narrowmem_reg_4_write_disable_19),
        .gen_wr_agen_word_narrowmem_reg_5_write_disable_20(gen_wr_agen_word_narrowmem_reg_5_write_disable_20),
        .gen_wr_agen_word_narrowmem_reg_6_write_disable_21(gen_wr_agen_word_narrowmem_reg_6_write_disable_21),
        .gen_wr_agen_word_narrowmem_reg_write_disable_23(gen_wr_agen_word_narrowmem_reg_write_disable_23),
        .gen_wr_agen_word_narrowmem_reg_write_disable_24(gen_wr_agen_word_narrowmem_reg_write_disable_24),
        .gen_wr_agen_word_narrowmem_reg_bram_0_write_disable_25(gen_wr_agen_word_narrowmem_reg_bram_0_write_disable_25),
        .gen_wr_agen_word_narrowmem_reg_bram_0_write_disable_26(gen_wr_agen_word_narrowmem_reg_bram_0_write_disable_26),
        .gen_wr_agen_word_narrowmem_reg_0_write_disable_27(gen_wr_agen_word_narrowmem_reg_0_write_disable_27),
        .gen_wr_agen_word_narrowmem_reg_1_write_disable_28(gen_wr_agen_word_narrowmem_reg_1_write_disable_28),
        .gen_wr_agen_word_narrowmem_reg_2_write_disable_29(gen_wr_agen_word_narrowmem_reg_2_write_disable_29),
        .gen_wr_agen_word_narrowmem_reg_3_write_disable_30(gen_wr_agen_word_narrowmem_reg_3_write_disable_30),
        .gen_wr_agen_word_narrowmem_reg_4_write_disable_31(gen_wr_agen_word_narrowmem_reg_4_write_disable_31),
        .gen_wr_agen_word_narrowmem_reg_5_write_disable_32(gen_wr_agen_word_narrowmem_reg_5_write_disable_32),
        .gen_wr_agen_word_narrowmem_reg_6_write_disable_33(gen_wr_agen_word_narrowmem_reg_6_write_disable_33),
        .gen_wr_agen_word_narrowmem_reg_7_write_disable_34(gen_wr_agen_word_narrowmem_reg_7_write_disable_34),
        .gen_wr_agen_word_narrowmem_reg_0_write_disable_36(gen_wr_agen_word_narrowmem_reg_0_write_disable_36),
        .gen_wr_agen_word_narrowmem_reg_0_write_disable_38(gen_wr_agen_word_narrowmem_reg_0_write_disable_38),
        .gen_wr_agen_word_narrowmem_reg_1_write_disable_39(gen_wr_agen_word_narrowmem_reg_1_write_disable_39),
        .gen_wr_agen_word_narrowmem_reg_2_write_disable_40(gen_wr_agen_word_narrowmem_reg_2_write_disable_40),
        .gen_wr_agen_word_narrowmem_reg_3_write_disable_41(gen_wr_agen_word_narrowmem_reg_3_write_disable_41),
        .gen_wr_agen_word_narrowmem_reg_4_write_disable_42(gen_wr_agen_word_narrowmem_reg_4_write_disable_42),
        .gen_wr_agen_word_narrowmem_reg_5_write_disable_43(gen_wr_agen_word_narrowmem_reg_5_write_disable_43),
        .gen_wr_agen_word_narrowmem_reg_6_write_disable_44(gen_wr_agen_word_narrowmem_reg_6_write_disable_44));
  
  memcached_rst_ddr4_0_150M_0 rst_ddr4_0_150M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(reset_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ddr4_0_150M_peripheral_aresetn),
        .slowest_sync_clk(ddr4_0_addn_ui_clkout1));
  memcached_rst_ddr4_0_300M_0 rst_ddr4_0_300M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ddr4_0_c0_ddr4_ui_clk_sync_rst),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ddr4_0_300M_peripheral_aresetn),
        .slowest_sync_clk(ddr4_0_c0_ddr4_ui_clk));
endmodule