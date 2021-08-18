
`timescale 1 ns / 1 ps

	module ti_trans_axis_wrapper_v1_0 #
	(
		// Parameters of Axi Slave Bus Interface S00_AXIS
		parameter integer C_S00_AXIS_TDATA_WIDTH	= 32,

		// Parameters of Axi Master Bus Interface M00_AXIS
		parameter integer C_M00_AXIS_TDATA_WIDTH	= 32,
		parameter integer C_M00_AXIS_START_COUNT	= 32,

		// Parameters of Axi Slave Bus Interface S01_AXIS
		parameter integer C_S01_AXIS_TDATA_WIDTH	= 32,

		// Parameters of Axi Master Bus Interface M01_AXIS
		parameter integer C_M01_AXIS_TDATA_WIDTH	= 32,
		parameter integer C_M01_AXIS_START_COUNT	= 32
	)
	(
		/// Stop requests and acks
		input wire [1:0] stop_req,
		output wire [1:0] stop_ack,
		
		// Decoupler
		input wire decouple,

		// Ports of Axi Slave Bus Interface S00_AXIS
		input wire  s00_axis_aclk,
		input wire  s00_axis_aresetn,
		output wire  s00_axis_tready,
		input wire [C_S00_AXIS_TDATA_WIDTH-1 : 0] s00_axis_tdata,
		input wire [(C_S00_AXIS_TDATA_WIDTH/8)-1 : 0] s00_axis_tkeep,
		input wire  s00_axis_tlast,
		input wire  s00_axis_tvalid,

		// Ports of Axi Master Bus Interface M00_AXIS
		input wire  m00_axis_aclk,
		input wire  m00_axis_aresetn,
		output wire  m00_axis_tvalid,
		output wire [C_M00_AXIS_TDATA_WIDTH-1 : 0] m00_axis_tdata,
		output wire [(C_M00_AXIS_TDATA_WIDTH/8)-1 : 0] m00_axis_tkeep,
		output wire  m00_axis_tlast,
		input wire  m00_axis_tready,

		// Ports of Axi Slave Bus Interface S01_AXIS
		input wire  s01_axis_aclk,
		input wire  s01_axis_aresetn,
		output wire  s01_axis_tready,
		input wire [C_S01_AXIS_TDATA_WIDTH-1 : 0] s01_axis_tdata,
		input wire [(C_S01_AXIS_TDATA_WIDTH/8)-1 : 0] s01_axis_tkeep,
		input wire  s01_axis_tlast,
		input wire  s01_axis_tvalid,

		// Ports of Axi Master Bus Interface M01_AXIS
		input wire  m01_axis_aclk,
		input wire  m01_axis_aresetn,
		output wire  m01_axis_tvalid,
		output wire [C_M01_AXIS_TDATA_WIDTH-1 : 0] m01_axis_tdata,
		output wire [(C_M01_AXIS_TDATA_WIDTH/8)-1 : 0] m01_axis_tkeep,
		output wire  m01_axis_tlast,
		input wire  m01_axis_tready
	);

	// DUT TX -> s00 -> Wrapper -> m00 -> System 
	// DUT RX <- m01 <- Wrapper <- s01 <- System

	/* Decoupler */
	wire s00_axis_tvalid_dec;
	wire s00_axis_tlast_dec;
	wire m01_axis_tready_dec;

	assign s00_axis_tvalid_dec = decouple ? 1'b0 : s00_axis_tvalid;
	assign s00_axis_tlast_dec = decouple ? 1'b0 : s00_axis_tlast;
	assign m01_axis_tready_dec = decouple ? 1'b0 : m01_axis_tready;

	ti_axis_wrapper #(
			.DATA_WIDTH(C_S00_AXIS_TDATA_WIDTH),
			.USER_WIDTH(1),
			.KEEP_WIDTH((C_S00_AXIS_TDATA_WIDTH/8))
		)
	TI_AXIS_WRAP (
		// system signals
		.clk(m00_axis_aclk),
		.rst(!m00_axis_aresetn),

		// current task id
		.task_id(),

		// stop request and ack signals
		.stop_req(stop_req),
		.stop_ack(stop_ack),

		// AXIS TX channels
		.tx_valid(s00_axis_tvalid_dec),
		.tx_ready(m00_axis_tready),
		.tx_last(s00_axis_tlast_dec),

		// AXIS RX channels
		.rx_valid(s01_axis_tvalid),
		.rx_ready(m01_axis_tready_dec),
		.rx_last(s01_axis_tlast),
		.rx_id(),

		.rx_data(s01_axis_tdata),
		.rx_keep(s01_axis_tkeep),
		.rx_user(),

		// Overwritten Channels
		.tx_valid_out(m00_axis_tvalid),
		.tx_ready_out(s00_axis_tready),

		.rx_valid_out(m01_axis_tvalid),
		.rx_ready_out(s01_axis_tready),

		.rx_last_out(m01_axis_tlast),
		.rx_data_out(m01_axis_tdata),
		.rx_keep_out(m01_axis_tkeep),
		.rx_user_out()
  	);

  	assign m00_axis_tdata = s00_axis_tdata;
	assign m00_axis_tkeep = s00_axis_tkeep;
	assign m00_axis_tlast = s00_axis_tlast;

	endmodule
