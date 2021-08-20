# StateMover
StateMover is a checkpoint-based debuggging framework for FPGAs.

### Running StateMover
* To open the StateMover Console, add the `Scripts` directory to your `PATH` environemnt variable, and then run `StateMover` in your design directory.
  * This will open a Vivado tcl console and source our StateMover tcl script

* To configure the StateMover console,  add a `SM_Param.tcl` file to your design directory to overwrite the default parameters based on your design.

* Here is an example for the `SM_Param.tcl` file:
```tcl
set DEVICE_NAME "xcku040_0"

set TASK_NAME "inst_dft_bist"
set DESIGN_PATH "/path/to/design/directory"

set FULL_BITSTREAM "$DESIGN_PATH/top.bit"
set FULL_PROBES "$DESIGN_PATH/top.ltx"

set PARTIAL_BITSTREAM "$DESIGN_PATH/top_pblock_${TASK_NAME}_partial.bit"
set PARTIAL_PROBES "$DESIGN_PATH/top_pblock_${TASK_NAME}_partial.ltx"

set PARTIAL_CLEAR_BITSTREAM "$DESIGN_PATH/top_pblock_${TASK_NAME}_partial_clear.bit"
set PARTIAL_CLEAR_PROBES "$DESIGN_PATH/top_pblock_${TASK_NAME}_partial_clear.ltx"

set LOGIC_LOCATION_FILE "$DESIGN_PATH/top.ll"
set RAM_LOCATION_FILE "$DESIGN_PATH/top.rl"

set READBACK_FILE "$DESIGN_PATH/$TASK_NAME.rdbk"
```
