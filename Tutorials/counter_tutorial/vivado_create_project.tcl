
# StateMover Path
set StateMoverPath ~/StateMover

# Project Name
set projName counter
set prModule count
set taskName inst_count

# define the output directory area.
set outputDir ./$projName
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

# setup design sources and constraints
add_files [ glob top.v count.v]
add_files -fileset constrs_1 top_io_kcu105.xdc

add_files [ glob $StateMoverPath/IPs/IL/interruption_logic_v1.v ]
import_files [ glob $StateMoverPath/IPs/IL/il_vio_2.xci ]

set_property top top [current_fileset]

# create a PR project if prModule is set
if { $prModule ne "" } {
	set_property PR_FLOW 1 [current_project]
	create_partition_def -name bist -module $prModule
	create_reconfig_module -name $prModule -partition_def [get_partition_defs bist] -define_from $prModule
	create_pr_configuration -name config_1 -partitions [list $taskName:$prModule]
	set_property PR_CONFIGURATION config_1 [get_runs impl_1]
}

exit

