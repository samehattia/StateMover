// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _memcachedPipeline_bp_r_HH_
#define _memcachedPipeline_bp_r_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct memcachedPipeline_bp_r : public sc_module {
    // Port declarations 19
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<64> > keyBuffer_rp_V_V_dout;
    sc_in< sc_logic > keyBuffer_rp_V_V_empty_n;
    sc_out< sc_logic > keyBuffer_rp_V_V_read;
    sc_in< sc_lv<64> > valueBuffer_rp_V_V_dout;
    sc_in< sc_logic > valueBuffer_rp_V_V_empty_n;
    sc_out< sc_logic > valueBuffer_rp_V_V_read;
    sc_in< sc_lv<248> > metadataBuffer_rp_V_V_dout;
    sc_in< sc_logic > metadataBuffer_rp_V_V_empty_n;
    sc_out< sc_logic > metadataBuffer_rp_V_V_read;
    sc_out< sc_lv<256> > requestParser2hashTable_V_din;
    sc_in< sc_logic > requestParser2hashTable_V_full_n;
    sc_out< sc_logic > requestParser2hashTable_V_write;


    // Module declarations
    memcachedPipeline_bp_r(sc_module_name name);
    SC_HAS_PROCESS(memcachedPipeline_bp_r);

    ~memcachedPipeline_bp_r();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<1> > ap_CS_fsm0;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm0_0;
    sc_signal< bool > ap_sig_bdd_23;
    sc_signal< sc_lv<2> > ap_CS_fsm1;
    sc_signal< sc_logic > ap_sig_cseq_ST_st0_fsm1_0;
    sc_signal< bool > ap_sig_bdd_34;
    sc_signal< sc_lv<1> > tmp_147_fu_439_p2;
    sc_signal< sc_lv<1> > grp_nbreadreq_fu_138_p3;
    sc_signal< sc_lv<1> > tmp_149_fu_445_p2;
    sc_signal< sc_lv<1> > grp_nbreadreq_fu_146_p3;
    sc_signal< sc_lv<1> > tmp_s_fu_523_p2;
    sc_signal< sc_lv<1> > tmp_150_fu_539_p2;
    sc_signal< sc_lv<1> > tmp_148_fu_529_p2;
    sc_signal< sc_lv<1> > tmp_153_fu_582_p2;
    sc_signal< sc_lv<1> > tmp_nbreadreq_fu_166_p3;
    sc_signal< bool > ap_sig_bdd_126;
    sc_signal< sc_lv<2> > binaryParserRearState_load_reg_722;
    sc_signal< sc_lv<1> > tmp_147_reg_732;
    sc_signal< sc_lv<1> > tmp_149_reg_740;
    sc_signal< sc_lv<1> > tmp_46_reg_736;
    sc_signal< sc_lv<1> > tmp_48_reg_744;
    sc_signal< sc_lv<1> > tmp_s_reg_752;
    sc_signal< sc_lv<1> > tmp_45_reg_756;
    sc_signal< sc_lv<1> > tmp_148_reg_760;
    sc_signal< sc_lv<1> > tmp_47_reg_764;
    sc_signal< bool > ap_sig_bdd_185;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm1_1;
    sc_signal< bool > ap_sig_bdd_191;
    sc_signal< sc_lv<2> > binaryParserRearState;
    sc_signal< sc_lv<248> > outMetadataBuffer_V;
    sc_signal< sc_lv<8> > bpr_opCode;
    sc_signal< sc_lv<16> > bpr_valueLength;
    sc_signal< sc_lv<8> > bpr_keyLength;
    sc_signal< sc_lv<1> > bpr_wordCounter_V;
    sc_signal< sc_lv<1> > tmp_valueValid_V_5_reg_196;
    sc_signal< sc_lv<248> > p_Val2_23_reg_726;
    sc_signal< sc_lv<1> > or_cond_fu_511_p2;
    sc_signal< sc_lv<1> > or_cond_reg_748;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond_reg_748_pp0_it0;
    sc_signal< sc_lv<8> > storemerge3_fu_463_p3;
    sc_signal< sc_lv<8> > ap_reg_phiprechg_bpr_keyLength_load_4_reg_187pp0_it0;
    sc_signal< sc_lv<8> > bpr_keyLength_load_4_phi_fu_190_p4;
    sc_signal< sc_lv<1> > ap_reg_phiprechg_tmp_valueValid_V_5_reg_196pp0_it0;
    sc_signal< sc_lv<1> > tmp_valueValid_V_5_phi_fu_199_p4;
    sc_signal< sc_lv<16> > ap_reg_phiprechg_tmp_160_reg_208pp0_it0;
    sc_signal< sc_lv<16> > tmp_160_phi_fu_211_p4;
    sc_signal< sc_lv<16> > storemerge_fu_490_p3;
    sc_signal< sc_lv<8> > ap_reg_phiprechg_bpr_opCode_load_3_reg_217pp0_it0;
    sc_signal< sc_lv<8> > bpr_opCode_load_3_phi_fu_220_p6;
    sc_signal< sc_lv<16> > storemerge4_fu_600_p3;
    sc_signal< sc_lv<16> > ap_reg_phiprechg_bpr_valueLength_new_reg_229pp0_it0;
    sc_signal< sc_lv<16> > bpr_valueLength_new_phi_fu_232_p4;
    sc_signal< sc_lv<16> > p_Result_s_93_fu_545_p4;
    sc_signal< sc_lv<1> > ap_reg_phiprechg_bpr_valueLength_flag_4_reg_238pp0_it0;
    sc_signal< sc_lv<1> > bpr_valueLength_flag_4_phi_fu_241_p16;
    sc_signal< sc_lv<16> > ap_reg_phiprechg_bpr_valueLength_new_4_reg_268pp0_it0;
    sc_signal< sc_lv<16> > bpr_valueLength_new_4_phi_fu_271_p16;
    sc_signal< sc_lv<1> > ap_reg_phiprechg_tmp_keyValid_V_reg_297pp0_it0;
    sc_signal< sc_lv<1> > ap_reg_phiprechg_tmp_keyValid_V_reg_297pp0_it1;
    sc_signal< sc_lv<64> > ap_reg_phiprechg_tmp_key_V_11_reg_310pp0_it0;
    sc_signal< sc_lv<64> > ap_reg_phiprechg_tmp_key_V_11_reg_310pp0_it1;
    sc_signal< sc_lv<64> > ap_reg_phiprechg_tmp_value_V_7_reg_321pp0_it0;
    sc_signal< sc_lv<64> > ap_reg_phiprechg_tmp_value_V_7_reg_321pp0_it1;
    sc_signal< sc_lv<1> > not_bpr_wordCounter_V_load_fu_662_p2;
    sc_signal< sc_lv<1> > ap_reg_phiprechg_bpr_wordCounter_V_flag_1_reg_332pp0_it1;
    sc_signal< sc_lv<1> > bpr_wordCounter_V_flag_1_phi_fu_336_p4;
    sc_signal< sc_lv<1> > ap_reg_phiprechg_bpr_wordCounter_V_flag_1_reg_332pp0_it0;
    sc_signal< sc_lv<1> > ap_reg_phiprechg_bpr_wordCounter_V_new_1_reg_343pp0_it1;
    sc_signal< sc_lv<1> > bpr_wordCounter_V_new_1_phi_fu_347_p4;
    sc_signal< sc_lv<1> > ap_reg_phiprechg_bpr_wordCounter_V_new_1_reg_343pp0_it0;
    sc_signal< sc_lv<1> > ap_reg_phiprechg_tmp_EOP_V_reg_355pp0_it1;
    sc_signal< sc_lv<1> > tmp_EOP_V_phi_fu_359_p4;
    sc_signal< sc_lv<1> > ap_reg_phiprechg_tmp_EOP_V_reg_355pp0_it0;
    sc_signal< sc_lv<64> > ap_reg_phiprechg_tempOutput_key_V_reg_367pp0_it0;
    sc_signal< sc_lv<64> > ap_reg_phiprechg_tempOutput_key_V_reg_367pp0_it1;
    sc_signal< sc_lv<1> > ap_reg_phiprechg_tmp_valueValid_V_reg_378pp0_it0;
    sc_signal< sc_lv<1> > ap_reg_phiprechg_tmp_valueValid_V_reg_378pp0_it1;
    sc_signal< sc_lv<64> > ap_reg_phiprechg_tmp_value_V_reg_391pp0_it0;
    sc_signal< sc_lv<64> > ap_reg_phiprechg_tmp_value_V_reg_391pp0_it1;
    sc_signal< sc_lv<256> > tmp_1_fu_677_p8;
    sc_signal< sc_lv<256> > tmp78_fu_705_p7;
    sc_signal< sc_lv<8> > storemerge2_fu_568_p3;
    sc_signal< sc_lv<1> > tmp_154_fu_451_p2;
    sc_signal< sc_lv<8> > tmp_155_fu_457_p2;
    sc_signal< sc_lv<1> > tmp_158_fu_478_p2;
    sc_signal< sc_lv<16> > tmp_159_fu_484_p2;
    sc_signal< sc_lv<1> > notrhs_fu_505_p2;
    sc_signal< sc_lv<1> > notlhs_fu_499_p2;
    sc_signal< sc_lv<8> > tmp_291_fu_535_p1;
    sc_signal< sc_lv<1> > tmp_151_fu_556_p2;
    sc_signal< sc_lv<8> > tmp_152_fu_562_p2;
    sc_signal< sc_lv<1> > tmp_156_fu_588_p2;
    sc_signal< sc_lv<16> > tmp_157_fu_594_p2;
    sc_signal< sc_lv<124> > tempOutput_metadata_V_fu_653_p4;
    sc_signal< sc_lv<124> > tmp_metadata_V_11_fu_669_p3;
    sc_signal< sc_lv<124> > tempOutput_metadata_V_2_fu_702_p1;
    sc_signal< sc_lv<1> > ap_NS_fsm0;
    sc_signal< sc_lv<2> > ap_NS_fsm1;
    sc_signal< bool > ap_sig_bdd_443;
    sc_signal< bool > ap_sig_bdd_198;
    sc_signal< bool > ap_sig_bdd_96;
    sc_signal< bool > ap_sig_bdd_461;
    sc_signal< bool > ap_sig_bdd_63;
    sc_signal< bool > ap_sig_bdd_306;
    sc_signal< bool > ap_sig_bdd_105;
    sc_signal< bool > ap_sig_bdd_353;
    sc_signal< bool > ap_sig_bdd_314;
    sc_signal< bool > ap_sig_bdd_77;
    sc_signal< bool > ap_sig_bdd_389;
    sc_signal< bool > ap_sig_bdd_117;
    sc_signal< bool > ap_sig_bdd_298;
    sc_signal< bool > ap_sig_bdd_275;
    sc_signal< bool > ap_sig_bdd_160;
    sc_signal< bool > ap_sig_bdd_183;
    sc_signal< bool > ap_sig_bdd_409;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_st1_fsm0_0;
    static const sc_lv<2> ap_ST_st2_fsm1_1;
    static const sc_lv<2> ap_ST_st0_fsm1_0;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<248> ap_const_lv248_lc_1;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<8> ap_const_lv8_8;
    static const sc_lv<8> ap_const_lv8_F8;
    static const sc_lv<16> ap_const_lv16_8;
    static const sc_lv<16> ap_const_lv16_FFF8;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<8> ap_const_lv8_9;
    static const sc_lv<32> ap_const_lv32_68;
    static const sc_lv<32> ap_const_lv32_6F;
    static const sc_lv<32> ap_const_lv32_7C;
    static const sc_lv<32> ap_const_lv32_F7;
    static const sc_lv<124> ap_const_lv124_0;
    static const sc_lv<2> ap_const_lv2_3;
    static const bool ap_true;
    // Thread declarations
    void thread_ap_clk_pos_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_reg_phiprechg_bpr_keyLength_load_4_reg_187pp0_it0();
    void thread_ap_reg_phiprechg_bpr_opCode_load_3_reg_217pp0_it0();
    void thread_ap_reg_phiprechg_bpr_valueLength_flag_4_reg_238pp0_it0();
    void thread_ap_reg_phiprechg_bpr_valueLength_new_4_reg_268pp0_it0();
    void thread_ap_reg_phiprechg_bpr_valueLength_new_reg_229pp0_it0();
    void thread_ap_reg_phiprechg_bpr_wordCounter_V_flag_1_reg_332pp0_it0();
    void thread_ap_reg_phiprechg_bpr_wordCounter_V_new_1_reg_343pp0_it0();
    void thread_ap_reg_phiprechg_tempOutput_key_V_reg_367pp0_it0();
    void thread_ap_reg_phiprechg_tmp_160_reg_208pp0_it0();
    void thread_ap_reg_phiprechg_tmp_EOP_V_reg_355pp0_it0();
    void thread_ap_reg_phiprechg_tmp_keyValid_V_reg_297pp0_it0();
    void thread_ap_reg_phiprechg_tmp_key_V_11_reg_310pp0_it0();
    void thread_ap_reg_phiprechg_tmp_valueValid_V_5_reg_196pp0_it0();
    void thread_ap_reg_phiprechg_tmp_valueValid_V_reg_378pp0_it0();
    void thread_ap_reg_phiprechg_tmp_value_V_7_reg_321pp0_it0();
    void thread_ap_reg_phiprechg_tmp_value_V_reg_391pp0_it0();
    void thread_ap_reg_ppstg_or_cond_reg_748_pp0_it0();
    void thread_ap_sig_bdd_105();
    void thread_ap_sig_bdd_117();
    void thread_ap_sig_bdd_126();
    void thread_ap_sig_bdd_160();
    void thread_ap_sig_bdd_183();
    void thread_ap_sig_bdd_185();
    void thread_ap_sig_bdd_191();
    void thread_ap_sig_bdd_198();
    void thread_ap_sig_bdd_23();
    void thread_ap_sig_bdd_275();
    void thread_ap_sig_bdd_298();
    void thread_ap_sig_bdd_306();
    void thread_ap_sig_bdd_314();
    void thread_ap_sig_bdd_34();
    void thread_ap_sig_bdd_353();
    void thread_ap_sig_bdd_389();
    void thread_ap_sig_bdd_409();
    void thread_ap_sig_bdd_443();
    void thread_ap_sig_bdd_461();
    void thread_ap_sig_bdd_63();
    void thread_ap_sig_bdd_77();
    void thread_ap_sig_bdd_96();
    void thread_ap_sig_cseq_ST_st0_fsm1_0();
    void thread_ap_sig_cseq_ST_st1_fsm0_0();
    void thread_ap_sig_cseq_ST_st2_fsm1_1();
    void thread_bpr_keyLength_load_4_phi_fu_190_p4();
    void thread_bpr_opCode_load_3_phi_fu_220_p6();
    void thread_bpr_valueLength_flag_4_phi_fu_241_p16();
    void thread_bpr_valueLength_new_4_phi_fu_271_p16();
    void thread_bpr_valueLength_new_phi_fu_232_p4();
    void thread_bpr_wordCounter_V_flag_1_phi_fu_336_p4();
    void thread_bpr_wordCounter_V_new_1_phi_fu_347_p4();
    void thread_grp_nbreadreq_fu_138_p3();
    void thread_grp_nbreadreq_fu_146_p3();
    void thread_keyBuffer_rp_V_V_read();
    void thread_metadataBuffer_rp_V_V_read();
    void thread_not_bpr_wordCounter_V_load_fu_662_p2();
    void thread_notlhs_fu_499_p2();
    void thread_notrhs_fu_505_p2();
    void thread_or_cond_fu_511_p2();
    void thread_p_Result_s_93_fu_545_p4();
    void thread_requestParser2hashTable_V_din();
    void thread_requestParser2hashTable_V_write();
    void thread_storemerge2_fu_568_p3();
    void thread_storemerge3_fu_463_p3();
    void thread_storemerge4_fu_600_p3();
    void thread_storemerge_fu_490_p3();
    void thread_tempOutput_metadata_V_2_fu_702_p1();
    void thread_tempOutput_metadata_V_fu_653_p4();
    void thread_tmp78_fu_705_p7();
    void thread_tmp_147_fu_439_p2();
    void thread_tmp_148_fu_529_p2();
    void thread_tmp_149_fu_445_p2();
    void thread_tmp_150_fu_539_p2();
    void thread_tmp_151_fu_556_p2();
    void thread_tmp_152_fu_562_p2();
    void thread_tmp_153_fu_582_p2();
    void thread_tmp_154_fu_451_p2();
    void thread_tmp_155_fu_457_p2();
    void thread_tmp_156_fu_588_p2();
    void thread_tmp_157_fu_594_p2();
    void thread_tmp_158_fu_478_p2();
    void thread_tmp_159_fu_484_p2();
    void thread_tmp_160_phi_fu_211_p4();
    void thread_tmp_1_fu_677_p8();
    void thread_tmp_291_fu_535_p1();
    void thread_tmp_EOP_V_phi_fu_359_p4();
    void thread_tmp_metadata_V_11_fu_669_p3();
    void thread_tmp_nbreadreq_fu_166_p3();
    void thread_tmp_s_fu_523_p2();
    void thread_tmp_valueValid_V_5_phi_fu_199_p4();
    void thread_valueBuffer_rp_V_V_read();
    void thread_ap_NS_fsm1();
    void thread_ap_NS_fsm0();
};

}

using namespace ap_rtl;

#endif
