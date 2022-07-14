// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _memcachedPipeline_hashKeyResizer_HH_
#define _memcachedPipeline_hashKeyResizer_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct memcachedPipeline_hashKeyResizer : public sc_module {
    // Port declarations 22
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<130> > in2hash_V_dout;
    sc_in< sc_logic > in2hash_V_empty_n;
    sc_out< sc_logic > in2hash_V_read;
    sc_in< sc_lv<8> > in2hashKeyLength_V_V_dout;
    sc_in< sc_logic > in2hashKeyLength_V_V_empty_n;
    sc_out< sc_logic > in2hashKeyLength_V_V_read;
    sc_out< sc_lv<96> > resizedKey_V_V_din;
    sc_in< sc_logic > resizedKey_V_V_full_n;
    sc_out< sc_logic > resizedKey_V_V_write;
    sc_out< sc_lv<32> > resizedKeyLength_V_din;
    sc_in< sc_logic > resizedKeyLength_V_full_n;
    sc_out< sc_logic > resizedKeyLength_V_write;
    sc_out< sc_lv<32> > resizedInitValue_V_din;
    sc_in< sc_logic > resizedInitValue_V_full_n;
    sc_out< sc_logic > resizedInitValue_V_write;


    // Module declarations
    memcachedPipeline_hashKeyResizer(sc_module_name name);
    SC_HAS_PROCESS(memcachedPipeline_hashKeyResizer);

    ~memcachedPipeline_hashKeyResizer();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<1> > ap_CS_fsm0;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm0_0;
    sc_signal< bool > ap_sig_bdd_23;
    sc_signal< sc_lv<2> > ap_CS_fsm1;
    sc_signal< sc_logic > ap_sig_cseq_ST_st0_fsm1_0;
    sc_signal< bool > ap_sig_bdd_34;
    sc_signal< sc_lv<3> > keyResizerState_load_load_fu_254_p1;
    sc_signal< sc_lv<1> > grp_nbreadreq_fu_130_p3;
    sc_signal< sc_lv<1> > tmp_nbreadreq_fu_144_p3;
    sc_signal< bool > ap_sig_bdd_82;
    sc_signal< sc_lv<3> > keyResizerState_load_reg_513;
    sc_signal< sc_lv<1> > tmp_65_reg_524;
    sc_signal< sc_lv<1> > tmp_64_reg_538;
    sc_signal< sc_lv<1> > tmp_63_reg_547;
    sc_signal< sc_lv<1> > tmp_reg_556;
    sc_signal< sc_lv<1> > tmp_66_reg_560;
    sc_signal< bool > ap_sig_bdd_156;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm1_1;
    sc_signal< bool > ap_sig_bdd_162;
    sc_signal< sc_lv<3> > keyResizerState;
    sc_signal< sc_lv<8> > keyResizerLength_V;
    sc_signal< sc_lv<128> > tempInput_data_V;
    sc_signal< sc_lv<96> > resizedKeyOutput_V;
    sc_signal< sc_lv<128> > p_Val2_s_reg_517;
    sc_signal< sc_lv<96> > tmp_V_95_fu_277_p1;
    sc_signal< sc_lv<96> > tmp_V_95_reg_528;
    sc_signal< sc_lv<1> > tmp_290_fu_281_p2;
    sc_signal< sc_lv<32> > tmp_390_fu_329_p1;
    sc_signal< sc_lv<32> > tmp_390_reg_542;
    sc_signal< sc_lv<64> > tmp_387_fu_371_p1;
    sc_signal< sc_lv<64> > tmp_387_reg_551;
    sc_signal< sc_lv<8> > tmp_V_96_reg_564;
    sc_signal< sc_lv<96> > tmp_V_97_fu_419_p1;
    sc_signal< sc_lv<96> > tmp_V_97_reg_569;
    sc_signal< sc_lv<1> > tmp_291_fu_423_p2;
    sc_signal< sc_lv<96> > p_Result_61_fu_433_p5;
    sc_signal< sc_lv<96> > p_Result_60_fu_452_p5;
    sc_signal< sc_lv<96> > p_Result_59_fu_476_p3;
    sc_signal< sc_lv<96> > p_Result_s_fu_490_p3;
    sc_signal< sc_lv<3> > grp_fu_195_p3;
    sc_signal< sc_lv<3> > storemerge5_fu_305_p3;
    sc_signal< sc_lv<3> > storemerge9_fu_347_p3;
    sc_signal< sc_lv<3> > storemerge7_fu_389_p3;
    sc_signal< sc_lv<8> > tmp_s_fu_287_p2;
    sc_signal< sc_lv<8> > grp_fu_209_p2;
    sc_signal< sc_lv<128> > p_Val2_43_fu_267_p1;
    sc_signal< sc_lv<128> > p_Val2_42_fu_319_p1;
    sc_signal< sc_lv<128> > p_Val2_41_fu_361_p1;
    sc_signal< sc_lv<128> > p_Val2_44_fu_409_p1;
    sc_signal< sc_lv<1> > grp_fu_187_p3;
    sc_signal< sc_lv<1> > tmp_285_fu_299_p2;
    sc_signal< sc_lv<1> > tmp_289_fu_333_p2;
    sc_signal< sc_lv<3> > storemerge8_fu_339_p3;
    sc_signal< sc_lv<1> > tmp_287_fu_375_p2;
    sc_signal< sc_lv<3> > storemerge6_fu_381_p3;
    sc_signal< sc_lv<64> > grp_fu_236_p4;
    sc_signal< sc_lv<32> > grp_fu_245_p4;
    sc_signal< sc_lv<1> > ap_NS_fsm0;
    sc_signal< sc_lv<2> > ap_NS_fsm1;
    sc_signal< bool > ap_sig_bdd_71;
    sc_signal< bool > ap_sig_bdd_452;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_st1_fsm0_0;
    static const sc_lv<2> ap_ST_st2_fsm1_1;
    static const sc_lv<2> ap_ST_st0_fsm1_0;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<3> ap_const_lv3_2;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<3> ap_const_lv3_7;
    static const sc_lv<3> ap_const_lv3_6;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<3> ap_const_lv3_3;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<128> ap_const_lv128_lc_1;
    static const sc_lv<96> ap_const_lv96_0;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_81;
    static const sc_lv<8> ap_const_lv8_F0;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_7F;
    static const sc_lv<32> ap_const_lv32_40;
    static const sc_lv<32> ap_const_lv32_60;
    static const sc_lv<8> ap_const_lv8_C;
    static const sc_lv<8> ap_const_lv8_4;
    static const sc_lv<8> ap_const_lv8_8;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<64> ap_const_lv64_0;
    // Thread declarations
    void thread_ap_clk_pos_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_bdd_156();
    void thread_ap_sig_bdd_162();
    void thread_ap_sig_bdd_23();
    void thread_ap_sig_bdd_34();
    void thread_ap_sig_bdd_452();
    void thread_ap_sig_bdd_71();
    void thread_ap_sig_bdd_82();
    void thread_ap_sig_cseq_ST_st0_fsm1_0();
    void thread_ap_sig_cseq_ST_st1_fsm0_0();
    void thread_ap_sig_cseq_ST_st2_fsm1_1();
    void thread_grp_fu_187_p3();
    void thread_grp_fu_195_p3();
    void thread_grp_fu_209_p2();
    void thread_grp_fu_236_p4();
    void thread_grp_fu_245_p4();
    void thread_grp_nbreadreq_fu_130_p3();
    void thread_in2hashKeyLength_V_V_read();
    void thread_in2hash_V_read();
    void thread_keyResizerState_load_load_fu_254_p1();
    void thread_p_Result_59_fu_476_p3();
    void thread_p_Result_60_fu_452_p5();
    void thread_p_Result_61_fu_433_p5();
    void thread_p_Result_s_fu_490_p3();
    void thread_p_Val2_41_fu_361_p1();
    void thread_p_Val2_42_fu_319_p1();
    void thread_p_Val2_43_fu_267_p1();
    void thread_p_Val2_44_fu_409_p1();
    void thread_resizedInitValue_V_din();
    void thread_resizedInitValue_V_write();
    void thread_resizedKeyLength_V_din();
    void thread_resizedKeyLength_V_write();
    void thread_resizedKey_V_V_din();
    void thread_resizedKey_V_V_write();
    void thread_storemerge5_fu_305_p3();
    void thread_storemerge6_fu_381_p3();
    void thread_storemerge7_fu_389_p3();
    void thread_storemerge8_fu_339_p3();
    void thread_storemerge9_fu_347_p3();
    void thread_tmp_285_fu_299_p2();
    void thread_tmp_287_fu_375_p2();
    void thread_tmp_289_fu_333_p2();
    void thread_tmp_290_fu_281_p2();
    void thread_tmp_291_fu_423_p2();
    void thread_tmp_387_fu_371_p1();
    void thread_tmp_390_fu_329_p1();
    void thread_tmp_V_95_fu_277_p1();
    void thread_tmp_V_97_fu_419_p1();
    void thread_tmp_nbreadreq_fu_144_p3();
    void thread_tmp_s_fu_287_p2();
    void thread_ap_NS_fsm0();
    void thread_ap_NS_fsm1();
};

}

using namespace ap_rtl;

#endif
