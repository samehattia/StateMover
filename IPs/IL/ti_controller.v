
module ti_controller #(
	/* Module Parameters */
	parameter NUM_TI_WRAPPERS = 1
)
(
	// system signals
	input wire clk,
	input wire rst,

	// ti request and grant
	input wire ti_req,
	output reg ti_gnt,

	// stop request and ack
	output reg [NUM_TI_WRAPPERS-1:0] stop_req,
	input wire [NUM_TI_WRAPPERS-1:0] stop_ack,

	// control signals
	output wire decouple,
	input wire pr_done
);

reg decouple_r;

/* FSM sates */
localparam IDLE = 2'b00;
localparam WAIT = 2'b01;
localparam STALL1 = 2'b10;
localparam STALL2 = 2'b11;

reg [1:0] state;
reg [1:0] next_state;

/* state update */
always @(posedge clk) begin
	if (rst) begin
		state <= IDLE;
	end
	else begin
		state <= next_state;
	end	
end

/* next_state logic */
always @(*) begin

	next_state = state;
	
	case (state)
		IDLE: begin
			if (ti_req) 
				next_state = WAIT;
		end

		WAIT: begin
			if (&stop_ack) 
				next_state = STALL1;
		end

		STALL1: begin
			if (!ti_req)
				next_state = STALL2;
			if (pr_done) 
				next_state = IDLE;
		end

		STALL2: begin
			if (pr_done) 
				next_state = IDLE;
		end

		default: begin
		end
	endcase
end

/* output logic */
always @(*) begin

	stop_req = {NUM_TI_WRAPPERS{1'b0}};
	ti_gnt = 1'b0;
	decouple_r = 1'b0;

	case (state)
		IDLE: begin
			stop_req = {NUM_TI_WRAPPERS{1'b0}};
			ti_gnt = 1'b0;
			decouple_r = 1'b0;
		end

/* Stop Requests Generation */
/* Generate stop requests to all the wrappers once a ti request is asserted   */
/* Deassert all the stop requests once a ti request is deasserted             */
/* Requirement: the ti request is kept high till the ti grant is asserted     */
		WAIT: begin
			stop_req = {NUM_TI_WRAPPERS{1'b1}};
		end

/* TI Grant Generation */
/* Grant the ti request after all stop acks are received from the wrappers    */
/* Deassert the ti grant once a ti request is deasserted                      */
/* Requirement: the ti request is kept high till the ti grant is asserted     */

/* Decouple Signal Generation */
/* Once all the stop acks are received, the decoupler is put in action to     */
/* prevent spurious signals of the PR process                                 */
/* The decoupler is stopped once the PR process is completed                  */
		STALL1: begin
			stop_req = {NUM_TI_WRAPPERS{1'b1}};
			ti_gnt = 1'b1;
			decouple_r = 1'b1;
		end

		STALL2: begin
			decouple_r = 1'b1;
		end

		default: begin
		end
	endcase
end

assign decouple = decouple_r & !pr_done;

endmodule