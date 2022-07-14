### default setting
set Project     ProjEthernetAXI
set Solution    SolutionX
set Device      "xcku040-ffva1156-2-e"
set Flow        ""
set Clock       2
set DefaultFlag 1

#### main part

# Project settings
open_project $Project -reset

# Add the file for synthesis
add_files ethernet_axi.cpp

# Add testbench files for co-simulation
#add_files -tb dram_mover_eth_test.cpp

# Set top module of the design
set_top ethernet_axi

# Solution settings
open_solution -reset $Solution

# Add library
set_part $Device

# Set the target clock period
create_clock -period $Clock
set_clock_uncertainty 0.3ns

###############
## Directives #
##############

#################
# C SIMULATION
#################
#csim_design

#############
# SYNTHESIS #
#############
csynth_design

#################
# CO-SIMULATION #
#################
#cosim_design -rtl verilog -trace_level port
#cosim_design -rtl verilog -tool modelsim -trace_level port

##################
# IMPLEMENTATION #
##################
export_design -rtl verilog -format ip_catalog

exit

