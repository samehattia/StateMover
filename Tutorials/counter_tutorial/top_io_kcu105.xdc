####################################################################################
#///////////////////////////////////////////////////////////////////////////////
#// Copyright (c) 2005-2016 Xilinx, Inc.
#// This design is confidential and proprietary of Xilinx, Inc.
#// All Rights Reserved.
#///////////////////////////////////////////////////////////////////////////////
#//   ____  ____
#//  /   /\/   /
#// /___/  \  /   Vendor: Xilinx
#// \   \   \/    Version: 2017.3
#//  \   \        Application: Partial Reconfiguration
#//  /   /        Filename: top_io_kcu105.xdc
#// /___/   /\    Date Last Modified: 25 JUL 2017
#// \   \  /  \
#//  \___\/\___\
#// Device: KCU105 board Rev 1.0
#// Design Name: led_shift_count
#// Purpose: Partial Reconfiguration Tutorial
#///////////////////////////////////////////////////////////////////////////////

###############################################################################
# Configuration properties for KCU105 
###############################################################################
set_property BITSTREAM.GENERAL.CRC DISABLE [current_design]
set_property CONFIG_VOLTAGE 1.8 [current_design]
set_property CFGBVS GND [current_design]

###############################################################################
# User Time Names / User Time Groups / Time Specs
###############################################################################
create_clock -name clk_p -period 8.000 [get_ports clk_p]

#CLK_125MHZ_P - KCU105 - G10/LVDS
set_property PACKAGE_PIN G10 [get_ports clk_p]
set_property IOSTANDARD LVDS [get_ports clk_p]

#CLK_125MHZ_N - KCU105 - F10/LVDS
set_property PACKAGE_PIN F10 [get_ports clk_n]
set_property IOSTANDARD LVDS [get_ports clk_n]

#GPIO_DIP_SW0 - KCU105 - AN16/LVCMOS12
#GPIO_DIP_SW1 - KCU105 - AN19/LVCMOS12
#GPIO_DIP_SW2 - KCU105 - AP18/LVCMOS12
#GPIO_DIP_SW3 - KCU105 - AP19/LVCMOS12

#GPIO_SW_N (SW10) - KCU105 - AD10/LVCMOS18
#GPIO_SW_E (SW9)  - KCU105 - AE8/LVCMOS18
#GPIO_SW_W (SW6)  - KCU105 - AF9/LVCMOS18
#GPIO_SW_S (SW8)  - KCU105 - AF8/LVCMOS18

#GPIO_SW_C (SW7)  - KCU105 - AE10/LVCMOS18
set_property PACKAGE_PIN AE10 [get_ports reset]
set_property IOSTANDARD LVCMOS18 [get_ports reset]

#GPIO_LED_0 - KCU105 - AP8/LVCMOS18
set_property PACKAGE_PIN AP8 [get_ports {count_out[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {count_out[0]}]

#GPIO_LED_1 - KCU105 - H23/LVCMOS18
set_property PACKAGE_PIN H23 [get_ports {count_out[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {count_out[1]}]

#GPIO_LED_2 - KCU105 - P20/LVCMOS18
set_property PACKAGE_PIN P20 [get_ports {count_out[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {count_out[2]}]

#GPIO_LED_3 - KCU105 - P21/LVCMOS18
set_property PACKAGE_PIN P21 [get_ports {count_out[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {count_out[3]}]

#GPIO_LED_4 - KCU105 - N22/LVCMOS18
set_property PACKAGE_PIN N22 [get_ports {count_out[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {count_out[4]}]
                                         
#GPIO_LED_5 - KCU105 - M22/LVCMOS18      
set_property PACKAGE_PIN M22 [get_ports {count_out[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {count_out[5]}]
                                         
#GPIO_LED_6 - KCU105 - R23/LVCMOS18      
set_property PACKAGE_PIN R23 [get_ports {count_out[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {count_out[6]}]
                                         
#GPIO_LED_7 - KCU105 - P23/LVCMOS18      
set_property PACKAGE_PIN P23 [get_ports {count_out[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {count_out[7]}]

#-------------------------------------------------
# pblock_inst_count 
#            for pr instance inst_count 
#-------------------------------------------------
create_pblock pblock_inst_count
add_cells_to_pblock [get_pblocks pblock_inst_count] [get_cells -quiet [list inst_count]]
resize_pblock [get_pblocks pblock_inst_count] -add {SLICE_X1Y240:SLICE_X5Y267}
resize_pblock [get_pblocks pblock_inst_count] -add {DSP48E2_X0Y96:DSP48E2_X0Y105}
resize_pblock [get_pblocks pblock_inst_count] -add {RAMB18_X0Y96:RAMB18_X0Y105}
resize_pblock [get_pblocks pblock_inst_count] -add {RAMB36_X0Y48:RAMB36_X0Y52}
