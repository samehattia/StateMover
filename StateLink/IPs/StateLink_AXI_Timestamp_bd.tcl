
################################################################
# This is a generated script based on design: StateLink_AXI_Timestamp
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
# source StateLink_AXI_Timestamp_script.tcl

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
set design_name StateLink_AXI_Timestamp

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
xilinx.com:hls:axi_timestamper:1.0\
xilinx.com:ip:jtag_axi:1.2\
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

  # Create pins
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

  # Create instance: axi_timestamper_0, and set properties
  set axi_timestamper_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:axi_timestamper:1.0 axi_timestamper_0 ]

  # Create instance: jtag_axi_0, and set properties
  set jtag_axi_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:jtag_axi:1.2 jtag_axi_0 ]
  set_property -dict [ list \
   CONFIG.M_AXI_DATA_WIDTH {64} \
   CONFIG.M_HAS_BURST {0} \
 ] $jtag_axi_0

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
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins S00_AXI] [get_bd_intf_pins ti_transp_axi_wrapper_0/S01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins M00_AXI] [get_bd_intf_pins axi_interconnect_0/M00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_1_M00_AXI [get_bd_intf_pins axi_interconnect_0/S01_AXI] [get_bd_intf_pins axi_interconnect_1/M00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_1_M01_AXI [get_bd_intf_pins axi_interconnect_1/M01_AXI] [get_bd_intf_pins axi_timestamper_0/s_axi_timestamp]
  connect_bd_intf_net -intf_net jtag_axi_0_M_AXI [get_bd_intf_pins axi_interconnect_1/S00_AXI] [get_bd_intf_pins jtag_axi_0/M_AXI]
  connect_bd_intf_net -intf_net ti_transp_axi_wrapper_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/S00_AXI] [get_bd_intf_pins ti_transp_axi_wrapper_0/M00_AXI]

  # Create port connections
  connect_bd_net -net M00_AXI_wready_1 [get_bd_pins axi_interconnect_0/S01_AXI_wready] [get_bd_pins axi_interconnect_1/M00_AXI_wready] [get_bd_pins axi_timestamper_0/wready_V]
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
  connect_bd_net -net ddr4_0_c0_ddr4_ui_clk [get_bd_pins sys_clk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_interconnect_0/S01_ACLK] [get_bd_pins axi_interconnect_1/ACLK] [get_bd_pins axi_interconnect_1/M00_ACLK] [get_bd_pins axi_interconnect_1/M01_ACLK] [get_bd_pins axi_interconnect_1/S00_ACLK] [get_bd_pins axi_timestamper_0/ap_clk] [get_bd_pins jtag_axi_0/aclk] [get_bd_pins ti_transp_axi_wrapper_0/m00_axi_aclk]
  connect_bd_net -net decouple_0_1 [get_bd_pins decouple_0] [get_bd_pins ti_transp_axi_wrapper_0/decouple]
  connect_bd_net -net rst_ddr4_0_300M_peripheral_aresetn [get_bd_pins sys_rst_n] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_interconnect_0/S01_ARESETN] [get_bd_pins axi_interconnect_1/ARESETN] [get_bd_pins axi_interconnect_1/M00_ARESETN] [get_bd_pins axi_interconnect_1/M01_ARESETN] [get_bd_pins axi_interconnect_1/S00_ARESETN] [get_bd_pins axi_timestamper_0/ap_rst_n] [get_bd_pins jtag_axi_0/aresetn] [get_bd_pins ti_transp_axi_wrapper_0/m00_axi_aresetn]
  connect_bd_net -net stop_req_0_1 [get_bd_pins stop_req_0] [get_bd_pins ti_transp_axi_wrapper_0/stop_req]
  connect_bd_net -net sys_clk_bufg_1 [get_bd_pins sys_clk_bufg] [get_bd_pins ti_transp_axi_wrapper_0/s01_axi_aclk]
  connect_bd_net -net sys_rst_n_bufg_1 [get_bd_pins sys_rst_n_bufg] [get_bd_pins ti_transp_axi_wrapper_0/s01_axi_aresetn]
  connect_bd_net -net ti_transp_axi_wrapper_0_stop_ack [get_bd_pins stop_ack_0] [get_bd_pins ti_transp_axi_wrapper_0/stop_ack]

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
  set M00_AXI_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M00_AXI_0 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {32} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.FREQ_HZ {10000000} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.PROTOCOL {AXI4} \
   ] $M00_AXI_0
  set S00_AXI_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI_0 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {32} \
   CONFIG.ARUSER_WIDTH {4} \
   CONFIG.AWUSER_WIDTH {4} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {512} \
   CONFIG.FREQ_HZ {300000000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {1} \
   CONFIG.HAS_LOCK {1} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {1} \
   CONFIG.HAS_REGION {1} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {6} \
   CONFIG.MAX_BURST_LENGTH {16} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PHASE {0.00} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $S00_AXI_0

  # Create ports
  set decouple_0_0 [ create_bd_port -dir I decouple_0_0 ]
  set stop_ack_0_0 [ create_bd_port -dir O -from 1 -to 0 stop_ack_0_0 ]
  set stop_req_0_0 [ create_bd_port -dir I -from 1 -to 0 stop_req_0_0 ]
  set sys_clk_0 [ create_bd_port -dir I -type clk sys_clk_0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {10000000} \
 ] $sys_clk_0
  set sys_clk_bufg_0 [ create_bd_port -dir I -type clk sys_clk_bufg_0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {300000000} \
   CONFIG.PHASE {0.00} \
 ] $sys_clk_bufg_0
  set sys_rst_n_0 [ create_bd_port -dir I -type rst sys_rst_n_0 ]
  set sys_rst_n_bufg_0 [ create_bd_port -dir I -type rst sys_rst_n_bufg_0 ]

  # Create instance: StateLink_AXI_0
  create_hier_cell_StateLink_AXI_0 [current_bd_instance .] StateLink_AXI_0

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_0_1 [get_bd_intf_ports S00_AXI_0] [get_bd_intf_pins StateLink_AXI_0/S00_AXI]
  connect_bd_intf_net -intf_net StateLink_AXI_0_M00_AXI [get_bd_intf_ports M00_AXI_0] [get_bd_intf_pins StateLink_AXI_0/M00_AXI]

  # Create port connections
  connect_bd_net -net StateLink_AXI_0_stop_ack_0 [get_bd_ports stop_ack_0_0] [get_bd_pins StateLink_AXI_0/stop_ack_0]
  connect_bd_net -net decouple_0_0_1 [get_bd_ports decouple_0_0] [get_bd_pins StateLink_AXI_0/decouple_0]
  connect_bd_net -net stop_req_0_0_1 [get_bd_ports stop_req_0_0] [get_bd_pins StateLink_AXI_0/stop_req_0]
  connect_bd_net -net sys_clk_0_1 [get_bd_ports sys_clk_0] [get_bd_pins StateLink_AXI_0/sys_clk]
  connect_bd_net -net sys_clk_bufg_0_1 [get_bd_ports sys_clk_bufg_0] [get_bd_pins StateLink_AXI_0/sys_clk_bufg]
  connect_bd_net -net sys_rst_n_0_1 [get_bd_ports sys_rst_n_0] [get_bd_pins StateLink_AXI_0/sys_rst_n]
  connect_bd_net -net sys_rst_n_bufg_0_1 [get_bd_ports sys_rst_n_bufg_0] [get_bd_pins StateLink_AXI_0/sys_rst_n_bufg]

  # Create address segments
  create_bd_addr_seg -range 0x80000000 -offset 0x00000000 [get_bd_addr_spaces StateLink_AXI_0/jtag_axi_0/Data] [get_bd_addr_segs M00_AXI_0/Reg] SEG_M00_AXI_0_Reg
  create_bd_addr_seg -range 0x80000000 -offset 0x80000000 [get_bd_addr_spaces StateLink_AXI_0/jtag_axi_0/Data] [get_bd_addr_segs StateLink_AXI_0/axi_timestamper_0/s_axi_timestamp/Reg] SEG_axi_timestamper_0_Reg
  create_bd_addr_seg -range 0x80000000 -offset 0x00000000 [get_bd_addr_spaces StateLink_AXI_0/ti_transp_axi_wrapper_0/M00_AXI] [get_bd_addr_segs M00_AXI_0/Reg] SEG_M00_AXI_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces S00_AXI_0] [get_bd_addr_segs M00_AXI_0/Reg] SEG_M00_AXI_0_Reg


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


