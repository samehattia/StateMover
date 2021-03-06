// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "cmdAggregator.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic cmdAggregator::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic cmdAggregator::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<1> cmdAggregator::ap_ST_iter0_fsm_state1 = "1";
const sc_lv<2> cmdAggregator::ap_ST_iter1_fsm_state2 = "10";
const sc_lv<2> cmdAggregator::ap_ST_iter1_fsm_state0 = "1";
const sc_lv<32> cmdAggregator::ap_const_lv32_0 = "00000000000000000000000000000000";
const bool cmdAggregator::ap_const_boolean_1 = true;
const sc_lv<1> cmdAggregator::ap_const_lv1_0 = "0";
const sc_lv<1> cmdAggregator::ap_const_lv1_1 = "1";
const sc_lv<32> cmdAggregator::ap_const_lv32_1 = "1";
const sc_lv<32> cmdAggregator::ap_const_lv32_20 = "100000";
const sc_lv<32> cmdAggregator::ap_const_lv32_27 = "100111";

cmdAggregator::cmdAggregator(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_aggregateMemCmd_V_blk_n);
    sensitive << ( aggregateMemCmd_V_full_n );
    sensitive << ( tmp_reg_125 );
    sensitive << ( ap_predicate_op18_write_state2 );
    sensitive << ( ap_CS_iter1_fsm_state2 );

    SC_METHOD(thread_aggregateMemCmd_V_din);
    sensitive << ( tmp_reg_125 );
    sensitive << ( ap_predicate_op18_write_state2 );
    sensitive << ( tmp_3_1_fu_107_p4 );
    sensitive << ( tmp_1_fu_116_p4 );
    sensitive << ( ap_condition_121 );

    SC_METHOD(thread_aggregateMemCmd_V_write);
    sensitive << ( ap_done_reg );
    sensitive << ( aggregateMemCmd_V_full_n );
    sensitive << ( tmp_reg_125 );
    sensitive << ( ap_predicate_op18_write_state2 );
    sensitive << ( ap_CS_iter1_fsm_state2 );

    SC_METHOD(thread_ap_CS_iter0_fsm_state1);
    sensitive << ( ap_CS_iter0_fsm );

    SC_METHOD(thread_ap_CS_iter1_fsm_state0);
    sensitive << ( ap_CS_iter1_fsm );

    SC_METHOD(thread_ap_CS_iter1_fsm_state2);
    sensitive << ( ap_CS_iter1_fsm );

    SC_METHOD(thread_ap_block_state1_pp0_stage0_iter0);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( rdCmdIn_V_TVALID );
    sensitive << ( tmp_nbreadreq_fu_44_p3 );
    sensitive << ( ap_predicate_op7_read_state1 );
    sensitive << ( wrCmdIn_V_TVALID );

    SC_METHOD(thread_ap_block_state2_pp0_stage0_iter1);
    sensitive << ( aggregateMemCmd_V_full_n );
    sensitive << ( tmp_reg_125 );
    sensitive << ( ap_predicate_op18_write_state2 );

    SC_METHOD(thread_ap_condition_121);
    sensitive << ( ap_done_reg );
    sensitive << ( aggregateMemCmd_V_full_n );
    sensitive << ( tmp_reg_125 );
    sensitive << ( ap_predicate_op18_write_state2 );
    sensitive << ( ap_CS_iter1_fsm_state2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( aggregateMemCmd_V_full_n );
    sensitive << ( tmp_reg_125 );
    sensitive << ( ap_predicate_op18_write_state2 );
    sensitive << ( ap_CS_iter1_fsm_state2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_iter0_fsm_state1 );
    sensitive << ( ap_CS_iter1_fsm_state0 );

    SC_METHOD(thread_ap_predicate_op18_write_state2);
    sensitive << ( tmp_reg_125 );
    sensitive << ( tmp_3_reg_129 );

    SC_METHOD(thread_ap_predicate_op7_read_state1);
    sensitive << ( tmp_nbreadreq_fu_44_p3 );
    sensitive << ( tmp_3_nbreadreq_fu_52_p3 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_iter0_fsm_state1 );
    sensitive << ( rdCmdIn_V_TVALID );
    sensitive << ( tmp_nbreadreq_fu_44_p3 );
    sensitive << ( ap_predicate_op7_read_state1 );
    sensitive << ( wrCmdIn_V_TVALID );
    sensitive << ( aggregateMemCmd_V_full_n );
    sensitive << ( tmp_reg_125 );
    sensitive << ( ap_predicate_op18_write_state2 );
    sensitive << ( ap_CS_iter1_fsm_state2 );

    SC_METHOD(thread_rdCmdIn_V_TDATA_blk_n);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_iter0_fsm_state1 );
    sensitive << ( rdCmdIn_V_TVALID );
    sensitive << ( ap_predicate_op7_read_state1 );

    SC_METHOD(thread_rdCmdIn_V_TREADY);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_iter0_fsm_state1 );
    sensitive << ( rdCmdIn_V_TVALID );
    sensitive << ( tmp_nbreadreq_fu_44_p3 );
    sensitive << ( ap_predicate_op7_read_state1 );
    sensitive << ( wrCmdIn_V_TVALID );
    sensitive << ( aggregateMemCmd_V_full_n );
    sensitive << ( tmp_reg_125 );
    sensitive << ( ap_predicate_op18_write_state2 );
    sensitive << ( ap_CS_iter1_fsm_state2 );

    SC_METHOD(thread_tempExtCtrlWord_addr_1_fu_79_p1);
    sensitive << ( rdCmdIn_V_TDATA );

    SC_METHOD(thread_tempExtCtrlWord_addr_fu_93_p1);
    sensitive << ( wrCmdIn_V_TDATA );

    SC_METHOD(thread_tmp_1_fu_116_p4);
    sensitive << ( tempExtCtrlWord_addr_reg_143 );
    sensitive << ( tempExtCtrlWord_coun_reg_148 );

    SC_METHOD(thread_tmp_3_1_fu_107_p4);
    sensitive << ( tempExtCtrlWord_addr_1_reg_133 );
    sensitive << ( tempExtCtrlWord_coun_1_reg_138 );

    SC_METHOD(thread_tmp_3_nbreadreq_fu_52_p3);
    sensitive << ( rdCmdIn_V_TVALID );

    SC_METHOD(thread_tmp_nbreadreq_fu_44_p3);
    sensitive << ( wrCmdIn_V_TVALID );

    SC_METHOD(thread_wrCmdIn_V_TDATA_blk_n);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_iter0_fsm_state1 );
    sensitive << ( tmp_nbreadreq_fu_44_p3 );
    sensitive << ( wrCmdIn_V_TVALID );

    SC_METHOD(thread_wrCmdIn_V_TREADY);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_iter0_fsm_state1 );
    sensitive << ( rdCmdIn_V_TVALID );
    sensitive << ( tmp_nbreadreq_fu_44_p3 );
    sensitive << ( ap_predicate_op7_read_state1 );
    sensitive << ( wrCmdIn_V_TVALID );
    sensitive << ( aggregateMemCmd_V_full_n );
    sensitive << ( tmp_reg_125 );
    sensitive << ( ap_predicate_op18_write_state2 );
    sensitive << ( ap_CS_iter1_fsm_state2 );

    SC_METHOD(thread_ap_NS_iter0_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_iter0_fsm );
    sensitive << ( rdCmdIn_V_TVALID );
    sensitive << ( tmp_nbreadreq_fu_44_p3 );
    sensitive << ( ap_predicate_op7_read_state1 );
    sensitive << ( wrCmdIn_V_TVALID );
    sensitive << ( aggregateMemCmd_V_full_n );
    sensitive << ( tmp_reg_125 );
    sensitive << ( ap_predicate_op18_write_state2 );
    sensitive << ( ap_CS_iter1_fsm_state2 );

    SC_METHOD(thread_ap_NS_iter1_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_iter0_fsm_state1 );
    sensitive << ( ap_CS_iter1_fsm );
    sensitive << ( rdCmdIn_V_TVALID );
    sensitive << ( tmp_nbreadreq_fu_44_p3 );
    sensitive << ( ap_predicate_op7_read_state1 );
    sensitive << ( wrCmdIn_V_TVALID );
    sensitive << ( aggregateMemCmd_V_full_n );
    sensitive << ( tmp_reg_125 );
    sensitive << ( ap_predicate_op18_write_state2 );
    sensitive << ( ap_CS_iter1_fsm_state2 );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_iter0_fsm = "1";
    ap_CS_iter1_fsm = "01";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "cmdAggregator_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, rdCmdIn_V_TVALID, "(port)rdCmdIn_V_TVALID");
    sc_trace(mVcdFile, wrCmdIn_V_TVALID, "(port)wrCmdIn_V_TVALID");
    sc_trace(mVcdFile, aggregateMemCmd_V_din, "(port)aggregateMemCmd_V_din");
    sc_trace(mVcdFile, aggregateMemCmd_V_full_n, "(port)aggregateMemCmd_V_full_n");
    sc_trace(mVcdFile, aggregateMemCmd_V_write, "(port)aggregateMemCmd_V_write");
    sc_trace(mVcdFile, rdCmdIn_V_TDATA, "(port)rdCmdIn_V_TDATA");
    sc_trace(mVcdFile, rdCmdIn_V_TREADY, "(port)rdCmdIn_V_TREADY");
    sc_trace(mVcdFile, wrCmdIn_V_TDATA, "(port)wrCmdIn_V_TDATA");
    sc_trace(mVcdFile, wrCmdIn_V_TREADY, "(port)wrCmdIn_V_TREADY");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_iter0_fsm, "ap_CS_iter0_fsm");
    sc_trace(mVcdFile, ap_CS_iter0_fsm_state1, "ap_CS_iter0_fsm_state1");
    sc_trace(mVcdFile, ap_CS_iter1_fsm, "ap_CS_iter1_fsm");
    sc_trace(mVcdFile, ap_CS_iter1_fsm_state0, "ap_CS_iter1_fsm_state0");
    sc_trace(mVcdFile, tmp_nbreadreq_fu_44_p3, "tmp_nbreadreq_fu_44_p3");
    sc_trace(mVcdFile, tmp_3_nbreadreq_fu_52_p3, "tmp_3_nbreadreq_fu_52_p3");
    sc_trace(mVcdFile, ap_predicate_op7_read_state1, "ap_predicate_op7_read_state1");
    sc_trace(mVcdFile, ap_block_state1_pp0_stage0_iter0, "ap_block_state1_pp0_stage0_iter0");
    sc_trace(mVcdFile, tmp_reg_125, "tmp_reg_125");
    sc_trace(mVcdFile, tmp_3_reg_129, "tmp_3_reg_129");
    sc_trace(mVcdFile, ap_predicate_op18_write_state2, "ap_predicate_op18_write_state2");
    sc_trace(mVcdFile, ap_block_state2_pp0_stage0_iter1, "ap_block_state2_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_CS_iter1_fsm_state2, "ap_CS_iter1_fsm_state2");
    sc_trace(mVcdFile, rdCmdIn_V_TDATA_blk_n, "rdCmdIn_V_TDATA_blk_n");
    sc_trace(mVcdFile, wrCmdIn_V_TDATA_blk_n, "wrCmdIn_V_TDATA_blk_n");
    sc_trace(mVcdFile, aggregateMemCmd_V_blk_n, "aggregateMemCmd_V_blk_n");
    sc_trace(mVcdFile, tempExtCtrlWord_addr_1_fu_79_p1, "tempExtCtrlWord_addr_1_fu_79_p1");
    sc_trace(mVcdFile, tempExtCtrlWord_addr_1_reg_133, "tempExtCtrlWord_addr_1_reg_133");
    sc_trace(mVcdFile, tempExtCtrlWord_coun_1_reg_138, "tempExtCtrlWord_coun_1_reg_138");
    sc_trace(mVcdFile, tempExtCtrlWord_addr_fu_93_p1, "tempExtCtrlWord_addr_fu_93_p1");
    sc_trace(mVcdFile, tempExtCtrlWord_addr_reg_143, "tempExtCtrlWord_addr_reg_143");
    sc_trace(mVcdFile, tempExtCtrlWord_coun_reg_148, "tempExtCtrlWord_coun_reg_148");
    sc_trace(mVcdFile, tmp_3_1_fu_107_p4, "tmp_3_1_fu_107_p4");
    sc_trace(mVcdFile, tmp_1_fu_116_p4, "tmp_1_fu_116_p4");
    sc_trace(mVcdFile, ap_NS_iter0_fsm, "ap_NS_iter0_fsm");
    sc_trace(mVcdFile, ap_NS_iter1_fsm, "ap_NS_iter1_fsm");
    sc_trace(mVcdFile, ap_condition_121, "ap_condition_121");
#endif

    }
}

cmdAggregator::~cmdAggregator() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void cmdAggregator::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_iter0_fsm = ap_ST_iter0_fsm_state1;
    } else {
        ap_CS_iter0_fsm = ap_NS_iter0_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_iter1_fsm = ap_ST_iter1_fsm_state0;
    } else {
        ap_CS_iter1_fsm = ap_NS_iter1_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_iter1_fsm_state2.read()) && 
                    !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || (esl_seteq<1,1,1>(ap_const_logic_0, aggregateMemCmd_V_full_n.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op18_write_state2.read())) || (esl_seteq<1,1,1>(ap_const_logic_0, aggregateMemCmd_V_full_n.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_1, tmp_reg_125.read()))))) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_iter0_fsm_state1.read()) && esl_seteq<1,1,1>(tmp_nbreadreq_fu_44_p3.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(tmp_3_nbreadreq_fu_52_p3.read(), ap_const_lv1_1) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || (esl_seteq<1,1,1>(ap_const_logic_0, rdCmdIn_V_TVALID.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op7_read_state1.read())) || (esl_seteq<1,1,1>(ap_const_logic_0, wrCmdIn_V_TVALID.read()) && 
  esl_seteq<1,1,1>(tmp_nbreadreq_fu_44_p3.read(), ap_const_lv1_1)) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || (((esl_seteq<1,1,1>(ap_const_logic_0, aggregateMemCmd_V_full_n.read()) && 
    esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op18_write_state2.read())) || 
   (esl_seteq<1,1,1>(ap_const_logic_0, aggregateMemCmd_V_full_n.read()) && 
    esl_seteq<1,1,1>(ap_const_lv1_1, tmp_reg_125.read()))) && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_iter1_fsm_state2.read()))))) {
        tempExtCtrlWord_addr_1_reg_133 = tempExtCtrlWord_addr_1_fu_79_p1.read();
        tempExtCtrlWord_coun_1_reg_138 = rdCmdIn_V_TDATA.read().range(39, 32);
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_iter0_fsm_state1.read()) && esl_seteq<1,1,1>(tmp_nbreadreq_fu_44_p3.read(), ap_const_lv1_1) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || (esl_seteq<1,1,1>(ap_const_logic_0, rdCmdIn_V_TVALID.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op7_read_state1.read())) || (esl_seteq<1,1,1>(ap_const_logic_0, wrCmdIn_V_TVALID.read()) && 
  esl_seteq<1,1,1>(tmp_nbreadreq_fu_44_p3.read(), ap_const_lv1_1)) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || (((esl_seteq<1,1,1>(ap_const_logic_0, aggregateMemCmd_V_full_n.read()) && 
    esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op18_write_state2.read())) || 
   (esl_seteq<1,1,1>(ap_const_logic_0, aggregateMemCmd_V_full_n.read()) && 
    esl_seteq<1,1,1>(ap_const_lv1_1, tmp_reg_125.read()))) && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_iter1_fsm_state2.read()))))) {
        tempExtCtrlWord_addr_reg_143 = tempExtCtrlWord_addr_fu_93_p1.read();
        tempExtCtrlWord_coun_reg_148 = wrCmdIn_V_TDATA.read().range(39, 32);
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_iter0_fsm_state1.read()) && esl_seteq<1,1,1>(tmp_nbreadreq_fu_44_p3.read(), ap_const_lv1_0) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || (esl_seteq<1,1,1>(ap_const_logic_0, rdCmdIn_V_TVALID.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op7_read_state1.read())) || (esl_seteq<1,1,1>(ap_const_logic_0, wrCmdIn_V_TVALID.read()) && 
  esl_seteq<1,1,1>(tmp_nbreadreq_fu_44_p3.read(), ap_const_lv1_1)) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || (((esl_seteq<1,1,1>(ap_const_logic_0, aggregateMemCmd_V_full_n.read()) && 
    esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op18_write_state2.read())) || 
   (esl_seteq<1,1,1>(ap_const_logic_0, aggregateMemCmd_V_full_n.read()) && 
    esl_seteq<1,1,1>(ap_const_lv1_1, tmp_reg_125.read()))) && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_iter1_fsm_state2.read()))))) {
        tmp_3_reg_129 =  (sc_lv<1>) (rdCmdIn_V_TVALID.read());
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_iter0_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || (esl_seteq<1,1,1>(ap_const_logic_0, rdCmdIn_V_TVALID.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op7_read_state1.read())) || (esl_seteq<1,1,1>(ap_const_logic_0, wrCmdIn_V_TVALID.read()) && 
  esl_seteq<1,1,1>(tmp_nbreadreq_fu_44_p3.read(), ap_const_lv1_1)) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || (((esl_seteq<1,1,1>(ap_const_logic_0, aggregateMemCmd_V_full_n.read()) && 
    esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op18_write_state2.read())) || 
   (esl_seteq<1,1,1>(ap_const_logic_0, aggregateMemCmd_V_full_n.read()) && 
    esl_seteq<1,1,1>(ap_const_lv1_1, tmp_reg_125.read()))) && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_iter1_fsm_state2.read()))))) {
        tmp_reg_125 =  (sc_lv<1>) (wrCmdIn_V_TVALID.read());
    }
}

void cmdAggregator::thread_aggregateMemCmd_V_blk_n() {
    if (((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_reg_125.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_iter1_fsm_state2.read())) || 
         (esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op18_write_state2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_iter1_fsm_state2.read())))) {
        aggregateMemCmd_V_blk_n = aggregateMemCmd_V_full_n.read();
    } else {
        aggregateMemCmd_V_blk_n = ap_const_logic_1;
    }
}

void cmdAggregator::thread_aggregateMemCmd_V_din() {
    if (esl_seteq<1,1,1>(ap_condition_121.read(), ap_const_boolean_1)) {
        if (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_reg_125.read())) {
            aggregateMemCmd_V_din = tmp_1_fu_116_p4.read();
        } else if (esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op18_write_state2.read())) {
            aggregateMemCmd_V_din = tmp_3_1_fu_107_p4.read();
        } else {
            aggregateMemCmd_V_din = "XXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        aggregateMemCmd_V_din = "XXXXXXXXXXXXXXXXXXXXX";
    }
}

void cmdAggregator::thread_aggregateMemCmd_V_write() {
    if (((esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op18_write_state2.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_iter1_fsm_state2.read()) && 
          !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || (esl_seteq<1,1,1>(ap_const_logic_0, aggregateMemCmd_V_full_n.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op18_write_state2.read())) || (esl_seteq<1,1,1>(ap_const_logic_0, aggregateMemCmd_V_full_n.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_1, tmp_reg_125.read())))) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_reg_125.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_iter1_fsm_state2.read()) && 
          !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || (esl_seteq<1,1,1>(ap_const_logic_0, aggregateMemCmd_V_full_n.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op18_write_state2.read())) || (esl_seteq<1,1,1>(ap_const_logic_0, aggregateMemCmd_V_full_n.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_1, tmp_reg_125.read())))))) {
        aggregateMemCmd_V_write = ap_const_logic_1;
    } else {
        aggregateMemCmd_V_write = ap_const_logic_0;
    }
}

void cmdAggregator::thread_ap_CS_iter0_fsm_state1() {
    ap_CS_iter0_fsm_state1 = ap_CS_iter0_fsm.read()[0];
}

void cmdAggregator::thread_ap_CS_iter1_fsm_state0() {
    ap_CS_iter1_fsm_state0 = ap_CS_iter1_fsm.read()[0];
}

void cmdAggregator::thread_ap_CS_iter1_fsm_state2() {
    ap_CS_iter1_fsm_state2 = ap_CS_iter1_fsm.read()[1];
}

void cmdAggregator::thread_ap_block_state1_pp0_stage0_iter0() {
    ap_block_state1_pp0_stage0_iter0 = (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || (esl_seteq<1,1,1>(ap_const_logic_0, rdCmdIn_V_TVALID.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op7_read_state1.read())) || (esl_seteq<1,1,1>(ap_const_logic_0, wrCmdIn_V_TVALID.read()) && 
  esl_seteq<1,1,1>(tmp_nbreadreq_fu_44_p3.read(), ap_const_lv1_1)) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void cmdAggregator::thread_ap_block_state2_pp0_stage0_iter1() {
    ap_block_state2_pp0_stage0_iter1 = ((esl_seteq<1,1,1>(ap_const_logic_0, aggregateMemCmd_V_full_n.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op18_write_state2.read())) || (esl_seteq<1,1,1>(ap_const_logic_0, aggregateMemCmd_V_full_n.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_1, tmp_reg_125.read())));
}

void cmdAggregator::thread_ap_condition_121() {
    ap_condition_121 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_iter1_fsm_state2.read()) && !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || (esl_seteq<1,1,1>(ap_const_logic_0, aggregateMemCmd_V_full_n.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op18_write_state2.read())) || (esl_seteq<1,1,1>(ap_const_logic_0, aggregateMemCmd_V_full_n.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_1, tmp_reg_125.read()))));
}

void cmdAggregator::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_iter1_fsm_state2.read()) && 
         !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || (esl_seteq<1,1,1>(ap_const_logic_0, aggregateMemCmd_V_full_n.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op18_write_state2.read())) || (esl_seteq<1,1,1>(ap_const_logic_0, aggregateMemCmd_V_full_n.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_1, tmp_reg_125.read()))))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_done_reg.read();
    }
}

void cmdAggregator::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_iter0_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_iter1_fsm_state0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void cmdAggregator::thread_ap_predicate_op18_write_state2() {
    ap_predicate_op18_write_state2 = (esl_seteq<1,1,1>(ap_const_lv1_0, tmp_reg_125.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, tmp_3_reg_129.read()));
}

void cmdAggregator::thread_ap_predicate_op7_read_state1() {
    ap_predicate_op7_read_state1 = (esl_seteq<1,1,1>(tmp_nbreadreq_fu_44_p3.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(tmp_3_nbreadreq_fu_52_p3.read(), ap_const_lv1_1));
}

void cmdAggregator::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_iter0_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || (esl_seteq<1,1,1>(ap_const_logic_0, rdCmdIn_V_TVALID.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op7_read_state1.read())) || (esl_seteq<1,1,1>(ap_const_logic_0, wrCmdIn_V_TVALID.read()) && 
  esl_seteq<1,1,1>(tmp_nbreadreq_fu_44_p3.read(), ap_const_lv1_1)) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || (((esl_seteq<1,1,1>(ap_const_logic_0, aggregateMemCmd_V_full_n.read()) && 
    esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op18_write_state2.read())) || 
   (esl_seteq<1,1,1>(ap_const_logic_0, aggregateMemCmd_V_full_n.read()) && 
    esl_seteq<1,1,1>(ap_const_lv1_1, tmp_reg_125.read()))) && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_iter1_fsm_state2.read()))))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void cmdAggregator::thread_rdCmdIn_V_TDATA_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_iter0_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op7_read_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()))) {
        rdCmdIn_V_TDATA_blk_n = rdCmdIn_V_TVALID.read();
    } else {
        rdCmdIn_V_TDATA_blk_n = ap_const_logic_1;
    }
}

void cmdAggregator::thread_rdCmdIn_V_TREADY() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_iter0_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op7_read_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || (esl_seteq<1,1,1>(ap_const_logic_0, rdCmdIn_V_TVALID.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op7_read_state1.read())) || (esl_seteq<1,1,1>(ap_const_logic_0, wrCmdIn_V_TVALID.read()) && 
  esl_seteq<1,1,1>(tmp_nbreadreq_fu_44_p3.read(), ap_const_lv1_1)) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || (((esl_seteq<1,1,1>(ap_const_logic_0, aggregateMemCmd_V_full_n.read()) && 
    esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op18_write_state2.read())) || 
   (esl_seteq<1,1,1>(ap_const_logic_0, aggregateMemCmd_V_full_n.read()) && 
    esl_seteq<1,1,1>(ap_const_lv1_1, tmp_reg_125.read()))) && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_iter1_fsm_state2.read()))))) {
        rdCmdIn_V_TREADY = ap_const_logic_1;
    } else {
        rdCmdIn_V_TREADY = ap_const_logic_0;
    }
}

void cmdAggregator::thread_tempExtCtrlWord_addr_1_fu_79_p1() {
    tempExtCtrlWord_addr_1_fu_79_p1 = rdCmdIn_V_TDATA.read().range(12-1, 0);
}

void cmdAggregator::thread_tempExtCtrlWord_addr_fu_93_p1() {
    tempExtCtrlWord_addr_fu_93_p1 = wrCmdIn_V_TDATA.read().range(12-1, 0);
}

void cmdAggregator::thread_tmp_1_fu_116_p4() {
    tmp_1_fu_116_p4 = esl_concat<9,12>(esl_concat<1,8>(ap_const_lv1_1, tempExtCtrlWord_coun_reg_148.read()), tempExtCtrlWord_addr_reg_143.read());
}

void cmdAggregator::thread_tmp_3_1_fu_107_p4() {
    tmp_3_1_fu_107_p4 = esl_concat<9,12>(esl_concat<1,8>(ap_const_lv1_0, tempExtCtrlWord_coun_1_reg_138.read()), tempExtCtrlWord_addr_1_reg_133.read());
}

void cmdAggregator::thread_tmp_3_nbreadreq_fu_52_p3() {
    tmp_3_nbreadreq_fu_52_p3 =  (sc_lv<1>) (rdCmdIn_V_TVALID.read());
}

void cmdAggregator::thread_tmp_nbreadreq_fu_44_p3() {
    tmp_nbreadreq_fu_44_p3 =  (sc_lv<1>) (wrCmdIn_V_TVALID.read());
}

void cmdAggregator::thread_wrCmdIn_V_TDATA_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_iter0_fsm_state1.read()) && 
         esl_seteq<1,1,1>(tmp_nbreadreq_fu_44_p3.read(), ap_const_lv1_1) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()))) {
        wrCmdIn_V_TDATA_blk_n = wrCmdIn_V_TVALID.read();
    } else {
        wrCmdIn_V_TDATA_blk_n = ap_const_logic_1;
    }
}

void cmdAggregator::thread_wrCmdIn_V_TREADY() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_iter0_fsm_state1.read()) && 
         esl_seteq<1,1,1>(tmp_nbreadreq_fu_44_p3.read(), ap_const_lv1_1) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || (esl_seteq<1,1,1>(ap_const_logic_0, rdCmdIn_V_TVALID.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op7_read_state1.read())) || (esl_seteq<1,1,1>(ap_const_logic_0, wrCmdIn_V_TVALID.read()) && 
  esl_seteq<1,1,1>(tmp_nbreadreq_fu_44_p3.read(), ap_const_lv1_1)) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || (((esl_seteq<1,1,1>(ap_const_logic_0, aggregateMemCmd_V_full_n.read()) && 
    esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op18_write_state2.read())) || 
   (esl_seteq<1,1,1>(ap_const_logic_0, aggregateMemCmd_V_full_n.read()) && 
    esl_seteq<1,1,1>(ap_const_lv1_1, tmp_reg_125.read()))) && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_iter1_fsm_state2.read()))))) {
        wrCmdIn_V_TREADY = ap_const_logic_1;
    } else {
        wrCmdIn_V_TREADY = ap_const_logic_0;
    }
}

void cmdAggregator::thread_ap_NS_iter0_fsm() {
    switch (ap_CS_iter0_fsm.read().to_uint64()) {
        case 1 : 
            ap_NS_iter0_fsm = ap_ST_iter0_fsm_state1;
break;
        default : 
            ap_NS_iter0_fsm =  (sc_lv<1>) ("X");
            break;
    }
}

void cmdAggregator::thread_ap_NS_iter1_fsm() {
    switch (ap_CS_iter1_fsm.read().to_uint64()) {
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_iter0_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || (esl_seteq<1,1,1>(ap_const_logic_0, aggregateMemCmd_V_full_n.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op18_write_state2.read())) || (esl_seteq<1,1,1>(ap_const_logic_0, aggregateMemCmd_V_full_n.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_1, tmp_reg_125.read()))) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || (esl_seteq<1,1,1>(ap_const_logic_0, rdCmdIn_V_TVALID.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op7_read_state1.read())) || (esl_seteq<1,1,1>(ap_const_logic_0, wrCmdIn_V_TVALID.read()) && 
  esl_seteq<1,1,1>(tmp_nbreadreq_fu_44_p3.read(), ap_const_lv1_1)) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state2;
            } else if ((!(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || (esl_seteq<1,1,1>(ap_const_logic_0, aggregateMemCmd_V_full_n.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op18_write_state2.read())) || (esl_seteq<1,1,1>(ap_const_logic_0, aggregateMemCmd_V_full_n.read()) && 
  esl_seteq<1,1,1>(ap_const_lv1_1, tmp_reg_125.read()))) && (esl_seteq<1,1,1>(ap_CS_iter0_fsm_state1.read(), ap_const_logic_0) || 
  (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_iter0_fsm_state1.read()) && 
   (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || 
    (esl_seteq<1,1,1>(ap_const_logic_0, rdCmdIn_V_TVALID.read()) && 
     esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op7_read_state1.read())) || 
    (esl_seteq<1,1,1>(ap_const_logic_0, wrCmdIn_V_TVALID.read()) && 
     esl_seteq<1,1,1>(tmp_nbreadreq_fu_44_p3.read(), ap_const_lv1_1)) || 
    esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))))) {
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state0;
            } else {
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state2;
            }
            break;
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_iter0_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || (esl_seteq<1,1,1>(ap_const_logic_0, rdCmdIn_V_TVALID.read()) && 
  esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op7_read_state1.read())) || (esl_seteq<1,1,1>(ap_const_logic_0, wrCmdIn_V_TVALID.read()) && 
  esl_seteq<1,1,1>(tmp_nbreadreq_fu_44_p3.read(), ap_const_lv1_1)) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || (((esl_seteq<1,1,1>(ap_const_logic_0, aggregateMemCmd_V_full_n.read()) && 
    esl_seteq<1,1,1>(ap_const_boolean_1, ap_predicate_op18_write_state2.read())) || 
   (esl_seteq<1,1,1>(ap_const_logic_0, aggregateMemCmd_V_full_n.read()) && 
    esl_seteq<1,1,1>(ap_const_lv1_1, tmp_reg_125.read()))) && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_iter1_fsm_state2.read()))))) {
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state2;
            } else {
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state0;
            }
            break;
        default : 
            ap_NS_iter1_fsm =  (sc_lv<2>) ("XX");
            break;
    }
}

}

