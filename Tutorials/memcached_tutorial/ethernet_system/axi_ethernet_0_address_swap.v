//----------------------------------------------------------------------------------------------------------------------
// Title      : Verilog Example Level Module
// File       : axi_ethernet_0_address_swap.v
// Author     : Xilinx Inc.
// ########################################################################################################################
// ##
// # (c) Copyright 2012-2016 Xilinx, Inc. All rights reserved.
// #
// # This file contains confidential and proprietary information of Xilinx, Inc. and is protected under U.S. and
// # international copyright and other intellectual property laws. 
// #
// # DISCLAIMER
// # This disclaimer is not a license and does not grant any rights to the materials distributed herewith. Except as
// # otherwise provided in a valid license issued to you by Xilinx, and to the maximum extent permitted by applicable law:
// # (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND
// # CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// # INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and (2) Xilinx shall not be liable (whether in contract or tort,
// # including negligence, or under any other theory of liability) for any loss or damage of any kind or nature related to,
// # arising under or in connection with these materials, including for any direct, or any indirect, special, incidental, or
// # consequential loss or damage (including loss of data, profits, goodwill, or any type of loss or damage suffered as a
// # result of any action brought by a third party) even if such damage or loss was reasonably foreseeable or Xilinx had
// # been advised of the possibility of the same.
// #
// # CRITICAL APPLICATIONS
// # Xilinx products are not designed or intended to be fail-safe, or for use in any application requiring fail-safe
// # performance, such as life-support or safety devices or systems, Class III medical devices, nuclear facilities,
// # applications related to the deployment of airbags, or any other applications that could lead to death, personal injury,
// # or severe property or environmental damage (individually and collectively, "Critical Applications"). Customer assumes
// # the sole risk and liability of any use of Xilinx products in Critical Applications, subject only to applicable laws and
// # regulations governing limitations on product liability.
// #
// # THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.
// #
// ########################################################################################################################
// Description:  This address swap block will accept the first 12 byte of a packet before
// starting to loop it out.  At this point both the source and destination fields have 
// been completely captured and can therefore be swapped.
//------------------------------------------------------------------------------

`timescale 1ps/1ps

module axi_ethernet_0_address_swap (
    input              axi_tclk            , 
    input              axi_tresetn         , 
               
    input              enable_address_swap , 
    output             activity_flash      , 
               
    input       [7:0]  rx_axis_fifo_tdata  , 
    input              rx_axis_fifo_tvalid , 
    input              rx_axis_fifo_tlast  , 
    output reg         rx_axis_fifo_tready , 

    output reg  [7:0]  tx_axis_fifo_tdata  , 
    output reg         tx_axis_fifo_tvalid , 
    output reg         tx_axis_fifo_tlast  , 
    input              tx_axis_fifo_tready
);

wire [8:0] fdi, fdo;
wire wre, rde, fifof, fifoe;

reg  [7:0] rx_srcbyte1, rx_srcbyte2, rx_srcbyte3, rx_srcbyte4,   rx_srcbyte5,   rx_srcbyte6;  
reg  [7:0] rx_dstbyte1, rx_dstbyte2, rx_dstbyte3, rx_dstbyte4,   rx_dstbyte5,   rx_dstbyte6;  
reg  [5:0] rx_cnt, axis_rx_cs, tx_cnt, axis_tx_cs;
reg        en_rx_on_saxis = 1, en_tx_on_maxis = 0;
reg        rde_q, wre_q;
reg  [15:0] frame_activity_count;

assign wre = rx_axis_fifo_tvalid && rx_axis_fifo_tready;
assign rde = tx_axis_fifo_tvalid && tx_axis_fifo_tready;
assign fdi = {rx_axis_fifo_tlast,rx_axis_fifo_tdata};
assign activity_flash = frame_activity_count[13];

always @(posedge axi_tclk) begin
    if (!axi_tresetn) begin
        frame_activity_count <= 0;
    end else begin
        frame_activity_count <= (tx_axis_fifo_tlast) ? (frame_activity_count + 1'b1) : frame_activity_count;
    end
end


always @(posedge axi_tclk) begin
    if (axi_tresetn == 0) begin
        en_tx_on_maxis <= 0;
        en_rx_on_saxis <= 1;
        rde_q <= 0; wre_q <= 0;
    end else begin
        rde_q <= rde; wre_q <= wre;
        en_tx_on_maxis <= ((rx_cnt == 11) && wre_q) ? 1 : (((tx_cnt == 10) && rde_q) ? 0 : en_tx_on_maxis);
        en_rx_on_saxis <= ((tx_cnt == 0 && !en_tx_on_maxis) ? 1 : ((rx_cnt == 0) ? 0 : en_rx_on_saxis));
    end
end

always @ (*) begin
    rx_axis_fifo_tready = !fifof && en_rx_on_saxis; 
    tx_axis_fifo_tlast  = fdo[8];
    case (tx_cnt)
        0       : tx_axis_fifo_tvalid = en_tx_on_maxis; 
        default : tx_axis_fifo_tvalid = !fifoe || fdo[8]; 
    endcase
    case (tx_cnt)
              0 : tx_axis_fifo_tdata[7:0] = (enable_address_swap) ? rx_srcbyte1 : fdo[7:0];
              1 : tx_axis_fifo_tdata[7:0] = (enable_address_swap) ? rx_srcbyte2 : fdo[7:0];
              2 : tx_axis_fifo_tdata[7:0] = (enable_address_swap) ? rx_srcbyte3 : fdo[7:0];
              3 : tx_axis_fifo_tdata[7:0] = (enable_address_swap) ? rx_srcbyte4 : fdo[7:0];
              4 : tx_axis_fifo_tdata[7:0] = (enable_address_swap) ? rx_srcbyte5 : fdo[7:0];
              5 : tx_axis_fifo_tdata[7:0] = (enable_address_swap) ? rx_srcbyte6 : fdo[7:0];
              6 : tx_axis_fifo_tdata[7:0] = (enable_address_swap) ? rx_dstbyte1 : fdo[7:0];
              7 : tx_axis_fifo_tdata[7:0] = (enable_address_swap) ? rx_dstbyte2 : fdo[7:0];
              8 : tx_axis_fifo_tdata[7:0] = (enable_address_swap) ? rx_dstbyte3 : fdo[7:0];
              9 : tx_axis_fifo_tdata[7:0] = (enable_address_swap) ? rx_dstbyte4 : fdo[7:0];
             10 : tx_axis_fifo_tdata[7:0] = (enable_address_swap) ? rx_dstbyte5 : fdo[7:0];
             11 : tx_axis_fifo_tdata[7:0] = (enable_address_swap) ? rx_dstbyte6 : fdo[7:0];
        default : tx_axis_fifo_tdata = fdo[7:0];
    endcase
end

always @(posedge axi_tclk) begin
    if (axi_tresetn == 0) begin
        rx_cnt <= 0;
        tx_cnt <= 0;
        rx_srcbyte6 <= 0; rx_srcbyte5 <= 0; rx_srcbyte4 <= 0; rx_srcbyte3 <= 0; rx_srcbyte2 <= 0; rx_srcbyte1 <= 0;
        rx_dstbyte6 <= 0; rx_dstbyte5 <= 0; rx_dstbyte4 <= 0; rx_dstbyte3 <= 0; rx_dstbyte2 <= 0; rx_dstbyte1 <= 0;
    end else begin
        rx_cnt <= (wre) ? ((rx_axis_fifo_tlast) ? 0 : ((rx_cnt > 11) ? 12 : (rx_cnt + 1))) : rx_cnt;
        tx_cnt <= (rde) ? ((tx_axis_fifo_tlast) ? 0 : ((tx_cnt > 11) ? 12 : (tx_cnt + 1))) : tx_cnt;
        rx_dstbyte1 <= ((rx_cnt ==  0) && wre) ? rx_axis_fifo_tdata[7:0] : rx_dstbyte1;
        rx_dstbyte2 <= ((rx_cnt ==  1) && wre) ? rx_axis_fifo_tdata[7:0] : rx_dstbyte2;
        rx_dstbyte3 <= ((rx_cnt ==  2) && wre) ? rx_axis_fifo_tdata[7:0] : rx_dstbyte3;
        rx_dstbyte4 <= ((rx_cnt ==  3) && wre) ? rx_axis_fifo_tdata[7:0] : rx_dstbyte4;
        rx_dstbyte5 <= ((rx_cnt ==  4) && wre) ? rx_axis_fifo_tdata[7:0] : rx_dstbyte5;
        rx_dstbyte6 <= ((rx_cnt ==  5) && wre) ? rx_axis_fifo_tdata[7:0] : rx_dstbyte6;
        rx_srcbyte1 <= ((rx_cnt ==  6) && wre) ? rx_axis_fifo_tdata[7:0] : rx_srcbyte1;
        rx_srcbyte2 <= ((rx_cnt ==  7) && wre) ? rx_axis_fifo_tdata[7:0] : rx_srcbyte2;
        rx_srcbyte3 <= ((rx_cnt ==  8) && wre) ? rx_axis_fifo_tdata[7:0] : rx_srcbyte3;
        rx_srcbyte4 <= ((rx_cnt ==  9) && wre) ? rx_axis_fifo_tdata[7:0] : rx_srcbyte4;
        rx_srcbyte5 <= ((rx_cnt == 10) && wre) ? rx_axis_fifo_tdata[7:0] : rx_srcbyte5;
        rx_srcbyte6 <= ((rx_cnt == 11) && wre) ? rx_axis_fifo_tdata[7:0] : rx_srcbyte6;
   end
end

axi_ethernet_0_address_swap_fifo #(.DATA(9), .ADDR(6)) U0_fifo 
(
    .clk   (axi_tclk  ),
    .rstn  (axi_tresetn),
    .wre   (wre       ),
    .rde   (rde       ),
    .d_in  (fdi       ),
    .full  (fifof     ),
    .empty (fifoe     ),
    .d_out (fdo       ) 
);

endmodule 

module axi_ethernet_0_address_swap_fifo #(
    parameter DATA = 32,
    parameter ADDR = 8)
(
    input    clk    , rstn  , 
    input    wre    , rde   , 
    input    [DATA-1:0] d_in , 
    output   reg  full,
    output   reg  empty,
    output   [DATA-1:0] d_out
);
    
reg [DATA-1:0] mem [0:(2**ADDR)-1];
reg [ADDR-1:0] rd_ptr, wr_ptr;
wire [ADDR-1:0] rd_ptr_p1, wr_ptr_p1, wr_ptr_p2;

assign  d_out = mem[rd_ptr];
assign rd_ptr_p1 = (rd_ptr + 1);
assign wr_ptr_p1 = (wr_ptr + 1);
assign wr_ptr_p2 = (wr_ptr + 2);

integer i;
initial begin
    for( i = 0; i < 2**ADDR; i = i + 1 ) begin
        mem[i] <= 0;
    end
end

always @ (negedge clk) begin
    if (wre && (wr_ptr_p1 == rd_ptr))   $display ("@%0dns Caution: In eth_eg_des_e005_slave_loopback_fifo FIFO overflow occured  ", $time);
    if (rde && (rd_ptr == wr_ptr))      $display ("@%0dns Caution: In eth_eg_des_e005_slave_loopback_fifo FIFO underflow occured ", $time);
end

always @ (posedge clk) begin
    if (rstn == 0) begin
        rd_ptr <= 0;
        wr_ptr <= 0;
        full   <= 0;
        empty  <= 1;
    end else begin
        rd_ptr <= (rde) ? rd_ptr_p1 : rd_ptr;
        wr_ptr <= (wre) ? wr_ptr_p1 : wr_ptr;
        full   <= (wr_ptr_p1 == rd_ptr) || (wr_ptr_p2 == rd_ptr);
        empty  <= (rd_ptr == wr_ptr) || (rd_ptr_p1 == wr_ptr);
    end
end

always @(posedge clk) begin
    if (wre) begin
        mem[wr_ptr] <= d_in;
    end
end

endmodule
