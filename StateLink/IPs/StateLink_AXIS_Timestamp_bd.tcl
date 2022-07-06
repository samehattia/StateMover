
################################################################
# This is a generated script based on design: StateLink_AXIS_Timestamp
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
# source StateLink_AXIS_Timestamp_script.tcl

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
set design_name StateLink_AXIS_Timestamp

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
xilinx.com:ip:axi_fifo_mm_s:4.2\
xilinx.com:ip:axis_switch:1.1\
xilinx.com:hls:axis_timestamper:1.0\
xilinx.com:ip:jtag_axi:1.2\
user.org:user:ti_trans_axis_wrapper:1.0\
xilinx.com:ip:vio:3.0\
xilinx.com:ip:xlconstant:1.1\
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

  # Create pins
  create_bd_pin -dir I -type clk axis_clk
  create_bd_pin -dir I -type clk axis_clk_bufg
  create_bd_pin -dir I -type rst axis_rst_n
  create_bd_pin -dir I -type rst axis_rst_n_bufg
  create_bd_pin -dir I decouple_1
  create_bd_pin -dir O -from 1 -to 0 stop_ack_1
  create_bd_pin -dir I -from 1 -to 0 stop_req_1

  # Create instance: axi_fifo_mm_s_0, and set properties
  set axi_fifo_mm_s_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_fifo_mm_s:4.2 axi_fifo_mm_s_0 ]
  set_property -dict [ list \
   CONFIG.C_AXIS_TUSER_WIDTH {8} \
   CONFIG.C_DATA_INTERFACE_TYPE {1} \
   CONFIG.C_HAS_AXIS_TKEEP {true} \
   CONFIG.C_S_AXI4_DATA_WIDTH {64} \
   CONFIG.C_USE_TX_CTRL {0} \
 ] $axi_fifo_mm_s_0

  # Create instance: axis_switch_0, and set properties
  set axis_switch_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_switch:1.1 axis_switch_0 ]

  # Create instance: axis_switch_1, and set properties
  set axis_switch_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_switch:1.1 axis_switch_1 ]
  set_property -dict [ list \
   CONFIG.DECODER_REG {1} \
   CONFIG.NUM_MI {2} \
   CONFIG.NUM_SI {1} \
 ] $axis_switch_1

  # Create instance: axis_timestamper_0, and set properties
  set axis_timestamper_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:axis_timestamper:1.0 axis_timestamper_0 ]

  # Create instance: jtag_axi_0, and set properties
  set jtag_axi_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:jtag_axi:1.2 jtag_axi_0 ]
  set_property -dict [ list \
   CONFIG.PROTOCOL {2} \
 ] $jtag_axi_0

  # Create instance: jtag_axi_1, and set properties
  set jtag_axi_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:jtag_axi:1.2 jtag_axi_1 ]
  set_property -dict [ list \
   CONFIG.M_AXI_DATA_WIDTH {64} \
   CONFIG.M_HAS_BURST {0} \
 ] $jtag_axi_1

  # Create instance: ti_trans_axis_wrapper_0, and set properties
  set ti_trans_axis_wrapper_0 [ create_bd_cell -type ip -vlnv user.org:user:ti_trans_axis_wrapper:1.0 ti_trans_axis_wrapper_0 ]
  set_property -dict [ list \
   CONFIG.C_M00_AXIS_TDATA_WIDTH {64} \
   CONFIG.C_M01_AXIS_TDATA_WIDTH {64} \
   CONFIG.C_S00_AXIS_TDATA_WIDTH {64} \
   CONFIG.C_S01_AXIS_TDATA_WIDTH {64} \
 ] $ti_trans_axis_wrapper_0

  # Create instance: vio_0, and set properties
  set vio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:vio:3.0 vio_0 ]
  set_property -dict [ list \
   CONFIG.C_EN_PROBE_IN_ACTIVITY {0} \
   CONFIG.C_NUM_PROBE_IN {1} \
   CONFIG.C_NUM_PROBE_OUT {0} \
 ] $vio_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {2} \
 ] $xlconstant_0

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXIS1_1 [get_bd_intf_pins S00_AXIS1] [get_bd_intf_pins axis_switch_1/S00_AXIS]
  connect_bd_intf_net -intf_net S00_AXIS_1 [get_bd_intf_pins S00_AXIS] [get_bd_intf_pins ti_trans_axis_wrapper_0/S00_AXIS]
  connect_bd_intf_net -intf_net axi_fifo_mm_s_0_AXI_STR_TXD [get_bd_intf_pins axi_fifo_mm_s_0/AXI_STR_TXD] [get_bd_intf_pins axis_switch_0/S01_AXIS]
  connect_bd_intf_net -intf_net axis_switch_0_M00_AXIS [get_bd_intf_pins M00_AXIS] [get_bd_intf_pins axis_switch_0/M00_AXIS]
  connect_bd_intf_net -intf_net axis_switch_1_M00_AXIS [get_bd_intf_pins axis_switch_1/M00_AXIS] [get_bd_intf_pins ti_trans_axis_wrapper_0/S01_AXIS]
  connect_bd_intf_net -intf_net axis_switch_1_M01_AXIS [get_bd_intf_pins axis_switch_1/M01_AXIS] [get_bd_intf_pins axis_timestamper_0/data_in]
  connect_bd_intf_net -intf_net axis_timestamper_0_data_out [get_bd_intf_pins axi_fifo_mm_s_0/AXI_STR_RXD] [get_bd_intf_pins axis_timestamper_0/data_out]
  connect_bd_intf_net -intf_net jtag_axi_0_M_AXI [get_bd_intf_pins axi_fifo_mm_s_0/S_AXI] [get_bd_intf_pins jtag_axi_0/M_AXI]
  connect_bd_intf_net -intf_net jtag_axi_1_M_AXI [get_bd_intf_pins axi_fifo_mm_s_0/S_AXI_FULL] [get_bd_intf_pins jtag_axi_1/M_AXI]
  connect_bd_intf_net -intf_net ti_trans_axis_wrapper_0_M00_AXIS [get_bd_intf_pins axis_switch_0/S00_AXIS] [get_bd_intf_pins ti_trans_axis_wrapper_0/M00_AXIS]
  connect_bd_intf_net -intf_net ti_trans_axis_wrapper_0_M01_AXIS [get_bd_intf_pins M00_AXIS1] [get_bd_intf_pins ti_trans_axis_wrapper_0/M01_AXIS]

  # Create port connections
  connect_bd_net -net axi_fifo_mm_s_0_interrupt [get_bd_pins axi_fifo_mm_s_0/interrupt] [get_bd_pins vio_0/probe_in0]
  connect_bd_net -net axis_clk_bufg_1 [get_bd_pins axis_clk_bufg] [get_bd_pins ti_trans_axis_wrapper_0/m01_axis_aclk] [get_bd_pins ti_trans_axis_wrapper_0/s00_axis_aclk]
  connect_bd_net -net axis_rst_n_bufg_1 [get_bd_pins axis_rst_n_bufg] [get_bd_pins ti_trans_axis_wrapper_0/m01_axis_aresetn] [get_bd_pins ti_trans_axis_wrapper_0/s00_axis_aresetn]
  connect_bd_net -net ddr4_0_addn_ui_clkout1 [get_bd_pins axis_clk] [get_bd_pins axi_fifo_mm_s_0/s_axi_aclk] [get_bd_pins axis_switch_0/aclk] [get_bd_pins axis_switch_1/aclk] [get_bd_pins axis_timestamper_0/ap_clk] [get_bd_pins jtag_axi_0/aclk] [get_bd_pins jtag_axi_1/aclk] [get_bd_pins ti_trans_axis_wrapper_0/m00_axis_aclk] [get_bd_pins ti_trans_axis_wrapper_0/s01_axis_aclk] [get_bd_pins vio_0/clk]
  connect_bd_net -net decouple_1_1 [get_bd_pins decouple_1] [get_bd_pins axis_switch_1/s_axis_tdest] [get_bd_pins axis_timestamper_0/start_V] [get_bd_pins ti_trans_axis_wrapper_0/decouple]
  connect_bd_net -net rst_ddr4_0_150M_peripheral_aresetn [get_bd_pins axis_rst_n] [get_bd_pins axi_fifo_mm_s_0/s_axi_aresetn] [get_bd_pins axis_switch_0/aresetn] [get_bd_pins axis_switch_1/aresetn] [get_bd_pins axis_timestamper_0/ap_rst_n] [get_bd_pins jtag_axi_0/aresetn] [get_bd_pins jtag_axi_1/aresetn] [get_bd_pins ti_trans_axis_wrapper_0/m00_axis_aresetn] [get_bd_pins ti_trans_axis_wrapper_0/s01_axis_aresetn]
  connect_bd_net -net stop_req_1_1 [get_bd_pins stop_req_1] [get_bd_pins ti_trans_axis_wrapper_0/stop_req]
  connect_bd_net -net ti_trans_axis_wrapper_0_stop_ack [get_bd_pins stop_ack_1] [get_bd_pins ti_trans_axis_wrapper_0/stop_ack]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins axis_switch_0/s_req_suppress] [get_bd_pins xlconstant_0/dout]

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
  set M00_AXIS1_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M00_AXIS1_0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {150000000} \
   CONFIG.PHASE {0} \
   ] $M00_AXIS1_0
  set M00_AXIS_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M00_AXIS_0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {150000000} \
   CONFIG.PHASE {0} \
   ] $M00_AXIS_0
  set S00_AXIS1_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S00_AXIS1_0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {150000000} \
   CONFIG.HAS_TKEEP {1} \
   CONFIG.HAS_TLAST {1} \
   CONFIG.HAS_TREADY {1} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 64}} \
   CONFIG.PHASE {0} \
   CONFIG.TDATA_NUM_BYTES {8} \
   CONFIG.TDEST_WIDTH {1} \
   CONFIG.TID_WIDTH {0} \
   CONFIG.TUSER_WIDTH {0} \
   ] $S00_AXIS1_0
  set S00_AXIS_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S00_AXIS_0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {150000000} \
   CONFIG.HAS_TKEEP {1} \
   CONFIG.HAS_TLAST {1} \
   CONFIG.HAS_TREADY {1} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 64 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 112} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER_WIDTH 112}} \
   CONFIG.PHASE {0} \
   CONFIG.TDATA_NUM_BYTES {8} \
   CONFIG.TDEST_WIDTH {0} \
   CONFIG.TID_WIDTH {0} \
   CONFIG.TUSER_WIDTH {0} \
   ] $S00_AXIS_0

  # Create ports
  set axis_clk_0 [ create_bd_port -dir I -type clk axis_clk_0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {150000000} \
   CONFIG.PHASE {0} \
 ] $axis_clk_0
  set axis_clk_bufg_0 [ create_bd_port -dir I -type clk axis_clk_bufg_0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {150000000} \
   CONFIG.PHASE {0} \
 ] $axis_clk_bufg_0
  set axis_rst_n_0 [ create_bd_port -dir I -type rst axis_rst_n_0 ]
  set axis_rst_n_bufg_0 [ create_bd_port -dir I -type rst axis_rst_n_bufg_0 ]
  set decouple_1_0 [ create_bd_port -dir I decouple_1_0 ]
  set stop_ack_1_0 [ create_bd_port -dir O -from 1 -to 0 stop_ack_1_0 ]
  set stop_req_1_0 [ create_bd_port -dir I -from 1 -to 0 stop_req_1_0 ]

  # Create instance: StateLink_AXIS_0
  create_hier_cell_StateLink_AXIS_0 [current_bd_instance .] StateLink_AXIS_0

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXIS1_0_1 [get_bd_intf_ports S00_AXIS1_0] [get_bd_intf_pins StateLink_AXIS_0/S00_AXIS1]
  connect_bd_intf_net -intf_net S00_AXIS_0_1 [get_bd_intf_ports S00_AXIS_0] [get_bd_intf_pins StateLink_AXIS_0/S00_AXIS]
  connect_bd_intf_net -intf_net StateLink_AXIS_0_M00_AXIS [get_bd_intf_ports M00_AXIS_0] [get_bd_intf_pins StateLink_AXIS_0/M00_AXIS]
  connect_bd_intf_net -intf_net StateLink_AXIS_0_M00_AXIS1 [get_bd_intf_ports M00_AXIS1_0] [get_bd_intf_pins StateLink_AXIS_0/M00_AXIS1]

  # Create port connections
  connect_bd_net -net StateLink_AXIS_0_stop_ack_1 [get_bd_ports stop_ack_1_0] [get_bd_pins StateLink_AXIS_0/stop_ack_1]
  connect_bd_net -net axis_clk_0_1 [get_bd_ports axis_clk_0] [get_bd_pins StateLink_AXIS_0/axis_clk]
  connect_bd_net -net axis_clk_bufg_0_1 [get_bd_ports axis_clk_bufg_0] [get_bd_pins StateLink_AXIS_0/axis_clk_bufg]
  connect_bd_net -net axis_rst_n_0_1 [get_bd_ports axis_rst_n_0] [get_bd_pins StateLink_AXIS_0/axis_rst_n]
  connect_bd_net -net axis_rst_n_bufg_0_1 [get_bd_ports axis_rst_n_bufg_0] [get_bd_pins StateLink_AXIS_0/axis_rst_n_bufg]
  connect_bd_net -net decouple_1_0_1 [get_bd_ports decouple_1_0] [get_bd_pins StateLink_AXIS_0/decouple_1]
  connect_bd_net -net stop_req_1_0_1 [get_bd_ports stop_req_1_0] [get_bd_pins StateLink_AXIS_0/stop_req_1]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces StateLink_AXIS_0/jtag_axi_0/Data] [get_bd_addr_segs StateLink_AXIS_0/axi_fifo_mm_s_0/S_AXI/Mem0] SEG_axi_fifo_mm_s_0_Mem0
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces StateLink_AXIS_0/jtag_axi_1/Data] [get_bd_addr_segs StateLink_AXIS_0/axi_fifo_mm_s_0/S_AXI_FULL/Mem1] SEG_axi_fifo_mm_s_0_Mem1


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


