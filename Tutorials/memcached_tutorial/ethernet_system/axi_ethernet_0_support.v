//----------------------------------------------------------------------------------------------------------------------
// Title      : Verilog Support Level Module
// File       : axi_ethernet_0_support.v
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
// Description: This module holds the support level for the AXI Ethernet IP.
//              It contains potentially shareable FPGA resources such as clocking, reset and IDELAYCTRL logic.
//              This can be used as-is in a single core design, or adapted for use with multi-core implementations.
//----------------------------------------------------------------------------------------------------------------------
`timescale 1ps/1ps

module axi_ethernet_0_support (
    input             s_axi_lite_resetn   , 
    input   [17 : 0]  s_axi_araddr        , 
    output            s_axi_arready       , 
    input             s_axi_arvalid       , 
    input   [17 : 0]  s_axi_awaddr        , 
    output            s_axi_awready       , 
    input             s_axi_awvalid       , 
    input             s_axi_bready        , 
    output  [1 : 0]   s_axi_bresp         , 
    output            s_axi_bvalid        , 
    output  [31 : 0]  s_axi_rdata         , 
    input             s_axi_rready        , 
    output  [1 : 0]   s_axi_rresp         , 
    output            s_axi_rvalid        , 
    input   [31 : 0]  s_axi_wdata         , 
    output            s_axi_wready        , 
    input             s_axi_wvalid        , 

    output            tx_mac_aclk         , 
    output            rx_mac_aclk         , 
    input             glbl_rst            , 

    input   [  7:0]   s_axis_tx_tdata     , 
    input             s_axis_tx_tlast     , 
    output            s_axis_tx_tready    , 
    input             s_axis_tx_tuser     , 
    input             s_axis_tx_tvalid    , 
    output  [  7:0]   m_axis_rx_tdata     , 
    output            m_axis_rx_tlast     , 
    output            m_axis_rx_tuser     , 
    output            m_axis_rx_tvalid    , 

    output            phy_rst_n           , 
    input             ref_clk             , 
    input             sgmii_rxn           , 
    input             sgmii_rxp           , 
    output            sgmii_txn           , 
    output            sgmii_txp           , 

    input             signal_detect       , 
    input             mgt_clk_n           , 
    input             mgt_clk_p           , 
    output  [15 : 0]  status_vector       ,

    output            mdio_mdc            , 
    input             mdio_mdio_i         , 
    output            mdio_mdio_o         , 
    output            mdio_mdio_t         , 

    input             s_axi_lite_clk
);





/// wire  [ 27:0]  rx_statistics_data_int ;
/// wire  [ 31:0]  tx_statistics_data_int ;
/// assign  rx_statistics_statistics_data  =  rx_statistics_data_int[27:0];
/// assign  tx_statistics_statistics_data  =  tx_statistics_data_int[31:0];

    axi_ethernet_0   U0_axi_ethernet_0
    (
        .tx_mac_aclk         (tx_mac_aclk      ),
        .rx_mac_aclk         (rx_mac_aclk      ),
        .glbl_rst            (glbl_rst         ),
        .tx_ifg_delay        (8'h0             ),

        .s_axis_pause_tdata  (16'b0            ),
        .s_axis_pause_tvalid (1'b0             ),
/////.rx_statistics_statistics_data    (rx_statistics_data_int        ),
/////.rx_statistics_statistics_valid   (rx_statistics_statistics_valid),
/////.tx_statistics_statistics_data    (tx_statistics_data_int        ),
/////.tx_statistics_statistics_valid   (tx_statistics_statistics_valid),
        .s_axis_tx_tdata     (s_axis_tx_tdata  ),
        .s_axis_tx_tlast     (s_axis_tx_tlast  ),
        .s_axis_tx_tready    (s_axis_tx_tready ),
        .s_axis_tx_tuser (s_axis_tx_tuser),
        .s_axis_tx_tvalid    (s_axis_tx_tvalid ),
        .m_axis_rx_tdata     (m_axis_rx_tdata  ),
        .m_axis_rx_tlast     (m_axis_rx_tlast  ),
        .m_axis_rx_tuser     (m_axis_rx_tuser  ),
        .m_axis_rx_tvalid    (m_axis_rx_tvalid ),

        .sgmii_rxn             (sgmii_rxn         ),
        .sgmii_rxp             (sgmii_rxp         ),
        .sgmii_txn             (sgmii_txn         ),
        .sgmii_txp             (sgmii_txp         ),
        .signal_detect         (signal_detect     ),
        .status_vector         (status_vector     ),

        .lvds_clk_clk_n        (mgt_clk_n         ),
        .lvds_clk_clk_p        (mgt_clk_p         ),


        .mdio_mdc              (mdio_mdc            ),
        .mdio_mdio_i           (mdio_mdio_i         ),
        .mdio_mdio_o           (mdio_mdio_o         ),
        .mdio_mdio_t           (mdio_mdio_t         ),

        .phy_rst_n             (phy_rst_n           ),

        .s_axi_araddr      (s_axi_araddr [11:0] ),
        .s_axi_awaddr      (s_axi_awaddr [11:0] ),
        .s_axi_lite_resetn (s_axi_lite_resetn),
        .s_axi_arready     (s_axi_arready    ),
        .s_axi_arvalid     (s_axi_arvalid    ),
        .s_axi_awready     (s_axi_awready    ),
        .s_axi_awvalid     (s_axi_awvalid    ),
        .s_axi_bready      (s_axi_bready     ),
        .s_axi_bresp       (s_axi_bresp      ),
        .s_axi_bvalid      (s_axi_bvalid     ),
        .s_axi_rdata       (s_axi_rdata      ),
        .s_axi_rready      (s_axi_rready     ),
        .s_axi_rresp       (s_axi_rresp      ),
        .s_axi_rvalid      (s_axi_rvalid     ),
        .s_axi_wdata       (s_axi_wdata      ),
        .s_axi_wready      (s_axi_wready     ),
        .s_axi_wvalid      (s_axi_wvalid     ),
        .s_axi_lite_clk    (s_axi_lite_clk   ) 
);

endmodule

