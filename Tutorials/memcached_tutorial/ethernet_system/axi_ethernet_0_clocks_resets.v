//----------------------------------------------------------------------------------------------------------------------
// Title      : Verilog Example Level Module
// File       : axi_ethernet_0_clocks_resets.v
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
// Description: This is a clocks and resets wrapper for Example Design of AXI Ethernet IP.
//              It instantiates clock wizard and reset generator modules.
//----------------------------------------------------------------------------------------------------------------------

`timescale 1ps/1ps

module axi_ethernet_0_clocks_resets
(
// System clock input
    input  sys_clk,

// asynchronous control/resets
    input sys_rst   ,
    input soft_rst  ,

// locked status signal
    output mmcm_locked_out ,

//reset outputs
    output axi_lite_resetn ,
    output axis_rstn       ,
    output sys_out_rst     ,

// clock outputs
    output gtx_clk_bufg  ,
    output ref_clk_bufg  ,
    output ref_clk_50_bufg,
    output axis_clk_bufg,
    output axi_lite_clk_bufg 
);

wire axis_clk_int, axi_lite_clk_int, axi_lite_reset_int, axis_rst_int, sys_rst_int, mmcm_clkfbout, mmcm_clkfbout_buf;
wire clk_in1, clk_100, clk_125, clk_166, clk_50; 
wire mmcm_locked_i;
wire clk_300;

assign sys_rst_int       = ~mmcm_locked_i || soft_rst;
assign axis_clk_bufg     = axis_clk_int;
assign axi_lite_clk_bufg = axi_lite_clk_int;
assign sys_out_rst       = sys_rst_int;
assign axi_lite_resetn   = ~axi_lite_reset_int;
assign axis_rstn         = ~axis_rst_int;
assign mmcm_locked_out   = mmcm_locked_i;

BUFG gtx_clk_bufg_inst      (.I(clk_125), .O(gtx_clk_bufg     ));
BUFG ref_clk_bufg_inst      (.I(clk_300), .O(ref_clk_bufg     ));
BUFG ref_clk_50_bufg_inst   (.I(clk_50 ), .O(ref_clk_50_bufg  ));
BUFG axis_clk_int_inst      (.I(clk_100), .O(axis_clk_int     ));
BUFG axi_lite_clk_int_inst  (.I(clk_100), .O(axi_lite_clk_int ));

// Input differential clock buffering
BUFG   clkf_buf   (.I(mmcm_clkfbout), .O(mmcm_clkfbout_buf));

 MMCME3_ADV 
#(
    .BANDWIDTH             ("OPTIMIZED"),
    .CLKFBOUT_MULT_F       (2.500),
    .CLKFBOUT_PHASE        (0.000000),
    .CLKFBOUT_USE_FINE_PS  ("FALSE"),
    .CLKIN1_PERIOD         (3.333),
    .CLKIN2_PERIOD         (0.000000),
    .CLKOUT0_DIVIDE_F      (2.500),
    .CLKOUT0_DUTY_CYCLE    (0.500000),
    .CLKOUT0_PHASE         (0.000000),
    .CLKOUT0_USE_FINE_PS   ("FALSE"),
    .CLKOUT1_DIVIDE        (6.000),
    .CLKOUT1_DUTY_CYCLE    (0.500000),
    .CLKOUT1_PHASE         (0.000000),
    .CLKOUT1_USE_FINE_PS   ("FALSE"),
    .CLKOUT2_DIVIDE        (7.000),
    .CLKOUT2_PHASE         (0.000000),
    .CLKOUT2_DUTY_CYCLE    (0.500000),
    .CLKOUT2_USE_FINE_PS   ("FALSE"),
    .CLKOUT3_DIVIDE        (5.000),
    .CLKOUT3_DUTY_CYCLE    (0.500000),
    .CLKOUT3_PHASE         (0.000000),
    .CLKOUT3_USE_FINE_PS   ("FALSE"),
    .CLKOUT4_CASCADE       ("FALSE"),
    .CLKOUT4_DIVIDE        (15.00),
    .CLKOUT4_DUTY_CYCLE    (0.500000),
    .CLKOUT4_PHASE         (0.000000),
    .CLKOUT4_USE_FINE_PS   ("FALSE"),
    .CLKOUT5_DIVIDE        (1),
    .CLKOUT5_DUTY_CYCLE    (0.500000),
    .CLKOUT5_PHASE         (0.000000),
    .CLKOUT5_USE_FINE_PS   ("FALSE"),
    .CLKOUT6_DIVIDE        (1),
    .CLKOUT6_DUTY_CYCLE    (0.500000),
    .CLKOUT6_PHASE         (0.000000),
    .CLKOUT6_USE_FINE_PS   ("FALSE"),
    .COMPENSATION          ("ZHOLD"),
    .DIVCLK_DIVIDE         (1),
    .REF_JITTER1           (0.010000),
    .REF_JITTER2           (0.010000),
    .SS_EN                 ("FALSE"),
    .SS_MODE               ("CENTER_HIGH"),
    .SS_MOD_PERIOD         (10000),
    .STARTUP_WAIT          ("FALSE")
) mmcm_adv_inst
(
    .CLKOUT0(clk_300),
    .CLKOUT1(clk_125),
    .CLKOUT2(clk_100),
    .CLKOUT3(clk_166),
    .CLKOUT4(clk_50 ),
    .CLKFBIN  (mmcm_clkfbout_buf),
    .CLKFBOUT (mmcm_clkfbout    ),
    .CLKIN1   (sys_clk          ),
    .CLKIN2   (1'b0             ),
    .CLKINSEL (1'b1             ),
    .DADDR    (7'h0             ),
    .DCLK     (1'b0             ),
    .DEN      (1'b0             ),
    .DI       (16'h0            ),
    .DWE      (1'b0             ),
    .LOCKED   (mmcm_locked_i    ),
    .PSCLK    (1'b0             ),
    .PSEN     (1'b0             ),
    .PSINCDEC (1'b0             ),
    .CDDCREQ  (1'b0             ),
    .PWRDWN   (1'b0             ),
    .RST      (sys_rst          ) 
);

axi_ethernet_0_reset_sync axi_lite_reset_gen (
    .clk       (axi_lite_clk_int  ),
    .reset_in  (sys_rst_int       ),
    .reset_out (axi_lite_reset_int) 
);

axi_ethernet_0_reset_sync axi_str_reset_gen (
    .clk       (axis_clk_int),
    .reset_in  (sys_rst_int ),
    .reset_out (axis_rst_int) 
);

endmodule 
