// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _flashCmdAggregator_HH_
#define _flashCmdAggregator_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct flashCmdAggregator : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<48> > rdCmdIn_V_TDATA;
    sc_in< sc_logic > rdCmdIn_V_TVALID;
    sc_out< sc_logic > rdCmdIn_V_TREADY;
    sc_in< sc_lv<48> > wrCmdIn_V_TDATA;
    sc_in< sc_logic > wrCmdIn_V_TVALID;
    sc_out< sc_logic > wrCmdIn_V_TREADY;
    sc_out< sc_lv<46> > flashAggregateMemCmd_1_din;
    sc_in< sc_logic > flashAggregateMemCmd_1_full_n;
    sc_out< sc_logic > flashAggregateMemCmd_1_write;


    // Module declarations
    flashCmdAggregator(sc_module_name name);
    SC_HAS_PROCESS(flashCmdAggregator);

    ~flashCmdAggregator();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<1> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > rdCmdIn_V_TDATA_blk_n;
    sc_signal< sc_lv<1> > tmp_nbreadreq_fu_36_p3;
    sc_signal< sc_logic > wrCmdIn_V_TDATA_blk_n;
    sc_signal< sc_lv<1> > tmp_4_nbreadreq_fu_44_p3;
    sc_signal< sc_logic > flashAggregateMemCmd_1_blk_n;
    sc_signal< bool > ap_predicate_op9_read_state1;
    sc_signal< bool > ap_predicate_op12_write_state1;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<46> > tmp_3_fu_75_p3;
    sc_signal< sc_lv<46> > tmp_1_fu_88_p3;
    sc_signal< sc_lv<45> > tmp_2_fu_71_p1;
    sc_signal< sc_lv<45> > tmp19_fu_84_p1;
    sc_signal< sc_lv<1> > ap_NS_fsm;
    sc_signal< bool > ap_condition_69;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_fsm_state1;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<1> ap_const_lv1_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_block_state1();
    void thread_ap_condition_69();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_predicate_op12_write_state1();
    void thread_ap_predicate_op9_read_state1();
    void thread_ap_ready();
    void thread_flashAggregateMemCmd_1_blk_n();
    void thread_flashAggregateMemCmd_1_din();
    void thread_flashAggregateMemCmd_1_write();
    void thread_rdCmdIn_V_TDATA_blk_n();
    void thread_rdCmdIn_V_TREADY();
    void thread_tmp19_fu_84_p1();
    void thread_tmp_1_fu_88_p3();
    void thread_tmp_2_fu_71_p1();
    void thread_tmp_3_fu_75_p3();
    void thread_tmp_4_nbreadreq_fu_44_p3();
    void thread_tmp_nbreadreq_fu_36_p3();
    void thread_wrCmdIn_V_TDATA_blk_n();
    void thread_wrCmdIn_V_TREADY();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
