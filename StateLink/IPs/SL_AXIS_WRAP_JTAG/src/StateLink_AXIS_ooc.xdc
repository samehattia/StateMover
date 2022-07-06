################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name axis_clk_0 -period 6.667 [get_ports axis_clk_0]
create_clock -name axis_clk_bufg_0 -period 6.667 [get_ports axis_clk_bufg_0]

################################################################################