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
    id 29 \
    name dec2cc_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst false \
    corename dc_dec2cc_V_V \
    op interface \
    ports { dec2cc_V_V_dout { I 1 vector } dec2cc_V_V_empty_n { I 1 bit } dec2cc_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name in2ccMd_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst false \
    corename dc_in2ccMd_V \
    op interface \
    ports { in2ccMd_V_dout { I 64 vector } in2ccMd_V_empty_n { I 1 bit } in2ccMd_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name in2cc_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst false \
    corename dc_in2cc_V \
    op interface \
    ports { in2cc_V_dout { I 130 vector } in2cc_V_empty_n { I 1 bit } in2cc_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name hash2cc_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst false \
    corename dc_hash2cc_V_V \
    op interface \
    ports { hash2cc_V_V_dout { I 32 vector } hash2cc_V_V_empty_n { I 1 bit } hash2cc_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name cc2memReadMd_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst false \
    corename dc_cc2memReadMd_V \
    op interface \
    ports { cc2memReadMd_V_din { O 64 vector } cc2memReadMd_V_full_n { I 1 bit } cc2memReadMd_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name cc2memRead_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst false \
    corename dc_cc2memRead_V \
    op interface \
    ports { cc2memRead_V_din { O 130 vector } cc2memRead_V_full_n { I 1 bit } cc2memRead_V_write { O 1 bit } } \
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


