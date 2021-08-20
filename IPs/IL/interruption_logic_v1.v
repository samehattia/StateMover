
module interruption_logic(
`ifdef MODEL_TECH   
	input clk_en,
	input [31:0] breakpoint,
`endif
	input sys_clk,
	input sys_reset,
	output task_clk
);

	reg [31:0] counter;
	reg break;

`ifndef MODEL_TECH
	wire clk_en;
	wire [31:0] breakpoint;
`endif

`ifndef MODEL_TECH
	il_vio_2 il_vio (
		.clk(sys_clk),
		.probe_out0(breakpoint),
		.probe_out1(clk_en)
	);
`endif

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
		.CE(clk_en & ~break)
	);

endmodule