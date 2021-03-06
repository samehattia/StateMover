// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _cmdAggregator_HH_
#define _cmdAggregator_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct cmdAggregator : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_logic > rdCmdIn_V_TVALID;
    sc_in< sc_logic > wrCmdIn_V_TVALID;
    sc_out< sc_lv<21> > aggregateMemCmd_V_din;
    sc_in< sc_logic > aggregateMemCmd_V_full_n;
    sc_out< sc_logic > aggregateMemCmd_V_write;
    sc_in< sc_lv<40> > rdCmdIn_V_TDATA;
    sc_out< sc_logic > rdCmdIn_V_TREADY;
    sc_in< sc_lv<40> > wrCmdIn_V_TDATA;
    sc_out< sc_logic > wrCmdIn_V_TREADY;


    // Module declarations
    cmdAggregator(sc_module_name name);
    SC_HAS_PROCESS(cmdAggregator);

    ~cmdAggregator();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<1> > ap_CS_iter0_fsm;
    sc_signal< sc_logic > ap_CS_iter0_fsm_state1;
    sc_signal< sc_lv<2> > ap_CS_iter1_fsm;
    sc_signal< sc_logic > ap_CS_iter1_fsm_state0;
    sc_signal< sc_lv<1> > tmp_nbreadreq_fu_44_p3;
    sc_signal< sc_lv<1> > tmp_3_nbreadreq_fu_52_p3;
    sc_signal< bool > ap_predicate_op7_read_state1;
    sc_signal< bool > ap_block_state1_pp0_stage0_iter0;
    sc_signal< sc_lv<1> > tmp_reg_125;
    sc_signal< sc_lv<1> > tmp_3_reg_129;
    sc_signal< bool > ap_predicate_op18_write_state2;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter1;
    sc_signal< sc_logic > ap_CS_iter1_fsm_state2;
    sc_signal< sc_logic > rdCmdIn_V_TDATA_blk_n;
    sc_signal< sc_logic > wrCmdIn_V_TDATA_blk_n;
    sc_signal< sc_logic > aggregateMemCmd_V_blk_n;
    sc_signal< sc_lv<12> > tempExtCtrlWord_addr_1_fu_79_p1;
    sc_signal< sc_lv<12> > tempExtCtrlWord_addr_1_reg_133;
    sc_signal< sc_lv<8> > tempExtCtrlWord_coun_1_reg_138;
    sc_signal< sc_lv<12> > tempExtCtrlWord_addr_fu_93_p1;
    sc_signal< sc_lv<12> > tempExtCtrlWord_addr_reg_143;
    sc_signal< sc_lv<8> > tempExtCtrlWord_coun_reg_148;
    sc_signal< sc_lv<21> > tmp_3_1_fu_107_p4;
    sc_signal< sc_lv<21> > tmp_1_fu_116_p4;
    sc_signal< sc_lv<1> > ap_NS_iter0_fsm;
    sc_signal< sc_lv<2> > ap_NS_iter1_fsm;
    sc_signal< bool > ap_condition_121;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_iter0_fsm_state1;
    static const sc_lv<2> ap_ST_iter1_fsm_state2;
    static const sc_lv<2> ap_ST_iter1_fsm_state0;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_27;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_aggregateMemCmd_V_blk_n();
    void thread_aggregateMemCmd_V_din();
    void thread_aggregateMemCmd_V_write();
    void thread_ap_CS_iter0_fsm_state1();
    void thread_ap_CS_iter1_fsm_state0();
    void thread_ap_CS_iter1_fsm_state2();
    void thread_ap_block_state1_pp0_stage0_iter0();
    void thread_ap_block_state2_pp0_stage0_iter1();
    void thread_ap_condition_121();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_predicate_op18_write_state2();
    void thread_ap_predicate_op7_read_state1();
    void thread_ap_ready();
    void thread_rdCmdIn_V_TDATA_blk_n();
    void thread_rdCmdIn_V_TREADY();
    void thread_tempExtCtrlWord_addr_1_fu_79_p1();
    void thread_tempExtCtrlWord_addr_fu_93_p1();
    void thread_tmp_1_fu_116_p4();
    void thread_tmp_3_1_fu_107_p4();
    void thread_tmp_3_nbreadreq_fu_52_p3();
    void thread_tmp_nbreadreq_fu_44_p3();
    void thread_wrCmdIn_V_TDATA_blk_n();
    void thread_wrCmdIn_V_TREADY();
    void thread_ap_NS_iter0_fsm();
    void thread_ap_NS_iter1_fsm();
};

}

using namespace ap_rtl;

#endif
