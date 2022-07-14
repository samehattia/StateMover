# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name in2hashKeyLength_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst false \
    corename dc_in2hashKeyLength_V_V \
    op interface \
    ports { in2hashKeyLength_V_V_dout { I 8 vector } in2hashKeyLength_V_V_empty_n { I 1 bit } in2hashKeyLength_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name in2hash_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst false \
    corename dc_in2hash_V \
    op interface \
    ports { in2hash_V_dout { I 130 vector } in2hash_V_empty_n { I 1 bit } in2hash_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name resizedKeyLength_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst false \
    corename dc_resizedKeyLength_V \
    op interface \
    ports { resizedKeyLength_V_din { O 32 vector } resizedKeyLength_V_full_n { I 1 bit } resizedKeyLength_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name resizedInitValue_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst false \
    corename dc_resizedInitValue_V \
    op interface \
    ports { resizedInitValue_V_din { O 32 vector } resizedInitValue_V_full_n { I 1 bit } resizedInitValue_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name resizedKey_V_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst false \
    corename dc_resizedKey_V_V \
    op interface \
    ports { resizedKey_V_V_din { O 96 vector } resizedKey_V_V_full_n { I 1 bit } resizedKey_V_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst false \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst false \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst false \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


