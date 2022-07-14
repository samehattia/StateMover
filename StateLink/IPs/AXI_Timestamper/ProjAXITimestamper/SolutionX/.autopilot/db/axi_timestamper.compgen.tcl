# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set port_timestamp {
write_timestamp_V { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 2147483648
	offset_end 2147483655
}
read_timestamp_V { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 2147483664
	offset_end 2147483671
}
}


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 1 \
			corename axi_timestamper_timestamp_axilite \
			name axi_timestamper_timestamp_s_axi \
			ports {$port_timestamp} \
			op interface \
			is_flushable 0 \ 
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'timestamp'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler axi_timestamper_timestamp_s_axi
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name arvalid_V \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_arvalid_V \
    op interface \
    ports { arvalid_V { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name arready_V \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_arready_V \
    op interface \
    ports { arready_V { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name rvalid_V \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_rvalid_V \
    op interface \
    ports { rvalid_V { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name rready_V \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_rready_V \
    op interface \
    ports { rready_V { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name wvalid_V \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_wvalid_V \
    op interface \
    ports { wvalid_V { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name wready_V \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_wready_V \
    op interface \
    ports { wready_V { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name wlast_V \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_wlast_V \
    op interface \
    ports { wlast_V { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name bvalid_V \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_bvalid_V \
    op interface \
    ports { bvalid_V { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name bready_V \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_bready_V \
    op interface \
    ports { bready_V { I 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -1 \
    name ${PortName} \
    reset_level 0 \
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
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -2 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
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


