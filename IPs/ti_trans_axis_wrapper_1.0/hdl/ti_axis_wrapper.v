// -----------------------------------------------------------------------------
// Module Name: ti_axis_wrapper
// Description: A wrapper to be placed around AXIS interface to provide safe
// task interruption.
// Details: 
// -----------------------------------------------------------------------------

module ti_axis_wrapper #(
	parameter DATA_WIDTH = 64,
	parameter USER_WIDTH = 112,
	parameter KEEP_WIDTH = 8
) (
	// System Signals
	input wire clk,
	input wire rst,
	input wire [0:0] task_id,

	// Stop requests and acks
	input wire [1:0] stop_req,
	output wire [1:0] stop_ack,

	// AXIS TX channel
	input wire tx_valid,
	input wire tx_ready,
	input wire tx_last,

	// AXIS RX channel
	input wire rx_valid,
	input wire rx_ready,
	input wire rx_last,
	input wire [0:0] rx_id,

	input wire [DATA_WIDTH-1:0] rx_data,
	input wire [KEEP_WIDTH-1:0] rx_keep,
	input wire [USER_WIDTH-1:0] rx_user,

	// Overwritten channels
	output wire tx_valid_out,
	output wire tx_ready_out,

	output wire rx_valid_out,
	output wire rx_ready_out,

	output wire rx_last_out,
	output wire [DATA_WIDTH-1:0] rx_data_out,
	output wire [KEEP_WIDTH-1:0] rx_keep_out,
	output wire [USER_WIDTH-1:0] rx_user_out
);

/* Internal Signals */
wire tx_stop_req, rx_stop_req;

wire fifo_en;
wire fifo_drain;
reg fifo_drain_r;
wire [31:0] fifo_count, fifo_rd_count, fifo_wr_count;
reg task_id_r;

wire rx_fifo_ready, rx_fifo_last, rx_fifo_valid;
wire [DATA_WIDTH-1:0] rx_fifo_data;
wire [KEEP_WIDTH-1:0] rx_fifo_keep;
wire [USER_WIDTH-1:0] rx_fifo_user;

/* Internal Registers */
reg tx_stop_ack, rx_stop_ack;

reg tx_done;
reg rx_done;

/* Signals Assignment */
assign tx_stop_req = stop_req[0];
assign rx_stop_req = stop_req[1];

assign stop_ack[0] = tx_stop_ack;
assign stop_ack[1] = rx_stop_ack;

/* (1) Stopping the TX channel */
assign tx_valid_out = tx_stop_req & tx_done ? 1'b0 : tx_valid;
assign tx_ready_out = tx_stop_req & tx_done ? 1'b0 : tx_ready;

/* Generating the tx_done signal */
/* Waits until the last signal is asserted - indicates no ongoing transmission*/
/* Default value equals one and goes low only when a non-last data is sent    */
always @(posedge clk) begin
	if (rst) begin
		tx_done <= 1'b1;
	end
	else if (tx_valid & tx_ready & tx_last) begin
		tx_done <= 1'b1;
	end
	else if (tx_valid & tx_ready & !tx_last) begin
		tx_done <= 1'b0;
	end
end

/* Generating the ack signal */
always @(posedge clk) begin
	if (rst) begin
		tx_stop_ack <= 1'b0;
	end
	else if (tx_stop_req & !tx_stop_ack) begin
		if (tx_done) begin
			tx_stop_ack <= 1'b1;
		end
	end 
	else if (!tx_stop_req) begin
		tx_stop_ack <= 1'b0;
	end
end


/* (2) Stopping the RX Channel */
/* Stop the channel only when no ongoing reception                            */
/* Override ready and vaild signals to buffer swapped out module packets      */
/* and then drain those packet when the module is swapped back again          */
/* Assumption: Stop request is not asserted during the draining process       */
/* or just do not respond to the stop request until the draining is complete  */
/* The (| fifo_count > 64)) is to drop packets if the fifo is full to prevent */
/* system lockup                                                              */
`ifdef FIFO
assign rx_valid_out = rx_stop_req & rx_done ? 1'b0 : 
					fifo_drain ? rx_fifo_valid : fifo_en ? 1'b0 : rx_valid;
assign rx_ready_out = rx_stop_req & rx_done ? 1'b0 : 
					fifo_drain ? 1'b0 : fifo_en ? (rx_fifo_ready | fifo_count >= 128) : rx_ready;
`endif

`ifndef FIFO
assign rx_valid_out = rx_stop_req & rx_done ? 1'b0 : rx_valid;
assign rx_ready_out = rx_stop_req & rx_done ? 1'b0 : rx_ready;
`endif

/* Generating the rx_done signal */
/* Waits until the last signal is asserted - indicates no ongoing reception   */
/* Default value equals one and goes low only when a non-last data is received*/
always @(posedge clk) begin
	if (rst) begin
		rx_done <= 1'b1;
	end
	else if (rx_valid & rx_ready & rx_last) begin
		rx_done <= 1'b1;
	end
	else if (rx_valid & rx_ready & !rx_last) begin
		rx_done <= 1'b0;
	end
end

/* Generating the ack signal */
always @(posedge clk) begin
	if (rst) begin
		rx_stop_ack <= 1'b0;
	end
	else if (rx_stop_req & !rx_stop_ack) begin
		if (rx_done) begin
			rx_stop_ack <= 1'b1;
		end
	end 
	else if (!rx_stop_req) begin
		rx_stop_ack <= 1'b0;
	end
end

`ifdef FIFO
/* Instatiating the RX FIFO */
ti_axis_fifo TIF (
	.M_AXIS_0_tdata(rx_fifo_data),
	.M_AXIS_0_tkeep(rx_fifo_keep),
	.M_AXIS_0_tuser(rx_fifo_user),
	.M_AXIS_0_tlast(rx_fifo_last),
	.M_AXIS_0_tready(rx_ready & fifo_drain),
	.M_AXIS_0_tvalid(rx_fifo_valid),

	.S_AXIS_0_tdata(rx_data),
	.S_AXIS_0_tkeep(rx_keep),
	.S_AXIS_0_tuser(rx_user),
	.S_AXIS_0_tlast(rx_last),
	.S_AXIS_0_tready(rx_fifo_ready),
	.S_AXIS_0_tvalid(rx_valid & fifo_en),

	//.axis_data_count_0(fifo_count),
	.axis_rd_data_count_0(fifo_rd_count),
	.axis_wr_data_count_0(fifo_wr_count),

	.s_axis_aclk_0(clk ),
	.s_axis_aresetn_0(!rst)
);

assign fifo_count = fifo_rd_count;

/* Outputting the RX channel either directly or from the FIFO */
assign rx_data_out = fifo_drain ? rx_fifo_data : rx_data;
assign rx_keep_out = fifo_drain ? rx_fifo_keep : rx_keep;
assign rx_user_out = fifo_drain ? rx_fifo_user : rx_user;
assign rx_last_out = fifo_drain ? rx_fifo_last : rx_last;

/* Generating the FIFO enable signal */
/* Incoming packets are buffered if their destinted role is swapped out       */
/* No buffering during the drain process. The RX channel is back-pressured    */
/*                                                                            */
/* Assumption: only two roles are switched. Note: A->B->A(end)->C->B is fine  */
/* Switching between more than two roles requires more than one FIFO and      */
/* selecting which FIFO to enable, OR, one can use a shared memory, and keep  */
/* track of the start address and count of the buffered data for each role but*/
/* you can run into fragmentation problems.                                   */
/*                                                                            */
/* To handle memory fullness either because of fragmentation or actual        */
/* fullness, an exception can be raised similar to exception in CPUs (opposite*/
/* to page faults), where the role is stopped using the same procedure and    */
/* then memory transfer is performed from this memory to the external memory  */
/* or disk, or within this memory if the fullness is due to fragmentation. The*/
/* start address and counter are not changed but a valid bit is nulled.       */
/* Engineering the size of the memory is crucial to avoid those types of      */
/* exceptions. Note that there should not be a need for large memory, since   */
/* an actual role should not be receiving a lot of data without sending a     */
/* request (like http request) or sending a response (sort of acknowlogment to*/
/* the data being received). Note that this is a streaming interface, so it   */
/* is kind of data need to be processed not a request. Note that the req-res  */
/* channels are stopped, any request is replied to by a slv_err. Also, if this*/
/* role is part of cpu-fpga design, the cpu part may also be swapped out.     */
/* If this an ethernet interface, Ethernet is lossy in nature so it is OK to  */
/* drop all or excess packets as long as no partial reception is made which   */
/* our wrapper gurantees.                                                     */
/* Note that the exception will not install the entire system, only the       */
/* current role is stalled.                                                   */

assign fifo_en = (task_id != rx_id ? 1'b1 : 1'b0) & !fifo_drain;

/* Generating the FIFO drain signal */
/* Draining is perfromed directly after switching to another module until the */
/* FIFO is completely emptied.                                                */
/* if more than two roles are switched, one have to check if the drained data */
/* is intended to the current role by checking the rx_id of the stored packets*/
/* and the current role_id. If not equal, then don't drain.                   */
/* The wire fifo_drain is to switch instantly to drain state before fifo_en   */
assign fifo_drain = (task_id != task_id_r) ? 1'b1 : fifo_drain_r;

always @(posedge clk) begin
	if (rst) begin
		fifo_drain_r <= 1'b0;
		task_id_r <= 1'b0;
	end
	else begin
		task_id_r <= task_id;
		if (task_id != task_id_r) begin // switching to another role
			fifo_drain_r <= 1'b1;
		end
		else if (fifo_count == 0) begin // empty fifo
			fifo_drain_r <= 1'b0;
		end
	end
end
`endif

`ifndef FIFO
assign rx_data_out = rx_data;
assign rx_keep_out = rx_keep;
assign rx_user_out = rx_user;
assign rx_last_out = rx_last;
`endif

endmodule