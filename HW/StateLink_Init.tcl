set STATELINK_PATH [file dirname [file normalize [info script]]]
set STATELINK_SCRIPT "$STATELINK_PATH/StateLink.tcl"

# Default Parameters
set DEVICE_NAME "xcku040_0"

# User-defined Parameters (Overwrite the default parameters)
source SM_Param.tcl

source $STATELINK_SCRIPT

# This function should be run if StateLink is invoked outside StateMover Console
proc StateLink_Init {} {
	global DEVICE_NAME FULL_PROBES

	open_hw
	connect_hw_server
	open_hw_target
	set_property PROBES.FILE $FULL_PROBES [get_hw_devices $DEVICE_NAME]
	set_property FULL_PROBES.FILE $FULL_PROBES [get_hw_devices $DEVICE_NAME]
	current_hw_device [get_hw_devices $DEVICE_NAME]
	refresh_hw_device [lindex [get_hw_devices $DEVICE_NAME] 0]

	StateLink
}

StateLink_Init
exit