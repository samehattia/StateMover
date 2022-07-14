// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _memcachedPipeline_setPath_HH_
#define _memcachedPipeline_setPath_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct memcachedPipeline_setPath : public sc_module {
    // Port declarations 22
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<66> > demux2setPathValue_V_dout;
    sc_in< sc_logic > demux2setPathValue_V_empty_n;
    sc_out< sc_logic > demux2setPathValue_V_read;
    sc_in< sc_lv<45> > demux2setPathMetadata_V_dout;
    sc_in< sc_logic > demux2setPathMetadata_V_empty_n;
    sc_out< sc_logic > demux2setPathMetadata_V_read;
    sc_out< sc_lv<1> > filterPopSet_V_V_din;
    sc_in< sc_logic > filterPopSet_V_V_full_n;
    sc_out< sc_logic > filterPopSet_V_V_write;
    sc_in< sc_logic > memWrData_V_V_TREADY;
    sc_in< sc_logic > memWrCmd_V_TREADY;
    sc_out< sc_lv<40> > memWrCmd_V_TDATA;
    sc_out< sc_logic > memWrCmd_V_TVALID;
    sc_out< sc_lv<512> > memWrData_V_V_TDATA;
    sc_out< sc_logic > memWrData_V_V_TVALID;


    // Module declarations
    memcachedPipeline_setPath(sc_module_name name);
    SC_HAS_PROCESS(memcachedPipeline_setPath);

    ~memcachedPipeline_setPath();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<1> > ap_CS_fsm0;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm0_0;
    sc_signal< bool > ap_sig_bdd_23;
    sc_signal< sc_lv<2> > ap_CS_fsm1;
    sc_signal< sc_logic > ap_sig_cseq_ST_st0_fsm1_0;
    sc_signal< bool > ap_sig_bdd_34;
    sc_signal< sc_lv<3> > setState_load_load_fu_317_p1;
    sc_signal< sc_lv<1> > grp_nbreadreq_fu_140_p3;
    sc_signal< sc_lv<1> > tmp_nbreadreq_fu_154_p3;
    sc_signal< bool > ap_sig_bdd_77;
    sc_signal< sc_lv<3> > setState_load_reg_826;
    sc_signal< sc_lv<3> > ap_reg_ppstg_setState_load_reg_826_pp0_it0;
    sc_signal< bool > ap_sig_bdd_92;
    sc_signal< sc_logic > ap_sig_ioackin_memWrData_V_V_TREADY;
    sc_signal< sc_logic > ap_sig_ioackin_memWrCmd_V_TREADY;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm1_1;
    sc_signal< bool > ap_sig_bdd_120;
    sc_signal< sc_lv<3> > setState;
    sc_signal< sc_lv<512> > setValueBuffer_V;
    sc_signal< sc_lv<32> > setMdBuffer_address_V;
    sc_signal< sc_lv<8> > setNumOfWords;
    sc_signal< sc_lv<8> > counter;
    sc_signal< sc_lv<1> > tmp_79_reg_830;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_79_reg_830_pp0_it0;
    sc_signal< sc_lv<64> > tmp_462_fu_326_p1;
    sc_signal< sc_lv<64> > tmp_462_reg_834;
    sc_signal< sc_lv<1> > tmp_465_fu_348_p2;
    sc_signal< sc_lv<1> > tmp_465_reg_839;
    sc_signal< sc_lv<10> > tmp_470_fu_380_p3;
    sc_signal< sc_lv<10> > tmp_470_reg_844;
    sc_signal< sc_lv<10> > tmp_471_fu_388_p3;
    sc_signal< sc_lv<10> > tmp_471_reg_849;
    sc_signal< sc_lv<10> > tmp_472_fu_396_p2;
    sc_signal< sc_lv<10> > tmp_472_reg_854;
    sc_signal< sc_lv<1> > tmp_78_reg_859;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_78_reg_859_pp0_it0;
    sc_signal< sc_lv<64> > tmp_439_fu_436_p1;
    sc_signal< sc_lv<64> > tmp_439_reg_863;
    sc_signal< sc_lv<1> > tmp_442_fu_458_p2;
    sc_signal< sc_lv<1> > tmp_442_reg_868;
    sc_signal< sc_lv<10> > tmp_447_fu_490_p3;
    sc_signal< sc_lv<10> > tmp_447_reg_873;
    sc_signal< sc_lv<10> > tmp_448_fu_498_p3;
    sc_signal< sc_lv<10> > tmp_448_reg_878;
    sc_signal< sc_lv<10> > tmp_449_fu_506_p2;
    sc_signal< sc_lv<10> > tmp_449_reg_883;
    sc_signal< sc_lv<1> > tmp_reg_888;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_reg_888_pp0_it0;
    sc_signal< sc_lv<1> > tmp_80_reg_892;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_80_reg_892_pp0_it0;
    sc_signal< sc_lv<32> > tmp_485_fu_546_p1;
    sc_signal< sc_lv<32> > tmp_485_reg_896;
    sc_signal< sc_lv<7> > tmp_90_fu_560_p4;
    sc_signal< sc_lv<7> > tmp_90_reg_901;
    sc_signal< sc_lv<1> > tmp_154_fu_578_p2;
    sc_signal< sc_lv<1> > tmp_154_reg_906;
    sc_signal< sc_lv<512> > p_Result_63_fu_596_p1;
    sc_signal< sc_lv<1> > tmp_486_fu_584_p3;
    sc_signal< sc_lv<1> > ap_reg_phiprechg_setValueBuffer_V_flag_4_reg_190pp0_it0;
    sc_signal< sc_lv<1> > ap_reg_phiprechg_setValueBuffer_V_flag_4_reg_190pp0_it1;
    sc_signal< sc_lv<1> > setValueBuffer_V_flag_4_phi_fu_195_p26;
    sc_signal< sc_lv<512> > ap_reg_phiprechg_setValueBuffer_V_new_4_reg_236pp0_it0;
    sc_signal< sc_lv<512> > ap_reg_phiprechg_setValueBuffer_V_new_4_reg_236pp0_it1;
    sc_signal< sc_lv<512> > setValueBuffer_V_new_4_phi_fu_241_p26;
    sc_signal< sc_lv<512> > p_Result_s_fu_786_p2;
    sc_signal< sc_lv<512> > p_Result_62_fu_690_p2;
    sc_signal< sc_lv<3> > storemerge6_fu_422_p3;
    sc_signal< sc_lv<3> > storemerge5_fu_532_p3;
    sc_signal< sc_lv<8> > storemerge1_fu_807_p3;
    sc_signal< sc_lv<8> > grp_fu_306_p2;
    sc_signal< sc_logic > ap_reg_ioackin_memWrData_V_V_TREADY;
    sc_signal< sc_lv<40> > tmp_4_fu_697_p3;
    sc_signal< sc_lv<40> > tmp_3_fu_706_p3;
    sc_signal< sc_logic > ap_reg_ioackin_memWrCmd_V_TREADY;
    sc_signal< sc_lv<14> > Lo_assign_6_fu_334_p3;
    sc_signal< sc_lv<14> > Hi_assign_s_fu_342_p2;
    sc_signal< sc_lv<4> > tmp_464_fu_330_p1;
    sc_signal< sc_lv<10> > tmp_466_fu_354_p3;
    sc_signal< sc_lv<10> > tmp_467_fu_362_p1;
    sc_signal< sc_lv<10> > tmp_468_fu_366_p2;
    sc_signal< sc_lv<10> > tmp_469_fu_372_p3;
    sc_signal< sc_lv<1> > grp_fu_298_p3;
    sc_signal< sc_lv<1> > tmp_156_fu_402_p2;
    sc_signal< sc_lv<1> > tmp_89_fu_416_p2;
    sc_signal< sc_lv<3> > storemerge_fu_408_p3;
    sc_signal< sc_lv<14> > Lo_assign_fu_444_p3;
    sc_signal< sc_lv<14> > Hi_assign_fu_452_p2;
    sc_signal< sc_lv<4> > tmp_441_fu_440_p1;
    sc_signal< sc_lv<10> > tmp_443_fu_464_p3;
    sc_signal< sc_lv<10> > tmp_444_fu_472_p1;
    sc_signal< sc_lv<10> > tmp_445_fu_476_p2;
    sc_signal< sc_lv<10> > tmp_446_fu_482_p3;
    sc_signal< sc_lv<1> > tmp_155_fu_512_p2;
    sc_signal< sc_lv<1> > tmp_88_fu_526_p2;
    sc_signal< sc_lv<3> > storemerge4_fu_518_p3;
    sc_signal< sc_lv<13> > tmp_length_V_load_new7_fu_550_p4;
    sc_signal< sc_lv<13> > op2_assign_fu_570_p3;
    sc_signal< sc_lv<64> > tmp_487_fu_592_p1;
    sc_signal< sc_lv<512> > loc_V_5_fu_619_p1;
    sc_signal< sc_lv<512> > tmp_473_fu_622_p1;
    sc_signal< sc_lv<512> > tmp_476_fu_631_p2;
    sc_signal< sc_lv<512> > tmp_477_fu_637_p4;
    sc_signal< sc_lv<512> > tmp_474_fu_625_p1;
    sc_signal< sc_lv<512> > tmp_475_fu_628_p1;
    sc_signal< sc_lv<512> > tmp_479_fu_654_p2;
    sc_signal< sc_lv<512> > tmp_480_fu_660_p2;
    sc_signal< sc_lv<512> > p_demorgan_fu_666_p2;
    sc_signal< sc_lv<512> > tmp_481_fu_672_p2;
    sc_signal< sc_lv<512> > tmp_478_fu_647_p3;
    sc_signal< sc_lv<512> > tmp_482_fu_678_p2;
    sc_signal< sc_lv<512> > tmp_483_fu_684_p2;
    sc_signal< sc_lv<512> > loc_V_fu_715_p1;
    sc_signal< sc_lv<512> > tmp_450_fu_718_p1;
    sc_signal< sc_lv<512> > tmp_453_fu_727_p2;
    sc_signal< sc_lv<512> > tmp_454_fu_733_p4;
    sc_signal< sc_lv<512> > tmp_451_fu_721_p1;
    sc_signal< sc_lv<512> > tmp_452_fu_724_p1;
    sc_signal< sc_lv<512> > tmp_456_fu_750_p2;
    sc_signal< sc_lv<512> > tmp_457_fu_756_p2;
    sc_signal< sc_lv<512> > p_demorgan1_fu_762_p2;
    sc_signal< sc_lv<512> > tmp_458_fu_768_p2;
    sc_signal< sc_lv<512> > tmp_455_fu_743_p3;
    sc_signal< sc_lv<512> > tmp_459_fu_774_p2;
    sc_signal< sc_lv<512> > tmp_460_fu_780_p2;
    sc_signal< sc_lv<8> > tmp_151_fu_798_p1;
    sc_signal< sc_lv<8> > tmp_157_fu_801_p2;
    sc_signal< sc_lv<1> > ap_NS_fsm0;
    sc_signal< sc_lv<2> > ap_NS_fsm1;
    sc_signal< bool > ap_sig_bdd_305;
    sc_signal< bool > ap_sig_bdd_269;
    sc_signal< bool > ap_sig_bdd_278;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_st1_fsm0_0;
    static const sc_lv<2> ap_ST_st2_fsm1_1;
    static const sc_lv<2> ap_ST_st0_fsm1_0;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<3> ap_const_lv3_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<3> ap_const_lv3_6;
    static const sc_lv<3> ap_const_lv3_3;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<512> ap_const_lv512_lc_1;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<32> ap_const_lv32_41;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<14> ap_const_lv14_3F;
    static const sc_lv<10> ap_const_lv10_1FF;
    static const sc_lv<8> ap_const_lv8_7;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_2C;
    static const sc_lv<32> ap_const_lv32_26;
    static const sc_lv<32> ap_const_lv32_40;
    static const sc_lv<32> ap_const_lv32_1FF;
    static const sc_lv<512> ap_const_lv512_lc_3;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<7> ap_const_lv7_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_Hi_assign_fu_452_p2();
    void thread_Hi_assign_s_fu_342_p2();
    void thread_Lo_assign_6_fu_334_p3();
    void thread_Lo_assign_fu_444_p3();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_reg_phiprechg_setValueBuffer_V_flag_4_reg_190pp0_it0();
    void thread_ap_reg_phiprechg_setValueBuffer_V_new_4_reg_236pp0_it0();
    void thread_ap_reg_ppstg_setState_load_reg_826_pp0_it0();
    void thread_ap_reg_ppstg_tmp_78_reg_859_pp0_it0();
    void thread_ap_reg_ppstg_tmp_79_reg_830_pp0_it0();
    void thread_ap_reg_ppstg_tmp_80_reg_892_pp0_it0();
    void thread_ap_reg_ppstg_tmp_reg_888_pp0_it0();
    void thread_ap_sig_bdd_120();
    void thread_ap_sig_bdd_23();
    void thread_ap_sig_bdd_269();
    void thread_ap_sig_bdd_278();
    void thread_ap_sig_bdd_305();
    void thread_ap_sig_bdd_34();
    void thread_ap_sig_bdd_77();
    void thread_ap_sig_bdd_92();
    void thread_ap_sig_cseq_ST_st0_fsm1_0();
    void thread_ap_sig_cseq_ST_st1_fsm0_0();
    void thread_ap_sig_cseq_ST_st2_fsm1_1();
    void thread_ap_sig_ioackin_memWrCmd_V_TREADY();
    void thread_ap_sig_ioackin_memWrData_V_V_TREADY();
    void thread_demux2setPathMetadata_V_read();
    void thread_demux2setPathValue_V_read();
    void thread_filterPopSet_V_V_din();
    void thread_filterPopSet_V_V_write();
    void thread_grp_fu_298_p3();
    void thread_grp_fu_306_p2();
    void thread_grp_nbreadreq_fu_140_p3();
    void thread_loc_V_5_fu_619_p1();
    void thread_loc_V_fu_715_p1();
    void thread_memWrCmd_V_TDATA();
    void thread_memWrCmd_V_TVALID();
    void thread_memWrData_V_V_TDATA();
    void thread_memWrData_V_V_TVALID();
    void thread_op2_assign_fu_570_p3();
    void thread_p_Result_62_fu_690_p2();
    void thread_p_Result_63_fu_596_p1();
    void thread_p_Result_s_fu_786_p2();
    void thread_p_demorgan1_fu_762_p2();
    void thread_p_demorgan_fu_666_p2();
    void thread_setState_load_load_fu_317_p1();
    void thread_setValueBuffer_V_flag_4_phi_fu_195_p26();
    void thread_setValueBuffer_V_new_4_phi_fu_241_p26();
    void thread_storemerge1_fu_807_p3();
    void thread_storemerge4_fu_518_p3();
    void thread_storemerge5_fu_532_p3();
    void thread_storemerge6_fu_422_p3();
    void thread_storemerge_fu_408_p3();
    void thread_tmp_151_fu_798_p1();
    void thread_tmp_154_fu_578_p2();
    void thread_tmp_155_fu_512_p2();
    void thread_tmp_156_fu_402_p2();
    void thread_tmp_157_fu_801_p2();
    void thread_tmp_3_fu_706_p3();
    void thread_tmp_439_fu_436_p1();
    void thread_tmp_441_fu_440_p1();
    void thread_tmp_442_fu_458_p2();
    void thread_tmp_443_fu_464_p3();
    void thread_tmp_444_fu_472_p1();
    void thread_tmp_445_fu_476_p2();
    void thread_tmp_446_fu_482_p3();
    void thread_tmp_447_fu_490_p3();
    void thread_tmp_448_fu_498_p3();
    void thread_tmp_449_fu_506_p2();
    void thread_tmp_450_fu_718_p1();
    void thread_tmp_451_fu_721_p1();
    void thread_tmp_452_fu_724_p1();
    void thread_tmp_453_fu_727_p2();
    void thread_tmp_454_fu_733_p4();
    void thread_tmp_455_fu_743_p3();
    void thread_tmp_456_fu_750_p2();
    void thread_tmp_457_fu_756_p2();
    void thread_tmp_458_fu_768_p2();
    void thread_tmp_459_fu_774_p2();
    void thread_tmp_460_fu_780_p2();
    void thread_tmp_462_fu_326_p1();
    void thread_tmp_464_fu_330_p1();
    void thread_tmp_465_fu_348_p2();
    void thread_tmp_466_fu_354_p3();
    void thread_tmp_467_fu_362_p1();
    void thread_tmp_468_fu_366_p2();
    void thread_tmp_469_fu_372_p3();
    void thread_tmp_470_fu_380_p3();
    void thread_tmp_471_fu_388_p3();
    void thread_tmp_472_fu_396_p2();
    void thread_tmp_473_fu_622_p1();
    void thread_tmp_474_fu_625_p1();
    void thread_tmp_475_fu_628_p1();
    void thread_tmp_476_fu_631_p2();
    void thread_tmp_477_fu_637_p4();
    void thread_tmp_478_fu_647_p3();
    void thread_tmp_479_fu_654_p2();
    void thread_tmp_480_fu_660_p2();
    void thread_tmp_481_fu_672_p2();
    void thread_tmp_482_fu_678_p2();
    void thread_tmp_483_fu_684_p2();
    void thread_tmp_485_fu_546_p1();
    void thread_tmp_486_fu_584_p3();
    void thread_tmp_487_fu_592_p1();
    void thread_tmp_4_fu_697_p3();
    void thread_tmp_88_fu_526_p2();
    void thread_tmp_89_fu_416_p2();
    void thread_tmp_90_fu_560_p4();
    void thread_tmp_length_V_load_new7_fu_550_p4();
    void thread_tmp_nbreadreq_fu_154_p3();
    void thread_ap_NS_fsm0();
    void thread_ap_NS_fsm1();
};

}

using namespace ap_rtl;

#endif
