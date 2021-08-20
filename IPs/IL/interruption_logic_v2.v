
module interruption_logic #(
	parameter NUM_TI_WRAPPERS = 1
)
(
`ifdef MODEL_TECH   
	input clk_en,
	input [31:0] breakpoint,
	input ti_req,
	input pr_done,
`endif
	input sys_clk,
	input sys_reset,
	output task_clk,
	output reg [NUM_TI_WRAPPERS-1:0] stop_req,
	input [NUM_TI_WRAPPERS-1:0] stop_ack,
	output reg decouple
);

	reg [31:0] counter;
	reg clk_en_r;
	
	reg break;

`ifndef MODEL_TECH
	wire clk_en;
	wire [31:0] breakpoint;

	wire ti_req;
	wire pr_done;
`endif

`ifndef MODEL_TECH
	il_vio_4 il_vio (
		.clk(sys_clk),
		.probe_out0(breakpoint),
		.probe_out1(clk_en),
		.probe_out2(ti_req),
		.probe_out3(pr_done)
	);
`endif

	always @(posedge sys_clk)
	begin
		if (sys_reset)
		begin
			counter <= 0;
			break <= 0;
		end
		else if (clk_en_r)
		begin
			if (counter == breakpoint && counter != 32'hFFFF_FFFF)
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
		.CE(clk_en_r & ~decouple)
	);

	// register stop_req and decouple and clk_en_r
	wire [NUM_TI_WRAPPERS-1:0] stop_req_s;
	wire decouple_s;

	always @(posedge sys_clk)
	begin
		if (sys_reset)
		begin
			stop_req <= 0;
			decouple <= 0;
			clk_en_r <= 0;
		end
		else 
		begin
			stop_req <= stop_req_s;
			decouple <= decouple_s;
			clk_en_r <= clk_en;
		end
	end

	ti_controller #(
		.NUM_TI_WRAPPERS(NUM_TI_WRAPPERS)
	) tic (
		.clk(sys_clk),
		.rst(sys_reset),
		.ti_req(break | ti_req),
		.ti_gnt(),
		.stop_req(stop_req_s),
		.stop_ack(stop_ack),
		.decouple(decouple_s),
		.pr_done(pr_done)
	);



endmodule