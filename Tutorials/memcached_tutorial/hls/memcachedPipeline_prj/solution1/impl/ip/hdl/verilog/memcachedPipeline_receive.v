// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module memcachedPipeline_receive (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        disp2rec_V_V_dout,
        disp2rec_V_V_empty_n,
        disp2rec_V_V_read,
        memRdData_V_V_TVALID,
        getPath2remux_V_V_din,
        getPath2remux_V_V_full_n,
        getPath2remux_V_V_write,
        filterPopGet_V_V_din,
        filterPopGet_V_V_full_n,
        filterPopGet_V_V_write,
        memRdData_V_V_TDATA,
        memRdData_V_V_TREADY
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm0_0 = 1'b1;
parameter    ap_ST_st2_fsm1_1 = 2'b10;
parameter    ap_ST_st0_fsm1_0 = 2'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv12_0 = 12'b000000000000;
parameter    ap_const_lv8_0 = 8'b00000000;
parameter    ap_const_lv512_lc_1 = 512'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv12_FF8 = 12'b111111111000;
parameter    ap_const_lv8_1 = 8'b1;
parameter    ap_const_lv6_0 = 6'b000000;
parameter    ap_const_lv14_3F = 14'b111111;
parameter    ap_const_lv32_1FF = 32'b111111111;
parameter    ap_const_lv10_1FF = 10'b111111111;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_B = 32'b1011;
parameter    ap_const_lv9_0 = 9'b000000000;
parameter    ap_const_lv8_7 = 8'b111;
parameter    ap_const_lv512_lc_3 = 512'b11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111;
parameter    ap_const_lv10_0 = 10'b0000000000;
parameter    ap_const_lv64_0 = 64'b0000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [11:0] disp2rec_V_V_dout;
input   disp2rec_V_V_empty_n;
output   disp2rec_V_V_read;
input   memRdData_V_V_TVALID;
output  [63:0] getPath2remux_V_V_din;
input   getPath2remux_V_V_full_n;
output   getPath2remux_V_V_write;
output  [0:0] filterPopGet_V_V_din;
input   filterPopGet_V_V_full_n;
output   filterPopGet_V_V_write;
input  [511:0] memRdData_V_V_TDATA;
output   memRdData_V_V_TREADY;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg disp2rec_V_V_read;
reg[63:0] getPath2remux_V_V_din;
reg getPath2remux_V_V_write;
reg filterPopGet_V_V_write;
reg memRdData_V_V_TREADY;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm0 = 1'b1;
reg    ap_sig_cseq_ST_st1_fsm0_0;
reg    ap_sig_bdd_23;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm1 = 2'b1;
reg    ap_sig_cseq_ST_st0_fsm1_0;
reg    ap_sig_bdd_34;
wire   [0:0] tmp_nbreadreq_fu_94_p3;
wire   [0:0] tmp_28_nbreadreq_fu_102_p3;
wire   [0:0] tmp_65_fu_341_p2;
wire   [0:0] tmp_66_fu_347_p2;
reg    ap_sig_bdd_73;
reg   [0:0] getState_load_reg_397 = 1'b0;
reg   [0:0] tmp_reg_401 = 1'b0;
reg   [0:0] tmp_28_reg_405 = 1'b0;
reg   [0:0] tmp_65_reg_424 = 1'b0;
reg    ap_sig_bdd_108;
reg    ap_sig_cseq_ST_st2_fsm1_1;
reg    ap_sig_bdd_114;
reg   [0:0] getState = 1'b0;
reg   [11:0] getValueLength_V_1 = 12'b000000000000;
reg   [7:0] getCounter_1 = 8'b00000000;
reg   [511:0] memInputWord_V = 512'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
wire   [63:0] tmp_V_22_fu_169_p1;
reg   [63:0] tmp_V_22_reg_409 = 64'b0000000000000000000000000000000000000000000000000000000000000000;
wire   [9:0] tmp_107_fu_271_p3;
reg   [9:0] tmp_107_reg_414 = 10'b0000000000;
wire   [511:0] tmp_113_fu_299_p2;
reg   [511:0] tmp_113_reg_419 = 512'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
wire   [7:0] ap_reg_phiprechg_storemerge8_reg_137pp0_it0;
reg   [7:0] storemerge8_phi_fu_140_p6;
wire   [7:0] tmp_67_fu_353_p2;
wire   [63:0] tmp_V_fu_392_p1;
wire   [11:0] tmp_68_fu_173_p2;
wire   [11:0] storemerge_fu_327_p3;
wire   [7:0] tmp_69_fu_185_p2;
wire   [13:0] Lo_assign_fu_207_p3;
wire   [13:0] Hi_assign_fu_215_p2;
wire   [3:0] tmp_99_fu_203_p1;
wire   [9:0] tmp_101_fu_231_p3;
wire   [9:0] tmp_102_fu_239_p1;
wire   [0:0] tmp_100_fu_225_p2;
wire   [9:0] tmp_104_fu_253_p2;
wire   [9:0] tmp_106_fu_265_p2;
reg   [511:0] tmp_103_fu_243_p4;
wire   [9:0] tmp_105_fu_259_p2;
wire   [9:0] tmp_109_fu_287_p3;
wire   [511:0] tmp_108_fu_279_p3;
wire   [511:0] tmp_111_fu_295_p1;
wire   [8:0] tmp_117_fu_305_p4;
wire   [0:0] icmp_fu_315_p2;
wire   [11:0] tmp_s_fu_321_p2;
wire   [9:0] tmp_110_fu_372_p2;
wire   [511:0] tmp_112_fu_377_p1;
wire   [511:0] tmp_114_fu_381_p2;
wire   [511:0] p_Result_s_fu_387_p2;
reg   [0:0] ap_NS_fsm0;
reg   [1:0] ap_NS_fsm1;
reg    ap_sig_bdd_54;
reg    ap_sig_bdd_121;
reg    ap_sig_bdd_92;
reg    ap_sig_bdd_173;
reg    ap_sig_bdd_155;




/// the current state (ap_CS_fsm0) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm0
    if (ap_rst == 1'b1) begin
        ap_CS_fsm0 <= ap_ST_st1_fsm0_0;
    end else begin
        ap_CS_fsm0 <= ap_NS_fsm0;
    end
end

/// the current state (ap_CS_fsm1) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm1
    if (ap_rst == 1'b1) begin
        ap_CS_fsm1 <= ap_ST_st0_fsm1_0;
    end else begin
        ap_CS_fsm1 <= ap_NS_fsm1;
    end
end

/// ap_done_reg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_done_reg
    if (ap_rst == 1'b1) begin
        ap_done_reg <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_continue)) begin
            ap_done_reg <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_108))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// getCounter_1 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_getCounter_1
    if (ap_rst == 1'b1) begin
        getCounter_1 <= ap_const_lv8_0;
    end else begin
        if (ap_sig_bdd_121) begin
            if (~(getState == ap_const_lv1_0)) begin
                getCounter_1 <= storemerge8_phi_fu_140_p6;
            end else if (ap_sig_bdd_54) begin
                getCounter_1 <= tmp_69_fu_185_p2;
            end
        end
    end
end

/// getState assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_getState
    if (ap_rst == 1'b1) begin
        getState <= ap_const_lv1_0;
    end else begin
        if (ap_sig_bdd_121) begin
            if (ap_sig_bdd_155) begin
                getState <= ap_const_lv1_0;
            end else if (ap_sig_bdd_54) begin
                getState <= ap_const_lv1_1;
            end
        end
    end
end

/// getState_load_reg_397 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_getState_load_reg_397
    if (ap_rst == 1'b1) begin
        getState_load_reg_397 <= ap_const_lv1_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_73 | (ap_sig_bdd_108 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
            getState_load_reg_397 <= getState;
        end
    end
end

/// getValueLength_V_1 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_getValueLength_V_1
    if (ap_rst == 1'b1) begin
        getValueLength_V_1 <= ap_const_lv12_0;
    end else begin
        if (ap_sig_bdd_121) begin
            if (~(getState == ap_const_lv1_0)) begin
                getValueLength_V_1 <= storemerge_fu_327_p3;
            end else if (ap_sig_bdd_54) begin
                getValueLength_V_1 <= tmp_68_fu_173_p2;
            end
        end
    end
end

/// memInputWord_V assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_memInputWord_V
    if (ap_rst == 1'b1) begin
        memInputWord_V <= ap_const_lv512_lc_1;
    end else begin
        if ((((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & (getState == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_94_p3) & ~(ap_const_lv1_0 == tmp_28_nbreadreq_fu_102_p3) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_73 | (ap_sig_bdd_108 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(getState == ap_const_lv1_0) & (ap_const_lv1_0 == tmp_65_fu_341_p2) & ~(ap_const_lv1_0 == tmp_66_fu_347_p2) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_73 | (ap_sig_bdd_108 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)))))) begin
            memInputWord_V <= memRdData_V_V_TDATA;
        end
    end
end

/// tmp_107_reg_414 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_tmp_107_reg_414
    if (ap_rst == 1'b1) begin
        tmp_107_reg_414[1] <= 1'b0;
        tmp_107_reg_414[2] <= 1'b0;
        tmp_107_reg_414[3] <= 1'b0;
        tmp_107_reg_414[4] <= 1'b0;
        tmp_107_reg_414[5] <= 1'b0;
        tmp_107_reg_414[6] <= 1'b0;
        tmp_107_reg_414[7] <= 1'b0;
        tmp_107_reg_414[8] <= 1'b0;
        tmp_107_reg_414[9] <= 1'b0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(getState == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_73 | (ap_sig_bdd_108 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
                        tmp_107_reg_414[9 : 1] <= tmp_107_fu_271_p3[9 : 1];
        end
    end
end

/// tmp_113_reg_419 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_tmp_113_reg_419
    if (ap_rst == 1'b1) begin
        tmp_113_reg_419 <= ap_const_lv512_lc_1;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(getState == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_73 | (ap_sig_bdd_108 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
            tmp_113_reg_419 <= tmp_113_fu_299_p2;
        end
    end
end

/// tmp_28_reg_405 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_tmp_28_reg_405
    if (ap_rst == 1'b1) begin
        tmp_28_reg_405 <= ap_const_lv1_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & (getState == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_94_p3) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_73 | (ap_sig_bdd_108 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
            tmp_28_reg_405 <= tmp_28_nbreadreq_fu_102_p3;
        end
    end
end

/// tmp_65_reg_424 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_tmp_65_reg_424
    if (ap_rst == 1'b1) begin
        tmp_65_reg_424 <= ap_const_lv1_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(getState == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_73 | (ap_sig_bdd_108 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
            tmp_65_reg_424 <= tmp_65_fu_341_p2;
        end
    end
end

/// tmp_V_22_reg_409 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_tmp_V_22_reg_409
    if (ap_rst == 1'b1) begin
        tmp_V_22_reg_409 <= ap_const_lv64_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & (getState == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_94_p3) & ~(ap_const_lv1_0 == tmp_28_nbreadreq_fu_102_p3) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_73 | (ap_sig_bdd_108 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
            tmp_V_22_reg_409 <= tmp_V_22_fu_169_p1;
        end
    end
end

/// tmp_reg_401 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_tmp_reg_401
    if (ap_rst == 1'b1) begin
        tmp_reg_401 <= ap_const_lv1_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & (getState == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_73 | (ap_sig_bdd_108 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
            tmp_reg_401 <= tmp_nbreadreq_fu_94_p3;
        end
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_sig_bdd_108 or ap_sig_cseq_ST_st2_fsm1_1)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_108)))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm0_0 or ap_sig_cseq_ST_st0_fsm1_0)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & (ap_const_logic_1 == ap_sig_cseq_ST_st0_fsm1_0))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm0_0 or ap_sig_bdd_73 or ap_sig_bdd_108 or ap_sig_cseq_ST_st2_fsm1_1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_73 | (ap_sig_bdd_108 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st0_fsm1_0 assign process. ///
always @ (ap_sig_bdd_34)
begin
    if (ap_sig_bdd_34) begin
        ap_sig_cseq_ST_st0_fsm1_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st0_fsm1_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm0_0 assign process. ///
always @ (ap_sig_bdd_23)
begin
    if (ap_sig_bdd_23) begin
        ap_sig_cseq_ST_st1_fsm0_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm0_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st2_fsm1_1 assign process. ///
always @ (ap_sig_bdd_114)
begin
    if (ap_sig_bdd_114) begin
        ap_sig_cseq_ST_st2_fsm1_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm1_1 = ap_const_logic_0;
    end
end

/// disp2rec_V_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm0_0 or tmp_nbreadreq_fu_94_p3 or tmp_28_nbreadreq_fu_102_p3 or ap_sig_bdd_73 or ap_sig_bdd_108 or ap_sig_cseq_ST_st2_fsm1_1 or getState)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & (getState == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_94_p3) & ~(ap_const_lv1_0 == tmp_28_nbreadreq_fu_102_p3) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_73 | (ap_sig_bdd_108 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
        disp2rec_V_V_read = ap_const_logic_1;
    end else begin
        disp2rec_V_V_read = ap_const_logic_0;
    end
end

/// filterPopGet_V_V_write assign process. ///
always @ (ap_done_reg or getState_load_reg_397 or tmp_65_reg_424 or ap_sig_bdd_108 or ap_sig_cseq_ST_st2_fsm1_1)
begin
    if ((~(ap_const_lv1_0 == getState_load_reg_397) & ~(ap_const_lv1_0 == tmp_65_reg_424) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_108))) begin
        filterPopGet_V_V_write = ap_const_logic_1;
    end else begin
        filterPopGet_V_V_write = ap_const_logic_0;
    end
end

/// getPath2remux_V_V_din assign process. ///
always @ (getState_load_reg_397 or tmp_V_22_reg_409 or tmp_V_fu_392_p1 or ap_sig_bdd_92 or ap_sig_bdd_173)
begin
    if (ap_sig_bdd_173) begin
        if (~(ap_const_lv1_0 == getState_load_reg_397)) begin
            getPath2remux_V_V_din = tmp_V_fu_392_p1;
        end else if (ap_sig_bdd_92) begin
            getPath2remux_V_V_din = tmp_V_22_reg_409;
        end else begin
            getPath2remux_V_V_din = 'bx;
        end
    end else begin
        getPath2remux_V_V_din = 'bx;
    end
end

/// getPath2remux_V_V_write assign process. ///
always @ (ap_done_reg or getState_load_reg_397 or tmp_reg_401 or tmp_28_reg_405 or ap_sig_bdd_108 or ap_sig_cseq_ST_st2_fsm1_1)
begin
    if ((((ap_const_lv1_0 == getState_load_reg_397) & ~(ap_const_lv1_0 == tmp_reg_401) & ~(ap_const_lv1_0 == tmp_28_reg_405) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_108)) | (~(ap_const_lv1_0 == getState_load_reg_397) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_108)))) begin
        getPath2remux_V_V_write = ap_const_logic_1;
    end else begin
        getPath2remux_V_V_write = ap_const_logic_0;
    end
end

/// memRdData_V_V_TREADY assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm0_0 or tmp_nbreadreq_fu_94_p3 or tmp_28_nbreadreq_fu_102_p3 or tmp_65_fu_341_p2 or tmp_66_fu_347_p2 or ap_sig_bdd_73 or ap_sig_bdd_108 or ap_sig_cseq_ST_st2_fsm1_1 or getState)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & (getState == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_94_p3) & ~(ap_const_lv1_0 == tmp_28_nbreadreq_fu_102_p3) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_73 | (ap_sig_bdd_108 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(getState == ap_const_lv1_0) & (ap_const_lv1_0 == tmp_65_fu_341_p2) & ~(ap_const_lv1_0 == tmp_66_fu_347_p2) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_73 | (ap_sig_bdd_108 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)))))) begin
        memRdData_V_V_TREADY = ap_const_logic_1;
    end else begin
        memRdData_V_V_TREADY = ap_const_logic_0;
    end
end

/// storemerge8_phi_fu_140_p6 assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm0_0 or tmp_65_fu_341_p2 or tmp_66_fu_347_p2 or getState or ap_reg_phiprechg_storemerge8_reg_137pp0_it0 or tmp_67_fu_353_p2)
begin
    if (((ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(getState == ap_const_lv1_0) & (ap_const_lv1_0 == tmp_65_fu_341_p2) & (ap_const_lv1_0 == tmp_66_fu_347_p2))) begin
        storemerge8_phi_fu_140_p6 = tmp_67_fu_353_p2;
    end else if ((((ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(getState == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_65_fu_341_p2)) | ((ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(getState == ap_const_lv1_0) & (ap_const_lv1_0 == tmp_65_fu_341_p2) & ~(ap_const_lv1_0 == tmp_66_fu_347_p2)))) begin
        storemerge8_phi_fu_140_p6 = ap_const_lv8_0;
    end else begin
        storemerge8_phi_fu_140_p6 = ap_reg_phiprechg_storemerge8_reg_137pp0_it0;
    end
end
/// the next state (ap_NS_fsm1) of the state machine. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm0_0 or ap_CS_fsm1 or ap_sig_bdd_73 or ap_sig_bdd_108 or ap_sig_cseq_ST_st2_fsm1_1)
begin
    case (ap_CS_fsm1)
        ap_ST_st2_fsm1_1 : 
        begin
            if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_108) & ~ap_sig_bdd_73)) begin
                ap_NS_fsm1 = ap_ST_st2_fsm1_1;
            end else if ((~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_108) & (~(ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ap_sig_bdd_73)))) begin
                ap_NS_fsm1 = ap_ST_st0_fsm1_0;
            end else begin
                ap_NS_fsm1 = ap_ST_st2_fsm1_1;
            end
        end
        ap_ST_st0_fsm1_0 : 
        begin
            if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_73 | (ap_sig_bdd_108 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
                ap_NS_fsm1 = ap_ST_st2_fsm1_1;
            end else begin
                ap_NS_fsm1 = ap_ST_st0_fsm1_0;
            end
        end
        default : 
        begin
            ap_NS_fsm1 = 'bx;
        end
    endcase
end

/// the next state (ap_NS_fsm0) of the state machine. ///
always @ (ap_done_reg or ap_CS_fsm0 or ap_sig_bdd_73 or ap_sig_bdd_108 or ap_sig_cseq_ST_st2_fsm1_1)
begin
    case (ap_CS_fsm0)
        ap_ST_st1_fsm0_0 : 
        begin
            ap_NS_fsm0 = ap_ST_st1_fsm0_0;
        end
        default : 
        begin
            ap_NS_fsm0 = 'bx;
        end
    endcase
end

assign Hi_assign_fu_215_p2 = (Lo_assign_fu_207_p3 | ap_const_lv14_3F);
assign Lo_assign_fu_207_p3 = {{getCounter_1}, {ap_const_lv6_0}};
assign ap_reg_phiprechg_storemerge8_reg_137pp0_it0 = 'bx;

/// ap_sig_bdd_108 assign process. ///
always @ (getPath2remux_V_V_full_n or getState_load_reg_397 or tmp_reg_401 or tmp_28_reg_405 or filterPopGet_V_V_full_n or tmp_65_reg_424)
begin
    ap_sig_bdd_108 = (((getPath2remux_V_V_full_n == ap_const_logic_0) & (ap_const_lv1_0 == getState_load_reg_397) & ~(ap_const_lv1_0 == tmp_reg_401) & ~(ap_const_lv1_0 == tmp_28_reg_405)) | ((getPath2remux_V_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == getState_load_reg_397)) | (~(ap_const_lv1_0 == getState_load_reg_397) & (filterPopGet_V_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == tmp_65_reg_424)));
end

/// ap_sig_bdd_114 assign process. ///
always @ (ap_CS_fsm1)
begin
    ap_sig_bdd_114 = (ap_const_lv1_1 == ap_CS_fsm1[ap_const_lv32_1]);
end

/// ap_sig_bdd_121 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm0_0 or ap_sig_bdd_73 or ap_sig_bdd_108 or ap_sig_cseq_ST_st2_fsm1_1)
begin
    ap_sig_bdd_121 = ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_73 | (ap_sig_bdd_108 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))));
end

/// ap_sig_bdd_155 assign process. ///
always @ (tmp_65_fu_341_p2 or getState)
begin
    ap_sig_bdd_155 = (~(getState == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_65_fu_341_p2));
end

/// ap_sig_bdd_173 assign process. ///
always @ (ap_done_reg or ap_sig_bdd_108 or ap_sig_cseq_ST_st2_fsm1_1)
begin
    ap_sig_bdd_173 = ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_108));
end

/// ap_sig_bdd_23 assign process. ///
always @ (ap_CS_fsm0)
begin
    ap_sig_bdd_23 = (ap_CS_fsm0[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_34 assign process. ///
always @ (ap_CS_fsm1)
begin
    ap_sig_bdd_34 = (ap_const_lv1_1 == ap_CS_fsm1[ap_const_lv32_0]);
end

/// ap_sig_bdd_54 assign process. ///
always @ (tmp_nbreadreq_fu_94_p3 or tmp_28_nbreadreq_fu_102_p3 or getState)
begin
    ap_sig_bdd_54 = ((getState == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_94_p3) & ~(ap_const_lv1_0 == tmp_28_nbreadreq_fu_102_p3));
end

/// ap_sig_bdd_73 assign process. ///
always @ (ap_start or ap_done_reg or disp2rec_V_V_empty_n or tmp_nbreadreq_fu_94_p3 or tmp_28_nbreadreq_fu_102_p3 or memRdData_V_V_TVALID or tmp_65_fu_341_p2 or tmp_66_fu_347_p2 or getState)
begin
    ap_sig_bdd_73 = (((disp2rec_V_V_empty_n == ap_const_logic_0) & (getState == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_94_p3) & ~(ap_const_lv1_0 == tmp_28_nbreadreq_fu_102_p3)) | ((getState == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_94_p3) & ~(ap_const_lv1_0 == tmp_28_nbreadreq_fu_102_p3) & (memRdData_V_V_TVALID == ap_const_logic_0)) | ((memRdData_V_V_TVALID == ap_const_logic_0) & ~(getState == ap_const_lv1_0) & (ap_const_lv1_0 == tmp_65_fu_341_p2) & ~(ap_const_lv1_0 == tmp_66_fu_347_p2)) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_92 assign process. ///
always @ (getState_load_reg_397 or tmp_reg_401 or tmp_28_reg_405)
begin
    ap_sig_bdd_92 = ((ap_const_lv1_0 == getState_load_reg_397) & ~(ap_const_lv1_0 == tmp_reg_401) & ~(ap_const_lv1_0 == tmp_28_reg_405));
end
assign filterPopGet_V_V_din = ap_const_lv1_1;
assign icmp_fu_315_p2 = (tmp_117_fu_305_p4 != ap_const_lv9_0? 1'b1: 1'b0);
assign p_Result_s_fu_387_p2 = (tmp_113_reg_419 & tmp_114_fu_381_p2);
assign storemerge_fu_327_p3 = ((icmp_fu_315_p2[0:0]===1'b1)? tmp_s_fu_321_p2: ap_const_lv12_0);
assign tmp_100_fu_225_p2 = (Lo_assign_fu_207_p3 > Hi_assign_fu_215_p2? 1'b1: 1'b0);
assign tmp_101_fu_231_p3 = {{tmp_99_fu_203_p1}, {ap_const_lv6_0}};
assign tmp_102_fu_239_p1 = Hi_assign_fu_215_p2[9:0];

integer ap_tvar_int_0;

always @ (memInputWord_V) begin
    for (ap_tvar_int_0 = 512 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > ap_const_lv32_1FF - ap_const_lv32_0) begin
            tmp_103_fu_243_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            tmp_103_fu_243_p4[ap_tvar_int_0] = memInputWord_V[ap_const_lv32_1FF - ap_tvar_int_0];
        end
    end
end


assign tmp_104_fu_253_p2 = (tmp_101_fu_231_p3 - tmp_102_fu_239_p1);
assign tmp_105_fu_259_p2 = (ap_const_lv10_1FF - tmp_101_fu_231_p3);
assign tmp_106_fu_265_p2 = (tmp_102_fu_239_p1 - tmp_101_fu_231_p3);
assign tmp_107_fu_271_p3 = ((tmp_100_fu_225_p2[0:0]===1'b1)? tmp_104_fu_253_p2: tmp_106_fu_265_p2);
assign tmp_108_fu_279_p3 = ((tmp_100_fu_225_p2[0:0]===1'b1)? tmp_103_fu_243_p4: memInputWord_V);
assign tmp_109_fu_287_p3 = ((tmp_100_fu_225_p2[0:0]===1'b1)? tmp_105_fu_259_p2: tmp_101_fu_231_p3);
assign tmp_110_fu_372_p2 = (ap_const_lv10_1FF - tmp_107_reg_414);
assign tmp_111_fu_295_p1 = tmp_109_fu_287_p3;
assign tmp_112_fu_377_p1 = tmp_110_fu_372_p2;
assign tmp_113_fu_299_p2 = tmp_108_fu_279_p3 >> tmp_111_fu_295_p1;
assign tmp_114_fu_381_p2 = ap_const_lv512_lc_3 >> tmp_112_fu_377_p1;
assign tmp_117_fu_305_p4 = {{getValueLength_V_1[ap_const_lv32_B : ap_const_lv32_3]}};
assign tmp_28_nbreadreq_fu_102_p3 = memRdData_V_V_TVALID;
assign tmp_65_fu_341_p2 = (storemerge_fu_327_p3 == ap_const_lv12_0? 1'b1: 1'b0);
assign tmp_66_fu_347_p2 = (getCounter_1 == ap_const_lv8_7? 1'b1: 1'b0);
assign tmp_67_fu_353_p2 = (getCounter_1 + ap_const_lv8_1);
assign tmp_68_fu_173_p2 = ($signed(ap_const_lv12_FF8) + $signed(disp2rec_V_V_dout));
assign tmp_69_fu_185_p2 = (ap_const_lv8_1 + getCounter_1);
assign tmp_99_fu_203_p1 = getCounter_1[3:0];
assign tmp_V_22_fu_169_p1 = memRdData_V_V_TDATA[63:0];
assign tmp_V_fu_392_p1 = p_Result_s_fu_387_p2[63:0];
assign tmp_nbreadreq_fu_94_p3 = disp2rec_V_V_empty_n;
assign tmp_s_fu_321_p2 = ($signed(getValueLength_V_1) + $signed(ap_const_lv12_FF8));
always @ (posedge ap_clk)
begin
    tmp_107_reg_414[0] <= 1'b1;
end



endmodule //memcachedPipeline_receive

