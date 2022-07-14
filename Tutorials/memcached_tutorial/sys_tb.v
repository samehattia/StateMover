`timescale 1ps / 1ps

module sys_tb;

  /**
   * Local Parameters 
   */
  localparam CLK_PERIOD = 3332; // 3332ps 3.332ns 300MHz

  /**
   * Signals 
   */
  wire sys_clk_n;
  reg sys_clk_p;
  reg sys_reset;
  wire axis_clk;

  wire  ddr4_sdram_act_n;
  wire  [16:0] ddr4_sdram_adr;
  wire  [1:0] ddr4_sdram_ba;
  wire  ddr4_sdram_bg;
  wire  ddr4_sdram_ck_c;
  wire  ddr4_sdram_ck_t;
  wire  ddr4_sdram_cke;
  wire  ddr4_sdram_cs_n;
  wire [7:0] ddr4_sdram_dm_n;
  wire [63:0] ddr4_sdram_dq;
  wire [7:0] ddr4_sdram_dqs_c;
  wire [7:0] ddr4_sdram_dqs_t;
  wire  ddr4_sdram_odt;
  wire  ddr4_sdram_reset_n;

  wire pass;
  wire canCompare; 

  wire [7:0] rx_axis_tdata;
  wire rx_axis_tvalid;
  wire rx_axis_tlast;
  wire rx_axis_tready;

  wire [7:0] tx_axis_tdata;
  wire tx_axis_tvalid;
  wire tx_axis_tlast;
  wire tx_axis_tready;

  /**
   * ILC Procedures V6
   */
  reg save;
  reg restore;
  reg init;

  reg load;
  reg dump;

  reg ti_req;
  wire ti_gnt;
  reg pr_done;
  reg clk_en;
  reg clk_step;
  reg clk_step_1;
  reg [31:0] breakpoint;
  wire done_1;

  initial begin
    load = 1'b0;
    dump = 1'b0;
  end

  initial begin
    ti_req = 1'b0;
    pr_done = 1'b0;
    restore = 1'b0;
    save = 1'b0;
    clk_en = 1'b1;
    clk_step = 1'b0;
    clk_step_1 = 1'b0;
    breakpoint = 32'hFFFFFFFF;

    forever begin
      @(posedge load or posedge dump);

      if (load) begin
        /* Request Task Interruption */
        ti_req  = 1'b1;
        $display("%t: %m: TI REQUEST ASSERTED", $time);

        /* Wait till the TI is granted */
        // wait(ti_gnt);
        clk_en = 0;
        $display("%t: %m: TI REQUEST GRANTED", $time);

        /* Restore the state */
        #(CLK_PERIOD * 2);
        // $system("set_replay_flag_2writebacks.py hw_state.dump 1");
        restore = 1'b1; // calls restore_hardware_state() in CSR-SIM
        #(CLK_PERIOD * 2);
        clk_step_1 = 1'b1;
        restore = 1'b0;
        #(CLK_PERIOD * 2);
        clk_step_1 = 1'b0;
        #(CLK_PERIOD * 30);

        /* Resume the Task */
        #(CLK_PERIOD * 2);
        ti_req  = 1'b0;
        pr_done = 1'b1;
        clk_en = 1'b1;

        /* Disable signals */
        pr_done = 1'b0;
        restore = 1'b0;
      end

      else if (dump) begin
        /* Request Task Interruption */
        ti_req  = 1'b1;
        $display("%t: %m: TI REQUEST ASSERTED", $time);

        /* Wait till the TI is granted */
        //wait(ti_gnt);
        $display("%t: %m: TI REQUEST GRANTED", $time);
        clk_en = 0;

        /* Save the state */
        #(CLK_PERIOD * 2);
        save = 1'b1; // calls dump_simulation_state() in CSR-SIM
        /* Clock for two additional cycles and do another dump */
        #(CLK_PERIOD * 2);
        clk_step = 1'b1;
        save = 1'b0;
        #(CLK_PERIOD * 2);
        clk_step = 1'b0;
        $system("mv sim_state.dump sim_state.dump.0");
        #(CLK_PERIOD * 2);
        clk_step = 1'b1;
        #(CLK_PERIOD * 2);
        clk_step = 1'b0;
        save = 1'b1; // calls dump_simulation_state() in CSR-SIM
        $system("mv sim_state.dump sim_state.dump.2");
        #(CLK_PERIOD * 2);
        clk_step = 1'b1;
        save = 1'b0;
        #(CLK_PERIOD * 2);
        clk_step = 1'b0;
        save = 1'b1; // calls dump_simulation_state() in CSR-SIM
        $system("mv sim_state.dump sim_state.dump.3");
        #(CLK_PERIOD * 2);
        clk_step = 1'b1;
        save = 1'b0;
        #(CLK_PERIOD * 2);
        clk_step = 1'b0;
        save = 1'b1; // calls dump_simulation_state() in CSR-SIM
        $system("mv sim_state.dump sim_state.dump.4");
        $system("generate_state_file_multiple_readbacks.py sim_state.dump.0 sim_state.dump.2 sim_state.dump.3 sim_state.dump.4");

        /* Resume the Task */
        #(CLK_PERIOD * 2);
        ti_req  = 1'b0;
        pr_done = 1'b1;
        clk_en = 1'b1;

        /* Disable signals */
        pr_done = 1'b0;
        save = 1'b0;
      end

    end
  end

  /**
   * Generate clock
   */
  initial
    sys_clk_p = 1'b0;

  always
    sys_clk_p = #(CLK_PERIOD/2.0) ~sys_clk_p;

  assign sys_clk_n = ~sys_clk_p;

  /**
   * Generate reset
   */
  initial begin
    $display("%t: %m: Starting testbench", $time);
    $monitor("%t: %m: System reset detected: %0d", $time, sys_reset);
    sys_reset = 1'b1;
    #(CLK_PERIOD*500);
    sys_reset = 1'b0;
  end

  /**
   * Check Result
   */
  always @(posedge sys_clk_p)
  begin
      if (done_1) begin
        $display("%t: %m: Test Passed", $time);
        $stop();
      end
  end  

  top uut (
    .default_sysclk_300_clk_n(sys_clk_n),
    .default_sysclk_300_clk_p(sys_clk_p),

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

    .reset(sys_reset),
    
    .clk_en(clk_en),
    .breakpoint(breakpoint),
    .clk_step(clk_step),
    .clk_step_1(clk_step_1),
    .ti_req(ti_req),
    .pr_done(pr_done),

    .axis_clk(axis_clk),
    .rx_axis_tdata(rx_axis_tdata),
    .rx_axis_tvalid(rx_axis_tvalid),
    .rx_axis_tlast(rx_axis_tlast),
    .rx_axis_tready(rx_axis_tready),
    .tx_axis_tdata(tx_axis_tdata),
    .tx_axis_tvalid(tx_axis_tvalid),
    .tx_axis_tlast(tx_axis_tlast),
    .tx_axis_tready(tx_axis_tready)
  );

    /**
   * DRAM Model Instantiation
   */  
  dram_tb dram_model_tb (
    .c0_ddr4_act_n(ddr4_sdram_act_n),
    .c0_ddr4_adr(ddr4_sdram_adr),
    .c0_ddr4_ba(ddr4_sdram_ba),
    .c0_ddr4_bg(ddr4_sdram_bg),
    .c0_ddr4_cke(ddr4_sdram_cke),
    .c0_ddr4_odt(ddr4_sdram_odt),
    .c0_ddr4_cs_n(ddr4_sdram_cs_n),
    .c0_ddr4_ck_t_int(ddr4_sdram_ck_t),
    .c0_ddr4_ck_c_int(ddr4_sdram_ck_c),
    .c0_ddr4_reset_n(ddr4_sdram_reset_n),

    .c0_ddr4_dm_dbi_n(ddr4_sdram_dm_n),
    .c0_ddr4_dq(ddr4_sdram_dq),
    .c0_ddr4_dqs_c(ddr4_sdram_dqs_c),
    .c0_ddr4_dqs_t(ddr4_sdram_dqs_t)
  );

  wire input_to_mcd_tvalid_0, input_to_mcd_tvalid_1;
  wire input_to_mcd_tready_0, input_to_mcd_tready_1;
  wire [63:0] input_to_mcd_tdata_0, input_to_mcd_tdata_1;
  wire [111:0] input_to_mcd_tuser_0, input_to_mcd_tuser_1;
  wire [7:0] input_to_mcd_tkeep_0, input_to_mcd_tkeep_1;
  wire input_to_mcd_tlast_0, input_to_mcd_tlast_1;

  wire mcd_to_output_tvalid_0, mcd_to_output_tvalid_1;
  wire mcd_to_output_tready_0, mcd_to_output_tready_1;
  wire [63:0] mcd_to_output_tdata_0, mcd_to_output_tdata_1;
  wire [111:0] mcd_to_output_tuser_0, mcd_to_output_tuser_1;
  wire [7:0] mcd_to_output_tkeep_0, mcd_to_output_tkeep_1;
  wire mcd_to_output_tlast_0, mcd_to_output_tlast_1;

  wire [7:0]axis_dwidth_converter_0_M_AXIS_TDATA;
  wire [0:0]axis_dwidth_converter_0_M_AXIS_TKEEP;
  wire axis_dwidth_converter_0_M_AXIS_TLAST;
  wire axis_dwidth_converter_0_M_AXIS_TREADY;
  wire [13:0]axis_dwidth_converter_0_M_AXIS_TUSER;
  wire axis_dwidth_converter_0_M_AXIS_TVALID;

  wire [63:0]axis_dwidth_converter_1_M_AXIS_TDATA;
  wire [7:0]axis_dwidth_converter_1_M_AXIS_TKEEP;
  wire axis_dwidth_converter_1_M_AXIS_TLAST;
  wire axis_dwidth_converter_1_M_AXIS_TREADY;
  wire axis_dwidth_converter_1_M_AXIS_TVALID;

  wire [63:0]mac_header_add_0_dataOut_TDATA;
  wire [7:0]mac_header_add_0_dataOut_TKEEP;
  wire [0:0]mac_header_add_0_dataOut_TLAST;
  wire mac_header_add_0_dataOut_TREADY;
  wire [111:0]mac_header_add_0_dataOut_TUSER;
  wire mac_header_add_0_dataOut_TVALID;

  parameter SRCMACADDR_0 = 48'h25DA924537D0; // D0:37:45:92:DA:25 //hE59D02350B00
  parameter DESTMACADDR_0 = 48'h020100350A00; // 00:0A:35:00:01:02; //hE59D02350A00

  kvs_tbDriverHDLNode #(
    .PKT_FILENAME("pkt/ALLSEQS_R1-pkt.in.txt"),
    .SRCMACADDR(SRCMACADDR_0),
    .DESTMACADDR(DESTMACADDR_0)
  ) myReader_1 (
    .clk              (axis_clk),
    .rst              (sys_reset),
    .udp_out_ready    (input_to_mcd_tready_1),
    .udp_out_valid    (input_to_mcd_tvalid_1),
    .udp_out_keep     (input_to_mcd_tkeep_1),
    .udp_out_last     (input_to_mcd_tlast_1),
    .udp_out_user     (input_to_mcd_tuser_1),
    .udp_out_data     (input_to_mcd_tdata_1)
  );

  kvs_tbMonitorHDLNode #(
    .PKT_FILENAME("pkt.out.b.txt"), .GLD_FILENAME("pkt/ALLSEQS-pkt.out.txt"), .GLD_LENGTH(43578) //16725 43578
  ) myMonitor_1 ( 
    .clk              (axis_clk),
    .rst              (sys_reset),
    .udp_in_ready     (mcd_to_output_tready_1),
    .udp_in_valid     (mcd_to_output_tvalid_1),
    .udp_in_keep      (mcd_to_output_tkeep_1),
    .udp_in_user      (mcd_to_output_tuser_1),
    .udp_in_last      (mcd_to_output_tlast_1),
    .udp_in_data      (mcd_to_output_tdata_1),
    .done             (done_1)
  );

  memcached_mac_header_add_0_0 mac_header_add_0
       (.DestMacAddress_V(DESTMACADDR_0),
        .SrcMacAddress_V(SRCMACADDR_0),

        .ap_clk(axis_clk),
        .ap_rst_n(~sys_reset),

        .dataIn_TDATA(input_to_mcd_tdata_1),
        .dataIn_TKEEP(input_to_mcd_tkeep_1),
        .dataIn_TLAST(input_to_mcd_tlast_1),
        .dataIn_TREADY(input_to_mcd_tready_1),
        .dataIn_TUSER(input_to_mcd_tuser_1),
        .dataIn_TVALID(input_to_mcd_tvalid_1),

        .dataOut_TDATA(mac_header_add_0_dataOut_TDATA),
        .dataOut_TKEEP(mac_header_add_0_dataOut_TKEEP),
        .dataOut_TLAST(mac_header_add_0_dataOut_TLAST),
        .dataOut_TREADY(mac_header_add_0_dataOut_TREADY),
        .dataOut_TUSER(mac_header_add_0_dataOut_TUSER),
        .dataOut_TVALID(mac_header_add_0_dataOut_TVALID));

  memcached_mac_header_strip_0_0 mac_header_strip_0
       (.IPdataOut_TDATA(mcd_to_output_tdata_1),
        .IPdataOut_TKEEP(mcd_to_output_tkeep_1),
        .IPdataOut_TLAST(mcd_to_output_tlast_1),
        .IPdataOut_TREADY(mcd_to_output_tready_1),
        .IPdataOut_TUSER(mcd_to_output_tuser_1),
        .IPdataOut_TVALID(mcd_to_output_tvalid_1),

        .ap_clk(axis_clk),
        .ap_rst_n(~sys_reset),

        .dataIn_TDATA(axis_dwidth_converter_1_M_AXIS_TDATA),
        .dataIn_TKEEP(axis_dwidth_converter_1_M_AXIS_TKEEP),
        .dataIn_TLAST(axis_dwidth_converter_1_M_AXIS_TLAST),
        .dataIn_TREADY(axis_dwidth_converter_1_M_AXIS_TREADY),
        .dataIn_TUSER({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dataIn_TVALID(axis_dwidth_converter_1_M_AXIS_TVALID),

        .myMacAddress_V(SRCMACADDR_0));

    memcached_axis_dwidth_converter_0_0 axis_dwidth_converter_0
       (.aclk(axis_clk),
        .aresetn(~sys_reset),

        .m_axis_tdata(rx_axis_tdata),
        .m_axis_tkeep(),
        .m_axis_tlast(rx_axis_tlast),
        .m_axis_tready(rx_axis_tready),
        .m_axis_tvalid(rx_axis_tvalid),

        .s_axis_tdata(mac_header_add_0_dataOut_TDATA),
        .s_axis_tkeep(mac_header_add_0_dataOut_TKEEP),
        .s_axis_tlast(mac_header_add_0_dataOut_TLAST),
        .s_axis_tready(mac_header_add_0_dataOut_TREADY),
        .s_axis_tvalid(mac_header_add_0_dataOut_TVALID));

  memcached_axis_width_upsizer_0_0 axis_width_upsizer_0
       (.ap_clk(axis_clk),
        .ap_rst_n(~sys_reset),

        .data_out_TDATA(axis_dwidth_converter_1_M_AXIS_TDATA),
        .data_out_TKEEP(axis_dwidth_converter_1_M_AXIS_TKEEP),
        .data_out_TLAST(axis_dwidth_converter_1_M_AXIS_TLAST),
        .data_out_TREADY(axis_dwidth_converter_1_M_AXIS_TREADY),
        .data_out_TVALID(axis_dwidth_converter_1_M_AXIS_TVALID),

        .data_in_TDATA(tx_axis_tdata),
        .data_in_TLAST(tx_axis_tlast),
        .data_in_TREADY(tx_axis_tready),
        .data_in_TVALID(tx_axis_tvalid));

endmodule