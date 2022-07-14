
# StateMover Path
set StateMoverPath ~/StateMover

# Project Name
set projName memcached

# define the output directory area.
set outputDir ./${projName}_impl
file mkdir $outputDir

# create project
create_project -part xcku040-ffva1156-2-e -f $projName $outputDir

# Set project properties
set obj [current_project]
set_property -name "board_part" -value "xilinx.com:kcu105:part0:1.5" -objects $obj
set_property -name "default_lib" -value "xil_defaultlib" -objects $obj
set_property -name "dsa.accelerator_binary_content" -value "bitstream" -objects $obj
set_property -name "dsa.accelerator_binary_format" -value "xclbin2" -objects $obj
set_property -name "dsa.board_id" -value "kcu105" -objects $obj
set_property -name "dsa.description" -value "Vivado generated DSA" -objects $obj
set_property -name "dsa.dr_bd_base_address" -value "0" -objects $obj
set_property -name "dsa.emu_dir" -value "emu" -objects $obj
set_property -name "dsa.flash_interface_type" -value "bpix16" -objects $obj
set_property -name "dsa.flash_offset_address" -value "0" -objects $obj
set_property -name "dsa.flash_size" -value "1024" -objects $obj
set_property -name "dsa.host_architecture" -value "x86_64" -objects $obj
set_property -name "dsa.host_interface" -value "pcie" -objects $obj
set_property -name "dsa.num_compute_units" -value "60" -objects $obj
set_property -name "dsa.platform_state" -value "pre_synth" -objects $obj
set_property -name "dsa.vendor" -value "xilinx" -objects $obj
set_property -name "dsa.version" -value "0.0" -objects $obj

# The syn_netlist is the concatenation of memcached.v (BD top) without the DUT module, the top module and the synthesized netlist of DUT
add_files [ glob ./${projName}_syn/${projName}_syn_netlist_new.v ]
# Import BD IPs
import_files [ exec find  ./${projName}_syn/${projName}.srcs/sources_1/bd/${projName}/ip -maxdepth 2 | grep .xci]

add_files -fileset constrs_1 top_io_kcu105.xdc

add_files [ glob ethernet_system/*.v]
import_files [ glob ethernet_system/*.xci ]
add_files -fileset constrs_1 ethernet_system/ethernet_system.xdc

add_files [ glob $StateMoverPath/IPs/IL/interruption_logic_v6.v]
add_files [ glob $StateMoverPath/IPs/IL/ti_controller.v]
import_files [ glob $StateMoverPath/IPs/IL/il_vio_6.xci ]

set_property top top [current_fileset]

# launch synthesis
launch_runs synth_1 -jobs 8
wait_on_run synth_1

open_run synth_1
report_timing_summary -file $outputDir/post_synth_timing_summary.rpt
report_utilization -file $outputDir/post_synth_util.rpt

# run implementation
launch_runs impl_1 -jobs 8
wait_on_run impl_1

open_run impl_1
report_timing_summary -file $outputDir/post_route_timing_summary.rpt
report_utilization -file $outputDir/post_route_util.rpt

write_verilog -force $outputDir/${projName}_impl_netlist.v -mode funcsim
source $StateMoverPath/Scripts/get_ram_location.tcl > $outputDir/top.rl

# generate bitstream
write_debug_probes -force $outputDir/top.ltx
write_bitstream -force -logic_location_file $outputDir/top.bit

exit



