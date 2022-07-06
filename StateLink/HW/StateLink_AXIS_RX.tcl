# Default Parameters
set DEVICE_NAME "xcku040_0"

# User-defined Parameters (Overwrite the default parameters)
source SM_Param.tcl

set AXIS_INTERNAL_PIPENAME "/tmp/axis_internal_pipe"

set AXIS_READ_COMMAND_COUNTER 0

proc wait_axis_rx_interrupt {jtag_axi_lite vio sim_to_hw_pipe} {

	# Wait for the interrupt to go high
	while 1 {
		refresh_hw_vio [get_hw_vios $vio]
		set interrupt [get_property INPUT_VALUE [get_hw_probes -of_objects [get_hw_vios $vio]]]

		if { $interrupt } {
			break
		}

		read $sim_to_hw_pipe
		if {[eof $sim_to_hw_pipe]} {
			break
		}

		after 1
	}

	# Interrupt Status Register (ISR) @0x00 --> Output 04000000
	create_hw_axi_txn rd_txn [get_hw_axis $jtag_axi_lite] -address 44A0_0000 -len 1 -type read -force
	run_hw_axi rd_txn

	# Interrupt Status Register (ISR) @0x00 <-- Input FFFFFFFF: Reset interrupt bits
	create_hw_axi_txn wr_txn [get_hw_axis $jtag_axi_lite] -address 44A0_0000 -len 1 -type write -force -data FFFF_FFFF
	run_hw_axi -quiet wr_txn

}

proc read_axis_rx_hw_packet {internal_pipe hw_to_sim_pipe sim_to_hw_pipe internal_pipename jtag_axi jtag_axi_lite} {
	global AXIS_READ_COMMAND_COUNTER

	fconfigure $sim_to_hw_pipe -blocking 1
	
	# Consume all the recieve FIFO till it is empty
	while { 1 } {
		# Receive FIFO occupancy (RDFO) @0x1C --> OUTPUT 00000202 (FULL)
		create_hw_axi_txn rd_txn [get_hw_axis $jtag_axi_lite] -address 44A0_001C -len 1 -type read -force
		run_hw_axi -verbose rd_txn >> $internal_pipename
		set data [split [read $internal_pipe]]
		set occupany [lindex $data 6]

		if { $occupany eq "00000000"} {
			break
		}

		# Receive length (RLR) @0x24 --> OUTPUT 0000003C
		create_hw_axi_txn rd_txn [get_hw_axis $jtag_axi_lite] -address 44A0_0024 -len 1 -type read -force
		run_hw_axi -verbose rd_txn >> $internal_pipename

		set data [split [read $internal_pipe]]
		set packet_len_hex [lindex $data 6]
		set packet_len [expr 0x$packet_len_hex]
		set burst_len [expr {$packet_len / 8.0}]
		set burst_len [expr {ceil($burst_len)}]
		set burst_len [expr {int($burst_len)}]

		# Receive Data FIFO Data (TDFD) @0x1000 hw_axi_2 --> OUTPUT 0000000000000000000000000000000041612a000000deadbeef0000000000000000000000000a0000000000000801000180220825da924537d0020100350a00
		create_hw_axi_txn rd_txn_2 [get_hw_axis $jtag_axi] -address 44A0_1000 -len $burst_len -type read -force
		run_hw_axi -verbose rd_txn_2 >> $internal_pipename

		set data [split [read $internal_pipe]]
		set packet [lindex $data 6]

		puts $hw_to_sim_pipe "R $packet_len $packet\0"
		flush $hw_to_sim_pipe

		incr AXIS_READ_COMMAND_COUNTER
		gets $sim_to_hw_pipe
	}

	fconfigure $sim_to_hw_pipe -blocking 0
	
}

proc StateLink_AXIS_RX {} {
	global DEVICE_NAME FULL_PROBES AXIS_INTERNAL_PIPENAME AXIS_READ_COMMAND_COUNTER

	# Read stdin which should contain the following parameters: axis_rx_sim_to_hw_pipename axis_rx_hw_to_sim_pipename axis_jtag_axi axis_jtag_axi_lite axis_vio
	gets stdin line
	set params [split $line]
	set axis_rx_sim_to_hw_pipename [lindex $params 0]
	set axis_rx_hw_to_sim_pipename [lindex $params 1]
	set axis_jtag_axi [lindex $params 2]
	set axis_jtag_axi_lite [lindex $params 3]
	set axis_vio [lindex $params 4]

	set axis_internal_pipename ${AXIS_INTERNAL_PIPENAME}_[pid]

	open_hw
	connect_hw_server
	open_hw_target
	set_property PROBES.FILE $FULL_PROBES [get_hw_devices $DEVICE_NAME]
	set_property FULL_PROBES.FILE $FULL_PROBES [get_hw_devices $DEVICE_NAME]
	current_hw_device [get_hw_devices $DEVICE_NAME]
	refresh_hw_device [lindex [get_hw_devices $DEVICE_NAME] 0]

	puts "Opening AXIS_RX_SIM_TO_HW_PIPE"
	set axis_rx_sim_to_hw_pipe [open $axis_rx_sim_to_hw_pipename r]
	fconfigure $axis_rx_sim_to_hw_pipe -blocking 0

	puts "Opening AXIS_RX_HW_TO_SIM_PIPE"
	if {![file exists $hw_to_sim_pipename]} {
		exec mkfifo $hw_to_sim_pipename
	}
	set axis_rx_hw_to_sim_pipe [open $axis_rx_hw_to_sim_pipename w]

	if {![file exists $axis_internal_pipename]} {
		exec mkfifo $axis_internal_pipename
	}
	set axis_internal_pipe [open $axis_internal_pipename {RDONLY NONBLOCK}]

	# Receive Data FIFO Reset Register (RDFR) @0x18 <-- Input 0000_00A5: Reset Receive FIFO
	create_hw_axi_txn wr_txn [get_hw_axis $axis_jtag_axi_lite] -address 44A0_0018 -len 1 -type write -force -data 0000_00A5
	run_hw_axi -quiet wr_txn

	# Interrupt Status Register (ISR) @0x00 <-- Input FFFFFFFF: Reset interrupt bits
	create_hw_axi_txn wr_txn [get_hw_axis $axis_jtag_axi_lite] -address 44A0_0000 -len 1 -type write -force -data FFFF_FFFF
	run_hw_axi -quiet wr_txn

	# Interrupt Enable Register (IER) @0x04 <-- Input 04000000: Enable receive complete interrupt
	create_hw_axi_txn wr_txn [get_hw_axis $axis_jtag_axi_lite] -address 44A0_0004 -len 1 -type write -force -data 0400_0000
	run_hw_axi -quiet wr_txn

	# Start RX Loop
	while { 1 } {
		read_axis_rx_hw_packet $axis_internal_pipe $axis_rx_hw_to_sim_pipe $axis_rx_sim_to_hw_pipe $axis_internal_pipename $axis_jtag_axi $axis_jtag_axi_lite

		wait_axis_rx_interrupt $axis_jtag_axi_lite $axis_vio $axis_rx_sim_to_hw_pipe

		read $axis_rx_sim_to_hw_pipe
		if {[eof $axis_rx_sim_to_hw_pipe]} {
			break
		}
	}

	close $axis_internal_pipe
	close $axis_rx_hw_to_sim_pipe
	close $axis_rx_sim_to_hw_pipe

	exec rm $axis_internal_pipename

	puts "$AXIS_READ_COMMAND_COUNTER AXIS Receive Transactions"
}

StateLink_AXIS_RX
exit