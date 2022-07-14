set DEVICE_NAME "xcku040_0"

# The path to the Vivado project created by the provided scripts
set DESIGN_PATH "./counter"
set TASK_NAME "inst_count"

set FULL_BITSTREAM "$DESIGN_PATH/top.bit"
set FULL_PROBES "$DESIGN_PATH/top.ltx"

set FULL_LOCAL_BITSTREAM "$DESIGN_PATH/top_modified.bit"

set PARTIAL_BITSTREAM "$DESIGN_PATH/top_pblock_${TASK_NAME}_partial.bit"
set PARTIAL_PROBES "$DESIGN_PATH/top_pblock_${TASK_NAME}_partial.ltx"

set PARTIAL_CLEAR_BITSTREAM "$DESIGN_PATH/top_pblock_${TASK_NAME}_partial_clear.bit"
set PARTIAL_CLEAR_PROBES "$DESIGN_PATH/top_pblock_${TASK_NAME}_partial_clear.ltx"

set LOGIC_LOCATION_FILE "$DESIGN_PATH/top_pblock_${TASK_NAME}_partial.ll"
set RAM_LOCATION_FILE "$DESIGN_PATH/top.rl"

set READBACK_FILE "$DESIGN_PATH/$TASK_NAME.rdbk"