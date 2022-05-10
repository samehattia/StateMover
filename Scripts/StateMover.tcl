# Default Parameters
set DEVICE_NAME "xcku040_0"

set TASK_NAME ""
set DESIGN_PATH "."

set FULL_BITSTREAM "$DESIGN_PATH/top.bit"
set FULL_PROBES "$DESIGN_PATH/top.ltx"

set FULL_LOCAL_BITSTREAM "$DESIGN_PATH/top_modified.bit"

set PARTIAL_BITSTREAM [glob -nocomplain "$DESIGN_PATH/*_partial.bit"]
set PARTIAL_PROBES [glob -nocomplain "$DESIGN_PATH/*_partial.ltx"]

set PARTIAL_CLEAR_BITSTREAM [glob -nocomplain "$DESIGN_PATH/*_partial_clear.bit"]
set PARTIAL_CLEAR_PROBES [glob -nocomplain "$DESIGN_PATH/*_partial_clear.ltx"]

set LOGIC_LOCATION_FILE "$DESIGN_PATH/top.ll"
set RAM_LOCATION_FILE "$DESIGN_PATH/top.rl"

set READBACK_FILE "top.rdbk"

set CE_VIO_INSTANCE "il/il_vio"
set CE_VIO_SIGNAL "il/clk_en"

set TI_VIO_INSTANCE "il/il_vio"
set TI_VIO_SIGNAL "il/ti_req"

set PR_VIO_INSTANCE "il/il_vio"
set PR_VIO_SIGNAL "il/pr_done"

set BP_VIO_INSTANCE "il/il_vio"
set BP_VIO_SIGNAL "il/breakpoint"

set CS_VIO_INSTANCE "il/il_vio"
set CS_VIO_SIGNAL "il/clk_step"

set CS2_VIO_INSTANCE "il/il_vio"
set CS2_VIO_SIGNAL "il/clk_step_1"

set USER_VIO_INSTANCE "inst_vio_1"
set USER_VIO_SIGNAL "valid_counter"

# A DRAM page is 2KB. PAGE_COUNT should be divisble by 16
set DRAM_START_ADDRESS 0
set DRAM_PAGE_COUNT 1024

set READBACK_START_ADDRESS 00000000
set READBACK_FRAME_COUNT 26120
set READBACK_BRAM_START_ADDRESS 00000000
set READBACK_BRAM_FRAME_COUNT 0

# User-defined Parameters (Overwrite the default parameters)
if [file exist SM_Param.tcl] {
	source SM_Param.tcl
}

# StateMover Scripts
set STATEMOVER_PATH [file dirname [file normalize [info script]]]
set STATECONFIG_PATH "$STATEMOVER_PATH/../StateConfig"

set DUMP_HW_STATE_SCRIPT "$STATECONFIG_PATH/dump_hw_state.py"
set EMBED_SIM_STATE_SCRIPT "$STATECONFIG_PATH/embed_sim_state.py"
set PREPROCESS_SCRIPT "$STATECONFIG_PATH/preprocess_location_files.py"
set UNMASK_SCRIPT "$STATECONFIG_PATH/disable_ram_masking.py"

set DRAM_MOVER_ETH_SCRIPT "$STATEMOVER_PATH/dram_mover_eth.py"
set PARTIAL_READBACK_SCRIPT "$STATEMOVER_PATH/partial_readback.tcl"

source $PARTIAL_READBACK_SCRIPT

proc initialize {} {
	global DEVICE_NAME FULL_BITSTREAM FULL_LOCAL_BITSTREAM FULL_PROBES PREPROCESS_SCRIPT LOGIC_LOCATION_FILE RAM_LOCATION_FILE TASK_NAME READBACK_START_ADDRESS READBACK_FRAME_COUNT READBACK_BRAM_START_ADDRESS READBACK_BRAM_FRAME_COUNT

	open_hw
	connect_hw_server
	open_hw_target
	set_property PROGRAM.FILE $FULL_BITSTREAM [get_hw_devices $DEVICE_NAME]
	set_property PROBES.FILE $FULL_PROBES [get_hw_devices $DEVICE_NAME]
	set_property FULL_PROBES.FILE $FULL_PROBES [get_hw_devices $DEVICE_NAME]
	current_hw_device [get_hw_devices $DEVICE_NAME]
	refresh_hw_device [lindex [get_hw_devices $DEVICE_NAME] 0]

	exec rm -rf rams.pickle lutrams.pickle registers.pickle blockrams.pickle
	set partial_readback_info [ split [exec $PREPROCESS_SCRIPT $LOGIC_LOCATION_FILE $RAM_LOCATION_FILE $TASK_NAME] ]
	set READBACK_FRAME_COUNT [lindex $partial_readback_info 0]
	set READBACK_START_ADDRESS [format "%08x" [lindex $partial_readback_info 1]]
	set READBACK_BRAM_FRAME_COUNT [lindex $partial_readback_info 2]
	set READBACK_BRAM_START_ADDRESS [format "%08x" [lindex $partial_readback_info 3]]

	exec cp $FULL_BITSTREAM $FULL_LOCAL_BITSTREAM
}

proc program {} {
	global DEVICE_NAME FULL_BITSTREAM FULL_PROBES

	set_property PROBES.FILE $FULL_PROBES [get_hw_devices $DEVICE_NAME]
	set_property FULL_PROBES.FILE $FULL_PROBES [get_hw_devices $DEVICE_NAME]
	set_property PROGRAM.FILE $FULL_BITSTREAM [get_hw_devices $DEVICE_NAME]
	program_hw_devices [get_hw_devices $DEVICE_NAME]
	refresh_hw_device [lindex [get_hw_devices $DEVICE_NAME] 0]
}

proc run {} {
	global DEVICE_NAME CE_VIO_INSTANCE CE_VIO_SIGNAL

	set_property OUTPUT_VALUE 1 [get_hw_probes $CE_VIO_SIGNAL -of_objects [get_hw_vios -of_objects [get_hw_devices $DEVICE_NAME] -filter "CELL_NAME=~$CE_VIO_INSTANCE"]]
	commit_hw_vio [get_hw_probes $CE_VIO_SIGNAL -of_objects [get_hw_vios -of_objects [get_hw_devices $DEVICE_NAME] -filter "CELL_NAME=~$CE_VIO_INSTANCE"]]
}

proc stop {} {
	global DEVICE_NAME CE_VIO_INSTANCE CE_VIO_SIGNAL

	set_property OUTPUT_VALUE 0 [get_hw_probes $CE_VIO_SIGNAL -of_objects [get_hw_vios -of_objects [get_hw_devices $DEVICE_NAME] -filter "CELL_NAME=~$CE_VIO_INSTANCE"]]
	commit_hw_vio [get_hw_probes $CE_VIO_SIGNAL -of_objects [get_hw_vios -of_objects [get_hw_devices $DEVICE_NAME] -filter "CELL_NAME=~$CE_VIO_INSTANCE"]]
}

proc set_breakpoint {cycle} {
	global DEVICE_NAME BP_VIO_INSTANCE BP_VIO_SIGNAL

	set_property OUTPUT_VALUE $cycle [get_hw_probes $BP_VIO_SIGNAL -of_objects [get_hw_vios -of_objects [get_hw_devices $DEVICE_NAME] -filter "CELL_NAME=~$BP_VIO_INSTANCE"]]
	commit_hw_vio [get_hw_probes $BP_VIO_SIGNAL -of_objects [get_hw_vios -of_objects [get_hw_devices $DEVICE_NAME] -filter "CELL_NAME=~$BP_VIO_INSTANCE"]]
}

proc set_pr_done {val} {
	global DEVICE_NAME PR_VIO_INSTANCE PR_VIO_SIGNAL

	set_property OUTPUT_VALUE $val [get_hw_probes $PR_VIO_SIGNAL -of_objects [get_hw_vios -of_objects [get_hw_devices $DEVICE_NAME] -filter "CELL_NAME=~$PR_VIO_INSTANCE"]]
	commit_hw_vio [get_hw_probes $PR_VIO_SIGNAL -of_objects [get_hw_vios -of_objects [get_hw_devices $DEVICE_NAME] -filter "CELL_NAME=~$PR_VIO_INSTANCE"]]
}

proc step {} {
	global DEVICE_NAME CS_VIO_INSTANCE CS_VIO_SIGNAL

	set_property OUTPUT_VALUE 1 [get_hw_probes $CS_VIO_SIGNAL -of_objects [get_hw_vios -of_objects [get_hw_devices $DEVICE_NAME] -filter "CELL_NAME=~$CS_VIO_INSTANCE"]]
	commit_hw_vio [get_hw_probes $CS_VIO_SIGNAL -of_objects [get_hw_vios -of_objects [get_hw_devices $DEVICE_NAME] -filter "CELL_NAME=~$CS_VIO_INSTANCE"]]

	refresh_hw_device [lindex [get_hw_devices $DEVICE_NAME] 0]

	set_property OUTPUT_VALUE 0 [get_hw_probes $CS_VIO_SIGNAL -of_objects [get_hw_vios -of_objects [get_hw_devices $DEVICE_NAME] -filter "CELL_NAME=~$CS_VIO_INSTANCE"]]
	commit_hw_vio [get_hw_probes $CS_VIO_SIGNAL -of_objects [get_hw_vios -of_objects [get_hw_devices $DEVICE_NAME] -filter "CELL_NAME=~$CS_VIO_INSTANCE"]]
}

proc step_2 {} {
	global DEVICE_NAME CS2_VIO_INSTANCE CS2_VIO_SIGNAL

	set_property OUTPUT_VALUE 1 [get_hw_probes $CS2_VIO_SIGNAL -of_objects [get_hw_vios -of_objects [get_hw_devices $DEVICE_NAME] -filter "CELL_NAME=~$CS2_VIO_INSTANCE"]]
	commit_hw_vio [get_hw_probes $CS2_VIO_SIGNAL -of_objects [get_hw_vios -of_objects [get_hw_devices $DEVICE_NAME] -filter "CELL_NAME=~$CS2_VIO_INSTANCE"]]

	refresh_hw_device [lindex [get_hw_devices $DEVICE_NAME] 0]

	set_property OUTPUT_VALUE 0 [get_hw_probes $CS2_VIO_SIGNAL -of_objects [get_hw_vios -of_objects [get_hw_devices $DEVICE_NAME] -filter "CELL_NAME=~$CS2_VIO_INSTANCE"]]
	commit_hw_vio [get_hw_probes $CS2_VIO_SIGNAL -of_objects [get_hw_vios -of_objects [get_hw_devices $DEVICE_NAME] -filter "CELL_NAME=~$CS2_VIO_INSTANCE"]]
}

proc set_ti_req {val} {
	global DEVICE_NAME TI_VIO_INSTANCE TI_VIO_SIGNAL

	set_property OUTPUT_VALUE $val [get_hw_probes $TI_VIO_SIGNAL -of_objects [get_hw_vios -of_objects [get_hw_devices $DEVICE_NAME] -filter "CELL_NAME=~$TI_VIO_INSTANCE"]]
	commit_hw_vio [get_hw_probes $TI_VIO_SIGNAL -of_objects [get_hw_vios -of_objects [get_hw_devices $DEVICE_NAME] -filter "CELL_NAME=~$TI_VIO_INSTANCE"]]
}

proc get_user_reg {} {
	global DEVICE_NAME USER_VIO_INSTANCE USER_VIO_SIGNAL

	refresh_hw_vio [get_hw_vios -of_objects [get_hw_devices $DEVICE_NAME] -filter "CELL_NAME=~$USER_VIO_INSTANCE"]
	puts [get_property INPUT_VALUE [get_hw_probes $USER_VIO_SIGNAL -of_objects [get_hw_vios -of_objects [get_hw_devices $DEVICE_NAME] -filter "CELL_NAME=~$USER_VIO_INSTANCE"]]]
}

proc ram_readback_enable {} {
	global FULL_BITSTREAM UNMASK_SCRIPT LOGIC_LOCATION_FILE RAM_LOCATION_FILE TASK_NAME

	exec $UNMASK_SCRIPT $LOGIC_LOCATION_FILE $RAM_LOCATION_FILE $FULL_BITSTREAM $TASK_NAME
}

proc writeback {state_file} {
	global DEVICE_NAME PARTIAL_BITSTREAM PARTIAL_PROBES PARTIAL_CLEAR_BITSTREAM PARTIAL_CLEAR_PROBES EMBED_SIM_STATE_SCRIPT LOGIC_LOCATION_FILE RAM_LOCATION_FILE

	exec $EMBED_SIM_STATE_SCRIPT $LOGIC_LOCATION_FILE $RAM_LOCATION_FILE $PARTIAL_BITSTREAM $state_file -partial_bitstream

	set_property PROBES.FILE $PARTIAL_CLEAR_PROBES [get_hw_devices $DEVICE_NAME]
	set_property PARTIAL_PROBES.FILES $PARTIAL_CLEAR_PROBES [get_hw_devices $DEVICE_NAME]
	set_property PROGRAM.FILE $PARTIAL_CLEAR_BITSTREAM [get_hw_devices $DEVICE_NAME]
	program_hw_devices [get_hw_devices $DEVICE_NAME]
	refresh_hw_device [lindex [get_hw_devices $DEVICE_NAME] 0]

	set_property PROBES.FILE $PARTIAL_PROBES [get_hw_devices $DEVICE_NAME]
	set_property PARTIAL_PROBES.FILES $PARTIAL_PROBES [get_hw_devices $DEVICE_NAME]
	set_property PROGRAM.FILE $PARTIAL_BITSTREAM [get_hw_devices $DEVICE_NAME]
	puts [time {
		program_hw_devices [get_hw_devices $DEVICE_NAME]
		}]
	refresh_hw_device [lindex [get_hw_devices $DEVICE_NAME] 0]
}

proc writeback_full {state_file} {
	global DEVICE_NAME FULL_LOCAL_BITSTREAM FULL_PROBES EMBED_SIM_STATE_SCRIPT LOGIC_LOCATION_FILE RAM_LOCATION_FILE

	exec $EMBED_SIM_STATE_SCRIPT $LOGIC_LOCATION_FILE $RAM_LOCATION_FILE $FULL_LOCAL_BITSTREAM $state_file

	set_property PROBES.FILE $FULL_PROBES [get_hw_devices $DEVICE_NAME]
	set_property FULL_PROBES.FILE $FULL_PROBES [get_hw_devices $DEVICE_NAME]
	set_property PROGRAM.FILE $FULL_LOCAL_BITSTREAM [get_hw_devices $DEVICE_NAME]
	puts [time {
		program_hw_devices [get_hw_devices $DEVICE_NAME]
		}]
	refresh_hw_device [lindex [get_hw_devices $DEVICE_NAME] 0]
}

proc readback {} {
	global READBACK_FILE LOGIC_LOCATION_FILE RAM_LOCATION_FILE DUMP_HW_STATE_SCRIPT TASK_NAME

	puts [time {
		readback_hw_device -capture -force -readback_file $READBACK_FILE
		}]

	exec $DUMP_HW_STATE_SCRIPT $LOGIC_LOCATION_FILE $RAM_LOCATION_FILE $READBACK_FILE $TASK_NAME
}

proc readback_partial {args} {
	global DEVICE_NAME READBACK_FILE LOGIC_LOCATION_FILE RAM_LOCATION_FILE DUMP_HW_STATE_SCRIPT TASK_NAME READBACK_START_ADDRESS READBACK_FRAME_COUNT READBACK_BRAM_START_ADDRESS READBACK_BRAM_FRAME_COUNT

	close_hw_target
	open_hw_target -jtag_mode 1
	puts [time {
		rdbk_jtag $READBACK_FILE $READBACK_FRAME_COUNT $READBACK_START_ADDRESS 1 1

		if { $READBACK_BRAM_FRAME_COUNT ne "0" } {
			rdbk_jtag ${READBACK_FILE}.2 $READBACK_BRAM_FRAME_COUNT $READBACK_BRAM_START_ADDRESS 1 1
		}
		}]
	close_hw_target
	open_hw_target
	refresh_hw_device [lindex [get_hw_devices $DEVICE_NAME] 0]

	if { $READBACK_BRAM_FRAME_COUNT ne "0" } {
		if {$args eq ""} {
			exec $DUMP_HW_STATE_SCRIPT $LOGIC_LOCATION_FILE $RAM_LOCATION_FILE $READBACK_FILE $TASK_NAME -partial_readback $READBACK_START_ADDRESS ${READBACK_FILE}.2 $READBACK_BRAM_START_ADDRESS
		} else {
			exec $DUMP_HW_STATE_SCRIPT $LOGIC_LOCATION_FILE $RAM_LOCATION_FILE $READBACK_FILE $TASK_NAME -partial_readback $READBACK_START_ADDRESS ${READBACK_FILE}.2 $READBACK_BRAM_START_ADDRESS $args
		}
	} else {
		if {$args eq ""} {
			exec $DUMP_HW_STATE_SCRIPT $LOGIC_LOCATION_FILE $RAM_LOCATION_FILE $READBACK_FILE $TASK_NAME -no_bram -partial_readback $READBACK_START_ADDRESS
		} else {
			exec $DUMP_HW_STATE_SCRIPT $LOGIC_LOCATION_FILE $RAM_LOCATION_FILE $READBACK_FILE $TASK_NAME -no_bram -partial_readback $READBACK_START_ADDRESS $args
		}
	}
}

proc readback_clb {} {
	global DEVICE_NAME READBACK_FILE LOGIC_LOCATION_FILE RAM_LOCATION_FILE DUMP_HW_STATE_SCRIPT TASK_NAME

	close_hw_target
	open_hw_target -jtag_mode 1
	puts [time {
		rdbk_jtag $READBACK_FILE 26120 00000000 1 1
		}]
	close_hw_target
	open_hw_target
	refresh_hw_device [lindex [get_hw_devices $DEVICE_NAME] 0]

	exec $DUMP_HW_STATE_SCRIPT $LOGIC_LOCATION_FILE $RAM_LOCATION_FILE $READBACK_FILE $TASK_NAME -no_bram -partial_readback 0
}

proc readback_clb_partial {args} {
	global DEVICE_NAME READBACK_FILE LOGIC_LOCATION_FILE RAM_LOCATION_FILE DUMP_HW_STATE_SCRIPT TASK_NAME READBACK_START_ADDRESS READBACK_FRAME_COUNT

	close_hw_target
	open_hw_target -jtag_mode 1
	puts [time {
		rdbk_jtag $READBACK_FILE $READBACK_FRAME_COUNT $READBACK_START_ADDRESS 1 1
		}]
	close_hw_target
	open_hw_target
	refresh_hw_device [lindex [get_hw_devices $DEVICE_NAME] 0]

	if {$args eq ""} {
		exec $DUMP_HW_STATE_SCRIPT $LOGIC_LOCATION_FILE $RAM_LOCATION_FILE $READBACK_FILE $TASK_NAME -no_bram -partial_readback $READBACK_START_ADDRESS
	} else {
		exec $DUMP_HW_STATE_SCRIPT $LOGIC_LOCATION_FILE $RAM_LOCATION_FILE $READBACK_FILE $TASK_NAME -no_bram -partial_readback $READBACK_START_ADDRESS $args
	}
}

proc readback_buried_2 {} {

	readback_clb_partial
	exec mv hw_state.dump hw_state.dump.0

	step
	step

	readback_partial -capture_registers
	exec mv hw_state.dump hw_state.dump.2

	exec generate_state_file_multiple_readbacks.py hw_state.dump.0 hw_state.dump.2
}

proc readback_buried_4 {} {

	readback_clb_partial
	exec mv hw_state.dump hw_state.dump.0

	step
	step

	readback_partial -capture_registers
	exec mv hw_state.dump hw_state.dump.2
	
	step

	readback_clb_partial -capture_registers
	exec mv hw_state.dump hw_state.dump.3
	
	step

	readback_clb_partial -capture_registers
	exec mv hw_state.dump hw_state.dump.4

	exec generate_state_file_multiple_readbacks.py hw_state.dump.0 hw_state.dump.2 hw_state.dump.3 hw_state.dump.4
}

proc writeback_buried {state_file} {

	exec set_replay_flag_2writebacks.py $state_file 1
	writeback_full

	step_2

	exec set_replay_flag_2writebacks.py $state_file 0
}

proc readback_dram {} {
	global DRAM_START_ADDRESS DRAM_PAGE_COUNT

	set addr $DRAM_START_ADDRESS

	exec cat /dev/null > dram_hw_state.dump

	puts [time {
		for { set p 0} {$p < $DRAM_PAGE_COUNT} {incr p 16} {
			set rd_txn [list ]

			for { set a 0} {$a < 16} {incr a} {
				create_hw_axi_txn rd_txn_$a [get_hw_axis hw_axi_1] -address [format %x $addr] -len 256 -type read -force
				lappend rd_txn rd_txn_$a
				set addr [expr {$addr + 2048}]
			}

			run_hw_axi -verbose $rd_txn -queue >> dram_hw_state.dump
		}
	}]

	exec sed -i {s/INFO: \[Labtoolstcl 44-481\] READ DATA is: //g} dram_hw_state.dump
}

proc writeback_dram {state_file} {
	global DRAM_START_ADDRESS DRAM_PAGE_COUNT

	set addr $DRAM_START_ADDRESS

	set fp [open $state_file r]

	puts [time {
		for { set p 0} {$p < $DRAM_PAGE_COUNT} {incr p 16} {
			set wr_txn [list ]

			for { set a 0} {$a < 16} {incr a} {
				gets $fp wr_data
				create_hw_axi_txn wr_txn_$a [get_hw_axis hw_axi_1] -address [format %x $addr] -len 256 -type write -force -data $wr_data
				lappend wr_txn wr_txn_$a
				set addr [expr {$addr + 2048}]
			}

			run_hw_axi -quiet $wr_txn;# -queue 
		}
	}]

}

proc readback_dram_eth {} {
	global DRAM_MOVER_ETH_SCRIPT DRAM_START_ADDRESS DRAM_PAGE_COUNT

	exec sudo $DRAM_MOVER_ETH_SCRIPT -readback $DRAM_START_ADDRESS $DRAM_PAGE_COUNT
}

proc writeback_dram_eth {state_file} {
	global DRAM_MOVER_ETH_SCRIPT DRAM_START_ADDRESS DRAM_PAGE_COUNT

	exec sudo $DRAM_MOVER_ETH_SCRIPT -writeback $DRAM_START_ADDRESS $DRAM_PAGE_COUNT $state_file
}

initialize