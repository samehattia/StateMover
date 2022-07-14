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
    id 74 \
    name accCtrl2demux_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst false \
    corename dc_accCtrl2demux_V \
    op interface \
    ports { accCtrl2demux_V_dout { I 256 vector } accCtrl2demux_V_empty_n { I 1 bit } accCtrl2demux_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name metadataBuffer_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst false \
    corename dc_metadataBuffer_V \
    op interface \
    ports { metadataBuffer_V_din { O 128 vector } metadataBuffer_V_full_n { I 1 bit } metadataBuffer_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name keyBuffer_V_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst false \
    corename dc_keyBuffer_V_V \
    op interface \
    ports { keyBuffer_V_V_din { O 64 vector } keyBuffer_V_V_full_n { I 1 bit } keyBuffer_V_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name demux2getPath_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst false \
    corename dc_demux2getPath_V \
    op interface \
    ports { demux2getPath_V_din { O 45 vector } demux2getPath_V_full_n { I 1 bit } demux2getPath_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name demux2setPathMetadata_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst false \
    corename dc_demux2setPathMetadata_V \
    op interface \
    ports { demux2setPathMetadata_V_din { O 45 vector } demux2setPathMetadata_V_full_n { I 1 bit } demux2setPathMetadata_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name demux2setPathValue_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst false \
    corename dc_demux2setPathValue_V \
    op interface \
    ports { demux2setPathValue_V_din { O 66 vector } demux2setPathValue_V_full_n { I 1 bit } demux2setPathValue_V_write { O 1 bit } } \
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


