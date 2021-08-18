// -----------------------------------------------------------------------------
// Module Name: ti_axi_wrapper
// Description: A wrapper to be placed around MM AXI interface to provide safe
// task interruption.
// Details: Once a stop request is asserted, it allows all ongoing transactions 
// to complete, and prevents the master from generating more transactions. The 
// module also prevents excess write data to be sent on the write data channel
// when the CS request is asserted, and if an excess write data is already sent
// on the data channel before the request, it allows new write requests to occur
// to cover for the excess data.
//
// FIXME: If the master starts sending the data of a burst write and the stop 
// request is asserted before sending the write request itself, this write 
// request will be stopped since the w_strack depends on the LAST signal only.
// This a rare case, since when sending burst, the write data channel is usually
// behind the write address channel. To fix this issue if needed, you have to 
// count also the individual data writes inside the burst not only the last one.
// -----------------------------------------------------------------------------

module ti_axi_wrapper (
	// System Signals
	input wire clk,
	input wire rst,

	// Stop requests and acks
	input wire [1:0] stop_req,
	output wire [1:0] stop_ack,

	// MM AXI write channel
	input wire aw_valid,
	input wire aw_ready,

	input wire w_valid,
	input wire w_ready,
	input wire w_last,

	input wire b_valid,
	input wire b_ready,

	// MM AXI read channel
	input wire ar_valid,
	input wire ar_ready,

	input wire r_valid,
	input wire r_ready,
	input wire r_last,

	// Overwritten channels
	output wire aw_ready_out,
	output wire w_ready_out,
	output wire ar_ready_out,

	output wire aw_valid_out,
	output wire w_valid_out,
	output wire ar_valid_out
);

parameter TRACK_BITS = 5; // Support (2^TRACK_BITS) outstanding transactions. 
// The current maximum of outstanding transcations can be known from ACCEPTANCE and ISSUING parameters.
// Snn_WRITE_ACCEPTANCE 2 (1-32) Number of data-active Write transactions that each AXI SI slot can generate
// Snn_READ_ACCEPTANCE 2 (1-32) Number of active Read transactions that each AXI SI slot can generate
// Mnn_WRITE_ISSUING 4 (1-32) Number of data-active Write transactions that each AXI4 MI slot can generate
// Mnn_READ_ISSUING 4 (1-32) Number of active Read transactions that each AXI4 MI slot can generate
// Maximum Burst Length 256 data beats

/* Internal Signals */
wire w_stop_req, r_stop_req;

/* Internal Registers */
reg w_stop_ack, r_stop_ack;

reg w_done, r_done;

reg [TRACK_BITS-1:0] w_track; // Number of outsatnding (ongoing) write requests
reg [TRACK_BITS:0] w_strack; // Number of ongoing write requests that their data have not completely written. (extra bit for sign)
reg [TRACK_BITS-1:0] r_track; // Number of outsatnding (ongoing) read requests

/* Signals Assignment */
assign w_stop_req = stop_req[0];
assign r_stop_req = stop_req[1];

assign stop_ack[0] = w_stop_ack;
assign stop_ack[1] = r_stop_ack;

/* (1) Stopping the write channel */

/* Stopping the data write W channel after all the required data are written  */
assign w_ready_out = w_stop_req & (w_strack == 0 || w_strack[TRACK_BITS]) ? 1'b0 : w_ready;
assign w_valid_out = w_stop_req & (w_strack == 0 || w_strack[TRACK_BITS]) ? 1'b0 : w_valid;

/* Tracking the write requests and write data */
always @(posedge clk) begin
	if (rst) begin
		w_strack <= 0;
	end
	else begin

		if (aw_valid_out & aw_ready_out & w_valid_out & w_ready_out & w_last) 
		begin
			w_strack <= w_strack;
		end
		else if (aw_valid_out & aw_ready_out) begin
			w_strack <= w_strack + 1'b1;
		end
		else if (w_valid_out & w_ready_out & w_last) begin
			w_strack <= w_strack - 1'b1;
		end

	end	
end

/* Stopping the address write AW channel after all required write requests are*/
/* sent to cover for already sent excess non-aligned data writes              */
assign aw_ready_out = w_stop_req & !w_strack[TRACK_BITS] & w_done ? 1'b0 : aw_ready;
assign aw_valid_out = w_stop_req & !w_strack[TRACK_BITS] & w_done ? 1'b0 : aw_valid;

/* Generating the w_done to make sure aw_valid is not forced down after being asserted */
always @(posedge clk) begin
	if (rst) begin
		w_done <= 1'b0;
	end
	else if (w_stop_req & !w_stop_ack) begin
		if (!(!aw_ready & aw_valid)) begin
			w_done <= 1'b1;
		end	
	end 
	else if (!w_stop_req) begin
		w_done <= 1'b0;
	end
end

/* Tracking the write requests and responses */
always @(posedge clk) begin
	if (rst) begin
		w_track <= 0;
	end
	else begin

		if (aw_valid_out & aw_ready_out & b_valid & b_ready) begin
			w_track <= w_track;
		end
		else if (aw_valid_out & aw_ready_out) begin
			w_track <= w_track + 1'b1;
		end
		else if (b_valid & b_ready) begin
			w_track <= w_track - 1'b1;
		end

	end	
end

/* Generating the ack signal */
always @(posedge clk) begin
	if (rst) begin
		w_stop_ack <= 1'b0;
	end
	else if (w_stop_req & !w_stop_ack) begin
		if (w_track == 0 && w_done) begin
			w_stop_ack <= 1'b1;
		end
	end 
	else if (!w_stop_req) begin
		w_stop_ack <= 1'b0;
	end
end


/* (2) Stopping the read Channel */

/* Stopping the address read AR channel */
assign ar_ready_out = r_stop_req & r_done ? 1'b0 : ar_ready;
assign ar_valid_out = r_stop_req & r_done ? 1'b0 : ar_valid;

/* Generating the r_done to make sure ar_valid is not forced down after being asserted */
always @(posedge clk) begin
	if (rst) begin
		r_done <= 1'b0;
	end
	else if (r_stop_req & !r_stop_ack) begin
		if (!(!ar_ready & ar_valid)) begin
			r_done <= 1'b1;
		end	
	end 
	else if (!r_stop_req) begin
		r_done <= 1'b0;
	end
end

/* Tracking the read requests and responses */
always @(posedge clk) begin
	if (rst) begin
		r_track <= 0;
	end
	else begin

		if (ar_valid_out & ar_ready_out & r_valid & r_ready & r_last) begin
			r_track <= r_track;
		end
		else if (ar_valid_out & ar_ready_out) begin
			r_track <= r_track + 1'b1;
		end
		else if (r_valid & r_ready & r_last) begin
			r_track <= r_track - 1'b1;
		end

	end	
end

/* Generating the ack signal */
always @(posedge clk) begin
	if (rst) begin
		r_stop_ack <= 1'b0;
	end
	else if (r_stop_req & !r_stop_ack) begin
		if (r_track == 0 && r_done) begin
			r_stop_ack <= 1'b1;
		end
	end 
	else if (!r_stop_req) begin
		r_stop_ack <= 1'b0;
	end
end

endmodule