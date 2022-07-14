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
        //wait(ti_gnt);
        clk_en = 0;
        $display("%t: %m: TI REQUEST GRANTED", $time);

        /* Restore the state */
        #(CLK_PERIOD * 2);
        //$system("set_replay_flag_2writebacks.py hw_state.dump 1");
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

endmodule