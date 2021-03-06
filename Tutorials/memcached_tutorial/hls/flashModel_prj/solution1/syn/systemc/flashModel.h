// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _flashModel_HH_
#define _flashModel_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "flashCmdAggregator.h"
#include "flashMemAccess.h"
#include "fifo_w46_d16_A.h"

namespace ap_rtl {

struct flashModel : public sc_module {
    // Port declarations 14
    sc_in< sc_lv<48> > rdCmdIn_V_TDATA;
    sc_out< sc_lv<64> > rdDataOut_V_V_TDATA;
    sc_in< sc_lv<48> > wrCmdIn_V_TDATA;
    sc_in< sc_lv<64> > wrDataIn_V_V_TDATA;
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > rdCmdIn_V_TVALID;
    sc_out< sc_logic > rdCmdIn_V_TREADY;
    sc_in< sc_logic > wrCmdIn_V_TVALID;
    sc_out< sc_logic > wrCmdIn_V_TREADY;
    sc_out< sc_logic > rdDataOut_V_V_TVALID;
    sc_in< sc_logic > rdDataOut_V_V_TREADY;
    sc_in< sc_logic > wrDataIn_V_V_TVALID;
    sc_out< sc_logic > wrDataIn_V_V_TREADY;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    flashModel(sc_module_name name);
    SC_HAS_PROCESS(flashModel);

    ~flashModel();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    flashCmdAggregator* flashCmdAggregator_U0;
    flashMemAccess* flashMemAccess_U0;
    fifo_w46_d16_A* flashAggregateMemCmd_1_U;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > flashCmdAggregator_U0_ap_start;
    sc_signal< sc_logic > flashCmdAggregator_U0_ap_done;
    sc_signal< sc_logic > flashCmdAggregator_U0_ap_continue;
    sc_signal< sc_logic > flashCmdAggregator_U0_ap_idle;
    sc_signal< sc_logic > flashCmdAggregator_U0_ap_ready;
    sc_signal< sc_logic > flashCmdAggregator_U0_rdCmdIn_V_TREADY;
    sc_signal< sc_logic > flashCmdAggregator_U0_wrCmdIn_V_TREADY;
    sc_signal< sc_lv<46> > flashCmdAggregator_U0_flashAggregateMemCmd_1_din;
    sc_signal< sc_logic > flashCmdAggregator_U0_flashAggregateMemCmd_1_write;
    sc_signal< sc_logic > flashMemAccess_U0_ap_start;
    sc_signal< sc_logic > flashMemAccess_U0_ap_done;
    sc_signal< sc_logic > flashMemAccess_U0_ap_continue;
    sc_signal< sc_logic > flashMemAccess_U0_ap_idle;
    sc_signal< sc_logic > flashMemAccess_U0_ap_ready;
    sc_signal< sc_logic > flashMemAccess_U0_flashAggregateMemCmd_1_read;
    sc_signal< sc_lv<64> > flashMemAccess_U0_rdDataOut_V_V_TDATA;
    sc_signal< sc_logic > flashMemAccess_U0_rdDataOut_V_V_TVALID;
    sc_signal< sc_logic > flashMemAccess_U0_wrDataIn_V_V_TREADY;
    sc_signal< sc_logic > ap_sync_continue;
    sc_signal< sc_logic > flashAggregateMemCmd_1_full_n;
    sc_signal< sc_lv<46> > flashAggregateMemCmd_1_dout;
    sc_signal< sc_logic > flashAggregateMemCmd_1_empty_n;
    sc_signal< sc_logic > flashCmdAggregator_U0_start_full_n;
    sc_signal< sc_logic > flashCmdAggregator_U0_start_write;
    sc_signal< sc_logic > flashMemAccess_U0_start_full_n;
    sc_signal< sc_logic > flashMemAccess_U0_start_write;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_rst_n_inv();
    void thread_ap_sync_continue();
    void thread_flashCmdAggregator_U0_ap_continue();
    void thread_flashCmdAggregator_U0_ap_start();
    void thread_flashCmdAggregator_U0_start_full_n();
    void thread_flashCmdAggregator_U0_start_write();
    void thread_flashMemAccess_U0_ap_continue();
    void thread_flashMemAccess_U0_ap_start();
    void thread_flashMemAccess_U0_start_full_n();
    void thread_flashMemAccess_U0_start_write();
    void thread_rdCmdIn_V_TREADY();
    void thread_rdDataOut_V_V_TDATA();
    void thread_rdDataOut_V_V_TVALID();
    void thread_wrCmdIn_V_TREADY();
    void thread_wrDataIn_V_V_TREADY();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
