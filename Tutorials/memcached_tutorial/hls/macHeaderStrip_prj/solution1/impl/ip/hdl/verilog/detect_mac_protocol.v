// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module detect_mac_protocol (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        dataIn_TVALID,
        ipDataFifo_V_din,
        ipDataFifo_V_full_n,
        ipDataFifo_V_write,
        start_out,
        start_write,
        dataIn_TDATA,
        dataIn_TREADY,
        dataIn_TKEEP,
        dataIn_TLAST,
        dataIn_TUSER,
        myMacAddress_V
);

parameter    ap_ST_iter0_fsm_state1 = 1'd1;
parameter    ap_ST_iter1_fsm_state2 = 2'd2;
parameter    ap_ST_iter1_fsm_state0 = 2'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input   dataIn_TVALID;
output  [184:0] ipDataFifo_V_din;
input   ipDataFifo_V_full_n;
output   ipDataFifo_V_write;
output   start_out;
output   start_write;
input  [63:0] dataIn_TDATA;
output   dataIn_TREADY;
input  [7:0] dataIn_TKEEP;
input  [0:0] dataIn_TLAST;
input  [111:0] dataIn_TUSER;
input  [47:0] myMacAddress_V;

reg ap_done;
reg ap_idle;
reg[184:0] ipDataFifo_V_din;
reg ipDataFifo_V_write;
reg start_write;
reg dataIn_TREADY;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
reg   [0:0] ap_CS_iter0_fsm;
wire    ap_CS_iter0_fsm_state1;
reg   [1:0] ap_CS_iter1_fsm;
wire    ap_CS_iter1_fsm_state0;
reg    internal_ap_ready;
wire   [0:0] dmp_fsmState_V_load_load_fu_172_p1;
wire   [0:0] tmp_nbreadreq_fu_86_p6;
reg    ap_predicate_op10_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] dmp_fsmState_V_load_reg_384;
reg   [0:0] tmp_reg_394;
reg   [0:0] cond_i_reg_413;
reg   [0:0] tmp_38_i_reg_420;
reg   [0:0] or_cond_i_reg_424;
reg    ap_predicate_op59_write_state2;
reg   [0:0] tmp_i_reg_428;
reg    ap_predicate_op68_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
wire    ap_CS_iter1_fsm_state2;
reg   [0:0] dmp_fsmState_V;
reg   [15:0] dmp_macType_V;
reg   [63:0] dmp_prevWord_data_V;
reg   [7:0] dmp_prevWord_keep_V;
reg   [0:0] dmp_prevWord_last_V;
reg   [111:0] dmp_prevWord_user_V;
reg   [1:0] dmp_wordCount_V;
reg    dataIn_TDATA_blk_n;
reg    ipDataFifo_V_blk_n;
reg   [63:0] tmp_data_V_reg_388;
reg   [7:0] tmp_keep_V_5_reg_398;
wire   [0:0] tmp_last_V_2_fu_193_p1;
reg   [0:0] tmp_last_V_2_reg_403;
reg   [111:0] tmp_user_V_4_reg_408;
wire   [0:0] cond_i_fu_205_p2;
wire   [0:0] tmp_38_i_fu_265_p2;
wire   [0:0] or_cond_i_fu_277_p2;
wire   [0:0] tmp_i_fu_321_p2;
reg   [15:0] ap_phi_mux_dmp_macType_V_loc_1_s_phi_fu_122_p4;
wire   [15:0] ap_phi_reg_pp0_iter0_dmp_macType_V_loc_1_s_reg_119;
wire   [0:0] demorgan_fu_224_p2;
wire   [15:0] tmp_i_i_fu_250_p3;
reg   [0:0] ap_phi_mux_dmp_wordCount_V_flag_phi_fu_131_p4;
wire   [0:0] ap_phi_reg_pp0_iter0_dmp_wordCount_V_flag_reg_128;
wire   [0:0] tmp_36_i_fu_211_p2;
reg   [1:0] ap_phi_mux_dmp_wordCount_V_new_s_phi_fu_141_p4;
wire   [1:0] ap_phi_reg_pp0_iter0_dmp_wordCount_V_new_s_reg_138;
reg   [0:0] ap_phi_mux_dmp_wordCount_V_flag_1_phi_fu_152_p4;
wire   [0:0] ap_phi_reg_pp0_iter0_dmp_wordCount_V_flag_1_reg_149;
reg   [1:0] ap_phi_mux_dmp_wordCount_V_new_1_phi_fu_164_p4;
wire   [1:0] ap_phi_reg_pp0_iter0_dmp_wordCount_V_new_1_reg_161;
wire   [184:0] tmp9_fu_345_p5;
wire   [184:0] tmp_118_fu_372_p5;
wire   [15:0] storemerge_i_fu_293_p1;
wire   [0:0] tmp_37_i_fu_218_p2;
wire   [7:0] p_Result_i_i_15_fu_240_p4;
wire   [7:0] p_Result_i_i_fu_230_p4;
wire   [0:0] tmp_39_i_fu_271_p2;
wire   [47:0] tmp_10_fu_283_p1;
wire   [0:0] tmp_35_i_fu_287_p2;
reg   [0:0] ap_NS_iter0_fsm;
reg   [1:0] ap_NS_iter1_fsm;
reg    ap_condition_202;
reg    ap_condition_244;
reg    ap_condition_210;
reg    ap_condition_100;
reg    ap_condition_155;
reg    ap_condition_221;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_iter0_fsm = 1'd1;
#0 ap_CS_iter1_fsm = 2'd1;
#0 dmp_fsmState_V = 1'd0;
#0 dmp_macType_V = 16'd0;
#0 dmp_prevWord_data_V = 64'd0;
#0 dmp_prevWord_keep_V = 8'd0;
#0 dmp_prevWord_last_V = 1'd0;
#0 dmp_prevWord_user_V = 112'd0;
#0 dmp_wordCount_V = 2'd0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_iter0_fsm <= ap_ST_iter0_fsm_state1;
    end else begin
        ap_CS_iter0_fsm <= ap_NS_iter0_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_iter1_fsm <= ap_ST_iter1_fsm_state0;
    end else begin
        ap_CS_iter1_fsm <= ap_NS_iter1_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~((ap_done_reg == 1'b1) | ((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1)) | ((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op59_write_state2 == 1'b1))) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_100)) begin
        if ((dmp_fsmState_V_load_load_fu_172_p1 == 1'd1)) begin
            dmp_fsmState_V <= 1'd0;
        end else if ((1'b1 == ap_condition_210)) begin
            dmp_fsmState_V <= 1'd1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_155)) begin
        if ((cond_i_fu_205_p2 == 1'd1)) begin
            dmp_macType_V <= storemerge_i_fu_293_p1;
        end else if (((demorgan_fu_224_p2 == 1'd1) & (cond_i_fu_205_p2 == 1'd0))) begin
            dmp_macType_V <= tmp_i_i_fu_250_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1)) | ((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op59_write_state2 == 1'b1)))) | ((dataIn_TVALID == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1))) & (tmp_nbreadreq_fu_86_p6 == 1'd1) & (dmp_fsmState_V == 1'd0) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        cond_i_reg_413 <= cond_i_fu_205_p2;
        dmp_prevWord_data_V <= dataIn_TDATA;
        tmp_keep_V_5_reg_398 <= dataIn_TKEEP;
        tmp_last_V_2_reg_403 <= dataIn_TLAST;
        tmp_user_V_4_reg_408 <= dataIn_TUSER;
    end
end

always @ (posedge ap_clk) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1)) | ((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op59_write_state2 == 1'b1)))) | ((dataIn_TVALID == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1))) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        dmp_fsmState_V_load_reg_384 <= dmp_fsmState_V;
        tmp_data_V_reg_388 <= dmp_prevWord_data_V;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_done_reg == 1'b1) | ((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1)) | ((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op59_write_state2 == 1'b1))) & (tmp_reg_394 == 1'd1) & (dmp_fsmState_V_load_reg_384 == 1'd0) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        dmp_prevWord_keep_V <= tmp_keep_V_5_reg_398;
        dmp_prevWord_last_V <= tmp_last_V_2_reg_403;
        dmp_prevWord_user_V <= tmp_user_V_4_reg_408;
    end
end

always @ (posedge ap_clk) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1)) | ((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op59_write_state2 == 1'b1)))) | ((dataIn_TVALID == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1))) & (ap_phi_mux_dmp_wordCount_V_flag_1_phi_fu_152_p4 == 1'd1) & (tmp_nbreadreq_fu_86_p6 == 1'd1) & (dmp_fsmState_V == 1'd0) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        dmp_wordCount_V <= ap_phi_mux_dmp_wordCount_V_new_1_phi_fu_164_p4;
    end
end

always @ (posedge ap_clk) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1)) | ((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op59_write_state2 == 1'b1)))) | ((dataIn_TVALID == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1))) & (tmp_nbreadreq_fu_86_p6 == 1'd1) & (tmp_38_i_fu_265_p2 == 1'd0) & (cond_i_fu_205_p2 == 1'd0) & (dmp_fsmState_V == 1'd0) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        or_cond_i_reg_424 <= or_cond_i_fu_277_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1)) | ((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op59_write_state2 == 1'b1)))) | ((dataIn_TVALID == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1))) & (tmp_nbreadreq_fu_86_p6 == 1'd1) & (cond_i_fu_205_p2 == 1'd0) & (dmp_fsmState_V == 1'd0) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        tmp_38_i_reg_420 <= tmp_38_i_fu_265_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1)) | ((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op59_write_state2 == 1'b1)))) | ((dataIn_TVALID == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1))) & (dmp_fsmState_V_load_load_fu_172_p1 == 1'd1) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        tmp_i_reg_428 <= tmp_i_fu_321_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1)) | ((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op59_write_state2 == 1'b1)))) | ((dataIn_TVALID == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1))) & (dmp_fsmState_V == 1'd0) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        tmp_reg_394 <= tmp_nbreadreq_fu_86_p6;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | ((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1)) | ((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op59_write_state2 == 1'b1))) & (1'b1 == ap_CS_iter1_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_iter1_fsm_state0) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_202)) begin
        if ((demorgan_fu_224_p2 == 1'd1)) begin
            ap_phi_mux_dmp_macType_V_loc_1_s_phi_fu_122_p4 = tmp_i_i_fu_250_p3;
        end else if ((demorgan_fu_224_p2 == 1'd0)) begin
            ap_phi_mux_dmp_macType_V_loc_1_s_phi_fu_122_p4 = dmp_macType_V;
        end else begin
            ap_phi_mux_dmp_macType_V_loc_1_s_phi_fu_122_p4 = ap_phi_reg_pp0_iter0_dmp_macType_V_loc_1_s_reg_119;
        end
    end else begin
        ap_phi_mux_dmp_macType_V_loc_1_s_phi_fu_122_p4 = ap_phi_reg_pp0_iter0_dmp_macType_V_loc_1_s_reg_119;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_244)) begin
        if ((tmp_last_V_2_fu_193_p1 == 1'd0)) begin
            ap_phi_mux_dmp_wordCount_V_flag_1_phi_fu_152_p4 = ap_phi_mux_dmp_wordCount_V_flag_phi_fu_131_p4;
        end else if ((tmp_last_V_2_fu_193_p1 == 1'd1)) begin
            ap_phi_mux_dmp_wordCount_V_flag_1_phi_fu_152_p4 = 1'd1;
        end else begin
            ap_phi_mux_dmp_wordCount_V_flag_1_phi_fu_152_p4 = ap_phi_reg_pp0_iter0_dmp_wordCount_V_flag_1_reg_149;
        end
    end else begin
        ap_phi_mux_dmp_wordCount_V_flag_1_phi_fu_152_p4 = ap_phi_reg_pp0_iter0_dmp_wordCount_V_flag_1_reg_149;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_244)) begin
        if ((cond_i_fu_205_p2 == 1'd0)) begin
            ap_phi_mux_dmp_wordCount_V_flag_phi_fu_131_p4 = tmp_36_i_fu_211_p2;
        end else if ((cond_i_fu_205_p2 == 1'd1)) begin
            ap_phi_mux_dmp_wordCount_V_flag_phi_fu_131_p4 = 1'd1;
        end else begin
            ap_phi_mux_dmp_wordCount_V_flag_phi_fu_131_p4 = ap_phi_reg_pp0_iter0_dmp_wordCount_V_flag_reg_128;
        end
    end else begin
        ap_phi_mux_dmp_wordCount_V_flag_phi_fu_131_p4 = ap_phi_reg_pp0_iter0_dmp_wordCount_V_flag_reg_128;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_244)) begin
        if ((tmp_last_V_2_fu_193_p1 == 1'd0)) begin
            ap_phi_mux_dmp_wordCount_V_new_1_phi_fu_164_p4 = ap_phi_mux_dmp_wordCount_V_new_s_phi_fu_141_p4;
        end else if ((tmp_last_V_2_fu_193_p1 == 1'd1)) begin
            ap_phi_mux_dmp_wordCount_V_new_1_phi_fu_164_p4 = 2'd0;
        end else begin
            ap_phi_mux_dmp_wordCount_V_new_1_phi_fu_164_p4 = ap_phi_reg_pp0_iter0_dmp_wordCount_V_new_1_reg_161;
        end
    end else begin
        ap_phi_mux_dmp_wordCount_V_new_1_phi_fu_164_p4 = ap_phi_reg_pp0_iter0_dmp_wordCount_V_new_1_reg_161;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_244)) begin
        if ((cond_i_fu_205_p2 == 1'd0)) begin
            ap_phi_mux_dmp_wordCount_V_new_s_phi_fu_141_p4 = 2'd2;
        end else if ((cond_i_fu_205_p2 == 1'd1)) begin
            ap_phi_mux_dmp_wordCount_V_new_s_phi_fu_141_p4 = 2'd1;
        end else begin
            ap_phi_mux_dmp_wordCount_V_new_s_phi_fu_141_p4 = ap_phi_reg_pp0_iter0_dmp_wordCount_V_new_s_reg_138;
        end
    end else begin
        ap_phi_mux_dmp_wordCount_V_new_s_phi_fu_141_p4 = ap_phi_reg_pp0_iter0_dmp_wordCount_V_new_s_reg_138;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_iter0_fsm_state1) & (real_start == 1'b1) & (ap_predicate_op10_read_state1 == 1'b1))) begin
        dataIn_TDATA_blk_n = dataIn_TVALID;
    end else begin
        dataIn_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1)) | ((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op59_write_state2 == 1'b1)))) | ((dataIn_TVALID == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1))) & (1'b1 == ap_CS_iter0_fsm_state1) & (ap_predicate_op10_read_state1 == 1'b1))) begin
        dataIn_TREADY = 1'b1;
    end else begin
        dataIn_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1)) | ((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op59_write_state2 == 1'b1)))) | ((dataIn_TVALID == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1))) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_iter1_fsm_state2) & (ap_predicate_op68_write_state2 == 1'b1)) | ((1'b1 == ap_CS_iter1_fsm_state2) & (ap_predicate_op59_write_state2 == 1'b1)))) begin
        ipDataFifo_V_blk_n = ipDataFifo_V_full_n;
    end else begin
        ipDataFifo_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_221)) begin
        if ((ap_predicate_op68_write_state2 == 1'b1)) begin
            ipDataFifo_V_din = tmp_118_fu_372_p5;
        end else if ((ap_predicate_op59_write_state2 == 1'b1)) begin
            ipDataFifo_V_din = tmp9_fu_345_p5;
        end else begin
            ipDataFifo_V_din = 'bx;
        end
    end else begin
        ipDataFifo_V_din = 'bx;
    end
end

always @ (*) begin
    if (((~((ap_done_reg == 1'b1) | ((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1)) | ((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op59_write_state2 == 1'b1))) & (1'b1 == ap_CS_iter1_fsm_state2) & (ap_predicate_op68_write_state2 == 1'b1)) | (~((ap_done_reg == 1'b1) | ((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1)) | ((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op59_write_state2 == 1'b1))) & (1'b1 == ap_CS_iter1_fsm_state2) & (ap_predicate_op59_write_state2 == 1'b1)))) begin
        ipDataFifo_V_write = 1'b1;
    end else begin
        ipDataFifo_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_iter0_fsm)
        ap_ST_iter0_fsm_state1 : begin
            ap_NS_iter0_fsm = ap_ST_iter0_fsm_state1;
        end
        default : begin
            ap_NS_iter0_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    case (ap_CS_iter1_fsm)
        ap_ST_iter1_fsm_state2 : begin
            if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((dataIn_TVALID == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1))) & ~((ap_done_reg == 1'b1) | ((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1)) | ((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op59_write_state2 == 1'b1))) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state2;
            end else if ((~((ap_done_reg == 1'b1) | ((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1)) | ((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op59_write_state2 == 1'b1))) & ((1'b0 == ap_CS_iter0_fsm_state1) | ((1'b1 == ap_CS_iter0_fsm_state1) & ((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((dataIn_TVALID == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1))))))) begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state0;
            end else begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state2;
            end
        end
        ap_ST_iter1_fsm_state0 : begin
            if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1)) | ((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op59_write_state2 == 1'b1)))) | ((dataIn_TVALID == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1))) & (1'b1 == ap_CS_iter0_fsm_state1))) begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state2;
            end else begin
                ap_NS_iter1_fsm = ap_ST_iter1_fsm_state0;
            end
        end
        default : begin
            ap_NS_iter1_fsm = 'bx;
        end
    endcase
end

assign ap_CS_iter0_fsm_state1 = ap_CS_iter0_fsm[32'd0];

assign ap_CS_iter1_fsm_state0 = ap_CS_iter1_fsm[32'd0];

assign ap_CS_iter1_fsm_state2 = ap_CS_iter1_fsm[32'd1];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((dataIn_TVALID == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1)) | ((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op59_write_state2 == 1'b1)));
end

always @ (*) begin
    ap_condition_100 = (~((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1)) | ((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op59_write_state2 == 1'b1)))) | ((dataIn_TVALID == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1))) & (1'b1 == ap_CS_iter0_fsm_state1));
end

always @ (*) begin
    ap_condition_155 = (~((real_start == 1'b0) | (ap_done_reg == 1'b1) | ((1'b1 == ap_CS_iter1_fsm_state2) & (((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1)) | ((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op59_write_state2 == 1'b1)))) | ((dataIn_TVALID == 1'b0) & (ap_predicate_op10_read_state1 == 1'b1))) & (tmp_nbreadreq_fu_86_p6 == 1'd1) & (dmp_fsmState_V == 1'd0) & (1'b1 == ap_CS_iter0_fsm_state1));
end

always @ (*) begin
    ap_condition_202 = ((tmp_nbreadreq_fu_86_p6 == 1'd1) & (cond_i_fu_205_p2 == 1'd0) & (dmp_fsmState_V == 1'd0) & (1'b1 == ap_CS_iter0_fsm_state1) & (real_start == 1'b1));
end

always @ (*) begin
    ap_condition_210 = ((tmp_last_V_2_fu_193_p1 == 1'd1) & (tmp_nbreadreq_fu_86_p6 == 1'd1) & (dmp_fsmState_V == 1'd0));
end

always @ (*) begin
    ap_condition_221 = (~((ap_done_reg == 1'b1) | ((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op68_write_state2 == 1'b1)) | ((ipDataFifo_V_full_n == 1'b0) & (ap_predicate_op59_write_state2 == 1'b1))) & (1'b1 == ap_CS_iter1_fsm_state2));
end

always @ (*) begin
    ap_condition_244 = ((tmp_nbreadreq_fu_86_p6 == 1'd1) & (dmp_fsmState_V == 1'd0) & (1'b1 == ap_CS_iter0_fsm_state1) & (real_start == 1'b1));
end

assign ap_phi_reg_pp0_iter0_dmp_macType_V_loc_1_s_reg_119 = 'bx;

assign ap_phi_reg_pp0_iter0_dmp_wordCount_V_flag_1_reg_149 = 'bx;

assign ap_phi_reg_pp0_iter0_dmp_wordCount_V_flag_reg_128 = 'bx;

assign ap_phi_reg_pp0_iter0_dmp_wordCount_V_new_1_reg_161 = 'bx;

assign ap_phi_reg_pp0_iter0_dmp_wordCount_V_new_s_reg_138 = 'bx;

always @ (*) begin
    ap_predicate_op10_read_state1 = ((tmp_nbreadreq_fu_86_p6 == 1'd1) & (dmp_fsmState_V == 1'd0));
end

always @ (*) begin
    ap_predicate_op59_write_state2 = ((tmp_reg_394 == 1'd1) & (or_cond_i_reg_424 == 1'd0) & (tmp_38_i_reg_420 == 1'd0) & (cond_i_reg_413 == 1'd0) & (dmp_fsmState_V_load_reg_384 == 1'd0));
end

always @ (*) begin
    ap_predicate_op68_write_state2 = ((dmp_fsmState_V_load_reg_384 == 1'd1) & (tmp_i_reg_428 == 1'd0));
end

assign ap_ready = internal_ap_ready;

assign cond_i_fu_205_p2 = ((dmp_wordCount_V == 2'd0) ? 1'b1 : 1'b0);

assign demorgan_fu_224_p2 = (tmp_37_i_fu_218_p2 & tmp_36_i_fu_211_p2);

assign dmp_fsmState_V_load_load_fu_172_p1 = dmp_fsmState_V;

assign or_cond_i_fu_277_p2 = (tmp_39_i_fu_271_p2 & tmp_36_i_fu_211_p2);

assign p_Result_i_i_15_fu_240_p4 = {{dataIn_TDATA[39:32]}};

assign p_Result_i_i_fu_230_p4 = {{dataIn_TDATA[47:40]}};

assign start_out = real_start;

assign storemerge_i_fu_293_p1 = tmp_35_i_fu_287_p2;

assign tmp9_fu_345_p5 = {{{{dmp_prevWord_user_V}, {dmp_prevWord_last_V}}, {dmp_prevWord_keep_V}}, {tmp_data_V_reg_388}};

assign tmp_10_fu_283_p1 = dataIn_TDATA[47:0];

assign tmp_118_fu_372_p5 = {{{{dmp_prevWord_user_V}, {dmp_prevWord_last_V}}, {dmp_prevWord_keep_V}}, {tmp_data_V_reg_388}};

assign tmp_35_i_fu_287_p2 = ((tmp_10_fu_283_p1 == myMacAddress_V) ? 1'b1 : 1'b0);

assign tmp_36_i_fu_211_p2 = ((dmp_wordCount_V == 2'd1) ? 1'b1 : 1'b0);

assign tmp_37_i_fu_218_p2 = ((dmp_macType_V != 16'd0) ? 1'b1 : 1'b0);

assign tmp_38_i_fu_265_p2 = ((ap_phi_mux_dmp_macType_V_loc_1_s_phi_fu_122_p4 == 16'd0) ? 1'b1 : 1'b0);

assign tmp_39_i_fu_271_p2 = ((dmp_prevWord_data_V == dataIn_TDATA) ? 1'b1 : 1'b0);

assign tmp_i_fu_321_p2 = ((dmp_macType_V == 16'd0) ? 1'b1 : 1'b0);

assign tmp_i_i_fu_250_p3 = {{p_Result_i_i_15_fu_240_p4}, {p_Result_i_i_fu_230_p4}};

assign tmp_last_V_2_fu_193_p1 = dataIn_TLAST;

assign tmp_nbreadreq_fu_86_p6 = dataIn_TVALID;

endmodule //detect_mac_protocol
