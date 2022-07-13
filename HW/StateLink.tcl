set AXI_LINK 1
set AXIS_TX_LINK 1
set AXIS_RX_LINK 1

set AXI_JTAG_AXI_INSTANCE {"*/StateLink_AXI_0/jtag_axi_0" "*/StateLink_AXI_1/jtag_axi_0"}
set AXIS_JTAG_AXI_INSTANCE {"*/StateLink_AXIS_0/jtag_axi_1" "*/StateLink_AXIS_1/jtag_axi_1"}
set AXIS_JTAG_AXI_LITE_INSTANCE {"*/StateLink_AXIS_0/jtag_axi_0" "*/StateLink_AXIS_1/jtag_axi_0"}
set AXIS_VIO_INSTANCE {"*/StateLink_AXIS_0/vio_0" "*/StateLink_AXIS_1/vio_0"}

set AXI_TIMESTAMP_MODE 1

set AXI_SIM_TO_HW_PIPENAME "/tmp/axi_sim_to_hw_pipe"
set AXI_HW_TO_SIM_PIPENAME "/tmp/axi_hw_to_sim_pipe"

set AXIS_TX_SIM_TO_HW_PIPENAME "/tmp/axis_tx_sim_to_hw_pipe"
set AXIS_TX_HW_TO_SIM_PIPENAME "/tmp/axis_tx_hw_to_sim_pipe"

set AXIS_RX_SIM_TO_HW_PIPENAME "/tmp/axis_rx_sim_to_hw_pipe"
set AXIS_RX_HW_TO_SIM_PIPENAME "/tmp/axis_rx_hw_to_sim_pipe"

# User-defined Parameters (Overwrite the default parameters)
source SM_Param.tcl

set SIM_TO_HW_PIPE_CLOSED 0

set AXI_WRITE_COMMAND_COUNTER 0
set AXI_READ_COMMAND_COUNTER 0
set AXIS_WRITE_COMMAND_COUNTER 0

# StateLink Scripts
set STATELINK_PATH [file dirname [file normalize [info script]]]
source $STATELINK_PATH/StateLink_AXI.tcl
source $STATELINK_PATH/StateLink_AXIS.tcl

proc StateLink {} {
	global DEVICE_NAME AXI_LINK AXIS_LINK SIM_TO_HW_PIPE_CLOSED AXI_SIM_TO_HW_PIPENAME AXI_HW_TO_SIM_PIPENAME AXI_WRITE_COMMAND_COUNTER AXI_READ_COMMAND_COUNTER AXIS_TX_SIM_TO_HW_PIPENAME AXIS_TX_HW_TO_SIM_PIPENAME AXIS_WRITE_COMMAND_COUNTER AXI_JTAG_AXI_INSTANCE AXIS_JTAG_AXI_INSTANCE AXIS_JTAG_AXI_LITE_INSTANCE AXIS_VIO_INSTANCE AXIS_RX_SIM_TO_HW_PIPENAME AXIS_RX_HW_TO_SIM_PIPENAME
	
	set SIM_TO_HW_PIPE_CLOSED 0
	set AXI_WRITE_COMMAND_COUNTER 0
	set AXI_READ_COMMAND_COUNTER 0
	set AXIS_WRITE_COMMAND_COUNTER 0

	for {set i 0} {$i < $AXI_LINK} {incr i} {
		set axi_jtag_axi [get_hw_axis -of_objects [get_hw_devices $DEVICE_NAME] -filter "CELL_NAME=~[lindex $AXI_JTAG_AXI_INSTANCE $i]"]

		set axi_sim_to_hw_pipename ${AXI_SIM_TO_HW_PIPENAME}_$i
		set axi_hw_to_sim_pipename ${AXI_HW_TO_SIM_PIPENAME}_$i

		setup_axi_link $axi_sim_to_hw_pipename $axi_hw_to_sim_pipename $axi_jtag_axi
	}

	for {set i 0} {$i < $AXIS_TX_LINK} {incr i} {
		set axis_jtag_axi [get_hw_axis -of_objects [get_hw_devices $DEVICE_NAME] -filter "CELL_NAME=~[lindex $AXIS_JTAG_AXI_INSTANCE $i]"]
		set axis_jtag_axi_lite [get_hw_axis -of_objects [get_hw_devices $DEVICE_NAME] -filter "CELL_NAME=~[lindex $AXIS_JTAG_AXI_LITE_INSTANCE $i]"]

		set axis_tx_sim_to_hw_pipename ${AXIS_TX_SIM_TO_HW_PIPENAME}_$i
		set axis_tx_hw_to_sim_pipename ${AXIS_TX_HW_TO_SIM_PIPENAME}_$i

		setup_axis_tx_link $axis_tx_sim_to_hw_pipename $axis_tx_hw_to_sim_pipename $axis_jtag_axi $axis_jtag_axi_lite
	}

	for {set i 0} {$i < $AXIS_RX_LINK} {incr i} {
		set axis_jtag_axi [get_hw_axis -of_objects [get_hw_devices $DEVICE_NAME] -filter "CELL_NAME=~[lindex $AXIS_JTAG_AXI_INSTANCE $i]"]
		set axis_jtag_axi_lite [get_hw_axis -of_objects [get_hw_devices $DEVICE_NAME] -filter "CELL_NAME=~[lindex $AXIS_JTAG_AXI_LITE_INSTANCE $i]"]
		set axis_vio [get_hw_vios -of_objects [get_hw_devices $DEVICE_NAME] -filter "CELL_NAME=~[lindex $AXIS_VIO_INSTANCE $i]"]

		set axis_rx_sim_to_hw_pipename ${AXIS_RX_SIM_TO_HW_PIPENAME}_$i
		set axis_rx_hw_to_sim_pipename ${AXIS_RX_HW_TO_SIM_PIPENAME}_$i

		start_axis_rx_process $axis_rx_sim_to_hw_pipename $axis_rx_hw_to_sim_pipename $axis_jtag_axi $axis_jtag_axi_lite $axis_vio
	}

	puts "Entering Event Loop"
	vwait SIM_TO_HW_PIPE_CLOSED

	if { $AXI_LINK ne 0 } {
		puts "$AXI_WRITE_COMMAND_COUNTER AXI Write Transactions"
		puts "$AXI_READ_COMMAND_COUNTER AXI Read Transactions"	
	}

	if { $AXIS_TX_LINK ne 0 } {
		puts "$AXIS_WRITE_COMMAND_COUNTER AXIS Send Transactions"	
	}
}