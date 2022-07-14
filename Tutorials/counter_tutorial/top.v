
module top(
  input clk_p,
  input clk_n,
  input reset,
   
`ifdef MODEL_TECH   
  input clk_en,
  input [31:0] breakpoint,
`endif

  output [7:0] count_out   // mapped to general purpose LEDs[4-7]
);

  wire gclk;
  IBUFGDS clkin1_buf (
    .O  (gclk), //clkin1
    .I  (clk_p),
    .IB (clk_n)
  );
  wire clk;

`ifndef MODEL_TECH
  wire clk_en;
  wire [31:0] breakpoint;
`endif

  // instantiate module count
  count inst_count (
    .rst       (reset),
    .clk       (clk),
    .clk_en    (1'b1),
    .count_out (count_out)
  );

  interruption_logic il (
`ifdef MODEL_TECH
    .clk_en(clk_en),
    .breakpoint(breakpoint),
`endif
    .sys_clk(gclk),
    .sys_reset(reset),
    .task_clk(clk)
  );

endmodule