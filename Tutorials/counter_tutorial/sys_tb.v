`timescale 1ps / 1ps

module sys_tb;

  /**
   * Local Parameters 
   */
  localparam CLK_PERIOD = 8000;

  /**
   * Signals 
   */
  wire sys_clk_n;
  reg sys_clk_p;
  reg sys_reset;

  /**
   * ILC Procedures V1
   */
  reg save;
  reg restore;
  reg init;

  reg load;
  reg dump;

  reg clk_en;
  reg [31:0] breakpoint;

  initial begin
    load = 1'b0;
    dump = 1'b0;
  end

  initial begin
    restore = 1'b0;
    save = 1'b0;
    clk_en = 1'b1;
    breakpoint = 32'hFFFFFFFF;

    forever begin
      @(posedge load or posedge dump);

      if (load) begin
        /* Request Task Interruption */
        clk_en = 0;

        /* Restore the state */
        #(CLK_PERIOD * 2);
        restore = 1'b1; // calls restore_hardware_state() in CSR-SIM

        /* Resume the Task */
        #(CLK_PERIOD * 2);
        clk_en = 1'b1;

        /* Disable signals */
        restore = 1'b0;
      end

      else if (dump) begin
        /* Request Task Interruption */
        clk_en = 0;

        /* Save the state */
        #(CLK_PERIOD * 2);
        save = 1'b1; // calls dump_simulation_state() in CSR-SIM

        /* Resume the Task */
        #(CLK_PERIOD * 2);
        clk_en = 1'b1;

        /* Disable signals */
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

  top uut (
    .clk_p(sys_clk_p),
    .clk_n(sys_clk_n),
    
    .reset(sys_reset),
    .clk_en(clk_en),
    .breakpoint(breakpoint)
  );

endmodule