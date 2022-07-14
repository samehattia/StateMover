set clock_constraint { \
    name clk \
    module ethernet_axi_splitter \
    port ap_clk \
    period 3.3 \
    uncertainty 0.3 \
}

set all_path {}

set false_path {}

set one_path { \
    name conx_path_0 \
    type single_source \
    source { \
            module ethernet_axi_splitter \
            instance my_mac_address_V \
            bitWidth 48 \
            type port \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_0

