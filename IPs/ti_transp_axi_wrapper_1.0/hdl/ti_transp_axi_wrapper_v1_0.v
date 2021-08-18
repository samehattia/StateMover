
`timescale 1 ns / 1 ps

	module ti_transp_axi_wrapper_v1_0 #
	(
		// Parameters of Axi Slave Bus Interface S01_AXI
		parameter integer C_S01_AXI_ID_WIDTH	= 1,
		parameter integer C_S01_AXI_DATA_WIDTH	= 32,
		parameter integer C_S01_AXI_ADDR_WIDTH	= 32,
		parameter integer C_S01_AXI_AWUSER_WIDTH	= 0,
		parameter integer C_S01_AXI_ARUSER_WIDTH	= 0,
		parameter integer C_S01_AXI_WUSER_WIDTH	= 0,
		parameter integer C_S01_AXI_RUSER_WIDTH	= 0,
		parameter integer C_S01_AXI_BUSER_WIDTH	= 0,

		// Parameters of Axi Master Bus Interface M00_AXI
		parameter  C_M00_AXI_TARGET_SLAVE_BASE_ADDR	= 32'h00000000,
		parameter integer C_M00_AXI_BURST_LEN	= 16,
		parameter integer C_M00_AXI_ID_WIDTH	= 1,
		parameter integer C_M00_AXI_ADDR_WIDTH	= 32,
		parameter integer C_M00_AXI_DATA_WIDTH	= 32,
		parameter integer C_M00_AXI_AWUSER_WIDTH	= 0,
		parameter integer C_M00_AXI_ARUSER_WIDTH	= 0,
		parameter integer C_M00_AXI_WUSER_WIDTH	= 0,
		parameter integer C_M00_AXI_RUSER_WIDTH	= 0,
		parameter integer C_M00_AXI_BUSER_WIDTH	= 0
	)
	(
		// Stop requests and acks
		input wire [1:0] stop_req,
		output wire [1:0] stop_ack,
		
		// Decoupler
		input wire decouple,

		// Ports of Axi Slave Bus Interface S01_AXI
		input wire  s01_axi_aclk,
		input wire  s01_axi_aresetn,
		input wire [C_S01_AXI_ID_WIDTH-1 : 0] s01_axi_awid,
		input wire [C_S01_AXI_ADDR_WIDTH-1 : 0] s01_axi_awaddr,
		input wire [7 : 0] s01_axi_awlen,
		input wire [2 : 0] s01_axi_awsize,
		input wire [1 : 0] s01_axi_awburst,
		input wire  s01_axi_awlock,
		input wire [3 : 0] s01_axi_awcache,
		input wire [2 : 0] s01_axi_awprot,
		input wire [3 : 0] s01_axi_awqos,
		input wire [3 : 0] s01_axi_awregion,
		input wire [C_S01_AXI_AWUSER_WIDTH-1 : 0] s01_axi_awuser,
		input wire  s01_axi_awvalid,
		output wire  s01_axi_awready,
		input wire [C_S01_AXI_DATA_WIDTH-1 : 0] s01_axi_wdata,
		input wire [(C_S01_AXI_DATA_WIDTH/8)-1 : 0] s01_axi_wstrb,
		input wire  s01_axi_wlast,
		input wire [C_S01_AXI_WUSER_WIDTH-1 : 0] s01_axi_wuser,
		input wire  s01_axi_wvalid,
		output wire  s01_axi_wready,
		output wire [C_S01_AXI_ID_WIDTH-1 : 0] s01_axi_bid,
		output wire [1 : 0] s01_axi_bresp,
		output wire [C_S01_AXI_BUSER_WIDTH-1 : 0] s01_axi_buser,
		output wire  s01_axi_bvalid,
		input wire  s01_axi_bready,
		input wire [C_S01_AXI_ID_WIDTH-1 : 0] s01_axi_arid,
		input wire [C_S01_AXI_ADDR_WIDTH-1 : 0] s01_axi_araddr,
		input wire [7 : 0] s01_axi_arlen,
		input wire [2 : 0] s01_axi_arsize,
		input wire [1 : 0] s01_axi_arburst,
		input wire  s01_axi_arlock,
		input wire [3 : 0] s01_axi_arcache,
		input wire [2 : 0] s01_axi_arprot,
		input wire [3 : 0] s01_axi_arqos,
		input wire [3 : 0] s01_axi_arregion,
		input wire [C_S01_AXI_ARUSER_WIDTH-1 : 0] s01_axi_aruser,
		input wire  s01_axi_arvalid,
		output wire  s01_axi_arready,
		output wire [C_S01_AXI_ID_WIDTH-1 : 0] s01_axi_rid,
		output wire [C_S01_AXI_DATA_WIDTH-1 : 0] s01_axi_rdata,
		output wire [1 : 0] s01_axi_rresp,
		output wire  s01_axi_rlast,
		output wire [C_S01_AXI_RUSER_WIDTH-1 : 0] s01_axi_ruser,
		output wire  s01_axi_rvalid,
		input wire  s01_axi_rready,

		// Ports of Axi Master Bus Interface M00_AXI
		//input wire  m00_axi_init_axi_txn,
		//output wire  m00_axi_txn_done,
		//output wire  m00_axi_error,
		input wire  m00_axi_aclk,
		input wire  m00_axi_aresetn,
		output wire [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_awid,
		output wire [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_awaddr,
		output wire [7 : 0] m00_axi_awlen,
		output wire [2 : 0] m00_axi_awsize,
		output wire [1 : 0] m00_axi_awburst,
		output wire  m00_axi_awlock,
		output wire [3 : 0] m00_axi_awcache,
		output wire [2 : 0] m00_axi_awprot,
		output wire [3 : 0] m00_axi_awqos,
		output wire [C_M00_AXI_AWUSER_WIDTH-1 : 0] m00_axi_awuser,
		output wire  m00_axi_awvalid,
		input wire  m00_axi_awready,
		output wire [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_wdata,
		output wire [C_M00_AXI_DATA_WIDTH/8-1 : 0] m00_axi_wstrb,
		output wire  m00_axi_wlast,
		output wire [C_M00_AXI_WUSER_WIDTH-1 : 0] m00_axi_wuser,
		output wire  m00_axi_wvalid,
		input wire  m00_axi_wready,
		input wire [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_bid,
		input wire [1 : 0] m00_axi_bresp,
		input wire [C_M00_AXI_BUSER_WIDTH-1 : 0] m00_axi_buser,
		input wire  m00_axi_bvalid,
		output wire  m00_axi_bready,
		output wire [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_arid,
		output wire [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_araddr,
		output wire [7 : 0] m00_axi_arlen,
		output wire [2 : 0] m00_axi_arsize,
		output wire [1 : 0] m00_axi_arburst,
		output wire  m00_axi_arlock,
		output wire [3 : 0] m00_axi_arcache,
		output wire [2 : 0] m00_axi_arprot,
		output wire [3 : 0] m00_axi_arqos,
		output wire [C_M00_AXI_ARUSER_WIDTH-1 : 0] m00_axi_aruser,
		output wire  m00_axi_arvalid,
		input wire  m00_axi_arready,
		input wire [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_rid,
		input wire [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_rdata,
		input wire [1 : 0] m00_axi_rresp,
		input wire  m00_axi_rlast,
		input wire [C_M00_AXI_RUSER_WIDTH-1 : 0] m00_axi_ruser,
		input wire  m00_axi_rvalid,
		output wire  m00_axi_rready
	);

	/* Decoupler */
	wire s01_axi_awvalid_dec;
	wire s01_axi_wvalid_dec;
	wire s01_axi_wlast_dec;
	wire s01_axi_bready_dec;
	wire s01_axi_arvalid_dec;
	wire s01_axi_rready_dec;

	assign s01_axi_awvalid_dec = decouple ? 1'b0 : s01_axi_awvalid;
	assign s01_axi_wvalid_dec = decouple ? 1'b0 : s01_axi_wvalid;
	assign s01_axi_wlast_dec = decouple ? 1'b0 : s01_axi_wlast;
	assign s01_axi_bready_dec = decouple ? 1'b0 : s01_axi_bready;
	assign s01_axi_arvalid_dec = decouple ? 1'b0 : s01_axi_arvalid;
	assign s01_axi_rready_dec = decouple ? 1'b0 : s01_axi_rready;

	ti_axi_wrapper TI_AXI_WRAP (
		// system signals
		.clk(m00_axi_aclk),
		.rst(!m00_axi_aresetn),

		// stop request and ack signals
		.stop_req(stop_req[1:0]),
		.stop_ack(stop_ack[1:0]),

		// MM_AXI write channels
		.aw_valid(s01_axi_awvalid_dec),
		.aw_ready(m00_axi_awready),

		.w_valid(s01_axi_wvalid_dec),
		.w_ready(m00_axi_wready),
		.w_last(s01_axi_wlast_dec),

		.b_valid(m00_axi_bvalid),
		.b_ready(s01_axi_bready_dec),

		// MM_AXI read channels
		.ar_valid(s01_axi_arvalid_dec),
		.ar_ready(m00_axi_arready),

		.r_valid(m00_axi_rvalid),
		.r_ready(s01_axi_rready_dec),
		.r_last(m00_axi_rlast),

		// Overwritten Channels
		.aw_ready_out(s01_axi_awready),
		.w_ready_out(s01_axi_wready),
		.ar_ready_out(s01_axi_arready),

		.aw_valid_out(m00_axi_awvalid),
		.w_valid_out(m00_axi_wvalid),
		.ar_valid_out(m00_axi_arvalid)
	);

	assign s01_axi_bid = m00_axi_bid;
	assign s01_axi_bresp = m00_axi_bresp;
	assign s01_axi_buser = m00_axi_buser;
	assign s01_axi_bvalid = m00_axi_bvalid;
	assign s01_axi_rid = m00_axi_rid;
	assign s01_axi_rdata = m00_axi_rdata;
	assign s01_axi_rresp = m00_axi_rresp;
	assign s01_axi_rlast = m00_axi_rlast;
	assign s01_axi_ruser = m00_axi_ruser;
	assign s01_axi_rvalid = m00_axi_rvalid;

	assign m00_axi_awid 	= s01_axi_awid;
	assign m00_axi_awaddr 	= s01_axi_awaddr;
	assign m00_axi_awlen 	= s01_axi_awlen;
	assign m00_axi_awsize 	= s01_axi_awsize;
	assign m00_axi_awburst 	= s01_axi_awburst;
	assign m00_axi_awlock 	= s01_axi_awlock;
	assign m00_axi_awcache 	= s01_axi_awcache;
	assign m00_axi_awprot 	= s01_axi_awprot;
	assign m00_axi_awqos 	= s01_axi_awqos;
	assign m00_axi_awuser 	= s01_axi_awuser;
	assign m00_axi_wdata 	= s01_axi_wdata;
	assign m00_axi_wstrb 	= s01_axi_wstrb;
	assign m00_axi_wlast 	= s01_axi_wlast_dec;
	assign m00_axi_wuser 	= s01_axi_wuser;
	assign m00_axi_bready 	= s01_axi_bready_dec;
	assign m00_axi_arid 	= s01_axi_arid;
	assign m00_axi_araddr 	= s01_axi_araddr;
	assign m00_axi_arlen 	= s01_axi_arlen;
	assign m00_axi_arsize 	= s01_axi_arsize;
	assign m00_axi_arburst 	= s01_axi_arburst;
	assign m00_axi_arlock 	= s01_axi_arlock;
	assign m00_axi_arcache 	= s01_axi_arcache;
	assign m00_axi_arprot 	= s01_axi_arprot;
	assign m00_axi_arqos 	= s01_axi_arqos;
	assign m00_axi_aruser 	= s01_axi_aruser;
	assign m00_axi_rready 	= s01_axi_rready_dec;

endmodule
