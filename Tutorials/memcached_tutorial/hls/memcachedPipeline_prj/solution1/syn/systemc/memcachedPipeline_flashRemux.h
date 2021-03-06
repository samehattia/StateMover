// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _memcachedPipeline_flashRemux_HH_
#define _memcachedPipeline_flashRemux_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct memcachedPipeline_flashRemux : public sc_module {
    // Port declarations 19
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<64> > flashKeyBuffer_V_V_dout;
    sc_in< sc_logic > flashKeyBuffer_V_V_empty_n;
    sc_out< sc_logic > flashKeyBuffer_V_V_read;
    sc_in< sc_lv<64> > flashGetPath2remux_V_V_dout;
    sc_in< sc_logic > flashGetPath2remux_V_V_empty_n;
    sc_out< sc_logic > flashGetPath2remux_V_V_read;
    sc_in< sc_lv<128> > flashMetadataBuffer_V_dout;
    sc_in< sc_logic > flashMetadataBuffer_V_empty_n;
    sc_out< sc_logic > flashMetadataBuffer_V_read;
    sc_out< sc_lv<256> > valueStoreFlash2merger_V_din;
    sc_in< sc_logic > valueStoreFlash2merger_V_full_n;
    sc_out< sc_logic > valueStoreFlash2merger_V_write;


    // Module declarations
    memcachedPipeline_flashRemux(sc_module_name name);
    SC_HAS_PROCESS(memcachedPipeline_flashRemux);

    ~memcachedPipeline_flashRemux();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<1> > ap_CS_fsm0;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm0_0;
    sc_signal< bool > ap_sig_bdd_23;
    sc_signal< sc_lv<2> > ap_CS_fsm1;
    sc_signal< sc_logic > ap_sig_cseq_ST_st0_fsm1_0;
    sc_signal< bool > ap_sig_bdd_34;
    sc_signal< sc_lv<1> > tmp_17_fu_859_p2;
    sc_signal< sc_lv<1> > grp_nbreadreq_fu_196_p3;
    sc_signal< sc_lv<1> > grp_fu_724_p2;
    sc_signal< sc_lv<1> > grp_nbreadreq_fu_204_p3;
    sc_signal< sc_lv<1> > grp_nbreadreq_fu_224_p3;
    sc_signal< sc_lv<1> > tmp_s_fu_1042_p2;
    sc_signal< sc_lv<1> > tmp_49_fu_1082_p2;
    sc_signal< sc_lv<1> > tmp_23_fu_1088_p2;
    sc_signal< sc_lv<1> > grp_fu_780_p2;
    sc_signal< bool > ap_sig_bdd_188;
    sc_signal< sc_lv<3> > flashRemuxState_load_reg_1255;
    sc_signal< sc_lv<1> > tmp_17_reg_1259;
    sc_signal< sc_lv<1> > tmp_19_reg_1267;
    sc_signal< sc_lv<1> > tmp_10_reg_1263;
    sc_signal< sc_lv<1> > tmp_13_reg_1271;
    sc_signal< sc_lv<1> > tmp_8_reg_1280;
    sc_signal< sc_lv<1> > tmp_22_reg_1288;
    sc_signal< sc_lv<1> > tmp_12_reg_1284;
    sc_signal< sc_lv<1> > tmp_14_reg_1292;
    sc_signal< sc_lv<1> > tmp_9_reg_1306;
    sc_signal< sc_lv<1> > tmp_7_reg_1315;
    sc_signal< sc_lv<1> > tmp_11_reg_1325;
    sc_signal< sc_lv<1> > tmp_s_reg_1337;
    sc_signal< sc_lv<1> > tmp_49_reg_1341;
    sc_signal< sc_lv<1> > tmp_23_reg_1345;
    sc_signal< sc_lv<1> > tmp_15_reg_1349;
    sc_signal< sc_lv<1> > tmp_20_reg_1356;
    sc_signal< sc_lv<1> > tmp_16_reg_1360;
    sc_signal< bool > ap_sig_bdd_343;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm1_1;
    sc_signal< bool > ap_sig_bdd_349;
    sc_signal< sc_lv<3> > flashRemuxState;
    sc_signal< sc_lv<124> > flashRmMdBuffer_metadata_V;
    sc_signal< sc_lv<8> > flashRmKeyLength;
    sc_signal< sc_lv<16> > flashRmValueLength;
    sc_signal< sc_lv<1> > tmp_keyValid_V_5_reg_245;
    sc_signal< sc_lv<1> > tmp_keyValid_V_reg_275;
    sc_signal< sc_lv<124> > p_Val2_3_reg_318;
    sc_signal< sc_lv<64> > reg_818;
    sc_signal< sc_lv<64> > reg_825;
    sc_signal< sc_lv<1> > tmp_EOP_V_7_fu_894_p2;
    sc_signal< sc_lv<1> > tmp_EOP_V_7_reg_1275;
    sc_signal< sc_lv<124> > flashOutputWord_metadata_V_1_fu_901_p1;
    sc_signal< sc_lv<124> > flashOutputWord_metadata_V_1_reg_1296;
    sc_signal< sc_lv<1> > tmp_EOP_V_6_fu_923_p2;
    sc_signal< sc_lv<1> > tmp_EOP_V_6_reg_1301;
    sc_signal< sc_lv<1> > tmp_EOP_V_5_fu_938_p2;
    sc_signal< sc_lv<1> > tmp_EOP_V_5_reg_1310;
    sc_signal< sc_lv<124> > flashOutputWord_metadata_V_fu_945_p1;
    sc_signal< sc_lv<124> > flashOutputWord_metadata_V_reg_1319;
    sc_signal< sc_lv<1> > tmp_EOP_V_fu_970_p2;
    sc_signal< sc_lv<1> > tmp_EOP_V_reg_1329;
    sc_signal< sc_lv<1> > ap_reg_phiprechg_tmp_keyValid_V_5_reg_245pp0_it0;
    sc_signal< sc_lv<1> > tmp_keyValid_V_5_phi_fu_248_p4;
    sc_signal< sc_lv<8> > ap_reg_phiprechg_flashRmKeyLength_load_s_reg_257pp0_it0;
    sc_signal< sc_lv<8> > flashRmKeyLength_load_s_phi_fu_260_p4;
    sc_signal< sc_lv<8> > grp_fu_734_p3;
    sc_signal< sc_lv<16> > grp_fu_764_p3;
    sc_signal< sc_lv<16> > ap_reg_phiprechg_tmp_33_reg_266pp0_it0;
    sc_signal< sc_lv<16> > tmp_33_phi_fu_269_p4;
    sc_signal< sc_lv<1> > ap_reg_phiprechg_tmp_keyValid_V_reg_275pp0_it0;
    sc_signal< sc_lv<1> > tmp_keyValid_V_phi_fu_278_p4;
    sc_signal< sc_lv<8> > ap_reg_phiprechg_flashRmKeyLength_load_1_reg_287pp0_it0;
    sc_signal< sc_lv<8> > flashRmKeyLength_load_1_phi_fu_290_p4;
    sc_signal< sc_lv<16> > ap_reg_phiprechg_tmp_38_reg_296pp0_it0;
    sc_signal< sc_lv<16> > tmp_38_phi_fu_299_p4;
    sc_signal< sc_lv<1> > ap_reg_phiprechg_flashRemuxState_flag_2_reg_305pp0_it0;
    sc_signal< sc_lv<1> > flashRemuxState_flag_2_phi_fu_308_p6;
    sc_signal< sc_lv<1> > p_s_fu_1014_p3;
    sc_signal< sc_lv<124> > ap_reg_phiprechg_p_Val2_3_reg_318pp0_it0;
    sc_signal< sc_lv<124> > p_Val2_3_phi_fu_321_p6;
    sc_signal< sc_lv<124> > p_Val2_s_fu_991_p1;
    sc_signal< sc_lv<8> > ap_reg_phiprechg_flashRmKeyLength_loc_2_reg_330pp0_it0;
    sc_signal< sc_lv<8> > flashRmKeyLength_loc_2_phi_fu_333_p6;
    sc_signal< sc_lv<8> > p_flashRmKeyLength_load_fu_1023_p3;
    sc_signal< sc_lv<1> > ap_reg_phiprechg_flashRmKeyLength_flag_5_reg_341pp0_it0;
    sc_signal< sc_lv<1> > flashRmKeyLength_flag_5_phi_fu_344_p4;
    sc_signal< sc_lv<8> > ap_reg_phiprechg_flashRmKeyLength_new_5_reg_352pp0_it0;
    sc_signal< sc_lv<8> > flashRmKeyLength_new_5_phi_fu_355_p4;
    sc_signal< sc_lv<8> > grp_fu_808_p3;
    sc_signal< sc_lv<1> > ap_reg_phiprechg_flashRemuxState_flag_s_reg_362pp0_it0;
    sc_signal< sc_lv<1> > flashRemuxState_flag_s_phi_fu_365_p42;
    sc_signal< sc_lv<3> > ap_reg_phiprechg_flashRemuxState_new_1_reg_429pp0_it0;
    sc_signal< sc_lv<3> > flashRemuxState_new_1_phi_fu_432_p42;
    sc_signal< sc_lv<3> > storemerge3_cast_fu_982_p3;
    sc_signal< sc_lv<3> > storemerge7_fu_929_p3;
    sc_signal< sc_lv<1> > ap_reg_phiprechg_flashRmKeyLength_flag_s_reg_495pp0_it0;
    sc_signal< sc_lv<1> > flashRmKeyLength_flag_s_phi_fu_498_p42;
    sc_signal< sc_lv<8> > storemerge2_fu_961_p3;
    sc_signal< sc_lv<8> > ap_reg_phiprechg_flashRmKeyLength_new_s_reg_564pp0_it0;
    sc_signal< sc_lv<8> > flashRmKeyLength_new_s_phi_fu_567_p42;
    sc_signal< sc_lv<64> > ap_reg_phiprechg_tmp_key_V_4_reg_629pp0_it0;
    sc_signal< sc_lv<64> > ap_reg_phiprechg_tmp_key_V_4_reg_629pp0_it1;
    sc_signal< sc_lv<1> > ap_reg_phiprechg_tmp_valueValid_V_1_reg_640pp0_it0;
    sc_signal< sc_lv<1> > ap_reg_phiprechg_tmp_valueValid_V_1_reg_640pp0_it1;
    sc_signal< sc_lv<64> > ap_reg_phiprechg_tmp_value_V_1_reg_653pp0_it0;
    sc_signal< sc_lv<64> > ap_reg_phiprechg_tmp_value_V_1_reg_653pp0_it1;
    sc_signal< sc_lv<64> > ap_reg_phiprechg_tmp_key_V_3_reg_664pp0_it0;
    sc_signal< sc_lv<64> > ap_reg_phiprechg_tmp_key_V_3_reg_664pp0_it1;
    sc_signal< sc_lv<1> > ap_reg_phiprechg_tmp_valueValid_V_reg_675pp0_it0;
    sc_signal< sc_lv<1> > ap_reg_phiprechg_tmp_valueValid_V_reg_675pp0_it1;
    sc_signal< sc_lv<64> > ap_reg_phiprechg_tmp_value_V_reg_688pp0_it0;
    sc_signal< sc_lv<64> > ap_reg_phiprechg_tmp_value_V_reg_688pp0_it1;
    sc_signal< sc_lv<1> > ap_reg_phiprechg_tmp_keyValid_V_6_reg_699pp0_it0;
    sc_signal< sc_lv<1> > ap_reg_phiprechg_tmp_keyValid_V_6_reg_699pp0_it1;
    sc_signal< sc_lv<64> > ap_reg_phiprechg_tmp_key_V_5_reg_712pp0_it0;
    sc_signal< sc_lv<64> > ap_reg_phiprechg_tmp_key_V_5_reg_712pp0_it1;
    sc_signal< sc_lv<256> > tmp_10377_fu_1152_p7;
    sc_signal< sc_lv<256> > tmp_9530_fu_1168_p8;
    sc_signal< sc_lv<256> > tmp_7489_fu_1185_p5;
    sc_signal< sc_lv<256> > tmp_5_fu_1197_p6;
    sc_signal< sc_lv<256> > tmp_6_fu_1210_p3;
    sc_signal< sc_lv<256> > tmp_3_fu_1218_p7;
    sc_signal< sc_lv<256> > tmp_1_fu_1235_p4;
    sc_signal< sc_lv<256> > tmp_2_fu_1246_p3;
    sc_signal< sc_lv<16> > storemerge3_fu_1126_p3;
    sc_signal< sc_lv<1> > icmp_fu_875_p2;
    sc_signal< sc_lv<8> > grp_fu_729_p2;
    sc_signal< sc_lv<13> > grp_fu_744_p4;
    sc_signal< sc_lv<1> > grp_fu_753_p2;
    sc_signal< sc_lv<16> > grp_fu_759_p2;
    sc_signal< sc_lv<5> > grp_fu_786_p4;
    sc_signal< sc_lv<1> > grp_fu_796_p2;
    sc_signal< sc_lv<8> > grp_fu_802_p2;
    sc_signal< sc_lv<5> > tmp_30_fu_865_p4;
    sc_signal< sc_lv<1> > tmp_35_fu_882_p2;
    sc_signal< sc_lv<1> > tmp_37_fu_888_p2;
    sc_signal< sc_lv<1> > tmp_39_fu_911_p2;
    sc_signal< sc_lv<1> > tmp_40_fu_917_p2;
    sc_signal< sc_lv<8> > tmp_21_fu_955_p2;
    sc_signal< sc_lv<1> > not_tmp_EOP_V_fu_976_p2;
    sc_signal< sc_lv<1> > tmp_34_fu_1002_p3;
    sc_signal< sc_lv<8> > tmp_36_fu_1010_p1;
    sc_signal< sc_lv<8> > p_Result_s_fu_1032_p4;
    sc_signal< sc_lv<8> > p_Result_4_fu_1048_p4;
    sc_signal< sc_lv<1> > tmp_46_fu_1064_p2;
    sc_signal< sc_lv<1> > tmp_45_fu_1058_p2;
    sc_signal< sc_lv<1> > tmp_48_fu_1076_p2;
    sc_signal< sc_lv<1> > tmp_47_fu_1070_p2;
    sc_signal< sc_lv<13> > tmp_53_fu_1104_p4;
    sc_signal< sc_lv<16> > p_Result_5_fu_1094_p4;
    sc_signal< sc_lv<1> > icmp9_fu_1114_p2;
    sc_signal< sc_lv<16> > tmp_29_fu_1120_p2;
    sc_signal< sc_lv<1> > ap_NS_fsm0;
    sc_signal< sc_lv<2> > ap_NS_fsm1;
    sc_signal< bool > ap_sig_bdd_605;
    sc_signal< bool > ap_sig_bdd_152;
    sc_signal< bool > ap_sig_bdd_356;
    sc_signal< bool > ap_sig_bdd_555;
    sc_signal< bool > ap_sig_bdd_106;
    sc_signal< bool > ap_sig_bdd_527;
    sc_signal< bool > ap_sig_bdd_63;
    sc_signal< bool > ap_sig_bdd_77;
    sc_signal< bool > ap_sig_bdd_546;
    sc_signal< bool > ap_sig_bdd_112;
    sc_signal< bool > ap_sig_bdd_571;
    sc_signal< bool > ap_sig_bdd_530;
    sc_signal< bool > ap_sig_bdd_99;
    sc_signal< bool > ap_sig_bdd_121;
    sc_signal< bool > ap_sig_bdd_129;
    sc_signal< bool > ap_sig_bdd_222;
    sc_signal< bool > ap_sig_bdd_251;
    sc_signal< bool > ap_sig_bdd_259;
    sc_signal< bool > ap_sig_bdd_272;
    sc_signal< bool > ap_sig_bdd_275;
    sc_signal< bool > ap_sig_bdd_301;
    sc_signal< bool > ap_sig_bdd_326;
    sc_signal< bool > ap_sig_bdd_335;
    sc_signal< bool > ap_sig_bdd_815;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_st1_fsm0_0;
    static const sc_lv<2> ap_ST_st2_fsm1_1;
    static const sc_lv<2> ap_ST_st0_fsm1_0;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<3> ap_const_lv3_7;
    static const sc_lv<3> ap_const_lv3_2;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<124> ap_const_lv124_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<8> ap_const_lv8_F8;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<13> ap_const_lv13_0;
    static const sc_lv<16> ap_const_lv16_FFF8;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_7C;
    static const sc_lv<32> ap_const_lv32_70;
    static const sc_lv<32> ap_const_lv32_77;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<32> ap_const_lv32_68;
    static const sc_lv<32> ap_const_lv32_6F;
    static const sc_lv<8> ap_const_lv8_8;
    static const sc_lv<8> ap_const_lv8_4;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<125> ap_const_lv125_0;
    static const sc_lv<127> ap_const_lv127_20000000000000000000000000000000;
    static const sc_lv<132> ap_const_lv132_lc_6;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<68> ap_const_lv68_3;
    static const sc_lv<132> ap_const_lv132_lc_5;
    static const bool ap_true;
    // Thread declarations
    void thread_ap_clk_pos_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_reg_phiprechg_flashRemuxState_flag_2_reg_305pp0_it0();
    void thread_ap_reg_phiprechg_flashRemuxState_flag_s_reg_362pp0_it0();
    void thread_ap_reg_phiprechg_flashRemuxState_new_1_reg_429pp0_it0();
    void thread_ap_reg_phiprechg_flashRmKeyLength_flag_5_reg_341pp0_it0();
    void thread_ap_reg_phiprechg_flashRmKeyLength_flag_s_reg_495pp0_it0();
    void thread_ap_reg_phiprechg_flashRmKeyLength_load_1_reg_287pp0_it0();
    void thread_ap_reg_phiprechg_flashRmKeyLength_load_s_reg_257pp0_it0();
    void thread_ap_reg_phiprechg_flashRmKeyLength_loc_2_reg_330pp0_it0();
    void thread_ap_reg_phiprechg_flashRmKeyLength_new_5_reg_352pp0_it0();
    void thread_ap_reg_phiprechg_flashRmKeyLength_new_s_reg_564pp0_it0();
    void thread_ap_reg_phiprechg_p_Val2_3_reg_318pp0_it0();
    void thread_ap_reg_phiprechg_tmp_33_reg_266pp0_it0();
    void thread_ap_reg_phiprechg_tmp_38_reg_296pp0_it0();
    void thread_ap_reg_phiprechg_tmp_keyValid_V_5_reg_245pp0_it0();
    void thread_ap_reg_phiprechg_tmp_keyValid_V_6_reg_699pp0_it0();
    void thread_ap_reg_phiprechg_tmp_keyValid_V_reg_275pp0_it0();
    void thread_ap_reg_phiprechg_tmp_key_V_3_reg_664pp0_it0();
    void thread_ap_reg_phiprechg_tmp_key_V_4_reg_629pp0_it0();
    void thread_ap_reg_phiprechg_tmp_key_V_5_reg_712pp0_it0();
    void thread_ap_reg_phiprechg_tmp_valueValid_V_1_reg_640pp0_it0();
    void thread_ap_reg_phiprechg_tmp_valueValid_V_reg_675pp0_it0();
    void thread_ap_reg_phiprechg_tmp_value_V_1_reg_653pp0_it0();
    void thread_ap_reg_phiprechg_tmp_value_V_reg_688pp0_it0();
    void thread_ap_sig_bdd_106();
    void thread_ap_sig_bdd_112();
    void thread_ap_sig_bdd_121();
    void thread_ap_sig_bdd_129();
    void thread_ap_sig_bdd_152();
    void thread_ap_sig_bdd_188();
    void thread_ap_sig_bdd_222();
    void thread_ap_sig_bdd_23();
    void thread_ap_sig_bdd_251();
    void thread_ap_sig_bdd_259();
    void thread_ap_sig_bdd_272();
    void thread_ap_sig_bdd_275();
    void thread_ap_sig_bdd_301();
    void thread_ap_sig_bdd_326();
    void thread_ap_sig_bdd_335();
    void thread_ap_sig_bdd_34();
    void thread_ap_sig_bdd_343();
    void thread_ap_sig_bdd_349();
    void thread_ap_sig_bdd_356();
    void thread_ap_sig_bdd_527();
    void thread_ap_sig_bdd_530();
    void thread_ap_sig_bdd_546();
    void thread_ap_sig_bdd_555();
    void thread_ap_sig_bdd_571();
    void thread_ap_sig_bdd_605();
    void thread_ap_sig_bdd_63();
    void thread_ap_sig_bdd_77();
    void thread_ap_sig_bdd_815();
    void thread_ap_sig_bdd_99();
    void thread_ap_sig_cseq_ST_st0_fsm1_0();
    void thread_ap_sig_cseq_ST_st1_fsm0_0();
    void thread_ap_sig_cseq_ST_st2_fsm1_1();
    void thread_flashGetPath2remux_V_V_read();
    void thread_flashKeyBuffer_V_V_read();
    void thread_flashMetadataBuffer_V_read();
    void thread_flashOutputWord_metadata_V_1_fu_901_p1();
    void thread_flashOutputWord_metadata_V_fu_945_p1();
    void thread_flashRemuxState_flag_2_phi_fu_308_p6();
    void thread_flashRemuxState_flag_s_phi_fu_365_p42();
    void thread_flashRemuxState_new_1_phi_fu_432_p42();
    void thread_flashRmKeyLength_flag_5_phi_fu_344_p4();
    void thread_flashRmKeyLength_flag_s_phi_fu_498_p42();
    void thread_flashRmKeyLength_load_1_phi_fu_290_p4();
    void thread_flashRmKeyLength_load_s_phi_fu_260_p4();
    void thread_flashRmKeyLength_loc_2_phi_fu_333_p6();
    void thread_flashRmKeyLength_new_5_phi_fu_355_p4();
    void thread_flashRmKeyLength_new_s_phi_fu_567_p42();
    void thread_grp_fu_724_p2();
    void thread_grp_fu_729_p2();
    void thread_grp_fu_734_p3();
    void thread_grp_fu_744_p4();
    void thread_grp_fu_753_p2();
    void thread_grp_fu_759_p2();
    void thread_grp_fu_764_p3();
    void thread_grp_fu_780_p2();
    void thread_grp_fu_786_p4();
    void thread_grp_fu_796_p2();
    void thread_grp_fu_802_p2();
    void thread_grp_fu_808_p3();
    void thread_grp_nbreadreq_fu_196_p3();
    void thread_grp_nbreadreq_fu_204_p3();
    void thread_grp_nbreadreq_fu_224_p3();
    void thread_icmp9_fu_1114_p2();
    void thread_icmp_fu_875_p2();
    void thread_not_tmp_EOP_V_fu_976_p2();
    void thread_p_Result_4_fu_1048_p4();
    void thread_p_Result_5_fu_1094_p4();
    void thread_p_Result_s_fu_1032_p4();
    void thread_p_Val2_3_phi_fu_321_p6();
    void thread_p_Val2_s_fu_991_p1();
    void thread_p_flashRmKeyLength_load_fu_1023_p3();
    void thread_p_s_fu_1014_p3();
    void thread_storemerge2_fu_961_p3();
    void thread_storemerge3_cast_fu_982_p3();
    void thread_storemerge3_fu_1126_p3();
    void thread_storemerge7_fu_929_p3();
    void thread_tmp_10377_fu_1152_p7();
    void thread_tmp_17_fu_859_p2();
    void thread_tmp_1_fu_1235_p4();
    void thread_tmp_21_fu_955_p2();
    void thread_tmp_23_fu_1088_p2();
    void thread_tmp_29_fu_1120_p2();
    void thread_tmp_2_fu_1246_p3();
    void thread_tmp_30_fu_865_p4();
    void thread_tmp_33_phi_fu_269_p4();
    void thread_tmp_34_fu_1002_p3();
    void thread_tmp_35_fu_882_p2();
    void thread_tmp_36_fu_1010_p1();
    void thread_tmp_37_fu_888_p2();
    void thread_tmp_38_phi_fu_299_p4();
    void thread_tmp_39_fu_911_p2();
    void thread_tmp_3_fu_1218_p7();
    void thread_tmp_40_fu_917_p2();
    void thread_tmp_45_fu_1058_p2();
    void thread_tmp_46_fu_1064_p2();
    void thread_tmp_47_fu_1070_p2();
    void thread_tmp_48_fu_1076_p2();
    void thread_tmp_49_fu_1082_p2();
    void thread_tmp_53_fu_1104_p4();
    void thread_tmp_5_fu_1197_p6();
    void thread_tmp_6_fu_1210_p3();
    void thread_tmp_7489_fu_1185_p5();
    void thread_tmp_9530_fu_1168_p8();
    void thread_tmp_EOP_V_5_fu_938_p2();
    void thread_tmp_EOP_V_6_fu_923_p2();
    void thread_tmp_EOP_V_7_fu_894_p2();
    void thread_tmp_EOP_V_fu_970_p2();
    void thread_tmp_keyValid_V_5_phi_fu_248_p4();
    void thread_tmp_keyValid_V_phi_fu_278_p4();
    void thread_tmp_s_fu_1042_p2();
    void thread_valueStoreFlash2merger_V_din();
    void thread_valueStoreFlash2merger_V_write();
    void thread_ap_NS_fsm1();
    void thread_ap_NS_fsm0();
};

}

using namespace ap_rtl;

#endif
