# ==============================================================
# File generated on Thu Aug 26 19:00:58 EDT 2021
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================

# source iptypes.tcl
if {[catch {source $env(XILINX_VIVADO)/data/ip/xilinx/xbip_utils_v3_0/common_tcl/iptypes.tcl}]} {
    set SupportDataType 0
} else {
    set SupportDataType 1
}

## IP Info
set Vendor      "xilinx.labs"
set Library     "hls"
set IPName      "readWriteConverterOffset"
set Version     "1.04"
set DisplayName "Mem. Read Write Command Converter with Offset"
set Revision    "2108261900"
set Description "Converts the memcached pipeline mem. read write commands to a format understood by the AXI data mover IP block"
set Device      "kintexu"
set AutoFamily  ""
set Taxonomy    "/VIVADO_HLS_IP"

proc sort_file_names {files {top_name {}}} {
    if { [llength $files] < 2 } {
        return $files
    }
    set files [lsort -dictionary $files]
    if { $top_name eq "" } {
        return $files
    }
    set top_file ""
    set res {}
    foreach f $files {
        if { [file tail $f] eq $top_name } {
            if { $top_file ne "" } {
                error "Found multiple $top_name files"
            }
            set top_file $f
        } else {
            lappend res $f
        }
    }
    if { $top_file ne "" } {
        lappend res $top_file
    }
    return $res
}
    

## Variables
set Top "readwriteconverteroffset_top"
set SynVerilogFiles [sort_file_names [glob -nocomplain hdl/verilog/*] ${Top}.v]
set SWDriverFiles [sort_file_names [glob -nocomplain drivers/*/*/*]]
set SubcoreFiles [sort_file_names [glob -nocomplain subcore/*]]
set DocumentFiles [sort_file_names [glob -nocomplain doc/*]]
set BDFiles [sort_file_names [glob -nocomplain bd/*]]
set ConstraintFiles [sort_file_names [glob -nocomplain constraints/*]]
set MiscFiles [sort_file_names [glob -nocomplain misc/*]]
set Interfaces {
    dmRdCmd_V {
        type "axi4stream"
        mode "master"
        port_prefix "dmRdCmd_V"
        has_tready "1"
        ports {
            TDATA 72
        }
        ctype {
            TDATA {
                Type "null"
                Width "72"
                Bits "72"
            }
        }
    }
    dmRdData_V {
        type "axi4stream"
        mode "slave"
        port_prefix "dmRdData_V"
        has_tready "1"
        ports {
            TDATA 512
            TKEEP 64
            TLAST 1
        }
        ctype {
            TDATA {
                Type "integer unsigned"
                Width "512"
                Bits "512"
            }
        }
    }
    dmRdStatus_V_V {
        type "axi4stream"
        mode "slave"
        port_prefix "dmRdStatus_V_V"
        has_tready "1"
        ports {
            TDATA 8
        }
        ctype {
            TDATA {
                Type "integer unsigned"
                Width "8"
                Bits "8"
            }
        }
    }
    dmWrCmd_V {
        type "axi4stream"
        mode "master"
        port_prefix "dmWrCmd_V"
        has_tready "1"
        ports {
            TDATA 72
        }
        ctype {
            TDATA {
                Type "null"
                Width "72"
                Bits "72"
            }
        }
    }
    dmWrData_V {
        type "axi4stream"
        mode "master"
        port_prefix "dmWrData_V"
        has_tready "1"
        ports {
            TDATA 512
            TKEEP 64
            TLAST 1
        }
        ctype {
            TDATA {
                Type "integer unsigned"
                Width "512"
                Bits "512"
            }
        }
    }
    dmWrStatus_V_V {
        type "axi4stream"
        mode "slave"
        port_prefix "dmWrStatus_V_V"
        has_tready "1"
        ports {
            TDATA 8
        }
        ctype {
            TDATA {
                Type "integer unsigned"
                Width "8"
                Bits "8"
            }
        }
    }
    memRdCmd_V {
        type "axi4stream"
        mode "slave"
        port_prefix "memRdCmd_V"
        has_tready "1"
        ports {
            TDATA 40
        }
        ctype {
            TDATA {
                Type "null"
                Width "40"
                Bits "40"
            }
        }
    }
    memRdData_V_V {
        type "axi4stream"
        mode "master"
        port_prefix "memRdData_V_V"
        has_tready "1"
        ports {
            TDATA 512
        }
        ctype {
            TDATA {
                Type "integer unsigned"
                Width "512"
                Bits "512"
            }
        }
    }
    memWrCmd_V {
        type "axi4stream"
        mode "slave"
        port_prefix "memWrCmd_V"
        has_tready "1"
        ports {
            TDATA 40
        }
        ctype {
            TDATA {
                Type "null"
                Width "40"
                Bits "40"
            }
        }
    }
    memWrData_V_V {
        type "axi4stream"
        mode "slave"
        port_prefix "memWrData_V_V"
        has_tready "1"
        ports {
            TDATA 512
        }
        ctype {
            TDATA {
                Type "integer unsigned"
                Width "512"
                Bits "512"
            }
        }
    }
    aclk {
        type "clock"
        buses "dmRdCmd_V dmRdData_V dmRdStatus_V_V dmWrCmd_V dmWrData_V dmWrStatus_V_V memRdCmd_V memRdData_V_V memWrCmd_V memWrData_V_V"
    }
    aresetn {
        type "reset"
    }
}

######################## Helper functions #################
variable user_parameter_order 1

proc add_port {core name dir width param args} {
    # {{{
    catch {ipx::remove_port $name $core}
    set current_port [ipx::add_port $name $core]
    set_property direction $dir $current_port
    if {$width == ""} {
        # std_logic
        set_property type_name "std_logic" $current_port
        set_property is_vector "false" $current_port
    } else {
        # std_logic_vector
        # width should be an integer
        set_property size_left [expr $width - 1] $current_port
        if {$param != ""} {
            if {[string range $param end-1 end] == "/8"} {
                # for strobe
                set param [string range $param 0 end-2]
                set_property size_left_dependency "((spirit:decode(id('MODELPARAM_VALUE.$param')) div 8) - 1)" $current_port
            } else {
                set_property size_left_dependency "(spirit:decode(id('MODELPARAM_VALUE.$param')) - 1)" $current_port
            }
            set_property size_left_resolve_type "dependent" $current_port
        } else {
            set_property size_left_resolve_type "immediate" $current_port
        }
        set_property size_left_format_type "long" $current_port
        set_property size_right 0 $current_port
        set_property size_right_resolve_type "immediate" $current_port
        set_property size_right_format_type "long" $current_port
        set_property type_name "std_logic_vector" $current_port
        set_property is_vector "true" $current_port
    }

    foreach {k v} $args {
        set_property $k $v $current_port
    }

    return $current_port
    # }}}
}

proc add_hdl_parameter {core name type value format resolve_type args} {
    # {{{
    set current_hdl_parameter [ipx::add_hdl_parameter $name $core]
    set_property data_type $type $current_hdl_parameter
    set_property value $value $current_hdl_parameter
    set_property value_format $format $current_hdl_parameter
    set_property value_resolve_type $resolve_type $current_hdl_parameter
    foreach {k v} $args {
        set_property $k $v $current_hdl_parameter
    }

    return $current_hdl_parameter
    # }}}
}

proc add_bus_interface {core name type mode} {
    # {{{
    set properties ""
    switch -- $type {
        axi4 -
        axi4lite {
            dict set properties bus_type_vlnv "xilinx.com:interface:aximm:1.0"
            dict set properties abstraction_type_vlnv "xilinx.com:interface:aximm_rtl:1.0"
            dict set properties endianness "little"
            dict set properties interface_mode $mode
            if {$mode == "master"} {
                    set ::AddressSpace [ipx::add_address_space Data_$name $core]
                    set_property range 4G $::AddressSpace
                    set_property width 32 $::AddressSpace
                dict set properties master_address_space_ref Data_$name
            }
            if {$mode == "slave"} {
                set current_memory_map [ipx::add_memory_map $name $core]
                set current_address_block [ipx::add_address_block Reg $current_memory_map]
                set_property width "32" $current_address_block
                set_property access "read-write" $current_address_block
                set_property usage "register" $current_address_block
                set_property base_address "0" $current_address_block
                set_property base_address_format "long" $current_address_block
                set_property base_address_resolve_type "immediate" $current_address_block
                set_property range "65536" $current_address_block
                set_property range_format "long" $current_address_block
                set_property range_resolve_type "generated" $current_address_block
                set current_parameter [ipx::add_address_block_parameter ${name}_base_addr $current_address_block]
                set_property name OFFSET_BASE_PARAM $current_parameter
                set_property value C_[string toupper $name]_BASEADDR $current_parameter
                set current_parameter [ipx::add_address_block_parameter ${name}_high_addr $current_address_block]
                set_property name OFFSET_HIGH_PARAM $current_parameter
                set_property value C_[string toupper $name]_HIGHADDR $current_parameter
                dict set properties slave_memory_map_ref $name
            }
        }
        axi4stream {
            dict set properties bus_type_vlnv "xilinx.com:interface:axis:1.0"
            dict set properties abstraction_type_vlnv "xilinx.com:interface:axis_rtl:1.0"
            dict set properties endianness "little"
            dict set properties interface_mode $mode
        }
        bram {
            dict set properties bus_type_vlnv "xilinx.com:interface:bram:1.0"
            dict set properties abstraction_type_vlnv "xilinx.com:interface:bram_rtl:1.0"
            dict set properties interface_mode $mode
        }
        fifo_read {
            dict set properties bus_type_vlnv "xilinx.com:interface:acc_fifo_read:1.0"
            dict set properties abstraction_type_vlnv "xilinx.com:interface:acc_fifo_read_rtl:1.0"
            dict set properties interface_mode $mode
        }
        fifo_write {
            dict set properties bus_type_vlnv "xilinx.com:interface:acc_fifo_write:1.0"
            dict set properties abstraction_type_vlnv "xilinx.com:interface:acc_fifo_write_rtl:1.0"
            dict set properties interface_mode $mode
        }
        ap_ctrl {
            dict set properties bus_type_vlnv "xilinx.com:interface:acc_handshake:1.0"
            dict set properties abstraction_type_vlnv "xilinx.com:interface:acc_handshake_rtl:1.0"
            dict set properties interface_mode $mode
        }
        clock {
            dict set properties bus_type_vlnv "xilinx.com:signal:clock:1.0"
            dict set properties abstraction_type_vlnv "xilinx.com:signal:clock_rtl:1.0"
            dict set properties interface_mode "slave"
        }
        reset {
            dict set properties bus_type_vlnv "xilinx.com:signal:reset:1.0"
            dict set properties abstraction_type_vlnv "xilinx.com:signal:reset_rtl:1.0"
            dict set properties interface_mode "slave"
        }
        clockenable {
            dict set properties bus_type_vlnv "xilinx.com:signal:clockenable:1.0"
            dict set properties abstraction_type_vlnv "xilinx.com:signal:clockenable_rtl:1.0"
            dict set properties interface_mode "slave"
        }
        interrupt {
            dict set properties bus_type_vlnv "xilinx.com:signal:interrupt:1.0"
            dict set properties abstraction_type_vlnv "xilinx.com:signal:interrupt_rtl:1.0"
            dict set properties interface_mode "master"
        }
    }

    set current_bus_interface [ipx::add_bus_interface $name $core]
    dict for {k v} $properties {
        set_property $k $v $current_bus_interface
    }

    return $current_bus_interface
    # }}}
}

proc add_port_map {bus name logical physical} {
    # {{{
    set current_port_map [ipx::add_port_map $name $bus]
    set_property logical_name $logical $current_port_map
    set_property physical_name $physical $current_port_map

    return $current_port_map
    # }}}
}

proc add_bus_parameter {bus name value {resolve_type ""}} {
    # {{{
    if {$resolve_type == ""} {
        set resolve_type "immediate"
    }

    set current_bus_parameter [ipx::add_bus_parameter $name $bus]
    set_property value $value $current_bus_parameter
    set_property value_resolve_type $resolve_type $current_bus_parameter

    return $current_bus_parameter
    # }}}
}

proc add_user_parameter {core name display_name value format resolve_type args} {
    # {{{
    upvar user_parameter_order order
    incr order
    
    set current_user_parameter [ipx::add_user_parameter $name $core]
    set_property order $order $current_user_parameter
    set_property value $value $current_user_parameter
    set_property display_name $display_name $current_user_parameter
    set_property value_format $format $current_user_parameter
    set_property value_resolve_type $resolve_type $current_user_parameter
    foreach {k v} $args {
        set_property $k $v $current_user_parameter
    }

    return $current_user_parameter
    # }}}
}

proc create_datatype { ctype {bitoffset 0}} {
    # {{{
    dict with ctype {}

    switch -- [lindex $Type 0] {
        integer {
            # integer
            if {[lindex $Type 1] == "signed"} {
                set signed true
            } else {
                set signed false
            }
            return [iptypes::datatype::new -type integer -bitwidth $Width -bitoffset $bitoffset -signed $signed]
        }

        real {
            lassign $Type type sub_type signed frac_width
            if {$sub_type == "fixed"} {
                # real - fixed
                if {$signed == "signed"} {
                    set signed true
                } else {
                    set signed false
                }
                return [iptypes::datatype::new -type real -bitwidth $Width -bitoffset $bitoffset -fixed \
                    -signed $signed -fractwidth $frac_width]
            } else {
                # real -float
                set sigwidth [expr ($Width == 64)? 53 : 24]
                return [iptypes::datatype::new -type real -bitwidth $Width -bitoffset $bitoffset -float -sigwidth $sigwidth]
            }
        }

        complex {
            dict with Element {}

            if {$Bits % 8 != 0} {
                set ::__warn_sub_field__ 1
            }

            switch -- [lindex $Type 0] {
                integer {
                    # integer
                    if {[lindex $Type 1] == "signed"} {
                        set signed true
                    } else {
                        set signed false
                    }
                    return [iptypes::datatype::new -type complex -bitwidth $Width -stride $Bits -bitoffset $bitoffset -integer -signed $signed]
                }

                real {
                    lassign $Type type sub_type signed frac_width
                    if {$sub_type == "fixed"} {
                        # real - fixed
                        if {$signed == "signed"} {
                            set signed true
                        } else {
                            set signed false
                        }
                        return [iptypes::datatype::new -type complex -bitwidth $Width -stride $Bits -bitoffset $bitoffset -real -fixed \
                            -signed $signed -fractwidth $frac_width]
                    } else {
                        # real -float
                        set sigwidth [expr ($Width == 64)? 53 : 24]
                        return [iptypes::datatype::new -type complex -bitwidth $Width -stride $Bits -bitoffset $bitoffset -real -float -sigwidth $sigwidth]
                    }
                }
            }
        }

        struct {
            set type [iptypes::datatype::new -type struct -bitoffset $bitoffset]

            set i 0
            dict for {field_name field_type} $Fields {
                iptypes::struct::new_field type -name $field_name -datatype [create_datatype $field_type $i]
                incr i [dict get $field_type Bits]
            }

            return $type
        }

        array {
            return [iptypes::datatype::new -type array_type -bitoffset $bitoffset -size $Dimension \
                -stride [dict get $Element Bits] -datatype [create_datatype $Element]]
        }

        null    -
        default {
            # null
            return [iptypes::datatype::new -bitwidth $Width -bitoffset $bitoffset]
        }
    }
    # }}}
}

###########################################################

## Enter IP directory
cd [file dir [info script]]

## Create core
set vivado_ver [version -short]
set core [ipx::create_core $Vendor $Library $IPName $Version]
set_property definition_source HLS [ipx::current_core]
set_property display_name $DisplayName $core
set_property core_revision $Revision $core
set_property description $Description $core
set_property taxonomy $Taxonomy $core
if { $AutoFamily ne "" } {
  set_property auto_family_support_level $AutoFamily $core
} else {
  set_property supported_families [list $Device Pre-Production] $core
}

## Import all ports
ipx::add_ports_from_hdl \
    -top_level_hdl_file hdl/verilog/$Top.v \
    -top_module_name $Top \
    -quiet \
    $core

## Ports and interfaces
foreach interface_name [dict keys $Interfaces] {
    set interface_detail [dict get $Interfaces $interface_name]
    dict with interface_detail {}
    switch -nocase -- $type {
        axi4 {
            # {{{
            ## direction
            if {$mode == "master"} {
                set dir0 "out"
                set dir1 "in"
            } else {
                set dir0 "in"
                set dir1 "out"
            }

            ## address width
            if {$mode == "master"} {
                set addr_bits 32
            }

            ## rtl ports
            set rtl_ports [list \
                [list AWID    $dir0 1  "${param_prefix}_ID_WIDTH"] \
                [list AWADDR  $dir0 $addr_bits "${param_prefix}_ADDR_WIDTH"] \
                [list AWLEN   $dir0 8  ""] \
                [list AWSIZE  $dir0 3  ""] \
                [list AWBURST $dir0 2  ""] \
                [list AWLOCK  $dir0 2  ""] \
                [list AWCACHE $dir0 4  ""] \
                [list AWPROT  $dir0 3  ""] \
                [list AWQOS   $dir0 4  ""] \
                [list AWUSER  $dir0 1  "${param_prefix}_AWUSER_WIDTH" \
                    enablement_presence optional \
                    enablement_dependency "(spirit:decode(id('PARAM_VALUE.${param_prefix}_ENABLE_USER_PORTS')) = 1)" \
                ] \
                [list AWVALID $dir0 "" ""] \
                [list AWREADY $dir1 "" ""] \
                [list WDATA   $dir0 32 "${param_prefix}_DATA_WIDTH"] \
                [list WSTRB   $dir0 4  "${param_prefix}_DATA_WIDTH/8"] \
                [list WLAST   $dir0 "" ""] \
                [list WUSER   $dir0 1  "${param_prefix}_WUSER_WIDTH" \
                    enablement_presence optional \
                    enablement_dependency "(spirit:decode(id('PARAM_VALUE.${param_prefix}_ENABLE_USER_PORTS')) = 1)" \
                ] \
                [list WVALID  $dir0 "" ""] \
                [list WREADY  $dir1 "" ""] \
                [list BID     $dir1 1  "${param_prefix}_ID_WIDTH"] \
                [list BRESP   $dir1 2  ""] \
                [list BUSER   $dir1 1  "${param_prefix}_BUSER_WIDTH" \
                    driver_value {0} \
                    enablement_presence optional \
                    enablement_dependency "(spirit:decode(id('PARAM_VALUE.${param_prefix}_ENABLE_USER_PORTS')) = 1)" \
                ] \
                [list BVALID  $dir1 "" ""] \
                [list BREADY  $dir0 "" ""] \
                [list ARID    $dir0 1  "${param_prefix}_ID_WIDTH"] \
                [list ARADDR  $dir0 $addr_bits "${param_prefix}_ADDR_WIDTH"] \
                [list ARLEN   $dir0 8  ""] \
                [list ARSIZE  $dir0 3  ""] \
                [list ARBURST $dir0 2  ""] \
                [list ARLOCK  $dir0 2  ""] \
                [list ARCACHE $dir0 4  ""] \
                [list ARPROT  $dir0 3  ""] \
                [list ARQOS   $dir0 4  ""] \
                [list ARUSER  $dir0 1  "${param_prefix}_ARUSER_WIDTH" \
                    enablement_presence optional \
                    enablement_dependency "(spirit:decode(id('PARAM_VALUE.${param_prefix}_ENABLE_USER_PORTS')) = 1)" \
                ] \
                [list ARVALID $dir0 "" ""] \
                [list ARREADY $dir1 "" ""] \
                [list RID     $dir1 1  "${param_prefix}_ID_WIDTH"] \
                [list RDATA   $dir1 32 "${param_prefix}_DATA_WIDTH"] \
                [list RRESP   $dir1 2  ""] \
                [list RLAST   $dir1 "" ""] \
                [list RUSER   $dir1 1  "${param_prefix}_RUSER_WIDTH" \
                    driver_value {0} \
                    enablement_presence optional \
                    enablement_dependency "(spirit:decode(id('PARAM_VALUE.${param_prefix}_ENABLE_USER_PORTS')) = 1)" \
                ] \
                [list RVALID  $dir1 "" ""] \
                [list RREADY  $dir0 "" ""] \
            ]

            ## rtl parameters
            set rtl_parameters [list \
                [list ID_WIDTH "integer" 1  "long" "generated"] \
                [list ADDR_WIDTH   "integer" $addr_bits "long" "immediate"] \
                [list DATA_WIDTH   "integer" 32 "long" "generated"] \
                [list AWUSER_WIDTH "integer" 1  "long" "generated" \
                    enablement_presence optional \
                    enablement_resolve_type dependent \
                ] \
                [list ARUSER_WIDTH "integer" 1  "long" "generated" \
                    enablement_presence optional \
                    enablement_resolve_type dependent \
                ] \
                [list WUSER_WIDTH  "integer" 1  "long" "generated" \
                    enablement_presence optional \
                    enablement_resolve_type dependent \
                ] \
                [list RUSER_WIDTH  "integer" 1  "long" "generated" \
                    enablement_presence optional \
                    enablement_resolve_type dependent \
                ] \
                [list BUSER_WIDTH  "integer" 1  "long" "generated" \
                    enablement_presence optional \
                    enablement_resolve_type dependent \
                ] \
                [list TARGET_ADDR  "std_logic_vector" 0x00000000 "bitString" "generated" \
                    value_bit_string_length 32 \
                ] \
                [list USER_VALUE      "std_logic_vector" 0x00000000   "bitString" "generated" \
                    value_bit_string_length 32 \
                    enablement_presence optional \
                    enablement_resolve_type dependent \
                ] \
                [list PROT_VALUE      "std_logic_vector" \"000\"  "bitString" "generated" \
                    value_bit_string_length 3 \
                ] \
                [list CACHE_VALUE     "std_logic_vector" \"0011\" "bitString" "generated" \
                    value_bit_string_length 4 \
                ] \
            ]

            ## user parameters
            set user_parameters [list \
                [list ID_WIDTH "ID width" 1 "long" "user" \
                    value_validation_range_maximum 32 \
                    value_validation_range_minimum 1 \
                ] \
                [list DATA_WIDTH "Data width" $data_width "long" "user" \
                    value_validation_list {32:32 64:64 128:128 256:256} \
                ] \
                [list ENABLE_USER_PORTS "Enable USER ports" "false" "bool" "user"] \
                [list AWUSER_WIDTH "AWUSER width" 1 "long" "user" \
                    enablement_presence optional \
                    enablement_dependency "(spirit:decode(id('PARAM_VALUE.${param_prefix}_ENABLE_USER_PORTS')) = 1)" \
                    value_validation_range_maximum 1024 \
                    value_validation_range_minimum 1 \
                ] \
                [list WUSER_WIDTH "WUSER width" 1 "long" "user" \
                    enablement_presence optional \
                    enablement_dependency "(spirit:decode(id('PARAM_VALUE.${param_prefix}_ENABLE_USER_PORTS')) = 1)" \
                    value_validation_range_maximum 1024 \
                    value_validation_range_minimum 1 \
                ] \
                [list BUSER_WIDTH "BUSER width" 1 "long" "user" \
                    enablement_presence optional \
                    enablement_dependency "(spirit:decode(id('PARAM_VALUE.${param_prefix}_ENABLE_USER_PORTS')) = 1)" \
                    value_validation_range_maximum 1024 \
                    value_validation_range_minimum 1 \
                ] \
                [list ARUSER_WIDTH "ARUSER width" 1 "long" "user" \
                    enablement_presence optional \
                    enablement_dependency "(spirit:decode(id('PARAM_VALUE.${param_prefix}_ENABLE_USER_PORTS')) = 1)" \
                    value_validation_range_maximum 1024 \
                    value_validation_range_minimum 1 \
                ] \
                [list RUSER_WIDTH "RUSER width" 1 "long" "user" \
                    enablement_presence optional \
                    enablement_dependency "(spirit:decode(id('PARAM_VALUE.${param_prefix}_ENABLE_USER_PORTS')) = 1)" \
                    value_validation_range_maximum 1024 \
                    value_validation_range_minimum 1 \
                ] \
                [list TARGET_ADDR "Base address of target slave" 0x00000000 "bitString" "user" \
                    value_bit_string_length 32 \
                ] \
                [list USER_VALUE "USER value" 0x00000000 "bitString" "user" \
                    enablement_presence optional \
                    enablement_dependency "(spirit:decode(id('PARAM_VALUE.${param_prefix}_ENABLE_USER_PORTS')) = 1)" \
                    value_bit_string_length 32 \
                ] \
                [list PROT_VALUE "PROT value" \"000\" "bitString" "user" \
                    value_bit_string_length 3 \
                ] \
                [list CACHE_VALUE "CACHE value" \"0011\" "bitString" "user" \
                    value_bit_string_length 4 \
                ] \
            ]

            set bus_parameters [list \
                [list ADDR_WIDTH $addr_bits] \
                [list MAX_BURST_LENGTH 256] \
                [list NUM_READ_OUTSTANDING 1] \
                [list NUM_WRITE_OUTSTANDING 1] \
                [list PROTOCOL AXI4] \
                [list READ_WRITE_MODE READ_WRITE] \
                [list HAS_BURST 0] \
                [list SUPPORTS_NARROW_BURST 0] \
            ]

            ## axi4
            set current_bus_interface [add_bus_interface $core $interface_name axi4 $mode]

            ## ports
            foreach rtl_port $rtl_ports {
                set port_args [lassign $rtl_port port_name port_dir port_width port_param]
                eval add_port \$core \${port_prefix}_\$port_name \$port_dir \$port_width \$port_param $port_args
            }

            ## rtl parameters
            foreach rtl_parameter $rtl_parameters {
                set pargs [lassign $rtl_parameter pname ptype pvalue pformat presolve_type]
                eval add_hdl_parameter \$core \${param_prefix}_\$pname \$ptype \$pvalue \$pformat \$presolve_type $pargs
            }

            ## user parameters
            foreach user_parameter $user_parameters {
                set pargs [lassign $user_parameter pname pdisplay_name pvalue pformat presolve_type]
                eval add_user_parameter \$core \${param_prefix}_\$pname \$pdisplay_name \$pvalue \$pformat \$presolve_type $pargs config_groups \[list 1 \"\$interface_name (AXI4 Master Interface)\"\]
            }

            ## bus parameters
            foreach bus_parameter $bus_parameters {
                lassign $bus_parameter pname pvalue
                add_bus_parameter $current_bus_interface $pname $pvalue
            }

            # port map
            foreach rtl_port $rtl_ports {
                set port_name [lindex $rtl_port 0]
                add_port_map $current_bus_interface $port_name $port_name ${port_prefix}_${port_name}
            }
            # }}}
        }

        axi4lite {
            # {{{
            ## direction
            if {$mode == "master"} {
                set dir0 "out"
                set dir1 "in"
            } else {
                set dir0 "in"
                set dir1 "out"
            }

            ## address width
            if {$mode == "master"} {
                set addr_bits 32
            }

            ## rtl ports
            set rtl_ports [list \
                [list AWADDR  $dir0 $addr_bits "${param_prefix}_ADDR_WIDTH"] \
                [list AWVALID $dir0 "" ""] \
                [list AWREADY $dir1 "" ""] \
                [list WDATA   $dir0 32 "${param_prefix}_DATA_WIDTH"] \
                [list WSTRB   $dir0 4  "${param_prefix}_DATA_WIDTH/8"] \
                [list WVALID  $dir0 "" ""] \
                [list WREADY  $dir1 "" ""] \
                [list BRESP   $dir1 2  ""] \
                [list BVALID  $dir1 "" ""] \
                [list BREADY  $dir0 "" ""] \
                [list ARADDR  $dir0 $addr_bits "${param_prefix}_ADDR_WIDTH"] \
                [list ARVALID $dir0 "" ""] \
                [list ARREADY $dir1 "" ""] \
                [list RDATA   $dir1 32 "${param_prefix}_DATA_WIDTH"] \
                [list RRESP   $dir1 2  ""] \
                [list RVALID  $dir1 "" ""] \
                [list RREADY  $dir0 "" ""] \
            ]

            ## rtl parameters
            set rtl_parameters [list \
                [list ADDR_WIDTH "integer" $addr_bits "long" "generated"] \
                [list DATA_WIDTH "integer" 32 "long" "immediate"] \
            ]

            ## user parameters
            set user_parameters [list \
                [list ADDR_WIDTH "Address width" $addr_bits "long" "user" \
                    value_validation_range_maximum 32 \
                    value_validation_range_minimum $addr_bits \
                ] \
            ]

            ## bus parameters
            set bus_parameters [list \
                [list ADDR_WIDTH $addr_bits] \
                [list DATA_WIDTH 32] \
                [list PROTOCOL AXI4LITE] \
                [list READ_WRITE_MODE READ_WRITE] \
            ]

            ## axi4
            set current_bus_interface [add_bus_interface $core $interface_name axi4lite $mode]

            ## ports
            foreach rtl_port $rtl_ports {
                lassign $rtl_port port_name port_dir port_width port_param
                add_port $core ${port_prefix}_$port_name $port_dir $port_width $port_param
            }

            ## rtl parameters
            foreach rtl_parameter $rtl_parameters {
                set pargs [lassign $rtl_parameter pname ptype pvalue pformat presolve_type]
                eval add_hdl_parameter \$core \${param_prefix}_\$pname \$ptype \$pvalue \$pformat \$presolve_type $pargs
            }

            ## user parameters
            foreach user_parameter $user_parameters {
                set pargs [lassign $user_parameter pname pdisplay_name pvalue pformat presolve_type]
                eval add_user_parameter \$core \${param_prefix}_\$pname \$pdisplay_name \$pvalue \$pformat \$presolve_type $pargs config_groups \[list 1 \"\$interface_name (AXI4Lite Slave Interface)\"\]
            }

            ## bus parameters
            foreach bus_parameter $bus_parameters {
                lassign $bus_parameter pname pvalue
                add_bus_parameter $current_bus_interface $pname $pvalue
            }

            # port map
            foreach rtl_port $rtl_ports {
                set port_name [lindex $rtl_port 0]
                add_port_map $current_bus_interface $port_name $port_name ${port_prefix}_${port_name}
            }
            # }}}
        }

        axi4stream {
            # {{{
            ## ports
            if {$mode == "master"} {
                set dir0 "out"
                set dir1 "in"
            } else {
                set dir0 "in"
                set dir1 "out"
            }

            ## bus parameters
            set bus_parameters ""

            if {[dict exists $ports TDATA]} {
                lappend bus_parameters [list TDATA_NUM_BYTES [expr [dict get $ports TDATA] / 8]]
            }

            if {[dict exists $ports TDEST]} {
                lappend bus_parameters [list TDEST_WIDTH [dict get $ports TDEST]]
            }

            if {[dict exists $ports TID]} {
                lappend bus_parameters [list TID_WIDTH [dict get $ports TID]]
            }

            if {[dict exists $ports TUSER]} {
                lappend bus_parameters [list TUSER_WIDTH [dict get $ports TUSER]]
            } else {
                lappend bus_parameters [list TUSER_WIDTH 0]
            }

            set layered_metadata ""
            if {$SupportDataType && [dict exists $ctype TDATA]} {
                set ::__warn_sub_field__ 0
                dict set layered_metadata $iptypes::vlnv TDATA [create_datatype [dict get $ctype TDATA]]
                if {$::__warn_sub_field__} {
                    puts "TDATA of AXI4-Stream interface '$interface_name' contains sub-fields not aligned to byte boundaries. The resulting layout may not be compatible with the connecting interface."
                }
                if {[dict exists $ctype TDATA Name]} {
                    dict set layered_metadata $iptypes::vlnv TDATA datatype name value [dict get $ctype TDATA Name]
                }
            }
            if {$SupportDataType && [dict exists $ctype TUSER]} {
                set ::__warn_sub_field__ 0
                dict set layered_metadata $iptypes::vlnv TUSER [create_datatype [dict get $ctype TUSER]]
                if {$::__warn_sub_field__} {
                    puts "TUSER of AXI4-Stream interface '$interface_name' contains sub-fields not aligned to byte boundaries. The resulting layout may not be compatible with the connecting interface."
                }
            }
            lappend bus_parameters [list LAYERED_METADATA $layered_metadata generated]

            # tvalid
            add_port $core ${port_prefix}_TVALID $dir0 "" ""

            # tready
            if {$has_tready} {
                add_port $core ${port_prefix}_TREADY $dir1 "" ""
            }

            # other ports
            set tieoff {TUSER 0 TDEST 0 TID 0 TLAST 0 TKEEP 1 TSTRB 1}
            set port_names [dict keys $ports]
            foreach port_name $port_names {
                set port_width [dict get $ports $port_name]
                if {$dir0 == "in" && [dict exists $tieoff $port_name]} {
                    set driver_value [expr [dict get $tieoff $port_name] * (2 ** $port_width - 1)]
                    add_port $core ${port_prefix}_${port_name} $dir0 $port_width "" endianness little driver_value $driver_value
                } else {
                    add_port $core ${port_prefix}_${port_name} $dir0 $port_width "" endianness little
                }
            }

            ## create bus interface
            set current_bus_interface [add_bus_interface $core $interface_name axi4stream $mode]

            ## port map
            # tvalid
            add_port_map $current_bus_interface "TVALID" "TVALID" ${port_prefix}_TVALID

            # tready
            if {$has_tready} {
                add_port_map $current_bus_interface "TREADY" "TREADY" ${port_prefix}_TREADY
            }

            # other ports
            dict for {port_name port_width} $ports {
                add_port_map $current_bus_interface $port_name $port_name ${port_prefix}_${port_name}
            }

            ## bus parameters
            foreach bus_parameter $bus_parameters {
                lassign $bus_parameter pname pvalue presolve_type
                add_bus_parameter $current_bus_interface $pname $pvalue $presolve_type
            }
            # }}}
        }

        bram {
            # {{{

            ## rtl ports
            set rtl_ports [list \
                [list Clk  CLK  out "" ""] \
                [list Rst  RST  out "" ""] \
                [list EN   EN   out "" ""] \
                [list WEN  WE   out [expr $mem_width / 8] ""] \
                [list Addr ADDR out 32 ""] \
                [list Dout DIN  out $mem_width ""] \
                [list Din  DOUT in  $mem_width ""] \
            ]

            ## bus parameters
            set bus_parameters [list \
                [list MEM_WIDTH $mem_width] \
                [list MEM_SIZE [expr $mem_width * $mem_depth / 8]] \
                [list MASTER_TYPE $master_type] \
            ]

            foreach mem_port $mem_ports {
                set suffix [string toupper $mem_port]
                ## interface
                set current_bus_interface [add_bus_interface $core ${interface_name}_PORT$suffix bram master]

                ## ports
                foreach rtl_port $rtl_ports {
                    lassign $rtl_port port_name port_map port_dir port_width port_param
                    add_port $core ${port_prefix}_${port_name}_$suffix $port_dir $port_width $port_param
                }

                ## bus parameters
                foreach bus_parameter $bus_parameters {
                    lassign $bus_parameter pname pvalue
                    add_bus_parameter $current_bus_interface $pname $pvalue
                }

                # port map
                foreach rtl_port $rtl_ports {
                    lassign $rtl_port port_name port_map
                    add_port_map $current_bus_interface $port_map $port_map ${port_prefix}_${port_name}_$suffix
                }
            }
            # }}}
        }

        ap_fifo {
            # {{{
            if {$fifo_type == "read"} {
                set interface_type fifo_read
                set rtl_ports [list \
                    [list ${interface_name}_dout    RD_DATA in  $fifo_width] \
                    [list ${interface_name}_empty_n EMPTY_N in  ""] \
                    [list ${interface_name}_read    RD_EN   out ""] \
                ]
            } else {
                set interface_type fifo_write
                set rtl_ports [list \
                    [list ${interface_name}_din     WR_DATA out $fifo_width] \
                    [list ${interface_name}_full_n  FULL_N  in  ""] \
                    [list ${interface_name}_write   WR_EN   out ""] \
                ]
            }

            ## interface
            set current_bus_interface [add_bus_interface $core $interface_name $interface_type master]

            ## ports
            foreach rtl_port $rtl_ports {
                lassign $rtl_port port_name port_map port_dir port_width
                add_port $core $port_name $port_dir $port_width ""
            }

            # port map
            foreach rtl_port $rtl_ports {
                lassign $rtl_port port_name port_map
                add_port_map $current_bus_interface $port_map $port_map $port_name
            }
            # }}}
        }

        ap_ctrl {
            # {{{
            set rtl_ports ""
            foreach port $ctrl_ports {
                switch -- $port {
                    ap_start {
                        lappend rtl_ports [list ap_start start in ""]
                    }
                    ap_ready {
                        lappend rtl_ports [list ap_ready ready out ""]
                    }
                    ap_done {
                        lappend rtl_ports [list ap_done done out ""]
                    }
                    ap_continue {
                        lappend rtl_ports [list ap_continue continue in ""]
                    }
                    ap_idle {
                        lappend rtl_ports [list ap_idle idle out ""]
                    }
                }
            }

            ## interface
            set current_bus_interface [add_bus_interface $core $interface_name ap_ctrl slave]

            ## ports
            foreach rtl_port $rtl_ports {
                lassign $rtl_port port_name port_map port_dir port_width
                add_port $core $port_name $port_dir $port_width ""
            }

            # port map
            foreach rtl_port $rtl_ports {
                lassign $rtl_port port_name port_map
                add_port_map $current_bus_interface $port_map $port_map $port_name
            }
            # }}}
        }

        clock {
            # {{{
            add_port $core $interface_name in "" ""
            set current_bus_interface [add_bus_interface $core $interface_name clock slave]
            add_port_map $current_bus_interface CLK CLK $interface_name

            add_bus_parameter $current_bus_interface ASSOCIATED_BUSIF [join $buses ":"]

            if {[dict exists $Interfaces aresetn]} {
                add_bus_parameter $current_bus_interface ASSOCIATED_RESET aresetn
            }

            if {[dict exists $Interfaces ce]} {
                add_bus_parameter $current_bus_interface ASSOCIATED_CLKEN ce
            }
            # }}}
        }

        reset {
            # {{{
            add_port $core $interface_name in "" ""
            set current_bus_interface [add_bus_interface $core $interface_name reset slave]
            add_port_map $current_bus_interface RST RST $interface_name
            add_bus_parameter $current_bus_interface POLARITY ACTIVE_LOW
            # }}}
        }

        clockenable {
            # {{{
            add_port $core $interface_name in "" ""
            set current_bus_interface [add_bus_interface $core $interface_name clockenable slave]
            add_port_map $current_bus_interface CE CE $interface_name
            # }}}
        }

        interrupt {
            # {{{
            add_port $core $interface_name out "" ""
            set current_bus_interface [add_bus_interface $core $interface_name interrupt slave]
            add_port_map $current_bus_interface Intr INTERRUPT $interface_name
            add_bus_parameter $current_bus_interface SENSITIVITY "LEVEL_HIGH"
            # }}}
        }
    }
}

## Generate sub cores
set IPs ""
set IPFiles ""
if {$SubcoreFiles != ""} {
    set ipdir "hdl/ip"
    file delete -force $ipdir
    file mkdir $ipdir

    set prj "tmp"
    create_project -force $prj
    set vivado_ver [version -short]
    if {[regexp -nocase {2018\.4.*} $vivado_ver match]} {
        set_property coreContainer.alwaysCreateXCI 1 [current_project]
    }

    set COE_DIR ../../../..
    foreach ipfile $SubcoreFiles {
        set ipname [file root [file tail $ipfile]]
        set ipname [string range $ipname 0 end-3]

        source $ipfile
        if {[regexp -nocase {2018\.4.*} $vivado_ver match]} {
            extract_files -force -base_dir "./${prj}srcs/sources_1/ip" [get_files -all -of [get_ips $ipname]]
            file copy -force ./${prj}.srcs/sources_1/ip/$ipname.xci ./${prj}srcs/sources_1/ip/$ipname/.
            set prj_root "${prj}srcs"
        } else {
            set prj_root "${prj}.srcs"
        }

        set rtlfiles [glob -nocomplain ${prj_root}/sources_1/ip/$ipname/synth/*]
        foreach rtl $rtlfiles {
            file copy $rtl $ipdir
        }

        set rtlfiles [glob -nocomplain ${prj_root}/sources_1/ip/$ipname/*.mif]
        foreach rtl $rtlfiles {
            file copy $rtl $ipdir
        }

        set xcifile "${prj_root}/sources_1/ip/$ipname/$ipname.xci"
        if {![file isfile $xcifile]} {
            continue
        }

        set f [open $xcifile r]
        set s [read $f]
        close $f
        set pat {(?n)componentRef.*vendor="(.+)".*\s*.*library="(.+)".*\s*.*name="(.+)".*\s*.*version="(.+)".*\s*.*}
        if {[regexp $pat $s m vendor library name version]} {
            lappend IPs "$vendor:$library:$name:$version"
        }
    }

    close_project
    
    set IPs [lsort -u $IPs]
    set IPFiles [glob -nocomplain $ipdir/*]
}

## Synthesis HDL Files
set current_file_group [ipx::add_file_group xilinx_verilogsynthesis $core]
set_property model_name $Top $current_file_group
if {$IPs != ""} {
    set_property component_subcores $IPs $current_file_group
}
foreach f [concat $IPFiles $ConstraintFiles $SynVerilogFiles] {
    set current_file [ipx::add_file $f $current_file_group]
    if {[file ext $f] == ".dat" || [file ext $f] == ".mif"} {
        set_property type "mif" $current_file
    }
    if {[file ext $f] == ".xdc"} {
        if {[regexp -nocase {.*_ooc.xdc} $f]} {
            set_property used_in {out_of_context} $current_file
        } else {
            set_property used_in {synthesis implementation} $current_file
        }
    }
}

## Simulation HDL Files
set current_file_group [ipx::add_file_group xilinx_verilogbehavioralsimulation $core]
set_property model_name $Top $current_file_group
if {$IPs != ""} {
    set_property component_subcores $IPs $current_file_group
}
foreach f [concat $SynVerilogFiles $IPFiles] {
    set current_file [ipx::add_file $f $current_file_group]
    if {[file ext $f] == ".dat" || [file ext $f] == ".mif"} {
        set_property type "mif" $current_file
    }
}

## Software Drivers Files
if {[llength $SWDriverFiles] > 0} {
    set current_file_group [ipx::add_file_group xilinx_softwaredriver $core]
    foreach f $SWDriverFiles {
        set current_file [ipx::add_file $f $current_file_group]
        if {[file ext $f] == ".mdd"} {
            set_property type {driver_mdd} $current_file
        } elseif {[file ext $f] == ".tcl"} {
            set_property type {driver_tcl} $current_file
        } else {
            set_property type {driver_src} $current_file
        }
    }
}

## Document files
if {[llength $DocumentFiles] > 0} {
    set current_file_group [ipx::add_file_group xilinx_documentation $core]
    foreach f $DocumentFiles {
        ipx::add_file $f $current_file_group
    }
}

## Add misc files
if {[llength $MiscFiles] > 0} {
    set group [ipx::add_file_group xilinx_miscfiles $core]
    foreach f $MiscFiles {
        ipx::add_file $f $group
    }
}

## BD files
if {[llength $BDFiles] > 0} {
    set current_file_group [ipx::add_file_group xilinx_block_diagram $core]
    foreach f $BDFiles {
        ipx::add_file $f $current_file_group
    }
}

ipx::create_xgui_files -logo_file misc/logo.png $core
ipx::update_checksums $core
ipx::save_core $core

## Generate zip
set ZipFile [string map {. _} ${Vendor}_${Library}_${IPName}_${Version}].zip
ipx::archive_core [file join [pwd] $ZipFile] $core

# vim:ts=4 sw=4 et fdm=marker:
