// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _mac_header_add_HH_
#define _mac_header_add_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "add_mac_header.h"
#include "edit_len_field.h"
#include "fifo_w185_d16_A.h"
#include "fifo_w16_d4_A.h"
#include "start_for_edit_len_field_U0.h"

namespace ap_rtl {

struct mac_header_add : public sc_module {
    // Port declarations 16
    sc_in< sc_lv<64> > dataIn_TDATA;
    sc_in< sc_lv<8> > dataIn_TKEEP;
    sc_in< sc_lv<1> > dataIn_TLAST;
    sc_in< sc_lv<112> > dataIn_TUSER;
    sc_out< sc_lv<64> > dataOut_TDATA;
    sc_out< sc_lv<8> > dataOut_TKEEP;
    sc_out< sc_lv<1> > dataOut_TLAST;
    sc_out< sc_lv<112> > dataOut_TUSER;
    sc_in< sc_lv<48> > SrcMacAddress_V;
    sc_in< sc_lv<48> > DestMacAddress_V;
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > dataIn_TVALID;
    sc_out< sc_logic > dataIn_TREADY;
    sc_out< sc_logic > dataOut_TVALID;
    sc_in< sc_logic > dataOut_TREADY;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    mac_header_add(sc_module_name name);
    SC_HAS_PROCESS(mac_header_add);

    ~mac_header_add();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    add_mac_header* add_mac_header_U0;
    edit_len_field* edit_len_field_U0;
    fifo_w185_d16_A* dataFifo_V_U;
    fifo_w16_d4_A* dataLenFifo_V_V_U;
    start_for_edit_len_field_U0* start_for_edit_len_field_U0_U;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > add_mac_header_U0_ap_start;
    sc_signal< sc_logic > add_mac_header_U0_ap_done;
    sc_signal< sc_logic > add_mac_header_U0_ap_continue;
    sc_signal< sc_logic > add_mac_header_U0_ap_idle;
    sc_signal< sc_logic > add_mac_header_U0_ap_ready;
    sc_signal< sc_lv<185> > add_mac_header_U0_dataFifo_V_din;
    sc_signal< sc_logic > add_mac_header_U0_dataFifo_V_write;
    sc_signal< sc_lv<16> > add_mac_header_U0_dataLenFifo_V_V_din;
    sc_signal< sc_logic > add_mac_header_U0_dataLenFifo_V_V_write;
    sc_signal< sc_logic > add_mac_header_U0_start_out;
    sc_signal< sc_logic > add_mac_header_U0_start_write;
    sc_signal< sc_logic > add_mac_header_U0_dataIn_TREADY;
    sc_signal< sc_logic > edit_len_field_U0_ap_start;
    sc_signal< sc_logic > edit_len_field_U0_ap_done;
    sc_signal< sc_logic > edit_len_field_U0_ap_continue;
    sc_signal< sc_logic > edit_len_field_U0_ap_idle;
    sc_signal< sc_logic > edit_len_field_U0_ap_ready;
    sc_signal< sc_logic > edit_len_field_U0_dataFifo_V_read;
    sc_signal< sc_logic > edit_len_field_U0_dataLenFifo_V_V_read;
    sc_signal< sc_lv<64> > edit_len_field_U0_dataOut_TDATA;
    sc_signal< sc_logic > edit_len_field_U0_dataOut_TVALID;
    sc_signal< sc_lv<8> > edit_len_field_U0_dataOut_TKEEP;
    sc_signal< sc_lv<1> > edit_len_field_U0_dataOut_TLAST;
    sc_signal< sc_lv<112> > edit_len_field_U0_dataOut_TUSER;
    sc_signal< sc_logic > ap_sync_continue;
    sc_signal< sc_logic > dataFifo_V_full_n;
    sc_signal< sc_lv<185> > dataFifo_V_dout;
    sc_signal< sc_logic > dataFifo_V_empty_n;
    sc_signal< sc_logic > dataLenFifo_V_V_full_n;
    sc_signal< sc_lv<16> > dataLenFifo_V_V_dout;
    sc_signal< sc_logic > dataLenFifo_V_V_empty_n;
    sc_signal< sc_lv<1> > start_for_edit_len_field_U0_din;
    sc_signal< sc_logic > start_for_edit_len_field_U0_full_n;
    sc_signal< sc_lv<1> > start_for_edit_len_field_U0_dout;
    sc_signal< sc_logic > start_for_edit_len_field_U0_empty_n;
    sc_signal< sc_logic > edit_len_field_U0_start_full_n;
    sc_signal< sc_logic > edit_len_field_U0_start_write;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<112> ap_const_lv112_0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_add_mac_header_U0_ap_continue();
    void thread_add_mac_header_U0_ap_start();
    void thread_ap_rst_n_inv();
    void thread_ap_sync_continue();
    void thread_dataIn_TREADY();
    void thread_dataOut_TDATA();
    void thread_dataOut_TKEEP();
    void thread_dataOut_TLAST();
    void thread_dataOut_TUSER();
    void thread_dataOut_TVALID();
    void thread_edit_len_field_U0_ap_continue();
    void thread_edit_len_field_U0_ap_start();
    void thread_edit_len_field_U0_start_full_n();
    void thread_edit_len_field_U0_start_write();
    void thread_start_for_edit_len_field_U0_din();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
