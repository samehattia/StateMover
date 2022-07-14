# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 40 \
    name memRdData_V_V \
    reset_level 1 \
    sync_rst true \
    corename {} \
    metadata {  } \
    op interface \
    ports { memRdData_V_V_TVALID { I 1 bit } memRdData_V_V_TDATA { I 512 vector } memRdData_V_V_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'memRdData_V_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name memRd2compMd_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_memRd2compMd_V \
    op interface \
    ports { memRd2compMd_V_dout { I 64 vector } memRd2compMd_V_empty_n { I 1 bit } memRd2compMd_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name comp2memWrMemData_V_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_comp2memWrMemData_V_V \
    op interface \
    ports { comp2memWrMemData_V_V_din { O 512 vector } comp2memWrMemData_V_V_full_n { I 1 bit } comp2memWrMemData_V_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name memRd2comp_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_memRd2comp_V \
    op interface \
    ports { memRd2comp_V_dout { I 130 vector } memRd2comp_V_empty_n { I 1 bit } memRd2comp_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name comp2memWrKey_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_comp2memWrKey_V \
    op interface \
    ports { comp2memWrKey_V_din { O 130 vector } comp2memWrKey_V_full_n { I 1 bit } comp2memWrKey_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name comp2memWrMd_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_comp2memWrMd_V \
    op interface \
    ports { comp2memWrMd_V_din { O 64 vector } comp2memWrMd_V_full_n { I 1 bit } comp2memWrMd_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name comp2memWrStatus_V_bin \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_comp2memWrStatus_V_bin \
    op interface \
    ports { comp2memWrStatus_V_bin_din { O 8 vector } comp2memWrStatus_V_bin_full_n { I 1 bit } comp2memWrStatus_V_bin_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
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
    sync_rst true \
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
    sync_rst true \
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


