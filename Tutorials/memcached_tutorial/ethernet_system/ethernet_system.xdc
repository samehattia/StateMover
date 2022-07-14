
create_clock -name lvds_clk -period 1.600 [get_ports mgt_clk_p]

set_false_path -to [get_pins -hier -nocase -regexp {.*axi_eth_ex_des_data_sync_reg0.*/D}]
set_false_path -to [get_pins -hier -nocase -regexp {.*axi_eth_ex_des_reset_sync.*/PRE}  ]

set_power_opt -exclude_cells [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ *.bram.* }]

#set_property PACKAGE_PIN  AN8   [get_ports sys_rst]
#set_property IOSTANDARD   LVCMOS18  [get_ports sys_rst]

set_property PACKAGE_PIN  j23   [get_ports phy_rst_n]
set_property IOSTANDARD   lvcmos18  [get_ports phy_rst_n]

set_property PACKAGE_PIN  p26   [get_ports mgt_clk_p]
set_property IOSTANDARD   DIFF_HSTL_I_18  [get_ports mgt_clk_p]
set_property PACKAGE_PIN  n26   [get_ports mgt_clk_n]
set_property IOSTANDARD   DIFF_HSTL_I_18  [get_ports mgt_clk_n]


## Phy in SGMII LVDS mode
set_property LOC BITSLICE_RX_TX_X1Y82 [get_cells -hier -nocase -regexp {.*/lvds_transceiver_mw/serdes_1_to_10_ser8_i/idelay_cal}]
set_property LOC N24 [get_ports *txp]
set_property LOC P24 [get_ports *rxp]