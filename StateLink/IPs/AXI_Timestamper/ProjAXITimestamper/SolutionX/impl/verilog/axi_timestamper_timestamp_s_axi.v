// ==============================================================
// File generated on Thu Jul 14 17:17:44 EDT 2022
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module axi_timestamper_timestamp_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 32,
    C_S_AXI_DATA_WIDTH = 32
)(
    // axi4 lite slave signals
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    // user signals
    input  wire [31:0]                   write_timestamp_V,
    input  wire                          write_timestamp_V_ap_vld,
    input  wire [31:0]                   read_timestamp_V,
    input  wire                          read_timestamp_V_ap_vld
);
//------------------------Address Info-------------------
// 0x00000000 : reserved
// 0x00000004 : reserved
// 0x00000008 : reserved
// 0x0000000c : reserved
// 0x80000000 : Data signal of write_timestamp_V
//              bit 31~0 - write_timestamp_V[31:0] (Read)
// 0x80000004 : Control signal of write_timestamp_V
//              bit 0  - write_timestamp_V_ap_vld (Read/COR)
//              others - reserved
// 0x80000010 : Data signal of read_timestamp_V
//              bit 31~0 - read_timestamp_V[31:0] (Read)
// 0x80000014 : Control signal of read_timestamp_V
//              bit 0  - read_timestamp_V_ap_vld (Read/COR)
//              others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_WRITE_TIMESTAMP_V_DATA_0 = 32'h80000000,
    ADDR_WRITE_TIMESTAMP_V_CTRL   = 32'h80000004,
    ADDR_READ_TIMESTAMP_V_DATA_0  = 32'h80000010,
    ADDR_READ_TIMESTAMP_V_CTRL    = 32'h80000014,
    WRIDLE                        = 2'd0,
    WRDATA                        = 2'd1,
    WRRESP                        = 2'd2,
    WRRESET                       = 2'd3,
    RDIDLE                        = 2'd0,
    RDDATA                        = 2'd1,
    RDRESET                       = 2'd2,
    ADDR_BITS         = 32;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [31:0]                   wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [31:0]                   rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg  [31:0]                   int_write_timestamp_V = 'b0;
    reg                           int_write_timestamp_V_ap_vld;
    reg  [31:0]                   int_read_timestamp_V = 'b0;
    reg                           int_read_timestamp_V_ap_vld;

//------------------------Instantiation------------------

//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 1'b0;
            case (raddr)
                ADDR_WRITE_TIMESTAMP_V_DATA_0: begin
                    rdata <= int_write_timestamp_V[31:0];
                end
                ADDR_WRITE_TIMESTAMP_V_CTRL: begin
                    rdata[0] <= int_write_timestamp_V_ap_vld;
                end
                ADDR_READ_TIMESTAMP_V_DATA_0: begin
                    rdata <= int_read_timestamp_V[31:0];
                end
                ADDR_READ_TIMESTAMP_V_CTRL: begin
                    rdata[0] <= int_read_timestamp_V_ap_vld;
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
// int_write_timestamp_V
always @(posedge ACLK) begin
    if (ARESET)
        int_write_timestamp_V <= 0;
    else if (ACLK_EN) begin
        if (write_timestamp_V_ap_vld)
            int_write_timestamp_V <= write_timestamp_V;
    end
end

// int_write_timestamp_V_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_write_timestamp_V_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (write_timestamp_V_ap_vld)
            int_write_timestamp_V_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_WRITE_TIMESTAMP_V_CTRL)
            int_write_timestamp_V_ap_vld <= 1'b0; // clear on read
    end
end

// int_read_timestamp_V
always @(posedge ACLK) begin
    if (ARESET)
        int_read_timestamp_V <= 0;
    else if (ACLK_EN) begin
        if (read_timestamp_V_ap_vld)
            int_read_timestamp_V <= read_timestamp_V;
    end
end

// int_read_timestamp_V_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_read_timestamp_V_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (read_timestamp_V_ap_vld)
            int_read_timestamp_V_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_READ_TIMESTAMP_V_CTRL)
            int_read_timestamp_V_ap_vld <= 1'b0; // clear on read
    end
end


//------------------------Memory logic-------------------

endmodule
