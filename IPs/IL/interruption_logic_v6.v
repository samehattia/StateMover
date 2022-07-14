
module interruption_logic #(
	parameter NUM_TI_WRAPPERS = 1
)
(
`ifdef MODEL_TECH   
	input clk_en,
	input [31:0] breakpoint,
	input clk_step,
	input clk_step_1,
	input ti_req,
	input pr_done,
`endif
	input sys_clk,
	input sys_reset,
	output task_clk,
	input clk_2,
	output clk_2_bufg,
	/*(* dont_touch = "true" *) output clk_1,
	(* dont_touch = "true" *) output clk_2,
	(* dont_touch = "true" *) output clk_3,
	(* dont_touch = "true" *) output clk_4,*/
	output reg [NUM_TI_WRAPPERS-1:0] stop_req,
	input [NUM_TI_WRAPPERS-1:0] stop_ack,
	output reg decouple,
	input user_signal
);

	reg [31:0] counter;
	reg step;
	reg clk_step_delay;

	reg break;

	reg clk_step_delay_1;
	reg step_1;
	reg step_2;
	reg step_3;
	reg step_4;
	reg step_5;
	reg step_6;

	reg clk_en_r;

`ifndef MODEL_TECH
	wire clk_en;
	wire [31:0] breakpoint;
	wire clk_step;
	wire clk_step_2;

	wire ti_req;
	wire pr_done;
`endif

`ifndef MODEL_TECH
	il_vio_6 il_vio (
		.clk(sys_clk),
		.probe_out0(breakpoint),
		.probe_out1(clk_en),
		.probe_out2(clk_step),
		.probe_out3(clk_step_1),
		.probe_out4(ti_req),
		.probe_out5(pr_done)
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
		else if (clk_en_r)
		begin
			if (counter == breakpoint && counter != 32'hFFFF_FFFF)
			begin
				break <= 1'b1;
			end
			else
			begin
				if (user_signal)
					counter <= counter + 1;
				break <= 1'b0;
			end
		end
	end

	BUFGCE inst_bufgce (
		.O(task_clk),
		.I(sys_clk),
		.CE((clk_en_r & ~decouple) | step)
	);

	BUFGCE inst_bufgce_2 (
		.O(clk_2_bufg),
		.I(clk_2),
		.CE(clk_en_r & ~decouple)
	);

	always @(posedge sys_clk)
	begin
		if (sys_reset)
		begin
			step_1 <= 0;
			step_2 <= 0;
			step_3 <= 0;
			step_4 <= 0;
			step_5 <= 0;
			step_6 <= 0;
			clk_step_delay_1 <= 0;
		end
		else 
		begin
			clk_step_delay_1 <= clk_step_1;
			if (clk_step_1 & !clk_step_delay_1)
			begin
				step_1 <= 1;
				step_2 <= 1;
				step_3 <= 1;
				step_4 <= 1;
				step_5 <= 1;
				step_6 <= 1;
			end
			else begin
				if (step_1)
					step_1 <= 0;
				step_2 <= step_1;
				step_3 <= step_2;
				step_4 <= step_3;
				step_5 <= step_4;
				step_6 <= step_5;
			end
		end
	end

	/*(* dont_touch = "true" *) BUFGCE inst_bufgce_1 (
		.O(clk_1),
		.I(sys_clk),
		.CE((clk_en & ~break) | step | step_1)
	);

	(* dont_touch = "true" *) BUFGCE inst_bufgce_2 (
		.O(clk_2),
		.I(sys_clk),
		.CE((clk_en & ~break) | step | step_2)
	);

	(* dont_touch = "true" *) BUFGCE inst_bufgce_3 (
		.O(clk_3),
		.I(sys_clk),
		.CE((clk_en & ~break) | step | step_5)
	);

	(* dont_touch = "true" *) BUFGCE inst_bufgce_4 (
		.O(clk_4),
		.I(sys_clk),
		.CE((clk_en & ~break) | step | step_6)
	);*/

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