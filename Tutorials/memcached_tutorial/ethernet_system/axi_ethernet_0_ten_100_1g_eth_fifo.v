//------------------------------------------------------------------------------
// Title      : 10/100/1G Ethernet FIFO
// Version    : 1.2
// Project    : AXI Ethernet
//------------------------------------------------------------------------------
// File       : axi_ethernet_0_ten_100_1g_eth_fifo.v
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
// Description: This is the top level wrapper for the 10/100/1G Ethernet FIFO.
//              The top level wrapper consists of individual FIFOs on the
//              transmitter path and on the receiver path.
//
//              Each path consists of an 8 bit local link to 8/32 bit client
//              interface FIFO.
//------------------------------------------------------------------------------


`timescale 1ps / 1ps


//------------------------------------------------------------------------------
// The module declaration for the FIFO
//------------------------------------------------------------------------------

module axi_ethernet_0_ten_100_1g_eth_fifo 
(
    input             tx_fifo_aclk,           // tx fifo or pat gen clock
    input             tx_fifo_resetn,
    // tx fifo AXI-Stream interface
    input    [7:0]    tx_axis_fifo_tdata,
    input             tx_axis_fifo_tvalid,
    input             tx_axis_fifo_tlast,
    output            tx_axis_fifo_tready,

    input             tx_mac_aclk,            // tx_mac clock
    input             tx_mac_resetn,
    // tx mac AXI-Stream interface
    output   [7:0]    tx_axis_mac_tdata,
    output            tx_axis_mac_tvalid,
    output            tx_axis_mac_tlast,
    input             tx_axis_mac_tready,
    output            tx_axis_mac_tuser,

    input             rx_fifo_aclk,           // rx fifo  or pat chk clock
    input             rx_fifo_resetn,
    // rx fifo AXI-Stream interface
    output   [7:0]    rx_axis_fifo_tdata,
    output            rx_axis_fifo_tvalid,
    output            rx_axis_fifo_tlast,
    input             rx_axis_fifo_tready,

    input             rx_mac_aclk,            // rx mac clock
    input             rx_mac_resetn,
    // rx mac AXI-Stream interface
    input    [7:0]    rx_axis_mac_tdata,
    input             rx_axis_mac_tvalid,
    input             rx_axis_mac_tlast,
    input             rx_axis_mac_tuser
);

reg [1:0] tx_amac_rst_n_b, rx_amac_rst_n_b, tx_fifo_rst_n_b, rx_fifo_rst_n_b;
wire      tx_amac_rst_n, rx_amac_rst_n, tx_fifo_rst_n, rx_fifo_rst_n;
wire      rx_fifo_arst, tx_fifo_arst, rx_amac_arst, tx_amac_arst;

axi_ethernet_0_reset_sync  rx_fifo_reset_gen (.clk (rx_fifo_aclk), .reset_in (~rx_fifo_resetn), .reset_out (rx_fifo_arst));
axi_ethernet_0_reset_sync  tx_fifo_reset_gen (.clk (tx_fifo_aclk), .reset_in (~tx_fifo_resetn), .reset_out (tx_fifo_arst));
axi_ethernet_0_reset_sync  rx_amac_reset_gen (.clk (rx_mac_aclk ), .reset_in (~rx_mac_resetn ), .reset_out (rx_amac_arst));
axi_ethernet_0_reset_sync  tx_amac_reset_gen (.clk (tx_mac_aclk ), .reset_in (~tx_mac_resetn ), .reset_out (tx_amac_arst));

always @(posedge rx_fifo_aclk) begin
    if (rx_fifo_arst == 1) begin
        rx_fifo_rst_n_b <= 1'b0;
    end else begin
        rx_fifo_rst_n_b <= {1'b1, rx_fifo_rst_n_b[1]};
    end
end
assign rx_fifo_rst_n = rx_fifo_rst_n_b[0];
always @(posedge tx_fifo_aclk) begin
    if (tx_fifo_arst == 1) begin
        tx_fifo_rst_n_b <= 1'b0;
    end else begin
        tx_fifo_rst_n_b <= {1'b1, tx_fifo_rst_n_b[1]};
    end
end
assign tx_fifo_rst_n = tx_fifo_rst_n_b[0];
always @(posedge rx_mac_aclk ) begin
    if (rx_amac_arst == 1) begin
        rx_amac_rst_n_b <= 1'b0;
    end else begin
        rx_amac_rst_n_b <= {1'b1, rx_amac_rst_n_b[1]};
    end
end
assign rx_amac_rst_n = rx_amac_rst_n_b[0];
always @(posedge tx_mac_aclk ) begin
    if (tx_amac_arst == 1) begin
        tx_amac_rst_n_b <= 1'b0;
    end else begin
        tx_amac_rst_n_b <= {1'b1, tx_amac_rst_n_b[1]};
    end
end
assign tx_amac_rst_n = tx_amac_rst_n_b[0];

  //----------------------------------------------------------------------------
  // Instantiate the Transmitter FIFO
  //----------------------------------------------------------------------------
axi_ethernet_0_tx_client_fifo  tx_fifo_i
(
    .tx_fifo_aclk        (tx_fifo_aclk       ),
    .tx_fifo_resetn      (tx_fifo_rst_n      ),
    .tx_axis_fifo_tdata  (tx_axis_fifo_tdata ),
    .tx_axis_fifo_tvalid (tx_axis_fifo_tvalid),
    .tx_axis_fifo_tlast  (tx_axis_fifo_tlast ),
    .tx_axis_fifo_tready (tx_axis_fifo_tready),

    .tx_mac_aclk         (tx_mac_aclk        ),
    .tx_mac_resetn       (tx_amac_rst_n      ),
    .tx_axis_mac_tdata   (tx_axis_mac_tdata  ),
    .tx_axis_mac_tvalid  (tx_axis_mac_tvalid ),
    .tx_axis_mac_tlast   (tx_axis_mac_tlast  ),
    .tx_axis_mac_tready  (tx_axis_mac_tready ),
    .tx_axis_mac_tuser   (tx_axis_mac_tuser  )
);

  //----------------------------------------------------------------------------
  // Instantiate the Receiver FIFO
  //----------------------------------------------------------------------------
axi_ethernet_0_rx_client_fifo rx_fifo_i
(
    .rx_fifo_aclk       (rx_fifo_aclk)         ,
    .rx_fifo_resetn     (rx_fifo_rst_n)        ,
    .rx_axis_fifo_tdata (rx_axis_fifo_tdata)   ,
    .rx_axis_fifo_tvalid (rx_axis_fifo_tvalid) ,
    .rx_axis_fifo_tlast (rx_axis_fifo_tlast)   ,
    .rx_axis_fifo_tready (rx_axis_fifo_tready) ,

    .rx_mac_aclk        (rx_mac_aclk)          ,
    .rx_mac_resetn      (rx_amac_rst_n)        ,
    .rx_axis_mac_tdata  (rx_axis_mac_tdata)    ,
    .rx_axis_mac_tvalid (rx_axis_mac_tvalid)   ,
    .rx_axis_mac_tlast  (rx_axis_mac_tlast)    ,
    .rx_axis_mac_tuser  (rx_axis_mac_tuser)
);

endmodule
