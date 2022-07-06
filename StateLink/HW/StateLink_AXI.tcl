
set AXI_INTERNAL_PIPENAME "/tmp/axi_internal_pipe"
if {![file exists $AXI_INTERNAL_PIPENAME]} {
	exec mkfifo $AXI_INTERNAL_PIPENAME
}
set AXI_INTERNAL_PIPE [open $AXI_INTERNAL_PIPENAME {RDONLY NONBLOCK}]

proc read_axi_sim_to_hw_pipe {sim_to_hw_pipe hw_to_sim_pipe hw_to_sim_pipename jtag_axi} {
	global SIM_TO_HW_PIPE_CLOSED AXI_WRITE_COMMAND_COUNTER AXI_READ_COMMAND_COUNTER AXI_TIMESTAMP_MODE AXI_INTERNAL_PIPENAME AXI_INTERNAL_PIPE

	# TODO: check if multiple lines are read 
	set data [split [read $sim_to_hw_pipe]]
	set command [lindex $data 0]

	if { $command eq "W"} {

		set waddr [lindex $data 1]
		set wlen [lindex $data 2]
		set wdata [lindex $data 3]

		create_hw_axi_txn wr_txn [get_hw_axis $jtag_axi] -address $waddr -len $wlen -type write -force -data $wdata

		if {$AXI_TIMESTAMP_MODE == 0} {
			run_hw_axi -verbose wr_txn >> $hw_to_sim_pipename
		} else {
			run_hw_axi -quiet wr_txn 

			create_hw_axi_txn rd_write_timestamp [get_hw_axis $jtag_axi] -address 0x80000000 -type read -force
			run_hw_axi -verbose rd_write_timestamp > $AXI_INTERNAL_PIPENAME

			set data [split [read $AXI_INTERNAL_PIPE]]
			set timestamp [lindex $data 6]

			puts $hw_to_sim_pipe "W $timestamp\0"
			flush $hw_to_sim_pipe
		}

		incr AXI_WRITE_COMMAND_COUNTER

	} elseif { $command eq "R"} {

		set raddr [lindex $data 1]
		set rlen [lindex $data 2]

		create_hw_axi_txn rd_txn [get_hw_axis $jtag_axi] -address $raddr -len $rlen -type read -force

		if {$AXI_TIMESTAMP_MODE == 0} {
			run_hw_axi -verbose rd_txn >> $hw_to_sim_pipename
		} else {
			run_hw_axi -verbose rd_txn > $AXI_INTERNAL_PIPENAME

			set data [split [read $AXI_INTERNAL_PIPE]]
			set read_data [lindex $data 6]

			create_hw_axi_txn rd_read_timestamp [get_hw_axis $jtag_axi] -address 0x80000010 -type read -force
			run_hw_axi -verbose rd_read_timestamp > $AXI_INTERNAL_PIPENAME

			set data [split [read $AXI_INTERNAL_PIPE]]
			set timestamp [lindex $data 6]

			puts $hw_to_sim_pipe "R $read_data $timestamp\0"
			flush $hw_to_sim_pipe
		}

		incr AXI_READ_COMMAND_COUNTER

	}

	if {[eof $sim_to_hw_pipe]} {
		close $sim_to_hw_pipe
		puts "Pipe Closed"
		set SIM_TO_HW_PIPE_CLOSED 1
	}
}

### Open the fifo, set up event-driven input from it.
proc setup_axi_link {sim_to_hw_pipename hw_to_sim_pipename jtag_axi} {

	while 1 {
		if {[file exists $sim_to_hw_pipename]} {
			break
		}
		after 1000
	}

	puts "Opening AXI_SIM_TO_HW_PIPE"
	set axi_sim_to_hw_pipe [open $sim_to_hw_pipename r]
	fconfigure $axi_sim_to_hw_pipe -blocking 0

	puts "Opening AXI_HW_TO_SIM_PIPE"
	if {![file exists $hw_to_sim_pipename]} {
		exec mkfifo $hw_to_sim_pipename
	}
	set axi_hw_to_sim_pipe [open $hw_to_sim_pipename w]

	fileevent $axi_sim_to_hw_pipe readable [list read_axi_sim_to_hw_pipe $axi_sim_to_hw_pipe $axi_hw_to_sim_pipe $hw_to_sim_pipename $jtag_axi]
}