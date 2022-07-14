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
#// \   \  / #//  \___\/\___ #// Device: KCU105 board Rev 1.0
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
create_clock -period 3.333 -name default_sysclk_300_clk_p [get_ports default_sysclk_300_clk_p]

#CLOCKS
set_property ODT RTT_48 [get_ports default_sysclk_300_clk_n]
set_property IOSTANDARD DIFF_SSTL12_DCI [get_ports default_sysclk_300_clk_n]

set_property PACKAGE_PIN AK17 [get_ports default_sysclk_300_clk_p]
set_property PACKAGE_PIN AK16 [get_ports default_sysclk_300_clk_n]
set_property IOSTANDARD DIFF_SSTL12_DCI [get_ports default_sysclk_300_clk_p]
set_property ODT RTT_48 [get_ports default_sysclk_300_clk_p]

#CLK_125MHZ_P - KCU105 - G10/LVDS
#CLK_125MHZ_N - KCU105 - F10/LVDS

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

set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]

set_property DONT_TOUCH true [get_cells memcached_i/DUT]