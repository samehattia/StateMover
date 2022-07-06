
proc start_axis_rx_process {sim_to_hw_pipename hw_to_sim_pipename jtag_axi jtag_axi_lite vio} {

	set STATELINK_HW_PATH [file dirname [file normalize [info script]]]
	set STATELINK_AXIS_RX_SCRIPT "$STATELINK_HW_PATH/StateLink_AXIS_RX.tcl"

	puts "Starting AXIS_RX_PROCESS"
	exec vivado -mode tcl -nolog -nojournal -source "$STATELINK_AXIS_RX_SCRIPT" << "$sim_to_hw_pipename $hw_to_sim_pipename $jtag_axi $jtag_axi_lite $vio" &
}

proc read_axis_tx_sim_to_hw_pipe {sim_to_hw_pipe hw_to_sim_pipename jtag_axi jtag_axi_lite} {
	global SIM_TO_HW_PIPE_CLOSED AXIS_WRITE_COMMAND_COUNTER

	# TODO: check if multiple lines are read 
	set data [split [read $sim_to_hw_pipe]]
	set command [lindex $data 0]

	if { $command eq "W"} {
		set packet_len [lindex $data 1]
		set packet_data [lindex $data 2]

		set burst_len [expr {$packet_len / 8.0}]
		set burst_len [expr {ceil($burst_len)}]
		set burst_len [expr {int($burst_len)}]
		set packet_len_hex [format "%08x" $packet_len]

		# Transmit FIFO vacancy (TDFV) @0xC --> OUTPUT should be 000001FC
		# create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -address 44A0_000C -len 1 -type read -force
		# run_hw_axi -verbose rd_txn

		# Transmit Data FIFO Data (TDFD) @0x0 hw_axi_2
		create_hw_axi_txn wr_txn_2 [get_hw_axis $jtag_axi] -address 44A0_0000 -len $burst_len -type write -force -data $packet_data
		run_hw_axi -quiet wr_txn_2

		# Transmit Length Register (TLR) @0x14 <-- Input 0000003C
		create_hw_axi_txn wr_txn [get_hw_axis $jtag_axi_lite] -address 44A0_0014 -len 1 -type write -force -data $packet_len_hex
		run_hw_axi -verbose wr_txn >> $hw_to_sim_pipename

		incr AXIS_WRITE_COMMAND_COUNTER
	}

	if {[eof $sim_to_hw_pipe]} {
		close $sim_to_hw_pipe
		puts "Pipe Closed"
		set SIM_TO_HW_PIPE_CLOSED 1
	}
}

proc setup_axis_tx_link {sim_to_hw_pipename hw_to_sim_pipename jtag_axi jtag_axi_lite} {

	while 1 {
		if {[file exists $sim_to_hw_pipename]} {
			break
		}
		after 1000
	}

	puts "Opening AXIS_TX_SIM_TO_HW_PIPE"
	set axis_tx_sim_to_hw_pipe [open $sim_to_hw_pipename r]
	fconfigure $axis_tx_sim_to_hw_pipe -blocking 0

	puts "Opening AXIS_TX_HW_TO_SIM_PIPE"
	if {![file exists $hw_to_sim_pipename]} {
		exec mkfifo $hw_to_sim_pipename
	}
	set axis_tx_hw_to_sim_pipe [open $hw_to_sim_pipename w]

	fileevent $axis_tx_sim_to_hw_pipe readable [list read_axis_tx_sim_to_hw_pipe $axis_tx_sim_to_hw_pipe $hw_to_sim_pipename $jtag_axi $jtag_axi_lite]
}