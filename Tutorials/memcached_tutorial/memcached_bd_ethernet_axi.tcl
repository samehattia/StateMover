
################################################################
# This is a generated script based on design: memcached
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source memcached_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcku040-ffva1156-2-e
   set_property BOARD_PART xilinx.com:kcu105:part0:1.5 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name memcached

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

set bCheckIPsPassed 1
##################################################################
# CHECK IPs
##################################################################
set bCheckIPs 1
if { $bCheckIPs == 1 } {
   set list_check_ips "\ 
xilinx.com:ip:axis_dwidth_converter:1.1\
xilinx.labs:hls:axis_width_upsizer:1.04\
xilinx.com:ip:ddr4:2.2\
xilinx.com:hls:ethernet_axi_splitter:1.0\
xilinx.com:ip:proc_sys_reset:5.0\
xilinx.com:ip:xlconstant:1.1\
xilinx.com:ip:axi_datamover:5.1\
xilinx.com:ip:axis_clock_converter:1.1\
xilinx.labs:hls:dummyPCIeJoint:1.0\
xilinx.labs:hls:flashModel:1.0\
xilinx.labs:hls:mac_header_add:1.04\
xilinx.labs:hls:mac_header_strip:1.04\
xilinx.labs:hls:memcachedPipeline:1.07\
xilinx.labs:hls:readWriteConverter:1.04\
xilinx.labs:hls:readWriteConverterOffset:1.04\
xilinx.com:ip:axis_register_slice:1.1\
xilinx.com:ip:axis_switch:1.1\
xilinx.com:hls:axis_timestamper:1.0\
xilinx.com:hls:ethernet_axis:1.0\
user.org:user:ti_trans_axis_wrapper:1.0\
xilinx.com:hls:axi_timestamper:1.0\
xilinx.com:hls:ethernet_axi:1.0\
user.org:user:ti_transp_axi_wrapper:1.0\
"

   set list_ips_missing ""
   common::send_msg_id "BD_TCL-006" "INFO" "Checking if the following IPs exist in the project's IP catalog: $list_check_ips ."

   foreach ip_vlnv $list_check_ips {
      set ip_obj [get_ipdefs -all $ip_vlnv]
      if { $ip_obj eq "" } {
         lappend list_ips_missing $ip_vlnv
      }
   }

   if { $list_ips_missing ne "" } {
      catch {common::send_msg_id "BD_TCL-115" "ERROR" "The following IPs are not found in the IP Catalog:\n  $list_ips_missing\n\nResolution: Please add the repository containing the IP(s) to the project." }
      set bCheckIPsPassed 0
   }

}

if { $bCheckIPsPassed != 1 } {
  common::send_msg_id "BD_TCL-1003" "WARNING" "Will not continue with creation of design due to the error(s) above."
  return 3
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: StateLink_AXI_0
proc create_hier_cell_StateLink_AXI_0 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_StateLink_AXI_0() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M00_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 data_in
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 data_out

  # Create pins
  create_bd_pin -dir I -type clk ap_clk
  create_bd_pin -dir I -type rst ap_rst_n
  create_bd_pin -dir I decouple_0
  create_bd_pin -dir O -from 1 -to 0 stop_ack_0
  create_bd_pin -dir I -from 1 -to 0 stop_req_0
  create_bd_pin -dir I -type clk sys_clk
  create_bd_pin -dir I -type clk sys_clk_bufg
  create_bd_pin -dir I -type rst sys_rst_n
  create_bd_pin -dir I -type rst sys_rst_n_bufg

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {2} \
   CONFIG.STRATEGY {1} \
 ] $axi_interconnect_0

  # Create instance: axi_interconnect_1, and set properties
  set axi_interconnect_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_1 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {2} \
   CONFIG.NUM_SI {1} \
 ] $axi_interconnect_1

  # Create instance: axi_timestamper_0, and set properties
  set axi_timestamper_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:axi_timestamper:1.0 axi_timestamper_0 ]

  # Create instance: ethernet_axi_0, and set properties
  set ethernet_axi_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:ethernet_axi:1.0 ethernet_axi_0 ]

  # Create instance: ti_transp_axi_wrapper_0, and set properties
  set ti_transp_axi_wrapper_0 [ create_bd_cell -type ip -vlnv user.org:user:ti_transp_axi_wrapper:1.0 ti_transp_axi_wrapper_0 ]
  set_property -dict [ list \
   CONFIG.C_M00_AXI_ARUSER_WIDTH {4} \
   CONFIG.C_M00_AXI_AWUSER_WIDTH {4} \
   CONFIG.C_M00_AXI_BUSER_WIDTH {0} \
   CONFIG.C_M00_AXI_DATA_WIDTH {512} \
   CONFIG.C_M00_AXI_ID_WIDTH {6} \
   CONFIG.C_M00_AXI_RUSER_WIDTH {0} \
   CONFIG.C_M00_AXI_WUSER_WIDTH {0} \
   CONFIG.C_S01_AXI_DATA_WIDTH {512} \
 ] $ti_transp_axi_wrapper_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins data_in] [get_bd_intf_pins ethernet_axi_0/data_in]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins data_out] [get_bd_intf_pins ethernet_axi_0/data_out]
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins S00_AXI] [get_bd_intf_pins ti_transp_axi_wrapper_0/S01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins M00_AXI] [get_bd_intf_pins axi_interconnect_0/M00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_1_M00_AXI [get_bd_intf_pins axi_interconnect_0/S01_AXI] [get_bd_intf_pins axi_interconnect_1/M00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_1_M01_AXI [get_bd_intf_pins axi_interconnect_1/M01_AXI] [get_bd_intf_pins axi_timestamper_0/s_axi_timestamp]
  connect_bd_intf_net -intf_net ethernet_axi_0_m_axi_mem_V [get_bd_intf_pins axi_interconnect_1/S00_AXI] [get_bd_intf_pins ethernet_axi_0/m_axi_mem_V]
  connect_bd_intf_net -intf_net ti_transp_axi_wrapper_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/S00_AXI] [get_bd_intf_pins ti_transp_axi_wrapper_0/M00_AXI]

  # Create port connections
  connect_bd_net -net M00_AXI_wready_1 [get_bd_pins axi_interconnect_0/S01_AXI_wready] [get_bd_pins axi_interconnect_1/M00_AXI_wready] [get_bd_pins axi_timestamper_0/wready_V]
  connect_bd_net -net ap_clk_1 [get_bd_pins ap_clk] [get_bd_pins axi_interconnect_1/S00_ACLK] [get_bd_pins ethernet_axi_0/ap_clk]
  connect_bd_net -net ap_rst_n_1 [get_bd_pins ap_rst_n] [get_bd_pins axi_interconnect_1/S00_ARESETN] [get_bd_pins ethernet_axi_0/ap_rst_n]
  connect_bd_net -net axi_interconnect_0_S01_AXI_arready [get_bd_pins axi_interconnect_0/S01_AXI_arready] [get_bd_pins axi_interconnect_1/M00_AXI_arready] [get_bd_pins axi_timestamper_0/arready_V]
  connect_bd_net -net axi_interconnect_0_S01_AXI_awready [get_bd_pins axi_interconnect_0/S01_AXI_awready] [get_bd_pins axi_interconnect_1/M00_AXI_awready]
  connect_bd_net -net axi_interconnect_0_S01_AXI_bvalid [get_bd_pins axi_interconnect_0/S01_AXI_bvalid] [get_bd_pins axi_interconnect_1/M00_AXI_bvalid] [get_bd_pins axi_timestamper_0/bvalid_V]
  connect_bd_net -net axi_interconnect_0_S01_AXI_rvalid [get_bd_pins axi_interconnect_0/S01_AXI_rvalid] [get_bd_pins axi_interconnect_1/M00_AXI_rvalid] [get_bd_pins axi_timestamper_0/rvalid_V]
  connect_bd_net -net axi_interconnect_1_M00_AXI_arvalid [get_bd_pins axi_interconnect_0/S01_AXI_arvalid] [get_bd_pins axi_interconnect_1/M00_AXI_arvalid] [get_bd_pins axi_timestamper_0/arvalid_V]
  connect_bd_net -net axi_interconnect_1_M00_AXI_awvalid [get_bd_pins axi_interconnect_0/S01_AXI_awvalid] [get_bd_pins axi_interconnect_1/M00_AXI_awvalid]
  connect_bd_net -net axi_interconnect_1_M00_AXI_bready [get_bd_pins axi_interconnect_0/S01_AXI_bready] [get_bd_pins axi_interconnect_1/M00_AXI_bready] [get_bd_pins axi_timestamper_0/bready_V]
  connect_bd_net -net axi_interconnect_1_M00_AXI_rready [get_bd_pins axi_interconnect_0/S01_AXI_rready] [get_bd_pins axi_interconnect_1/M00_AXI_rready] [get_bd_pins axi_timestamper_0/rready_V]
  connect_bd_net -net axi_interconnect_1_M00_AXI_wlast [get_bd_pins axi_interconnect_0/S01_AXI_wlast] [get_bd_pins axi_interconnect_1/M00_AXI_wlast] [get_bd_pins axi_timestamper_0/wlast_V]
  connect_bd_net -net axi_interconnect_1_M00_AXI_wvalid [get_bd_pins axi_interconnect_0/S01_AXI_wvalid] [get_bd_pins axi_interconnect_1/M00_AXI_wvalid] [get_bd_pins axi_timestamper_0/wvalid_V]
  connect_bd_net -net ddr4_0_c0_ddr4_ui_clk [get_bd_pins sys_clk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_interconnect_0/S01_ACLK] [get_bd_pins axi_interconnect_1/ACLK] [get_bd_pins axi_interconnect_1/M00_ACLK] [get_bd_pins axi_interconnect_1/M01_ACLK] [get_bd_pins axi_timestamper_0/ap_clk] [get_bd_pins ti_transp_axi_wrapper_0/m00_axi_aclk]
  connect_bd_net -net decouple_0_1 [get_bd_pins decouple_0] [get_bd_pins ti_transp_axi_wrapper_0/decouple]
  connect_bd_net -net rst_ddr4_0_300M_peripheral_aresetn [get_bd_pins sys_rst_n] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_interconnect_0/S01_ARESETN] [get_bd_pins axi_interconnect_1/ARESETN] [get_bd_pins axi_interconnect_1/M00_ARESETN] [get_bd_pins axi_interconnect_1/M01_ARESETN] [get_bd_pins axi_timestamper_0/ap_rst_n] [get_bd_pins ti_transp_axi_wrapper_0/m00_axi_aresetn]
  connect_bd_net -net stop_req_0_1 [get_bd_pins stop_req_0] [get_bd_pins ti_transp_axi_wrapper_0/stop_req]
  connect_bd_net -net sys_clk_bufg_1 [get_bd_pins sys_clk_bufg] [get_bd_pins ti_transp_axi_wrapper_0/s01_axi_aclk]
  connect_bd_net -net sys_rst_n_bufg_1 [get_bd_pins sys_rst_n_bufg] [get_bd_pins ti_transp_axi_wrapper_0/s01_axi_aresetn]
  connect_bd_net -net ti_transp_axi_wrapper_0_stop_ack [get_bd_pins stop_ack_0] [get_bd_pins ti_transp_axi_wrapper_0/stop_ack]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: StateLink_AXIS_0
proc create_hier_cell_StateLink_AXIS_0 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_StateLink_AXIS_0() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M00_AXIS
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M00_AXIS1
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S00_AXIS
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S00_AXIS1
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 data_in
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 data_out_0

  # Create pins
  create_bd_pin -dir I -type clk axis_clk
  create_bd_pin -dir I -type clk axis_clk_bufg
  create_bd_pin -dir I -type rst axis_rst_n
  create_bd_pin -dir I -type rst axis_rst_n_bufg
  create_bd_pin -dir I decouple_1
  create_bd_pin -dir O -from 1 -to 0 stop_ack_1
  create_bd_pin -dir I -from 1 -to 0 stop_req_1

  # Create instance: axis_register_slice_0, and set properties
  set axis_register_slice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_register_slice:1.1 axis_register_slice_0 ]

  # Create instance: axis_switch_0, and set properties
  set axis_switch_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_switch:1.1 axis_switch_0 ]
  set_property -dict [ list \
   CONFIG.ARB_ON_TLAST {0} \
   CONFIG.NUM_SI {2} \
 ] $axis_switch_0

  # Create instance: axis_switch_1, and set properties
  set axis_switch_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_switch:1.1 axis_switch_1 ]
  set_property -dict [ list \
   CONFIG.DECODER_REG {1} \
   CONFIG.NUM_MI {2} \
   CONFIG.NUM_SI {1} \
 ] $axis_switch_1

  # Create instance: axis_timestamper_0, and set properties
  set axis_timestamper_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:axis_timestamper:1.0 axis_timestamper_0 ]

  # Create instance: ethernet_axis_0, and set properties
  set ethernet_axis_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:ethernet_axis:1.0 ethernet_axis_0 ]

  # Create instance: ti_trans_axis_wrapper_0, and set properties
  set ti_trans_axis_wrapper_0 [ create_bd_cell -type ip -vlnv user.org:user:ti_trans_axis_wrapper:1.0 ti_trans_axis_wrapper_0 ]
  set_property -dict [ list \
   CONFIG.C_M00_AXIS_TDATA_WIDTH {64} \
   CONFIG.C_M01_AXIS_TDATA_WIDTH {64} \
   CONFIG.C_S00_AXIS_TDATA_WIDTH {64} \
   CONFIG.C_S01_AXIS_TDATA_WIDTH {64} \
 ] $ti_trans_axis_wrapper_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {2} \
 ] $xlconstant_0

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXIS1_1 [get_bd_intf_pins S00_AXIS1] [get_bd_intf_pins axis_switch_1/S00_AXIS]
  connect_bd_intf_net -intf_net S00_AXIS_1 [get_bd_intf_pins S00_AXIS] [get_bd_intf_pins ti_trans_axis_wrapper_0/S00_AXIS]
  connect_bd_intf_net -intf_net axis_register_slice_0_M_AXIS [get_bd_intf_pins axis_register_slice_0/M_AXIS] [get_bd_intf_pins ethernet_axis_0/fifo_in]
  connect_bd_intf_net -intf_net axis_switch_0_M00_AXIS [get_bd_intf_pins M00_AXIS] [get_bd_intf_pins axis_switch_0/M00_AXIS]
  connect_bd_intf_net -intf_net axis_switch_1_M00_AXIS [get_bd_intf_pins axis_switch_1/M00_AXIS] [get_bd_intf_pins ti_trans_axis_wrapper_0/S01_AXIS]
  connect_bd_intf_net -intf_net axis_switch_1_M01_AXIS [get_bd_intf_pins axis_switch_1/M01_AXIS] [get_bd_intf_pins axis_timestamper_0/data_in]
  connect_bd_intf_net -intf_net axis_timestamper_0_data_out [get_bd_intf_pins axis_register_slice_0/S_AXIS] [get_bd_intf_pins axis_timestamper_0/data_out]
  connect_bd_intf_net -intf_net data_in_1 [get_bd_intf_pins data_in] [get_bd_intf_pins ethernet_axis_0/data_in]
  connect_bd_intf_net -intf_net ethernet_axis_0_data_out [get_bd_intf_pins data_out_0] [get_bd_intf_pins ethernet_axis_0/data_out]
  connect_bd_intf_net -intf_net ethernet_axis_0_fifo_out [get_bd_intf_pins axis_switch_0/S01_AXIS] [get_bd_intf_pins ethernet_axis_0/fifo_out]
  connect_bd_intf_net -intf_net ti_trans_axis_wrapper_0_M00_AXIS [get_bd_intf_pins axis_switch_0/S00_AXIS] [get_bd_intf_pins ti_trans_axis_wrapper_0/M00_AXIS]
  connect_bd_intf_net -intf_net ti_trans_axis_wrapper_0_M01_AXIS [get_bd_intf_pins M00_AXIS1] [get_bd_intf_pins ti_trans_axis_wrapper_0/M01_AXIS]

  # Create port connections
  connect_bd_net -net axis_clk_bufg_1 [get_bd_pins axis_clk_bufg] [get_bd_pins ti_trans_axis_wrapper_0/m01_axis_aclk] [get_bd_pins ti_trans_axis_wrapper_0/s00_axis_aclk]
  connect_bd_net -net axis_rst_n_bufg_1 [get_bd_pins axis_rst_n_bufg] [get_bd_pins ti_trans_axis_wrapper_0/m01_axis_aresetn] [get_bd_pins ti_trans_axis_wrapper_0/s00_axis_aresetn]
  connect_bd_net -net ddr4_0_addn_ui_clkout1 [get_bd_pins axis_clk] [get_bd_pins axis_register_slice_0/aclk] [get_bd_pins axis_switch_0/aclk] [get_bd_pins axis_switch_1/aclk] [get_bd_pins axis_timestamper_0/ap_clk] [get_bd_pins ethernet_axis_0/ap_clk] [get_bd_pins ti_trans_axis_wrapper_0/m00_axis_aclk] [get_bd_pins ti_trans_axis_wrapper_0/s01_axis_aclk]
  connect_bd_net -net decouple_1_1 [get_bd_pins decouple_1] [get_bd_pins axis_switch_1/s_axis_tdest] [get_bd_pins axis_timestamper_0/start_V] [get_bd_pins ti_trans_axis_wrapper_0/decouple]
  connect_bd_net -net rst_ddr4_0_150M_peripheral_aresetn [get_bd_pins axis_rst_n] [get_bd_pins axis_register_slice_0/aresetn] [get_bd_pins axis_switch_0/aresetn] [get_bd_pins axis_switch_1/aresetn] [get_bd_pins axis_timestamper_0/ap_rst_n] [get_bd_pins ethernet_axis_0/ap_rst_n] [get_bd_pins ti_trans_axis_wrapper_0/m00_axis_aresetn] [get_bd_pins ti_trans_axis_wrapper_0/s01_axis_aresetn]
  connect_bd_net -net stop_req_1_1 [get_bd_pins stop_req_1] [get_bd_pins ti_trans_axis_wrapper_0/stop_req]
  connect_bd_net -net ti_trans_axis_wrapper_0_stop_ack [get_bd_pins stop_ack_1] [get_bd_pins ti_trans_axis_wrapper_0/stop_ack]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins axis_switch_0/s_req_suppress] [get_bd_pins xlconstant_0/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: DUT
proc create_hier_cell_DUT { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_DUT() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M00_AXI
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 dataIn
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 dataOut

  # Create pins
  create_bd_pin -dir I -from 47 -to 0 -type data DestMacAddress_V_0
  create_bd_pin -dir I -from 47 -to 0 -type data SrcMacAddress_V_0
  create_bd_pin -dir I -type clk axis_clk
  create_bd_pin -dir I -type rst axis_rst_n
  create_bd_pin -dir I -from 47 -to 0 -type data myMacAddress_V_0
  create_bd_pin -dir I -type clk sys_clk
  create_bd_pin -dir I -type rst sys_rst_n

  # Create instance: axi_datamover_0, and set properties
  set axi_datamover_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_datamover:5.1 axi_datamover_0 ]
  set_property -dict [ list \
   CONFIG.c_dummy {1} \
   CONFIG.c_m_axi_mm2s_data_width {512} \
   CONFIG.c_m_axis_mm2s_tdata_width {512} \
   CONFIG.c_mm2s_burst_size {16} \
 ] $axi_datamover_0

  # Create instance: axi_datamover_1, and set properties
  set axi_datamover_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_datamover:5.1 axi_datamover_1 ]
  set_property -dict [ list \
   CONFIG.c_dummy {1} \
   CONFIG.c_m_axi_mm2s_data_width {512} \
   CONFIG.c_m_axis_mm2s_tdata_width {512} \
   CONFIG.c_mm2s_burst_size {16} \
 ] $axi_datamover_1

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
   CONFIG.M00_HAS_REGSLICE {1} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {4} \
 ] $axi_interconnect_0

  # Create instance: axis_clock_converter_0, and set properties
  set axis_clock_converter_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_clock_converter:1.1 axis_clock_converter_0 ]

  # Create instance: axis_clock_converter_1, and set properties
  set axis_clock_converter_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_clock_converter:1.1 axis_clock_converter_1 ]

  # Create instance: axis_clock_converter_2, and set properties
  set axis_clock_converter_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_clock_converter:1.1 axis_clock_converter_2 ]

  # Create instance: axis_clock_converter_3, and set properties
  set axis_clock_converter_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_clock_converter:1.1 axis_clock_converter_3 ]

  # Create instance: dummyPCIeJoint_0, and set properties
  set dummyPCIeJoint_0 [ create_bd_cell -type ip -vlnv xilinx.labs:hls:dummyPCIeJoint:1.0 dummyPCIeJoint_0 ]

  # Create instance: flashModel_0, and set properties
  set flashModel_0 [ create_bd_cell -type ip -vlnv xilinx.labs:hls:flashModel:1.0 flashModel_0 ]

  # Create instance: mac_header_add_0, and set properties
  set mac_header_add_0 [ create_bd_cell -type ip -vlnv xilinx.labs:hls:mac_header_add:1.04 mac_header_add_0 ]

  # Create instance: mac_header_strip_0, and set properties
  set mac_header_strip_0 [ create_bd_cell -type ip -vlnv xilinx.labs:hls:mac_header_strip:1.04 mac_header_strip_0 ]

  # Create instance: memcachedPipeline_0, and set properties
  set memcachedPipeline_0 [ create_bd_cell -type ip -vlnv xilinx.labs:hls:memcachedPipeline:1.07 memcachedPipeline_0 ]

  # Create instance: readWriteConverter_0, and set properties
  set readWriteConverter_0 [ create_bd_cell -type ip -vlnv xilinx.labs:hls:readWriteConverter:1.04 readWriteConverter_0 ]

  # Create instance: readWriteConverter_1, and set properties
  set readWriteConverter_1 [ create_bd_cell -type ip -vlnv xilinx.labs:hls:readWriteConverterOffset:1.04 readWriteConverter_1 ]

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins M00_AXI] [get_bd_intf_pins axi_interconnect_0/M00_AXI]
  connect_bd_intf_net -intf_net axi_datamover_0_M_AXIS_MM2S [get_bd_intf_pins axi_datamover_0/M_AXIS_MM2S] [get_bd_intf_pins axis_clock_converter_0/S_AXIS]
  connect_bd_intf_net -intf_net axi_datamover_0_M_AXIS_MM2S_STS [get_bd_intf_pins axi_datamover_0/M_AXIS_MM2S_STS] [get_bd_intf_pins readWriteConverter_0/dmRdStatus_V_V]
  connect_bd_intf_net -intf_net axi_datamover_0_M_AXIS_S2MM_STS [get_bd_intf_pins axi_datamover_0/M_AXIS_S2MM_STS] [get_bd_intf_pins readWriteConverter_0/dmWrStatus_V_V]
  connect_bd_intf_net -intf_net axi_datamover_0_M_AXI_MM2S [get_bd_intf_pins axi_datamover_0/M_AXI_MM2S] [get_bd_intf_pins axi_interconnect_0/S00_AXI]
  connect_bd_intf_net -intf_net axi_datamover_0_M_AXI_S2MM [get_bd_intf_pins axi_datamover_0/M_AXI_S2MM] [get_bd_intf_pins axi_interconnect_0/S01_AXI]
  connect_bd_intf_net -intf_net axi_datamover_1_M_AXIS_MM2S [get_bd_intf_pins axi_datamover_1/M_AXIS_MM2S] [get_bd_intf_pins axis_clock_converter_2/S_AXIS]
  connect_bd_intf_net -intf_net axi_datamover_1_M_AXIS_MM2S_STS [get_bd_intf_pins axi_datamover_1/M_AXIS_MM2S_STS] [get_bd_intf_pins readWriteConverter_1/dmRdStatus_V_V]
  connect_bd_intf_net -intf_net axi_datamover_1_M_AXIS_S2MM_STS [get_bd_intf_pins axi_datamover_1/M_AXIS_S2MM_STS] [get_bd_intf_pins readWriteConverter_1/dmWrStatus_V_V]
  connect_bd_intf_net -intf_net axi_datamover_1_M_AXI_MM2S [get_bd_intf_pins axi_datamover_1/M_AXI_MM2S] [get_bd_intf_pins axi_interconnect_0/S02_AXI]
  connect_bd_intf_net -intf_net axi_datamover_1_M_AXI_S2MM [get_bd_intf_pins axi_datamover_1/M_AXI_S2MM] [get_bd_intf_pins axi_interconnect_0/S03_AXI]
  connect_bd_intf_net -intf_net axis_clock_converter_0_M_AXIS [get_bd_intf_pins axis_clock_converter_0/M_AXIS] [get_bd_intf_pins readWriteConverter_0/dmRdData_V]
  connect_bd_intf_net -intf_net axis_clock_converter_1_M_AXIS [get_bd_intf_pins axi_datamover_0/S_AXIS_S2MM] [get_bd_intf_pins axis_clock_converter_1/M_AXIS]
  connect_bd_intf_net -intf_net axis_clock_converter_2_M_AXIS [get_bd_intf_pins axis_clock_converter_2/M_AXIS] [get_bd_intf_pins readWriteConverter_1/dmRdData_V]
  connect_bd_intf_net -intf_net axis_clock_converter_3_M_AXIS [get_bd_intf_pins axi_datamover_1/S_AXIS_S2MM] [get_bd_intf_pins axis_clock_converter_3/M_AXIS]
  connect_bd_intf_net -intf_net axis_switch_1_M00_AXIS [get_bd_intf_pins dataIn] [get_bd_intf_pins mac_header_strip_0/dataIn]
  connect_bd_intf_net -intf_net dummyPCIeJoint_0_outDataDram_V_V [get_bd_intf_pins dummyPCIeJoint_0/outDataDram_V_V] [get_bd_intf_pins memcachedPipeline_0/addressAssignDramIn_V_V]
  connect_bd_intf_net -intf_net dummyPCIeJoint_0_outDataFlash_V_V [get_bd_intf_pins dummyPCIeJoint_0/outDataFlash_V_V] [get_bd_intf_pins memcachedPipeline_0/addressAssignFlashIn_V_V]
  connect_bd_intf_net -intf_net flashModel_0_rdDataOut_V_V [get_bd_intf_pins flashModel_0/rdDataOut_V_V] [get_bd_intf_pins memcachedPipeline_0/flashValueStoreMemRdData_V_V]
  connect_bd_intf_net -intf_net mac_header_add_0_dataOut [get_bd_intf_pins dataOut] [get_bd_intf_pins mac_header_add_0/dataOut]
  connect_bd_intf_net -intf_net mac_header_strip_0_IPdataOut [get_bd_intf_pins mac_header_strip_0/IPdataOut] [get_bd_intf_pins memcachedPipeline_0/inData]
  connect_bd_intf_net -intf_net memcachedPipeline_0_addressReturnOut_V_V [get_bd_intf_pins dummyPCIeJoint_0/inData_V_V] [get_bd_intf_pins memcachedPipeline_0/addressReturnOut_V_V]
  connect_bd_intf_net -intf_net memcachedPipeline_0_dramValueStoreMemRdCmd_V [get_bd_intf_pins memcachedPipeline_0/dramValueStoreMemRdCmd_V] [get_bd_intf_pins readWriteConverter_0/memRdCmd_V]
  connect_bd_intf_net -intf_net memcachedPipeline_0_dramValueStoreMemWrCmd_V [get_bd_intf_pins memcachedPipeline_0/dramValueStoreMemWrCmd_V] [get_bd_intf_pins readWriteConverter_0/memWrCmd_V]
  connect_bd_intf_net -intf_net memcachedPipeline_0_dramValueStoreMemWrData_V_V [get_bd_intf_pins memcachedPipeline_0/dramValueStoreMemWrData_V_V] [get_bd_intf_pins readWriteConverter_0/memWrData_V_V]
  connect_bd_intf_net -intf_net memcachedPipeline_0_flashValueStoreMemRdCmd_V [get_bd_intf_pins flashModel_0/rdCmdIn_V] [get_bd_intf_pins memcachedPipeline_0/flashValueStoreMemRdCmd_V]
  connect_bd_intf_net -intf_net memcachedPipeline_0_flashValueStoreMemWrCmd_V [get_bd_intf_pins flashModel_0/wrCmdIn_V] [get_bd_intf_pins memcachedPipeline_0/flashValueStoreMemWrCmd_V]
  connect_bd_intf_net -intf_net memcachedPipeline_0_flashValueStoreMemWrData_V_V [get_bd_intf_pins flashModel_0/wrDataIn_V_V] [get_bd_intf_pins memcachedPipeline_0/flashValueStoreMemWrData_V_V]
  connect_bd_intf_net -intf_net memcachedPipeline_0_hashTableMemRdCmd_V [get_bd_intf_pins memcachedPipeline_0/hashTableMemRdCmd_V] [get_bd_intf_pins readWriteConverter_1/memRdCmd_V]
  connect_bd_intf_net -intf_net memcachedPipeline_0_hashTableMemWrCmd_V [get_bd_intf_pins memcachedPipeline_0/hashTableMemWrCmd_V] [get_bd_intf_pins readWriteConverter_1/memWrCmd_V]
  connect_bd_intf_net -intf_net memcachedPipeline_0_hashTableMemWrData_V_V [get_bd_intf_pins memcachedPipeline_0/hashTableMemWrData_V_V] [get_bd_intf_pins readWriteConverter_1/memWrData_V_V]
  connect_bd_intf_net -intf_net memcachedPipeline_0_outData [get_bd_intf_pins mac_header_add_0/dataIn] [get_bd_intf_pins memcachedPipeline_0/outData]
  connect_bd_intf_net -intf_net readWriteConverter_0_dmRdCmd_V [get_bd_intf_pins axi_datamover_0/S_AXIS_MM2S_CMD] [get_bd_intf_pins readWriteConverter_0/dmRdCmd_V]
  connect_bd_intf_net -intf_net readWriteConverter_0_dmWrCmd_V [get_bd_intf_pins axi_datamover_0/S_AXIS_S2MM_CMD] [get_bd_intf_pins readWriteConverter_0/dmWrCmd_V]
  connect_bd_intf_net -intf_net readWriteConverter_0_dmWrData_V [get_bd_intf_pins axis_clock_converter_1/S_AXIS] [get_bd_intf_pins readWriteConverter_0/dmWrData_V]
  connect_bd_intf_net -intf_net readWriteConverter_0_memRdData_V_V [get_bd_intf_pins memcachedPipeline_0/dramValueStoreMemRdData_V_V] [get_bd_intf_pins readWriteConverter_0/memRdData_V_V]
  connect_bd_intf_net -intf_net readWriteConverter_1_dmRdCmd_V [get_bd_intf_pins axi_datamover_1/S_AXIS_MM2S_CMD] [get_bd_intf_pins readWriteConverter_1/dmRdCmd_V]
  connect_bd_intf_net -intf_net readWriteConverter_1_dmWrCmd_V [get_bd_intf_pins axi_datamover_1/S_AXIS_S2MM_CMD] [get_bd_intf_pins readWriteConverter_1/dmWrCmd_V]
  connect_bd_intf_net -intf_net readWriteConverter_1_dmWrData_V [get_bd_intf_pins axis_clock_converter_3/S_AXIS] [get_bd_intf_pins readWriteConverter_1/dmWrData_V]
  connect_bd_intf_net -intf_net readWriteConverter_1_memRdData_V_V [get_bd_intf_pins memcachedPipeline_0/hashTableMemRdData_V_V] [get_bd_intf_pins readWriteConverter_1/memRdData_V_V]

  # Create port connections
  connect_bd_net -net DestMacAddress_V_0_1 [get_bd_pins DestMacAddress_V_0] [get_bd_pins mac_header_add_0/DestMacAddress_V]
  connect_bd_net -net SrcMacAddress_V_0_1 [get_bd_pins SrcMacAddress_V_0] [get_bd_pins mac_header_add_0/SrcMacAddress_V]
  connect_bd_net -net ddr4_0_addn_ui_clkout1 [get_bd_pins axis_clk] [get_bd_pins axi_datamover_0/m_axis_mm2s_cmdsts_aclk] [get_bd_pins axi_datamover_0/m_axis_s2mm_cmdsts_awclk] [get_bd_pins axi_datamover_1/m_axis_mm2s_cmdsts_aclk] [get_bd_pins axi_datamover_1/m_axis_s2mm_cmdsts_awclk] [get_bd_pins axis_clock_converter_0/m_axis_aclk] [get_bd_pins axis_clock_converter_1/s_axis_aclk] [get_bd_pins axis_clock_converter_2/m_axis_aclk] [get_bd_pins axis_clock_converter_3/s_axis_aclk] [get_bd_pins dummyPCIeJoint_0/aclk] [get_bd_pins flashModel_0/ap_clk] [get_bd_pins mac_header_add_0/ap_clk] [get_bd_pins mac_header_strip_0/ap_clk] [get_bd_pins memcachedPipeline_0/ap_clk] [get_bd_pins readWriteConverter_0/aclk] [get_bd_pins readWriteConverter_1/aclk]
  connect_bd_net -net ddr4_0_c0_ddr4_ui_clk [get_bd_pins sys_clk] [get_bd_pins axi_datamover_0/m_axi_mm2s_aclk] [get_bd_pins axi_datamover_0/m_axi_s2mm_aclk] [get_bd_pins axi_datamover_1/m_axi_mm2s_aclk] [get_bd_pins axi_datamover_1/m_axi_s2mm_aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_interconnect_0/S01_ACLK] [get_bd_pins axi_interconnect_0/S02_ACLK] [get_bd_pins axi_interconnect_0/S03_ACLK] [get_bd_pins axis_clock_converter_0/s_axis_aclk] [get_bd_pins axis_clock_converter_1/m_axis_aclk] [get_bd_pins axis_clock_converter_2/s_axis_aclk] [get_bd_pins axis_clock_converter_3/m_axis_aclk]
  connect_bd_net -net dummyPCIeJoint_0_flushAck_V [get_bd_pins dummyPCIeJoint_0/flushAck_V] [get_bd_pins memcachedPipeline_0/flushAck_V]
  connect_bd_net -net memcachedPipeline_0_flushDone_V [get_bd_pins dummyPCIeJoint_0/flushDone_V] [get_bd_pins memcachedPipeline_0/flushDone_V]
  connect_bd_net -net memcachedPipeline_0_flushReq_V [get_bd_pins dummyPCIeJoint_0/flushReq_V] [get_bd_pins memcachedPipeline_0/flushReq_V]
  connect_bd_net -net myMacAddress_V_0_1 [get_bd_pins myMacAddress_V_0] [get_bd_pins mac_header_strip_0/myMacAddress_V]
  connect_bd_net -net rst_ddr4_0_150M_peripheral_aresetn [get_bd_pins axis_rst_n] [get_bd_pins axi_datamover_0/m_axis_mm2s_cmdsts_aresetn] [get_bd_pins axi_datamover_0/m_axis_s2mm_cmdsts_aresetn] [get_bd_pins axi_datamover_1/m_axis_mm2s_cmdsts_aresetn] [get_bd_pins axi_datamover_1/m_axis_s2mm_cmdsts_aresetn] [get_bd_pins axis_clock_converter_0/m_axis_aresetn] [get_bd_pins axis_clock_converter_1/s_axis_aresetn] [get_bd_pins axis_clock_converter_2/m_axis_aresetn] [get_bd_pins axis_clock_converter_3/s_axis_aresetn] [get_bd_pins dummyPCIeJoint_0/aresetn] [get_bd_pins flashModel_0/ap_rst_n] [get_bd_pins mac_header_add_0/ap_rst_n] [get_bd_pins mac_header_strip_0/ap_rst_n] [get_bd_pins memcachedPipeline_0/ap_rst_n] [get_bd_pins readWriteConverter_0/aresetn] [get_bd_pins readWriteConverter_1/aresetn]
  connect_bd_net -net rst_ddr4_0_300M_peripheral_aresetn [get_bd_pins sys_rst_n] [get_bd_pins axi_datamover_0/m_axi_mm2s_aresetn] [get_bd_pins axi_datamover_0/m_axi_s2mm_aresetn] [get_bd_pins axi_datamover_1/m_axi_mm2s_aresetn] [get_bd_pins axi_datamover_1/m_axi_s2mm_aresetn] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_interconnect_0/S01_ARESETN] [get_bd_pins axi_interconnect_0/S02_ARESETN] [get_bd_pins axi_interconnect_0/S03_ARESETN] [get_bd_pins axis_clock_converter_0/s_axis_aresetn] [get_bd_pins axis_clock_converter_1/m_axis_aresetn] [get_bd_pins axis_clock_converter_2/s_axis_aresetn] [get_bd_pins axis_clock_converter_3/m_axis_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set M_AXIS_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS_0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {150000000} \
   ] $M_AXIS_0
  set data_in_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 data_in_0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {150000000} \
   CONFIG.HAS_TKEEP {0} \
   CONFIG.HAS_TLAST {1} \
   CONFIG.HAS_TREADY {1} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} \
   CONFIG.TDATA_NUM_BYTES {1} \
   CONFIG.TDEST_WIDTH {0} \
   CONFIG.TID_WIDTH {0} \
   CONFIG.TUSER_WIDTH {0} \
   ] $data_in_0
  set ddr4_sdram [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 ddr4_sdram ]
  set default_sysclk_300 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 default_sysclk_300 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {300000000} \
   ] $default_sysclk_300

  # Create ports
  set DestMacAddress_V_0 [ create_bd_port -dir I -from 47 -to 0 -type data DestMacAddress_V_0 ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 48} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} \
 ] $DestMacAddress_V_0
  set SrcMacAddress_V_0 [ create_bd_port -dir I -from 47 -to 0 -type data SrcMacAddress_V_0 ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 48} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} \
 ] $SrcMacAddress_V_0
  set axis_clk [ create_bd_port -dir O -type clk axis_clk ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {M_AXIS_0:data_in_0} \
   CONFIG.FREQ_HZ {150000000} \
 ] $axis_clk
  set axis_clk_bufg [ create_bd_port -dir I -type clk axis_clk_bufg ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {150000000} \
   CONFIG.PHASE {0} \
 ] $axis_clk_bufg
  set axis_rst_n [ create_bd_port -dir O -from 0 -to 0 -type rst axis_rst_n ]
  set axis_rst_n_bufg [ create_bd_port -dir I -type rst axis_rst_n_bufg ]
  set decouple_0 [ create_bd_port -dir I decouple_0 ]
  set decouple_1 [ create_bd_port -dir I decouple_1 ]
  set myMacAddress_V_0 [ create_bd_port -dir I -from 47 -to 0 -type data myMacAddress_V_0 ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 48} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} \
 ] $myMacAddress_V_0
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset
  set stop_ack_0 [ create_bd_port -dir O -from 1 -to 0 stop_ack_0 ]
  set stop_ack_1 [ create_bd_port -dir O -from 1 -to 0 stop_ack_1 ]
  set stop_req_0 [ create_bd_port -dir I -from 1 -to 0 stop_req_0 ]
  set stop_req_1 [ create_bd_port -dir I -from 1 -to 0 stop_req_1 ]
  set sys_clk [ create_bd_port -dir O -type clk sys_clk ]
  set sys_clk_bufg [ create_bd_port -dir I -type clk sys_clk_bufg ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {300000000} \
   CONFIG.PHASE {0.00} \
 ] $sys_clk_bufg
  set sys_rst_n [ create_bd_port -dir O -from 0 -to 0 -type rst sys_rst_n ]
  set sys_rst_n_bufg [ create_bd_port -dir I -type rst sys_rst_n_bufg ]

  # Create instance: DUT
  create_hier_cell_DUT [current_bd_instance .] DUT

  # Create instance: StateLink_AXIS_0
  create_hier_cell_StateLink_AXIS_0 [current_bd_instance .] StateLink_AXIS_0

  # Create instance: StateLink_AXI_0
  create_hier_cell_StateLink_AXI_0 [current_bd_instance .] StateLink_AXI_0

  # Create instance: axis_dwidth_converter_0, and set properties
  set axis_dwidth_converter_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_dwidth_converter:1.1 axis_dwidth_converter_0 ]
  set_property -dict [ list \
   CONFIG.HAS_TKEEP {1} \
   CONFIG.HAS_TLAST {1} \
   CONFIG.M_TDATA_NUM_BYTES {1} \
   CONFIG.S_TDATA_NUM_BYTES {8} \
 ] $axis_dwidth_converter_0

  # Create instance: axis_interconnect_0, and set properties
  set axis_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_interconnect:2.1 axis_interconnect_0 ]
  set_property -dict [ list \
   CONFIG.ARB_ON_MAX_XFERS {0} \
   CONFIG.ARB_ON_TLAST {1} \
   CONFIG.ENABLE_ADVANCED_OPTIONS {0} \
   CONFIG.M00_FIFO_DEPTH {0} \
   CONFIG.M00_FIFO_MODE {0} \
   CONFIG.M00_HAS_REGSLICE {0} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {3} \
   CONFIG.S00_FIFO_DEPTH {0} \
   CONFIG.S00_FIFO_MODE {0} \
   CONFIG.S00_HAS_REGSLICE {0} \
   CONFIG.S01_FIFO_DEPTH {0} \
   CONFIG.S01_FIFO_MODE {0} \
   CONFIG.S01_HAS_REGSLICE {0} \
   CONFIG.S02_FIFO_DEPTH {0} \
   CONFIG.S02_FIFO_MODE {0} \
   CONFIG.S02_HAS_REGSLICE {0} \
 ] $axis_interconnect_0

  # Create instance: axis_width_upsizer_0, and set properties
  set axis_width_upsizer_0 [ create_bd_cell -type ip -vlnv xilinx.labs:hls:axis_width_upsizer:1.04 axis_width_upsizer_0 ]

  # Create instance: ddr4_0, and set properties
  set ddr4_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ddr4:2.2 ddr4_0 ]
  set_property -dict [ list \
   CONFIG.ADDN_UI_CLKOUT1_FREQ_HZ {150} \
   CONFIG.C0_CLOCK_BOARD_INTERFACE {default_sysclk_300} \
   CONFIG.C0_DDR4_BOARD_INTERFACE {ddr4_sdram} \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
 ] $ddr4_0

  # Create instance: ethernet_axi_splitter_0, and set properties
  set ethernet_axi_splitter_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:ethernet_axi_splitter:1.0 ethernet_axi_splitter_0 ]

  # Create instance: rst_ddr4_0_150M, and set properties
  set rst_ddr4_0_150M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ddr4_0_150M ]
  set_property -dict [ list \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $rst_ddr4_0_150M

  # Create instance: rst_ddr4_0_300M, and set properties
  set rst_ddr4_0_300M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ddr4_0_300M ]

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {1} \
 ] $xlconstant_0

  # Create interface connections
  connect_bd_intf_net -intf_net DUT_M00_AXI [get_bd_intf_pins DUT/M00_AXI] [get_bd_intf_pins StateLink_AXI_0/S00_AXI]
  connect_bd_intf_net -intf_net StateLink_AXIS_0_M00_AXIS [get_bd_intf_pins StateLink_AXIS_0/M00_AXIS] [get_bd_intf_pins axis_interconnect_0/S01_AXIS]
  connect_bd_intf_net -intf_net StateLink_AXIS_0_data_out_0 [get_bd_intf_pins StateLink_AXIS_0/data_out_0] [get_bd_intf_pins axis_interconnect_0/S02_AXIS]
  connect_bd_intf_net -intf_net StateLink_AXI_0_data_out [get_bd_intf_pins StateLink_AXI_0/data_out] [get_bd_intf_pins axis_interconnect_0/S00_AXIS]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins StateLink_AXI_0/M00_AXI] [get_bd_intf_pins ddr4_0/C0_DDR4_S_AXI]
  connect_bd_intf_net -intf_net axis_dwidth_converter_0_M_AXIS [get_bd_intf_ports M_AXIS_0] [get_bd_intf_pins axis_dwidth_converter_0/M_AXIS]
  connect_bd_intf_net -intf_net axis_interconnect_0_M00_AXIS [get_bd_intf_pins axis_dwidth_converter_0/S_AXIS] [get_bd_intf_pins axis_interconnect_0/M00_AXIS]
  connect_bd_intf_net -intf_net axis_switch_1_M00_AXIS [get_bd_intf_pins DUT/dataIn] [get_bd_intf_pins StateLink_AXIS_0/M00_AXIS1]
  connect_bd_intf_net -intf_net axis_width_upsizer_0_data_out [get_bd_intf_pins axis_width_upsizer_0/data_out] [get_bd_intf_pins ethernet_axi_splitter_0/data_in]
  connect_bd_intf_net -intf_net data_in_0_1 [get_bd_intf_ports data_in_0] [get_bd_intf_pins axis_width_upsizer_0/data_in]
  connect_bd_intf_net -intf_net ddr4_0_C0_DDR4 [get_bd_intf_ports ddr4_sdram] [get_bd_intf_pins ddr4_0/C0_DDR4]
  connect_bd_intf_net -intf_net default_sysclk_300_1 [get_bd_intf_ports default_sysclk_300] [get_bd_intf_pins ddr4_0/C0_SYS_CLK]
  connect_bd_intf_net -intf_net ethernet_axi_splitter_0_data_out [get_bd_intf_pins StateLink_AXIS_0/S00_AXIS1] [get_bd_intf_pins ethernet_axi_splitter_0/data_out]
  connect_bd_intf_net -intf_net ethernet_axi_splitter_0_ethernet_axi_0 [get_bd_intf_pins StateLink_AXI_0/data_in] [get_bd_intf_pins ethernet_axi_splitter_0/ethernet_axi_0]
  connect_bd_intf_net -intf_net ethernet_axi_splitter_0_ethernet_axi_1 [get_bd_intf_pins StateLink_AXIS_0/data_in] [get_bd_intf_pins ethernet_axi_splitter_0/ethernet_axi_1]
  connect_bd_intf_net -intf_net mac_header_add_0_dataOut [get_bd_intf_pins DUT/dataOut] [get_bd_intf_pins StateLink_AXIS_0/S00_AXIS]

  # Create port connections
  connect_bd_net -net DestMacAddress_V_0_1 [get_bd_ports DestMacAddress_V_0] [get_bd_pins DUT/DestMacAddress_V_0]
  connect_bd_net -net SrcMacAddress_V_0_1 [get_bd_ports SrcMacAddress_V_0] [get_bd_pins DUT/SrcMacAddress_V_0]
  connect_bd_net -net StateLink_AXIS_0_stop_ack_1 [get_bd_ports stop_ack_1] [get_bd_pins StateLink_AXIS_0/stop_ack_1]
  connect_bd_net -net StateLink_AXI_0_stop_ack_0 [get_bd_ports stop_ack_0] [get_bd_pins StateLink_AXI_0/stop_ack_0]
  connect_bd_net -net axis_clk_0_1 [get_bd_ports axis_clk_bufg] [get_bd_pins DUT/axis_clk] [get_bd_pins StateLink_AXIS_0/axis_clk_bufg]
  connect_bd_net -net axis_rst_n_0_1 [get_bd_ports axis_rst_n_bufg] [get_bd_pins DUT/axis_rst_n] [get_bd_pins StateLink_AXIS_0/axis_rst_n_bufg]
  connect_bd_net -net ddr4_0_addn_ui_clkout1 [get_bd_ports axis_clk] [get_bd_pins StateLink_AXIS_0/axis_clk] [get_bd_pins StateLink_AXI_0/ap_clk] [get_bd_pins axis_dwidth_converter_0/aclk] [get_bd_pins axis_interconnect_0/ACLK] [get_bd_pins axis_interconnect_0/M00_AXIS_ACLK] [get_bd_pins axis_interconnect_0/S00_AXIS_ACLK] [get_bd_pins axis_interconnect_0/S01_AXIS_ACLK] [get_bd_pins axis_interconnect_0/S02_AXIS_ACLK] [get_bd_pins axis_width_upsizer_0/ap_clk] [get_bd_pins ddr4_0/addn_ui_clkout1] [get_bd_pins ethernet_axi_splitter_0/ap_clk] [get_bd_pins rst_ddr4_0_150M/slowest_sync_clk]
  connect_bd_net -net ddr4_0_c0_ddr4_ui_clk [get_bd_ports sys_clk] [get_bd_pins StateLink_AXI_0/sys_clk] [get_bd_pins ddr4_0/c0_ddr4_ui_clk] [get_bd_pins rst_ddr4_0_300M/slowest_sync_clk]
  connect_bd_net -net ddr4_0_c0_ddr4_ui_clk_sync_rst [get_bd_pins ddr4_0/c0_ddr4_ui_clk_sync_rst] [get_bd_pins rst_ddr4_0_300M/ext_reset_in]
  connect_bd_net -net decouple_0_1 [get_bd_ports decouple_0] [get_bd_pins StateLink_AXI_0/decouple_0]
  connect_bd_net -net decouple_1_1 [get_bd_ports decouple_1] [get_bd_pins StateLink_AXIS_0/decouple_1]
  connect_bd_net -net myMacAddress_V_0_1 [get_bd_ports myMacAddress_V_0] [get_bd_pins DUT/myMacAddress_V_0] [get_bd_pins ethernet_axi_splitter_0/my_mac_address_V]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins ddr4_0/sys_rst] [get_bd_pins rst_ddr4_0_150M/ext_reset_in]
  connect_bd_net -net rst_ddr4_0_150M_peripheral_aresetn [get_bd_ports axis_rst_n] [get_bd_pins StateLink_AXIS_0/axis_rst_n] [get_bd_pins StateLink_AXI_0/ap_rst_n] [get_bd_pins axis_dwidth_converter_0/aresetn] [get_bd_pins axis_interconnect_0/ARESETN] [get_bd_pins axis_interconnect_0/M00_AXIS_ARESETN] [get_bd_pins axis_interconnect_0/S00_AXIS_ARESETN] [get_bd_pins axis_interconnect_0/S01_AXIS_ARESETN] [get_bd_pins axis_interconnect_0/S02_AXIS_ARESETN] [get_bd_pins axis_width_upsizer_0/ap_rst_n] [get_bd_pins ethernet_axi_splitter_0/ap_rst_n] [get_bd_pins rst_ddr4_0_150M/peripheral_aresetn]
  connect_bd_net -net rst_ddr4_0_300M_peripheral_aresetn [get_bd_ports sys_rst_n] [get_bd_pins StateLink_AXI_0/sys_rst_n] [get_bd_pins ddr4_0/c0_ddr4_aresetn] [get_bd_pins rst_ddr4_0_300M/peripheral_aresetn]
  connect_bd_net -net stop_req_0_1 [get_bd_ports stop_req_0] [get_bd_pins StateLink_AXI_0/stop_req_0]
  connect_bd_net -net stop_req_1_1 [get_bd_ports stop_req_1] [get_bd_pins StateLink_AXIS_0/stop_req_1]
  connect_bd_net -net sys_clk_0_1 [get_bd_ports sys_clk_bufg] [get_bd_pins DUT/sys_clk] [get_bd_pins StateLink_AXI_0/sys_clk_bufg]
  connect_bd_net -net sys_rst_n_0_1 [get_bd_ports sys_rst_n_bufg] [get_bd_pins DUT/sys_rst_n] [get_bd_pins StateLink_AXI_0/sys_rst_n_bufg]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins axis_interconnect_0/S00_ARB_REQ_SUPPRESS] [get_bd_pins axis_interconnect_0/S01_ARB_REQ_SUPPRESS] [get_bd_pins axis_interconnect_0/S02_ARB_REQ_SUPPRESS] [get_bd_pins xlconstant_0/dout]

  # Create address segments
  create_bd_addr_seg -range 0x80000000 -offset 0x00000000 [get_bd_addr_spaces DUT/axi_datamover_0/Data_MM2S] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x80000000 -offset 0x00000000 [get_bd_addr_spaces DUT/axi_datamover_0/Data_S2MM] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x80000000 -offset 0x00000000 [get_bd_addr_spaces DUT/axi_datamover_1/Data_MM2S] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x80000000 -offset 0x00000000 [get_bd_addr_spaces DUT/axi_datamover_1/Data_S2MM] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x80000000 -offset 0x80000000 [get_bd_addr_spaces StateLink_AXI_0/ethernet_axi_0/Data_m_axi_mem_V] [get_bd_addr_segs StateLink_AXI_0/axi_timestamper_0/s_axi_timestamp/Reg] SEG_axi_timestamper_0_Reg
  create_bd_addr_seg -range 0x80000000 -offset 0x00000000 [get_bd_addr_spaces StateLink_AXI_0/ethernet_axi_0/Data_m_axi_mem_V] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x80000000 -offset 0x00000000 [get_bd_addr_spaces StateLink_AXI_0/ti_transp_axi_wrapper_0/M00_AXI] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


