# ==============================================================
# File generated on Thu Jul 14 17:17:44 EDT 2022
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "XAxi_timestamper" \
        "NUM_INSTANCES" \
        "DEVICE_ID" \
        "C_S_AXI_TIMESTAMP_BASEADDR" \
        "C_S_AXI_TIMESTAMP_HIGHADDR"

    xdefine_config_file $drv_handle "xaxi_timestamper_g.c" "XAxi_timestamper" \
        "DEVICE_ID" \
        "C_S_AXI_TIMESTAMP_BASEADDR"

    xdefine_canonical_xpars $drv_handle "xparameters.h" "XAxi_timestamper" \
        "DEVICE_ID" \
        "C_S_AXI_TIMESTAMP_BASEADDR" \
        "C_S_AXI_TIMESTAMP_HIGHADDR"
}

