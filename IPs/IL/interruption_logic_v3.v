
module interruption_logic(
`ifdef MODEL_TECH   
	input clk_en,
	input [31:0] breakpoint,
	input clk_step,
`endif
	input sys_clk,
	input sys_reset,
	output task_clk,
	(* dont_touch = "true" *) output reg break
);

	reg [31:0] counter;
	reg step;
	reg clk_step_delay;

`ifndef MODEL_TECH
	wire clk_en;
	wire [31:0] breakpoint;
	wire clk_step;
`endif

`ifndef MODEL_TECH
	il_vio_4 il_vio (
		.clk(sys_clk),
		.probe_out0(breakpoint),
		.probe_out1(clk_en),
		.probe_out2(clk_step),
		.probe_out3()
	);
`endif

	always @(posedge sys_clk)
	begin
		if (sys_reset)
		begin
			step <= 0;
			clk_step_delay <= 0;
		end
		else 
		begin
			clk_step_delay <= clk_step;
			if (clk_step & !clk_step_delay)
				step <= 1;
			else if (step)
				step <= 0;
		end
	end

	always @(posedge sys_clk)
	begin
		if (sys_reset)
		begin
			counter <= 0;
			break <= 0;
		end
		else if (clk_en)
		begin
			if (counter == breakpoint)
			begin
				break <= 1'b1;
			end
			else
			begin
				counter <= counter + 1;
				break <= 1'b0;
			end
		end
	end

	BUFGCE inst_bufgce (
		.O(task_clk),
		.I(sys_clk),
		.CE((clk_en & ~break) | step)
	);

endmodule