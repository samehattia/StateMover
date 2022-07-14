// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#include "memcachedPipeline_flashReceiveNoFilter.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic memcachedPipeline_flashReceiveNoFilter::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic memcachedPipeline_flashReceiveNoFilter::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<1> memcachedPipeline_flashReceiveNoFilter::ap_ST_st1_fsm0_0 = "1";
const sc_lv<2> memcachedPipeline_flashReceiveNoFilter::ap_ST_st2_fsm1_1 = "10";
const sc_lv<2> memcachedPipeline_flashReceiveNoFilter::ap_ST_st0_fsm1_0 = "1";
const sc_lv<32> memcachedPipeline_flashReceiveNoFilter::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> memcachedPipeline_flashReceiveNoFilter::ap_const_lv1_1 = "1";
const sc_lv<1> memcachedPipeline_flashReceiveNoFilter::ap_const_lv1_0 = "0";
const sc_lv<32> memcachedPipeline_flashReceiveNoFilter::ap_const_lv32_1 = "1";
const sc_lv<16> memcachedPipeline_flashReceiveNoFilter::ap_const_lv16_0 = "0000000000000000";
const sc_lv<8> memcachedPipeline_flashReceiveNoFilter::ap_const_lv8_0 = "00000000";
const sc_lv<16> memcachedPipeline_flashReceiveNoFilter::ap_const_lv16_FFF8 = "1111111111111000";
const sc_lv<32> memcachedPipeline_flashReceiveNoFilter::ap_const_lv32_3 = "11";
const sc_lv<32> memcachedPipeline_flashReceiveNoFilter::ap_const_lv32_F = "1111";
const sc_lv<13> memcachedPipeline_flashReceiveNoFilter::ap_const_lv13_0 = "0000000000000";
const sc_lv<8> memcachedPipeline_flashReceiveNoFilter::ap_const_lv8_1 = "1";
const sc_lv<64> memcachedPipeline_flashReceiveNoFilter::ap_const_lv64_0 = "0000000000000000000000000000000000000000000000000000000000000000";

memcachedPipeline_flashReceiveNoFilter::memcachedPipeline_flashReceiveNoFilter(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_sig_bdd_95 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm1_1 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm0_0 );
    sensitive << ( ap_sig_cseq_ST_st0_fsm1_0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_sig_cseq_ST_st1_fsm0_0 );
    sensitive << ( ap_sig_bdd_67 );
    sensitive << ( ap_sig_bdd_95 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm1_1 );

    SC_METHOD(thread_ap_reg_ppstg_tmp_41_reg_219_pp0_it0);
    sensitive << ( tmp_41_reg_219 );

    SC_METHOD(thread_ap_sig_bdd_101);
    sensitive << ( ap_CS_fsm1 );

    SC_METHOD(thread_ap_sig_bdd_139);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_sig_bdd_95 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm1_1 );

    SC_METHOD(thread_ap_sig_bdd_156);
    sensitive << ( flashGetState_load_reg_203 );
    sensitive << ( tmp_reg_215 );
    sensitive << ( ap_reg_ppstg_tmp_41_reg_219_pp0_it0 );

    SC_METHOD(thread_ap_sig_bdd_215);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_sig_cseq_ST_st1_fsm0_0 );
    sensitive << ( grp_nbreadreq_fu_74_p3 );
    sensitive << ( ap_sig_bdd_67 );
    sensitive << ( ap_sig_bdd_95 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm1_1 );

    SC_METHOD(thread_ap_sig_bdd_217);
    sensitive << ( flashGetState );
    sensitive << ( tmp_41_fu_169_p2 );

    SC_METHOD(thread_ap_sig_bdd_23);
    sensitive << ( ap_CS_fsm0 );

    SC_METHOD(thread_ap_sig_bdd_34);
    sensitive << ( ap_CS_fsm1 );

    SC_METHOD(thread_ap_sig_bdd_50);
    sensitive << ( tmp_17_nbreadreq_fu_66_p3 );
    sensitive << ( flashGetState );

    SC_METHOD(thread_ap_sig_bdd_67);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( flash_Disp2rec_V_V_empty_n );
    sensitive << ( tmp_17_nbreadreq_fu_66_p3 );
    sensitive << ( grp_nbreadreq_fu_74_p3 );
    sensitive << ( memRdData_V_V_TVALID );
    sensitive << ( flashGetState );

    SC_METHOD(thread_ap_sig_bdd_86);
    sensitive << ( flashGetState_load_reg_203 );
    sensitive << ( tmp_17_reg_207 );
    sensitive << ( tmp_18_reg_211 );

    SC_METHOD(thread_ap_sig_bdd_95);
    sensitive << ( flashGetPath2remux_V_V_full_n );
    sensitive << ( flashGetState_load_reg_203 );
    sensitive << ( tmp_17_reg_207 );
    sensitive << ( tmp_18_reg_211 );
    sensitive << ( tmp_reg_215 );

    SC_METHOD(thread_ap_sig_cseq_ST_st0_fsm1_0);
    sensitive << ( ap_sig_bdd_34 );

    SC_METHOD(thread_ap_sig_cseq_ST_st1_fsm0_0);
    sensitive << ( ap_sig_bdd_23 );

    SC_METHOD(thread_ap_sig_cseq_ST_st2_fsm1_1);
    sensitive << ( ap_sig_bdd_101 );

    SC_METHOD(thread_flashGetPath2remux_V_V_din);
    sensitive << ( ap_done_reg );
    sensitive << ( flashGetState_load_reg_203 );
    sensitive << ( tmp_17_reg_207 );
    sensitive << ( tmp_18_reg_211 );
    sensitive << ( tmp_reg_215 );
    sensitive << ( ap_sig_bdd_95 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm1_1 );
    sensitive << ( reg_102 );

    SC_METHOD(thread_flashGetPath2remux_V_V_write);
    sensitive << ( ap_done_reg );
    sensitive << ( flashGetState_load_reg_203 );
    sensitive << ( tmp_17_reg_207 );
    sensitive << ( tmp_18_reg_211 );
    sensitive << ( tmp_reg_215 );
    sensitive << ( ap_sig_bdd_95 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm1_1 );

    SC_METHOD(thread_flash_Disp2rec_V_V_read);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_sig_cseq_ST_st1_fsm0_0 );
    sensitive << ( tmp_17_nbreadreq_fu_66_p3 );
    sensitive << ( grp_nbreadreq_fu_74_p3 );
    sensitive << ( ap_sig_bdd_67 );
    sensitive << ( ap_sig_bdd_95 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm1_1 );
    sensitive << ( flashGetState );

    SC_METHOD(thread_grp_nbreadreq_fu_74_p3);
    sensitive << ( memRdData_V_V_TVALID );

    SC_METHOD(thread_icmp_fu_143_p2);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_sig_cseq_ST_st1_fsm0_0 );
    sensitive << ( grp_nbreadreq_fu_74_p3 );
    sensitive << ( ap_sig_bdd_67 );
    sensitive << ( ap_sig_bdd_95 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm1_1 );
    sensitive << ( flashGetState );
    sensitive << ( tmp_56_fu_133_p4 );

    SC_METHOD(thread_memRdData_V_V_TREADY);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_sig_cseq_ST_st1_fsm0_0 );
    sensitive << ( tmp_17_nbreadreq_fu_66_p3 );
    sensitive << ( grp_nbreadreq_fu_74_p3 );
    sensitive << ( ap_sig_bdd_67 );
    sensitive << ( ap_sig_bdd_95 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm1_1 );
    sensitive << ( flashGetState );

    SC_METHOD(thread_storemerge_fu_155_p3);
    sensitive << ( icmp_fu_143_p2 );
    sensitive << ( tmp_s_fu_149_p2 );

    SC_METHOD(thread_tmp_17_nbreadreq_fu_66_p3);
    sensitive << ( flash_Disp2rec_V_V_empty_n );

    SC_METHOD(thread_tmp_41_fu_169_p2);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_sig_cseq_ST_st1_fsm0_0 );
    sensitive << ( grp_nbreadreq_fu_74_p3 );
    sensitive << ( ap_sig_bdd_67 );
    sensitive << ( ap_sig_bdd_95 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm1_1 );
    sensitive << ( flashGetState );
    sensitive << ( storemerge_fu_155_p3 );

    SC_METHOD(thread_tmp_42_fu_115_p2);
    sensitive << ( flash_Disp2rec_V_V_dout );

    SC_METHOD(thread_tmp_43_fu_185_p2);
    sensitive << ( getCounter );

    SC_METHOD(thread_tmp_56_fu_133_p4);
    sensitive << ( getValueLength_V );

    SC_METHOD(thread_tmp_s_fu_149_p2);
    sensitive << ( getValueLength_V );

    SC_METHOD(thread_ap_NS_fsm1);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_sig_cseq_ST_st1_fsm0_0 );
    sensitive << ( ap_CS_fsm1 );
    sensitive << ( ap_sig_bdd_67 );
    sensitive << ( ap_sig_bdd_95 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm1_1 );

    SC_METHOD(thread_ap_NS_fsm0);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm0 );
    sensitive << ( ap_sig_bdd_67 );
    sensitive << ( ap_sig_bdd_95 );
    sensitive << ( ap_sig_cseq_ST_st2_fsm1_1 );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm0 = "1";
    ap_CS_fsm1 = "01";
    flashGetState_load_reg_203 = "0";
    tmp_17_reg_207 = "0";
    tmp_18_reg_211 = "0";
    tmp_reg_215 = "0";
    flashGetState = "0";
    getValueLength_V = "0000000000000000";
    getCounter = "00000000";
    reg_102 = "0000000000000000000000000000000000000000000000000000000000000000";
    tmp_41_reg_219 = "0";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "memcachedPipeline_flashReceiveNoFilter_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, flash_Disp2rec_V_V_dout, "(port)flash_Disp2rec_V_V_dout");
    sc_trace(mVcdFile, flash_Disp2rec_V_V_empty_n, "(port)flash_Disp2rec_V_V_empty_n");
    sc_trace(mVcdFile, flash_Disp2rec_V_V_read, "(port)flash_Disp2rec_V_V_read");
    sc_trace(mVcdFile, memRdData_V_V_TVALID, "(port)memRdData_V_V_TVALID");
    sc_trace(mVcdFile, flashGetPath2remux_V_V_din, "(port)flashGetPath2remux_V_V_din");
    sc_trace(mVcdFile, flashGetPath2remux_V_V_full_n, "(port)flashGetPath2remux_V_V_full_n");
    sc_trace(mVcdFile, flashGetPath2remux_V_V_write, "(port)flashGetPath2remux_V_V_write");
    sc_trace(mVcdFile, memRdData_V_V_TDATA, "(port)memRdData_V_V_TDATA");
    sc_trace(mVcdFile, memRdData_V_V_TREADY, "(port)memRdData_V_V_TREADY");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm0, "ap_CS_fsm0");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st1_fsm0_0, "ap_sig_cseq_ST_st1_fsm0_0");
    sc_trace(mVcdFile, ap_sig_bdd_23, "ap_sig_bdd_23");
    sc_trace(mVcdFile, ap_CS_fsm1, "ap_CS_fsm1");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st0_fsm1_0, "ap_sig_cseq_ST_st0_fsm1_0");
    sc_trace(mVcdFile, ap_sig_bdd_34, "ap_sig_bdd_34");
    sc_trace(mVcdFile, tmp_17_nbreadreq_fu_66_p3, "tmp_17_nbreadreq_fu_66_p3");
    sc_trace(mVcdFile, grp_nbreadreq_fu_74_p3, "grp_nbreadreq_fu_74_p3");
    sc_trace(mVcdFile, ap_sig_bdd_67, "ap_sig_bdd_67");
    sc_trace(mVcdFile, flashGetState_load_reg_203, "flashGetState_load_reg_203");
    sc_trace(mVcdFile, tmp_17_reg_207, "tmp_17_reg_207");
    sc_trace(mVcdFile, tmp_18_reg_211, "tmp_18_reg_211");
    sc_trace(mVcdFile, tmp_reg_215, "tmp_reg_215");
    sc_trace(mVcdFile, ap_sig_bdd_95, "ap_sig_bdd_95");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st2_fsm1_1, "ap_sig_cseq_ST_st2_fsm1_1");
    sc_trace(mVcdFile, ap_sig_bdd_101, "ap_sig_bdd_101");
    sc_trace(mVcdFile, flashGetState, "flashGetState");
    sc_trace(mVcdFile, getValueLength_V, "getValueLength_V");
    sc_trace(mVcdFile, getCounter, "getCounter");
    sc_trace(mVcdFile, reg_102, "reg_102");
    sc_trace(mVcdFile, tmp_41_fu_169_p2, "tmp_41_fu_169_p2");
    sc_trace(mVcdFile, tmp_41_reg_219, "tmp_41_reg_219");
    sc_trace(mVcdFile, ap_reg_ppstg_tmp_41_reg_219_pp0_it0, "ap_reg_ppstg_tmp_41_reg_219_pp0_it0");
    sc_trace(mVcdFile, tmp_42_fu_115_p2, "tmp_42_fu_115_p2");
    sc_trace(mVcdFile, storemerge_fu_155_p3, "storemerge_fu_155_p3");
    sc_trace(mVcdFile, tmp_43_fu_185_p2, "tmp_43_fu_185_p2");
    sc_trace(mVcdFile, tmp_56_fu_133_p4, "tmp_56_fu_133_p4");
    sc_trace(mVcdFile, icmp_fu_143_p2, "icmp_fu_143_p2");
    sc_trace(mVcdFile, tmp_s_fu_149_p2, "tmp_s_fu_149_p2");
    sc_trace(mVcdFile, ap_NS_fsm0, "ap_NS_fsm0");
    sc_trace(mVcdFile, ap_NS_fsm1, "ap_NS_fsm1");
    sc_trace(mVcdFile, ap_sig_bdd_50, "ap_sig_bdd_50");
    sc_trace(mVcdFile, ap_sig_bdd_217, "ap_sig_bdd_217");
    sc_trace(mVcdFile, ap_sig_bdd_215, "ap_sig_bdd_215");
    sc_trace(mVcdFile, ap_sig_bdd_86, "ap_sig_bdd_86");
    sc_trace(mVcdFile, ap_sig_bdd_156, "ap_sig_bdd_156");
    sc_trace(mVcdFile, ap_sig_bdd_139, "ap_sig_bdd_139");
#endif

    }
}

memcachedPipeline_flashReceiveNoFilter::~memcachedPipeline_flashReceiveNoFilter() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void memcachedPipeline_flashReceiveNoFilter::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm0 = ap_ST_st1_fsm0_0;
    } else {
        ap_CS_fsm0 = ap_NS_fsm0.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm1 = ap_ST_st0_fsm1_0;
    } else {
        ap_CS_fsm1 = ap_NS_fsm1.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read()) && 
                    !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_95.read()))) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        flashGetState = ap_const_lv1_0;
    } else {
        if (ap_sig_bdd_215.read()) {
            if (ap_sig_bdd_217.read()) {
                flashGetState = ap_const_lv1_0;
            } else if (ap_sig_bdd_50.read()) {
                flashGetState = ap_const_lv1_1;
            }
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        flashGetState_load_reg_203 = ap_const_lv1_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && 
             !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_67.read() || (ap_sig_bdd_95.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read()))))) {
            flashGetState_load_reg_203 = flashGetState.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        getCounter = ap_const_lv8_0;
    } else {
        if (ap_sig_bdd_139.read()) {
            if (ap_sig_bdd_156.read()) {
                getCounter = ap_const_lv8_0;
            } else if (ap_sig_bdd_86.read()) {
                getCounter = tmp_43_fu_185_p2.read();
            }
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        getValueLength_V = ap_const_lv16_0;
    } else {
        if (ap_sig_bdd_215.read()) {
            if (!esl_seteq<1,1,1>(flashGetState.read(), ap_const_lv1_0)) {
                getValueLength_V = storemerge_fu_155_p3.read();
            } else if (ap_sig_bdd_50.read()) {
                getValueLength_V = tmp_42_fu_115_p2.read();
            }
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        reg_102 = ap_const_lv64_0;
    } else {
        if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && 
              esl_seteq<1,1,1>(flashGetState.read(), ap_const_lv1_0) && 
              !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_17_nbreadreq_fu_66_p3.read()) && 
              !esl_seteq<1,1,1>(ap_const_lv1_0, grp_nbreadreq_fu_74_p3.read()) && 
              !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_67.read() || (ap_sig_bdd_95.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read())))) || 
             (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && 
              !esl_seteq<1,1,1>(ap_const_lv1_0, grp_nbreadreq_fu_74_p3.read()) && 
              !esl_seteq<1,1,1>(flashGetState.read(), ap_const_lv1_0) && 
              !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_67.read() || (ap_sig_bdd_95.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read())))))) {
            reg_102 = memRdData_V_V_TDATA.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        tmp_17_reg_207 = ap_const_lv1_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && 
             esl_seteq<1,1,1>(flashGetState.read(), ap_const_lv1_0) && 
             !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_67.read() || (ap_sig_bdd_95.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read()))))) {
            tmp_17_reg_207 = tmp_17_nbreadreq_fu_66_p3.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        tmp_18_reg_211 = ap_const_lv1_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && 
             esl_seteq<1,1,1>(flashGetState.read(), ap_const_lv1_0) && 
             !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_17_nbreadreq_fu_66_p3.read()) && 
             !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_67.read() || (ap_sig_bdd_95.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read()))))) {
            tmp_18_reg_211 = grp_nbreadreq_fu_74_p3.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        tmp_41_reg_219 = ap_const_lv1_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && 
             !esl_seteq<1,1,1>(ap_const_lv1_0, grp_nbreadreq_fu_74_p3.read()) && 
             !esl_seteq<1,1,1>(flashGetState.read(), ap_const_lv1_0) && 
             !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_67.read() || (ap_sig_bdd_95.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read()))))) {
            tmp_41_reg_219 = tmp_41_fu_169_p2.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        tmp_reg_215 = ap_const_lv1_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && 
             !esl_seteq<1,1,1>(flashGetState.read(), ap_const_lv1_0) && 
             !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_67.read() || (ap_sig_bdd_95.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read()))))) {
            tmp_reg_215 = grp_nbreadreq_fu_74_p3.read();
        }
    }
}

void memcachedPipeline_flashReceiveNoFilter::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_done_reg.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read()) && 
          !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_95.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void memcachedPipeline_flashReceiveNoFilter::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st0_fsm1_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void memcachedPipeline_flashReceiveNoFilter::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && 
         !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_67.read() || (ap_sig_bdd_95.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read()))))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void memcachedPipeline_flashReceiveNoFilter::thread_ap_reg_ppstg_tmp_41_reg_219_pp0_it0() {
    ap_reg_ppstg_tmp_41_reg_219_pp0_it0 = tmp_41_reg_219.read();
}

void memcachedPipeline_flashReceiveNoFilter::thread_ap_sig_bdd_101() {
    ap_sig_bdd_101 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm1.read().range(1, 1));
}

void memcachedPipeline_flashReceiveNoFilter::thread_ap_sig_bdd_139() {
    ap_sig_bdd_139 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read()) && !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_95.read()));
}

void memcachedPipeline_flashReceiveNoFilter::thread_ap_sig_bdd_156() {
    ap_sig_bdd_156 = (!esl_seteq<1,1,1>(ap_const_lv1_0, flashGetState_load_reg_203.read()) && !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_reg_215.read()) && !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_41_reg_219_pp0_it0.read()));
}

void memcachedPipeline_flashReceiveNoFilter::thread_ap_sig_bdd_215() {
    ap_sig_bdd_215 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && !esl_seteq<1,1,1>(ap_const_lv1_0, grp_nbreadreq_fu_74_p3.read()) && !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_67.read() || (ap_sig_bdd_95.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read()))));
}

void memcachedPipeline_flashReceiveNoFilter::thread_ap_sig_bdd_217() {
    ap_sig_bdd_217 = (!esl_seteq<1,1,1>(flashGetState.read(), ap_const_lv1_0) && !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_41_fu_169_p2.read()));
}

void memcachedPipeline_flashReceiveNoFilter::thread_ap_sig_bdd_23() {
    ap_sig_bdd_23 = esl_seteq<1,1,1>(ap_CS_fsm0.read().range(0, 0), ap_const_lv1_1);
}

void memcachedPipeline_flashReceiveNoFilter::thread_ap_sig_bdd_34() {
    ap_sig_bdd_34 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm1.read().range(0, 0));
}

void memcachedPipeline_flashReceiveNoFilter::thread_ap_sig_bdd_50() {
    ap_sig_bdd_50 = (esl_seteq<1,1,1>(flashGetState.read(), ap_const_lv1_0) && !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_17_nbreadreq_fu_66_p3.read()));
}

void memcachedPipeline_flashReceiveNoFilter::thread_ap_sig_bdd_67() {
    ap_sig_bdd_67 = ((esl_seteq<1,1,1>(flash_Disp2rec_V_V_empty_n.read(), ap_const_logic_0) && 
  esl_seteq<1,1,1>(flashGetState.read(), ap_const_lv1_0) && 
  !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_17_nbreadreq_fu_66_p3.read()) && 
  !esl_seteq<1,1,1>(ap_const_lv1_0, grp_nbreadreq_fu_74_p3.read())) || (esl_seteq<1,1,1>(flashGetState.read(), ap_const_lv1_0) && 
  !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_17_nbreadreq_fu_66_p3.read()) && 
  !esl_seteq<1,1,1>(ap_const_lv1_0, grp_nbreadreq_fu_74_p3.read()) && 
  esl_seteq<1,1,1>(memRdData_V_V_TVALID.read(), ap_const_logic_0)) || (!esl_seteq<1,1,1>(ap_const_lv1_0, grp_nbreadreq_fu_74_p3.read()) && 
  esl_seteq<1,1,1>(memRdData_V_V_TVALID.read(), ap_const_logic_0) && 
  !esl_seteq<1,1,1>(flashGetState.read(), ap_const_lv1_0)) || esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void memcachedPipeline_flashReceiveNoFilter::thread_ap_sig_bdd_86() {
    ap_sig_bdd_86 = (esl_seteq<1,1,1>(ap_const_lv1_0, flashGetState_load_reg_203.read()) && !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_17_reg_207.read()) && !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_18_reg_211.read()));
}

void memcachedPipeline_flashReceiveNoFilter::thread_ap_sig_bdd_95() {
    ap_sig_bdd_95 = ((esl_seteq<1,1,1>(flashGetPath2remux_V_V_full_n.read(), ap_const_logic_0) && 
  esl_seteq<1,1,1>(ap_const_lv1_0, flashGetState_load_reg_203.read()) && 
  !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_17_reg_207.read()) && 
  !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_18_reg_211.read())) || (esl_seteq<1,1,1>(flashGetPath2remux_V_V_full_n.read(), ap_const_logic_0) && 
  !esl_seteq<1,1,1>(ap_const_lv1_0, flashGetState_load_reg_203.read()) && 
  !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_reg_215.read())));
}

void memcachedPipeline_flashReceiveNoFilter::thread_ap_sig_cseq_ST_st0_fsm1_0() {
    if (ap_sig_bdd_34.read()) {
        ap_sig_cseq_ST_st0_fsm1_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st0_fsm1_0 = ap_const_logic_0;
    }
}

void memcachedPipeline_flashReceiveNoFilter::thread_ap_sig_cseq_ST_st1_fsm0_0() {
    if (ap_sig_bdd_23.read()) {
        ap_sig_cseq_ST_st1_fsm0_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm0_0 = ap_const_logic_0;
    }
}

void memcachedPipeline_flashReceiveNoFilter::thread_ap_sig_cseq_ST_st2_fsm1_1() {
    if (ap_sig_bdd_101.read()) {
        ap_sig_cseq_ST_st2_fsm1_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st2_fsm1_1 = ap_const_logic_0;
    }
}

void memcachedPipeline_flashReceiveNoFilter::thread_flashGetPath2remux_V_V_din() {
    flashGetPath2remux_V_V_din = reg_102.read();
}

void memcachedPipeline_flashReceiveNoFilter::thread_flashGetPath2remux_V_V_write() {
    if (((esl_seteq<1,1,1>(ap_const_lv1_0, flashGetState_load_reg_203.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_17_reg_207.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_18_reg_211.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read()) && 
          !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_95.read())) || 
         (!esl_seteq<1,1,1>(ap_const_lv1_0, flashGetState_load_reg_203.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_reg_215.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read()) && 
          !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_95.read())))) {
        flashGetPath2remux_V_V_write = ap_const_logic_1;
    } else {
        flashGetPath2remux_V_V_write = ap_const_logic_0;
    }
}

void memcachedPipeline_flashReceiveNoFilter::thread_flash_Disp2rec_V_V_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && 
         esl_seteq<1,1,1>(flashGetState.read(), ap_const_lv1_0) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_17_nbreadreq_fu_66_p3.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, grp_nbreadreq_fu_74_p3.read()) && 
         !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_67.read() || (ap_sig_bdd_95.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read()))))) {
        flash_Disp2rec_V_V_read = ap_const_logic_1;
    } else {
        flash_Disp2rec_V_V_read = ap_const_logic_0;
    }
}

void memcachedPipeline_flashReceiveNoFilter::thread_grp_nbreadreq_fu_74_p3() {
    grp_nbreadreq_fu_74_p3 =  (sc_lv<1>) (memRdData_V_V_TVALID.read());
}

void memcachedPipeline_flashReceiveNoFilter::thread_icmp_fu_143_p2() {
    icmp_fu_143_p2 = (!tmp_56_fu_133_p4.read().is_01() || !ap_const_lv13_0.is_01())? sc_lv<1>(): sc_lv<1>(tmp_56_fu_133_p4.read() != ap_const_lv13_0);
}

void memcachedPipeline_flashReceiveNoFilter::thread_memRdData_V_V_TREADY() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && 
          esl_seteq<1,1,1>(flashGetState.read(), ap_const_lv1_0) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_17_nbreadreq_fu_66_p3.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, grp_nbreadreq_fu_74_p3.read()) && 
          !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_67.read() || (ap_sig_bdd_95.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read())))) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, grp_nbreadreq_fu_74_p3.read()) && 
          !esl_seteq<1,1,1>(flashGetState.read(), ap_const_lv1_0) && 
          !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_67.read() || (ap_sig_bdd_95.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read())))))) {
        memRdData_V_V_TREADY = ap_const_logic_1;
    } else {
        memRdData_V_V_TREADY = ap_const_logic_0;
    }
}

void memcachedPipeline_flashReceiveNoFilter::thread_storemerge_fu_155_p3() {
    storemerge_fu_155_p3 = (!icmp_fu_143_p2.read()[0].is_01())? sc_lv<16>(): ((icmp_fu_143_p2.read()[0].to_bool())? tmp_s_fu_149_p2.read(): ap_const_lv16_0);
}

void memcachedPipeline_flashReceiveNoFilter::thread_tmp_17_nbreadreq_fu_66_p3() {
    tmp_17_nbreadreq_fu_66_p3 =  (sc_lv<1>) (flash_Disp2rec_V_V_empty_n.read());
}

void memcachedPipeline_flashReceiveNoFilter::thread_tmp_41_fu_169_p2() {
    tmp_41_fu_169_p2 = (!storemerge_fu_155_p3.read().is_01() || !ap_const_lv16_0.is_01())? sc_lv<1>(): sc_lv<1>(storemerge_fu_155_p3.read() == ap_const_lv16_0);
}

void memcachedPipeline_flashReceiveNoFilter::thread_tmp_42_fu_115_p2() {
    tmp_42_fu_115_p2 = (!flash_Disp2rec_V_V_dout.read().is_01() || !ap_const_lv16_FFF8.is_01())? sc_lv<16>(): (sc_biguint<16>(flash_Disp2rec_V_V_dout.read()) + sc_bigint<16>(ap_const_lv16_FFF8));
}

void memcachedPipeline_flashReceiveNoFilter::thread_tmp_43_fu_185_p2() {
    tmp_43_fu_185_p2 = (!getCounter.read().is_01() || !ap_const_lv8_1.is_01())? sc_lv<8>(): (sc_biguint<8>(getCounter.read()) + sc_biguint<8>(ap_const_lv8_1));
}

void memcachedPipeline_flashReceiveNoFilter::thread_tmp_56_fu_133_p4() {
    tmp_56_fu_133_p4 = getValueLength_V.read().range(15, 3);
}

void memcachedPipeline_flashReceiveNoFilter::thread_tmp_s_fu_149_p2() {
    tmp_s_fu_149_p2 = (!getValueLength_V.read().is_01() || !ap_const_lv16_FFF8.is_01())? sc_lv<16>(): (sc_biguint<16>(getValueLength_V.read()) + sc_bigint<16>(ap_const_lv16_FFF8));
}

void memcachedPipeline_flashReceiveNoFilter::thread_ap_NS_fsm1() {
    switch (ap_CS_fsm1.read().to_uint64()) {
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_95.read()) && !ap_sig_bdd_67.read())) {
                ap_NS_fsm1 = ap_ST_st2_fsm1_1;
            } else if ((!(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_95.read()) && (!esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) || 
  (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && 
   ap_sig_bdd_67.read())))) {
                ap_NS_fsm1 = ap_ST_st0_fsm1_0;
            } else {
                ap_NS_fsm1 = ap_ST_st2_fsm1_1;
            }
            break;
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm0_0.read()) && !(esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || ap_sig_bdd_67.read() || (ap_sig_bdd_95.read() && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm1_1.read()))))) {
                ap_NS_fsm1 = ap_ST_st2_fsm1_1;
            } else {
                ap_NS_fsm1 = ap_ST_st0_fsm1_0;
            }
            break;
        default : 
            ap_NS_fsm1 =  (sc_lv<2>) ("XX");
            break;
    }
}

void memcachedPipeline_flashReceiveNoFilter::thread_ap_NS_fsm0() {
    switch (ap_CS_fsm0.read().to_uint64()) {
        case 1 : 
            ap_NS_fsm0 = ap_ST_st1_fsm0_0;
break;
        default : 
            ap_NS_fsm0 = "X";
            break;
    }
}

}

