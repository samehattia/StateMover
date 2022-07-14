// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module memcachedPipeline_splitter (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        hashTable2splitter_V_dout,
        hashTable2splitter_V_empty_n,
        hashTable2splitter_V_read,
        splitter2valueStoreFlash_V_din,
        splitter2valueStoreFlash_V_full_n,
        splitter2valueStoreFlash_V_write,
        splitter2valueStoreDram_V_din,
        splitter2valueStoreDram_V_full_n,
        splitter2valueStoreDram_V_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_pp0_stg0_fsm_0 = 1'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_7C = 32'b1111100;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_27 = 32'b100111;
parameter    ap_const_lv32_801 = 32'b100000000001;
parameter    ap_const_lv32_7F = 32'b1111111;
parameter    ap_const_lv256_lc_1 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [255:0] hashTable2splitter_V_dout;
input   hashTable2splitter_V_empty_n;
output   hashTable2splitter_V_read;
output  [255:0] splitter2valueStoreFlash_V_din;
input   splitter2valueStoreFlash_V_full_n;
output   splitter2valueStoreFlash_V_write;
output  [255:0] splitter2valueStoreDram_V_din;
input   splitter2valueStoreDram_V_full_n;
output   splitter2valueStoreDram_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg hashTable2splitter_V_read;
reg splitter2valueStoreFlash_V_write;
reg splitter2valueStoreDram_V_write;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm = 1'b1;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_0;
reg    ap_sig_bdd_20;
wire    ap_reg_ppiten_pp0_it0;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
reg    ap_reg_ppiten_pp0_it2 = 1'b0;
wire   [0:0] tmp_nbreadreq_fu_128_p3;
reg    ap_sig_bdd_52;
reg   [0:0] tmp_reg_278 = 1'b0;
reg   [0:0] ap_reg_ppstg_tmp_reg_278_pp0_it1 = 1'b0;
reg   [0:0] is_validFlag_loc_reg_168 = 1'b0;
reg   [0:0] dramOrFlash_V_loc_reg_180 = 1'b0;
reg    ap_sig_bdd_81;
reg   [0:0] is_validFlag = 1'b0;
reg   [0:0] dramOrFlash_V = 1'b0;
reg   [255:0] tmp112_reg_282 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
reg   [255:0] ap_reg_ppstg_tmp112_reg_282_pp0_it1 = 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
wire   [0:0] tmp_SOP_V_fu_212_p3;
reg   [0:0] tmp_SOP_V_reg_289 = 1'b0;
wire   [0:0] not_s_fu_230_p2;
reg   [0:0] not_s_reg_293 = 1'b0;
wire   [0:0] ap_reg_phiprechg_is_validFlag_flag_reg_156pp0_it0;
reg   [0:0] ap_reg_phiprechg_is_validFlag_flag_reg_156pp0_it1 = 1'b0;
reg   [0:0] is_validFlag_flag_phi_fu_160_p4;
wire   [0:0] ap_reg_phiprechg_is_validFlag_loc_reg_168pp0_it0;
reg   [0:0] ap_reg_phiprechg_is_validFlag_loc_reg_168pp0_it1 = 1'b0;
reg   [0:0] is_validFlag_loc_phi_fu_172_p4;
wire   [0:0] ap_reg_phiprechg_dramOrFlash_V_loc_reg_180pp0_it0;
reg   [0:0] ap_reg_phiprechg_dramOrFlash_V_loc_reg_180pp0_it1 = 1'b0;
wire   [0:0] p_is_validFlag_flag_fu_258_p2;
wire   [0:0] ap_reg_phiprechg_is_validFlag_flag_2_reg_190pp0_it1;
reg   [0:0] is_validFlag_flag_2_phi_fu_193_p4;
wire   [0:0] not_din_EOP_V_assign_load_2_ne_fu_265_p2;
wire   [0:0] ap_reg_phiprechg_is_validFlag_new_2_reg_201pp0_it1;
reg   [0:0] is_validFlag_new_2_phi_fu_204_p4;
wire   [31:0] p_Result_s_fu_220_p4;
wire   [0:0] tmp_2_fu_251_p3;
reg   [0:0] ap_NS_fsm;
reg    ap_sig_pprstidle_pp0;
reg    ap_sig_bdd_112;
reg    ap_sig_bdd_88;
reg    ap_sig_bdd_123;
reg    ap_sig_bdd_117;
reg    ap_sig_bdd_160;




/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_pp0_stg0_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// ap_done_reg assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_ap_done_reg
    if (ap_rst == 1'b1) begin
        ap_done_reg <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_continue)) begin
            ap_done_reg <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_81 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// ap_reg_phiprechg_dramOrFlash_V_loc_reg_180pp0_it1 assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_ap_reg_phiprechg_dramOrFlash_V_loc_reg_180pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_phiprechg_dramOrFlash_V_loc_reg_180pp0_it1 <= ap_const_lv1_0;
    end else begin
        if (ap_sig_bdd_88) begin
            if (ap_sig_bdd_112) begin
                ap_reg_phiprechg_dramOrFlash_V_loc_reg_180pp0_it1 <= not_s_fu_230_p2;
            end else if ((ap_true == ap_true)) begin
                ap_reg_phiprechg_dramOrFlash_V_loc_reg_180pp0_it1 <= ap_reg_phiprechg_dramOrFlash_V_loc_reg_180pp0_it0;
            end
        end
    end
end

/// ap_reg_phiprechg_is_validFlag_flag_reg_156pp0_it1 assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_ap_reg_phiprechg_is_validFlag_flag_reg_156pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_phiprechg_is_validFlag_flag_reg_156pp0_it1 <= ap_const_lv1_0;
    end else begin
        if (ap_sig_bdd_88) begin
            if (ap_sig_bdd_112) begin
                ap_reg_phiprechg_is_validFlag_flag_reg_156pp0_it1 <= ap_const_lv1_1;
            end else if ((ap_true == ap_true)) begin
                ap_reg_phiprechg_is_validFlag_flag_reg_156pp0_it1 <= ap_reg_phiprechg_is_validFlag_flag_reg_156pp0_it0;
            end
        end
    end
end

/// ap_reg_phiprechg_is_validFlag_loc_reg_168pp0_it1 assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_ap_reg_phiprechg_is_validFlag_loc_reg_168pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_phiprechg_is_validFlag_loc_reg_168pp0_it1 <= ap_const_lv1_0;
    end else begin
        if (ap_sig_bdd_88) begin
            if (ap_sig_bdd_112) begin
                ap_reg_phiprechg_is_validFlag_loc_reg_168pp0_it1 <= ap_const_lv1_1;
            end else if ((ap_true == ap_true)) begin
                ap_reg_phiprechg_is_validFlag_loc_reg_168pp0_it1 <= ap_reg_phiprechg_is_validFlag_loc_reg_168pp0_it0;
            end
        end
    end
end

/// ap_reg_ppiten_pp0_it1 assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_81 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
            ap_reg_ppiten_pp0_it1 <= ap_reg_ppiten_pp0_it0;
        end
    end
end

/// ap_reg_ppiten_pp0_it2 assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it2
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it2 <= ap_const_logic_0;
    end else begin
        if (~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_81 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))) begin
            ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
        end
    end
end

/// ap_reg_ppstg_tmp112_reg_282_pp0_it1 assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_ap_reg_ppstg_tmp112_reg_282_pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppstg_tmp112_reg_282_pp0_it1 <= ap_const_lv256_lc_1;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_81 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
            ap_reg_ppstg_tmp112_reg_282_pp0_it1 <= tmp112_reg_282;
        end
    end
end

/// ap_reg_ppstg_tmp_reg_278_pp0_it1 assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_ap_reg_ppstg_tmp_reg_278_pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppstg_tmp_reg_278_pp0_it1 <= ap_const_lv1_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_81 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
            ap_reg_ppstg_tmp_reg_278_pp0_it1 <= tmp_reg_278;
        end
    end
end

/// dramOrFlash_V assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_dramOrFlash_V
    if (ap_rst == 1'b1) begin
        dramOrFlash_V <= ap_const_lv1_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_81 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))) & ~(ap_const_lv1_0 == tmp_reg_278) & ~(ap_const_lv1_0 == tmp_SOP_V_reg_289))) begin
            dramOrFlash_V <= not_s_reg_293;
        end
    end
end

/// dramOrFlash_V_loc_reg_180 assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_dramOrFlash_V_loc_reg_180
    if (ap_rst == 1'b1) begin
        dramOrFlash_V_loc_reg_180 <= ap_const_lv1_0;
    end else begin
        if (ap_sig_bdd_117) begin
            if (ap_sig_bdd_123) begin
                dramOrFlash_V_loc_reg_180 <= dramOrFlash_V;
            end else if ((ap_true == ap_true)) begin
                dramOrFlash_V_loc_reg_180 <= ap_reg_phiprechg_dramOrFlash_V_loc_reg_180pp0_it1;
            end
        end
    end
end

/// is_validFlag assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_is_validFlag
    if (ap_rst == 1'b1) begin
        is_validFlag <= ap_const_lv1_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_81 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))) & ~(ap_const_lv1_0 == tmp_reg_278) & ~(ap_const_lv1_0 == is_validFlag_flag_2_phi_fu_193_p4))) begin
            is_validFlag <= is_validFlag_new_2_phi_fu_204_p4;
        end
    end
end

/// is_validFlag_loc_reg_168 assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_is_validFlag_loc_reg_168
    if (ap_rst == 1'b1) begin
        is_validFlag_loc_reg_168 <= ap_const_lv1_0;
    end else begin
        if (ap_sig_bdd_117) begin
            if (ap_sig_bdd_123) begin
                is_validFlag_loc_reg_168 <= is_validFlag;
            end else if ((ap_true == ap_true)) begin
                is_validFlag_loc_reg_168 <= ap_reg_phiprechg_is_validFlag_loc_reg_168pp0_it1;
            end
        end
    end
end

/// not_s_reg_293 assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_not_s_reg_293
    if (ap_rst == 1'b1) begin
        not_s_reg_293 <= ap_const_lv1_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(tmp_nbreadreq_fu_128_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_81 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))) & ~(ap_const_lv1_0 == tmp_SOP_V_fu_212_p3))) begin
            not_s_reg_293 <= not_s_fu_230_p2;
        end
    end
end

/// tmp112_reg_282 assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_tmp112_reg_282
    if (ap_rst == 1'b1) begin
        tmp112_reg_282 <= ap_const_lv256_lc_1;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(tmp_nbreadreq_fu_128_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_81 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
            tmp112_reg_282 <= hashTable2splitter_V_dout;
        end
    end
end

/// tmp_SOP_V_reg_289 assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_tmp_SOP_V_reg_289
    if (ap_rst == 1'b1) begin
        tmp_SOP_V_reg_289 <= ap_const_lv1_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(tmp_nbreadreq_fu_128_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_81 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
            tmp_SOP_V_reg_289 <= hashTable2splitter_V_dout[ap_const_lv32_7C];
        end
    end
end

/// tmp_reg_278 assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_tmp_reg_278
    if (ap_rst == 1'b1) begin
        tmp_reg_278 <= ap_const_lv1_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_81 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
            tmp_reg_278 <= tmp_nbreadreq_fu_128_p3;
        end
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_52 or ap_sig_bdd_81)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_81 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it1) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it2))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_52 or ap_sig_bdd_81)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_81 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp0_stg0_fsm_0 assign process. ///
always @ (ap_sig_bdd_20)
begin
    if (ap_sig_bdd_20) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_pprstidle_pp0 assign process. ///
always @ (ap_start or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1)
begin
    if (((ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it1) & (ap_const_logic_0 == ap_start))) begin
        ap_sig_pprstidle_pp0 = ap_const_logic_1;
    end else begin
        ap_sig_pprstidle_pp0 = ap_const_logic_0;
    end
end

/// hashTable2splitter_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or tmp_nbreadreq_fu_128_p3 or ap_sig_bdd_52 or ap_sig_bdd_81)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(tmp_nbreadreq_fu_128_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_81 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        hashTable2splitter_V_read = ap_const_logic_1;
    end else begin
        hashTable2splitter_V_read = ap_const_logic_0;
    end
end

/// is_validFlag_flag_2_phi_fu_193_p4 assign process. ///
always @ (is_validFlag_flag_phi_fu_160_p4 or is_validFlag_loc_phi_fu_172_p4 or p_is_validFlag_flag_fu_258_p2 or ap_reg_phiprechg_is_validFlag_flag_2_reg_190pp0_it1 or ap_sig_bdd_160)
begin
    if (ap_sig_bdd_160) begin
        if ((ap_const_lv1_0 == is_validFlag_loc_phi_fu_172_p4)) begin
            is_validFlag_flag_2_phi_fu_193_p4 = is_validFlag_flag_phi_fu_160_p4;
        end else if (~(ap_const_lv1_0 == is_validFlag_loc_phi_fu_172_p4)) begin
            is_validFlag_flag_2_phi_fu_193_p4 = p_is_validFlag_flag_fu_258_p2;
        end else begin
            is_validFlag_flag_2_phi_fu_193_p4 = ap_reg_phiprechg_is_validFlag_flag_2_reg_190pp0_it1;
        end
    end else begin
        is_validFlag_flag_2_phi_fu_193_p4 = ap_reg_phiprechg_is_validFlag_flag_2_reg_190pp0_it1;
    end
end

/// is_validFlag_flag_phi_fu_160_p4 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it1 or tmp_reg_278 or tmp_SOP_V_reg_289 or ap_reg_phiprechg_is_validFlag_flag_reg_156pp0_it1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (ap_const_lv1_0 == tmp_SOP_V_reg_289) & ~(ap_const_lv1_0 == tmp_reg_278))) begin
        is_validFlag_flag_phi_fu_160_p4 = ap_const_lv1_0;
    end else begin
        is_validFlag_flag_phi_fu_160_p4 = ap_reg_phiprechg_is_validFlag_flag_reg_156pp0_it1;
    end
end

/// is_validFlag_loc_phi_fu_172_p4 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it1 or tmp_reg_278 or is_validFlag or tmp_SOP_V_reg_289 or ap_reg_phiprechg_is_validFlag_loc_reg_168pp0_it1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (ap_const_lv1_0 == tmp_SOP_V_reg_289) & ~(ap_const_lv1_0 == tmp_reg_278))) begin
        is_validFlag_loc_phi_fu_172_p4 = is_validFlag;
    end else begin
        is_validFlag_loc_phi_fu_172_p4 = ap_reg_phiprechg_is_validFlag_loc_reg_168pp0_it1;
    end
end

/// is_validFlag_new_2_phi_fu_204_p4 assign process. ///
always @ (is_validFlag_loc_phi_fu_172_p4 or not_din_EOP_V_assign_load_2_ne_fu_265_p2 or ap_reg_phiprechg_is_validFlag_new_2_reg_201pp0_it1 or ap_sig_bdd_160)
begin
    if (ap_sig_bdd_160) begin
        if ((ap_const_lv1_0 == is_validFlag_loc_phi_fu_172_p4)) begin
            is_validFlag_new_2_phi_fu_204_p4 = ap_const_lv1_1;
        end else if (~(ap_const_lv1_0 == is_validFlag_loc_phi_fu_172_p4)) begin
            is_validFlag_new_2_phi_fu_204_p4 = not_din_EOP_V_assign_load_2_ne_fu_265_p2;
        end else begin
            is_validFlag_new_2_phi_fu_204_p4 = ap_reg_phiprechg_is_validFlag_new_2_reg_201pp0_it1;
        end
    end else begin
        is_validFlag_new_2_phi_fu_204_p4 = ap_reg_phiprechg_is_validFlag_new_2_reg_201pp0_it1;
    end
end

/// splitter2valueStoreDram_V_write assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_52 or ap_reg_ppstg_tmp_reg_278_pp0_it1 or is_validFlag_loc_reg_168 or dramOrFlash_V_loc_reg_180 or ap_sig_bdd_81)
begin
    if ((~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_278_pp0_it1) & ~(ap_const_lv1_0 == is_validFlag_loc_reg_168) & ~(ap_const_lv1_0 == dramOrFlash_V_loc_reg_180) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_81 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        splitter2valueStoreDram_V_write = ap_const_logic_1;
    end else begin
        splitter2valueStoreDram_V_write = ap_const_logic_0;
    end
end

/// splitter2valueStoreFlash_V_write assign process. ///
always @ (ap_done_reg or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_52 or ap_reg_ppstg_tmp_reg_278_pp0_it1 or is_validFlag_loc_reg_168 or dramOrFlash_V_loc_reg_180 or ap_sig_bdd_81)
begin
    if ((~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_278_pp0_it1) & ~(ap_const_lv1_0 == is_validFlag_loc_reg_168) & (ap_const_lv1_0 == dramOrFlash_V_loc_reg_180) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_81 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))))) begin
        splitter2valueStoreFlash_V_write = ap_const_logic_1;
    end else begin
        splitter2valueStoreFlash_V_write = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_done_reg or ap_CS_fsm or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_52 or ap_sig_bdd_81 or ap_sig_pprstidle_pp0)
begin
    case (ap_CS_fsm)
        ap_ST_pp0_stg0_fsm_0 : 
        begin
            ap_NS_fsm = ap_ST_pp0_stg0_fsm_0;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_reg_phiprechg_dramOrFlash_V_loc_reg_180pp0_it0 = 'bx;
assign ap_reg_phiprechg_is_validFlag_flag_2_reg_190pp0_it1 = 'bx;
assign ap_reg_phiprechg_is_validFlag_flag_reg_156pp0_it0 = 'bx;
assign ap_reg_phiprechg_is_validFlag_loc_reg_168pp0_it0 = 'bx;
assign ap_reg_phiprechg_is_validFlag_new_2_reg_201pp0_it1 = 'bx;
assign ap_reg_ppiten_pp0_it0 = ap_start;

/// ap_sig_bdd_112 assign process. ///
always @ (tmp_nbreadreq_fu_128_p3 or tmp_SOP_V_fu_212_p3)
begin
    ap_sig_bdd_112 = (~(tmp_nbreadreq_fu_128_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_SOP_V_fu_212_p3));
end

/// ap_sig_bdd_117 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_52 or ap_sig_bdd_81)
begin
    ap_sig_bdd_117 = ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_81 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))));
end

/// ap_sig_bdd_123 assign process. ///
always @ (tmp_reg_278 or tmp_SOP_V_reg_289)
begin
    ap_sig_bdd_123 = ((ap_const_lv1_0 == tmp_SOP_V_reg_289) & ~(ap_const_lv1_0 == tmp_reg_278));
end

/// ap_sig_bdd_160 assign process. ///
always @ (ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it1 or tmp_reg_278)
begin
    ap_sig_bdd_160 = ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_const_lv1_0 == tmp_reg_278));
end

/// ap_sig_bdd_20 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_20 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_52 assign process. ///
always @ (ap_start or ap_done_reg or hashTable2splitter_V_empty_n or tmp_nbreadreq_fu_128_p3)
begin
    ap_sig_bdd_52 = (((hashTable2splitter_V_empty_n == ap_const_logic_0) & ~(tmp_nbreadreq_fu_128_p3 == ap_const_lv1_0)) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_81 assign process. ///
always @ (splitter2valueStoreFlash_V_full_n or ap_reg_ppstg_tmp_reg_278_pp0_it1 or is_validFlag_loc_reg_168 or dramOrFlash_V_loc_reg_180 or splitter2valueStoreDram_V_full_n)
begin
    ap_sig_bdd_81 = (((splitter2valueStoreFlash_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_278_pp0_it1) & ~(ap_const_lv1_0 == is_validFlag_loc_reg_168) & (ap_const_lv1_0 == dramOrFlash_V_loc_reg_180)) | (~(ap_const_lv1_0 == ap_reg_ppstg_tmp_reg_278_pp0_it1) & ~(ap_const_lv1_0 == is_validFlag_loc_reg_168) & (splitter2valueStoreDram_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == dramOrFlash_V_loc_reg_180)));
end

/// ap_sig_bdd_88 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it2 or ap_sig_bdd_52 or ap_sig_bdd_81)
begin
    ap_sig_bdd_88 = ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_52) | (ap_sig_bdd_81 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2))));
end
assign not_din_EOP_V_assign_load_2_ne_fu_265_p2 = (tmp_2_fu_251_p3 ^ ap_const_lv1_1);
assign not_s_fu_230_p2 = (p_Result_s_fu_220_p4 < ap_const_lv32_801? 1'b1: 1'b0);
assign p_Result_s_fu_220_p4 = {{hashTable2splitter_V_dout[ap_const_lv32_27 : ap_const_lv32_8]}};
assign p_is_validFlag_flag_fu_258_p2 = (tmp_2_fu_251_p3 | is_validFlag_flag_phi_fu_160_p4);
assign splitter2valueStoreDram_V_din = ap_reg_ppstg_tmp112_reg_282_pp0_it1;
assign splitter2valueStoreFlash_V_din = ap_reg_ppstg_tmp112_reg_282_pp0_it1;
assign tmp_2_fu_251_p3 = tmp112_reg_282[ap_const_lv32_7F];
assign tmp_SOP_V_fu_212_p3 = hashTable2splitter_V_dout[ap_const_lv32_7C];
assign tmp_nbreadreq_fu_128_p3 = hashTable2splitter_V_empty_n;


endmodule //memcachedPipeline_splitter

