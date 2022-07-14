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
    id 47 \
    name memWrCtrl_V \
    reset_level 1 \
    sync_rst true \
    corename {} \
    metadata {  } \
    op interface \
    ports { memWrCtrl_V_TREADY { I 1 bit } memWrCtrl_V_TDATA { O 40 vector } memWrCtrl_V_TVALID { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'memWrCtrl_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 48 \
    name memWrData_V_V \
    reset_level 1 \
    sync_rst true \
    corename {} \
    metadata {  } \
    op interface \
    ports { memWrData_V_V_TREADY { I 1 bit } memWrData_V_V_TDATA { O 512 vector } memWrData_V_V_TVALID { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'memWrData_V_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 49 \
    name addressReturnOut_V_V \
    reset_level 1 \
    sync_rst true \
    corename {} \
    metadata {  } \
    op interface \
    ports { addressReturnOut_V_V_TREADY { I 1 bit } addressReturnOut_V_V_TDATA { O 32 vector } addressReturnOut_V_V_TVALID { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'addressReturnOut_V_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 50 \
    name addressAssignDramIn_V_V \
    reset_level 1 \
    sync_rst true \
    corename {} \
    metadata {  } \
    op interface \
    ports { addressAssignDramIn_V_V_TVALID { I 1 bit } addressAssignDramIn_V_V_TDATA { I 32 vector } addressAssignDramIn_V_V_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'addressAssignDramIn_V_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 51 \
    name addressAssignFlashIn_V_V \
    reset_level 1 \
    sync_rst true \
    corename {} \
    metadata {  } \
    op interface \
    ports { addressAssignFlashIn_V_V_TVALID { I 1 bit } addressAssignFlashIn_V_V_TDATA { I 32 vector } addressAssignFlashIn_V_V_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'addressAssignFlashIn_V_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name flushReq_V \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_flushReq_V \
    op interface \
    ports { flushReq_V { O 1 vector } flushReq_V_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name flushAck_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_flushAck_V \
    op interface \
    ports { flushAck_V { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name flushDone_V \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_flushDone_V \
    op interface \
    ports { flushDone_V { O 1 vector } flushDone_V_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name comp2memWrMd_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_comp2memWrMd_V \
    op interface \
    ports { comp2memWrMd_V_dout { I 64 vector } comp2memWrMd_V_empty_n { I 1 bit } comp2memWrMd_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name comp2memWrStatus_V_bin \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_comp2memWrStatus_V_bin \
    op interface \
    ports { comp2memWrStatus_V_bin_dout { I 8 vector } comp2memWrStatus_V_bin_empty_n { I 1 bit } comp2memWrStatus_V_bin_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name comp2memWrMemData_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_comp2memWrMemData_V_V \
    op interface \
    ports { comp2memWrMemData_V_V_dout { I 512 vector } comp2memWrMemData_V_V_empty_n { I 1 bit } comp2memWrMemData_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name memWr2out_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_memWr2out_V \
    op interface \
    ports { memWr2out_V_din { O 57 vector } memWr2out_V_full_n { I 1 bit } memWr2out_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name dec2cc_V_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dec2cc_V_V \
    op interface \
    ports { dec2cc_V_V_din { O 1 vector } dec2cc_V_V_full_n { I 1 bit } dec2cc_V_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name comp2memWrKey_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_comp2memWrKey_V \
    op interface \
    ports { comp2memWrKey_V_dout { I 130 vector } comp2memWrKey_V_empty_n { I 1 bit } comp2memWrKey_V_read { O 1 bit } } \
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


