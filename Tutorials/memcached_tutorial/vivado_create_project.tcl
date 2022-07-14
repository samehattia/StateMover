
# StateMover Path
set StateMoverPath ~/StateMover

# StateLinkPath Path
set StateLinkPath $StateMoverPath/StateLink

# Project Name
set projName memcached

# define the output directory area.
set outputDir ./$projName
file mkdir $outputDir

# create project
create_project -part xcku040-ffva1156-2-e -f ${projName} $outputDir

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

# create block design
set_property  ip_repo_paths  [glob $StateMoverPath/IPs ./hls $StateLinkPath/IPs] [current_project]
update_ip_catalog
source memcached_bd_ethernet_axi.tcl

# setup design sources and constraints
add_files [ glob top.v]

add_files -fileset constrs_1 top_io_kcu105.xdc

add_files [ glob ethernet_system/*.v]
import_files [ glob ethernet_system/*.xci ]
add_files -fileset constrs_1 ethernet_system/ethernet_system.xdc

add_files [ glob $StateMoverPath/IPs/IL/interruption_logic_v6.v]
add_files [ glob $StateMoverPath/IPs/IL/ti_controller.v]
import_files [ glob $StateMoverPath/IPs/IL/il_vio_6.xci ]

set_property top top [current_fileset]

exit

