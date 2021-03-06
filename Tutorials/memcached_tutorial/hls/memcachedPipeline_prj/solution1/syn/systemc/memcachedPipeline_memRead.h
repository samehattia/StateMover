// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _memcachedPipeline_memRead_HH_
#define _memcachedPipeline_memRead_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct memcachedPipeline_memRead : public sc_module {
    // Port declarations 22
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<64> > cc2memReadMd_V_dout;
    sc_in< sc_logic > cc2memReadMd_V_empty_n;
    sc_out< sc_logic > cc2memReadMd_V_read;
    sc_in< sc_lv<130> > cc2memRead_V_dout;
    sc_in< sc_logic > cc2memRead_V_empty_n;
    sc_out< sc_logic > cc2memRead_V_read;
    sc_out< sc_lv<130> > memRd2comp_V_din;
    sc_in< sc_logic > memRd2comp_V_full_n;
    sc_out< sc_logic > memRd2comp_V_write;
    sc_out< sc_lv<64> > memRd2compMd_V_din;
    sc_in< sc_logic > memRd2compMd_V_full_n;
    sc_out< sc_logic > memRd2compMd_V_write;
    sc_in< sc_logic > memRdCtrl_V_TREADY;
    sc_out< sc_lv<40> > memRdCtrl_V_TDATA;
    sc_out< sc_logic > memRdCtrl_V_TVALID;


    // Module declarations
    memcachedPipeline_memRead(sc_module_name name);
    SC_HAS_PROCESS(memcachedPipeline_memRead);

    ~memcachedPipeline_memRead();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<1> > ap_CS_fsm0;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm0_0;
    sc_signal< bool > ap_sig_bdd_23;
    sc_signal< sc_lv<2> > ap_CS_fsm1;
    sc_signal< sc_logic > ap_sig_cseq_ST_st0_fsm1_0;
    sc_signal< bool > ap_sig_bdd_34;
    sc_signal< sc_lv<1> > tmp_nbreadreq_fu_154_p3;
    sc_signal< sc_lv<1> > tmp_83_nbreadreq_fu_162_p3;
    sc_signal< bool > ap_sig_bdd_69;
    sc_signal< sc_lv<1> > memRdState_load_reg_407;
    sc_signal< sc_lv<1> > tmp_reg_411;
    sc_signal< sc_lv<1> > tmp_83_reg_415;
    sc_signal< bool > ap_sig_bdd_99;
    sc_signal< sc_lv<1> > tmp_s_reg_435;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_s_reg_435_pp0_it0;
    sc_signal< sc_logic > ap_sig_ioackin_memRdCtrl_V_TREADY;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm1_1;
    sc_signal< bool > ap_sig_bdd_114;
    sc_signal< sc_lv<1> > memRdState;
    sc_signal< sc_lv<64> > tmp1_reg_419;
    sc_signal< sc_lv<128> > p_Val2_s_fu_230_p1;
    sc_signal< sc_lv<128> > p_Val2_s_reg_425;
    sc_signal< sc_lv<1> > grp_fu_204_p3;
    sc_signal< sc_lv<1> > tmp_s_fu_234_p2;
    sc_signal< sc_lv<4> > tmp_92_fu_240_p4;
    sc_signal< sc_lv<4> > tmp_92_reg_439;
    sc_signal< sc_lv<1> > tmp_313_fu_258_p2;
    sc_signal< sc_lv<1> > tmp_313_reg_444;
    sc_signal< sc_lv<1> > tmp_314_fu_264_p2;
    sc_signal< sc_lv<1> > tmp_314_reg_449;
    sc_signal< sc_lv<128> > tmp_494_fu_298_p2;
    sc_signal< sc_lv<128> > tmp_494_reg_454;
    sc_signal< sc_lv<8> > tmp_496_fu_304_p2;
    sc_signal< sc_lv<8> > tmp_496_reg_459;
    sc_signal< sc_lv<2> > tmp_107_reg_464;
    sc_signal< sc_lv<130> > tmp_5_reg_469;
    sc_signal< sc_lv<130> > tmp_3_fu_399_p3;
    sc_signal< sc_logic > ap_reg_ioackin_memRdCtrl_V_TREADY;
    sc_signal< sc_lv<8> > tmp_operation_V_fu_216_p1;
    sc_signal< sc_lv<8> > tmp_keyLength_V_fu_220_p4;
    sc_signal< sc_lv<8> > r_V_fu_250_p3;
    sc_signal< sc_lv<5> > tmp_94_fu_270_p4;
    sc_signal< sc_lv<8> > tmp_315_fu_280_p3;
    sc_signal< sc_lv<8> > tmp_492_fu_288_p2;
    sc_signal< sc_lv<128> > tmp_493_fu_294_p1;
    sc_signal< sc_lv<5> > p_0184_1_0_v_cast_cast_cast_fu_344_p3;
    sc_signal< sc_lv<5> > memData_count_V_cast_fu_341_p1;
    sc_signal< sc_lv<5> > memData_count_V_fu_351_p2;
    sc_signal< sc_lv<7> > p_Result_s_fu_332_p4;
    sc_signal< sc_lv<37> > tmp_90_fu_357_p5;
    sc_signal< sc_lv<128> > tmp_497_fu_378_p1;
    sc_signal< sc_lv<128> > p_Result_66_fu_374_p2;
    sc_signal< sc_lv<128> > tmp_498_fu_381_p2;
    sc_signal< sc_lv<128> > p_Result_67_fu_387_p2;
    sc_signal< sc_lv<128> > tmp_data_V_fu_393_p3;
    sc_signal< sc_lv<1> > ap_NS_fsm0;
    sc_signal< sc_lv<2> > ap_NS_fsm1;
    sc_signal< bool > ap_sig_bdd_366;
    sc_signal< bool > ap_sig_bdd_365;
    sc_signal< bool > ap_sig_bdd_88;
    sc_signal< bool > ap_sig_bdd_193;
    sc_signal< bool > ap_sig_bdd_198;
    sc_signal< bool > ap_sig_bdd_201;
    sc_signal< bool > ap_sig_bdd_121;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_st1_fsm0_0;
    static const sc_lv<2> ap_ST_st2_fsm1_1;
    static const sc_lv<2> ap_ST_st0_fsm1_0;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_81;
    static const sc_lv<32> ap_const_lv32_28;
    static const sc_lv<32> ap_const_lv32_2F;
    static const sc_lv<8> ap_const_lv8_8;
    static const sc_lv<32> ap_const_lv32_2C;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<8> ap_const_lv8_11;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<8> ap_const_lv8_80;
    static const sc_lv<128> ap_const_lv128_lc_2;
    static const sc_lv<32> ap_const_lv32_80;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<5> ap_const_lv5_2;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<22> ap_const_lv22_0;
    static const sc_lv<128> ap_const_lv128_lc_1;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<130> ap_const_lv130_lc_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_reg_ppstg_tmp_s_reg_435_pp0_it0();
    void thread_ap_sig_bdd_114();
    void thread_ap_sig_bdd_121();
    void thread_ap_sig_bdd_193();
    void thread_ap_sig_bdd_198();
    void thread_ap_sig_bdd_201();
    void thread_ap_sig_bdd_23();
    void thread_ap_sig_bdd_34();
    void thread_ap_sig_bdd_365();
    void thread_ap_sig_bdd_366();
    void thread_ap_sig_bdd_69();
    void thread_ap_sig_bdd_88();
    void thread_ap_sig_bdd_99();
    void thread_ap_sig_cseq_ST_st0_fsm1_0();
    void thread_ap_sig_cseq_ST_st1_fsm0_0();
    void thread_ap_sig_cseq_ST_st2_fsm1_1();
    void thread_ap_sig_ioackin_memRdCtrl_V_TREADY();
    void thread_cc2memReadMd_V_read();
    void thread_cc2memRead_V_read();
    void thread_grp_fu_204_p3();
    void thread_memData_count_V_cast_fu_341_p1();
    void thread_memData_count_V_fu_351_p2();
    void thread_memRd2compMd_V_din();
    void thread_memRd2compMd_V_write();
    void thread_memRd2comp_V_din();
    void thread_memRd2comp_V_write();
    void thread_memRdCtrl_V_TDATA();
    void thread_memRdCtrl_V_TVALID();
    void thread_p_0184_1_0_v_cast_cast_cast_fu_344_p3();
    void thread_p_Result_66_fu_374_p2();
    void thread_p_Result_67_fu_387_p2();
    void thread_p_Result_s_fu_332_p4();
    void thread_p_Val2_s_fu_230_p1();
    void thread_r_V_fu_250_p3();
    void thread_tmp_313_fu_258_p2();
    void thread_tmp_314_fu_264_p2();
    void thread_tmp_315_fu_280_p3();
    void thread_tmp_3_fu_399_p3();
    void thread_tmp_492_fu_288_p2();
    void thread_tmp_493_fu_294_p1();
    void thread_tmp_494_fu_298_p2();
    void thread_tmp_496_fu_304_p2();
    void thread_tmp_497_fu_378_p1();
    void thread_tmp_498_fu_381_p2();
    void thread_tmp_83_nbreadreq_fu_162_p3();
    void thread_tmp_90_fu_357_p5();
    void thread_tmp_92_fu_240_p4();
    void thread_tmp_94_fu_270_p4();
    void thread_tmp_data_V_fu_393_p3();
    void thread_tmp_keyLength_V_fu_220_p4();
    void thread_tmp_nbreadreq_fu_154_p3();
    void thread_tmp_operation_V_fu_216_p1();
    void thread_tmp_s_fu_234_p2();
    void thread_ap_NS_fsm0();
    void thread_ap_NS_fsm1();
};

}

using namespace ap_rtl;

#endif
