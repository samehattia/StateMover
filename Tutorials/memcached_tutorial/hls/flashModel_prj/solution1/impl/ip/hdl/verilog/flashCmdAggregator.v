// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module flashCmdAggregator (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        rdCmdIn_V_TDATA,
        rdCmdIn_V_TVALID,
        rdCmdIn_V_TREADY,
        wrCmdIn_V_TDATA,
        wrCmdIn_V_TVALID,
        wrCmdIn_V_TREADY,
        flashAggregateMemCmd_1_din,
        flashAggregateMemCmd_1_full_n,
        flashAggregateMemCmd_1_write
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [47:0] rdCmdIn_V_TDATA;
input   rdCmdIn_V_TVALID;
output   rdCmdIn_V_TREADY;
input  [47:0] wrCmdIn_V_TDATA;
input   wrCmdIn_V_TVALID;
output   wrCmdIn_V_TREADY;
output  [45:0] flashAggregateMemCmd_1_din;
input   flashAggregateMemCmd_1_full_n;
output   flashAggregateMemCmd_1_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg rdCmdIn_V_TREADY;
reg wrCmdIn_V_TREADY;
reg[45:0] flashAggregateMemCmd_1_din;
reg flashAggregateMemCmd_1_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    rdCmdIn_V_TDATA_blk_n;
wire   [0:0] tmp_nbreadreq_fu_36_p3;
reg    wrCmdIn_V_TDATA_blk_n;
wire   [0:0] tmp_4_nbreadreq_fu_44_p3;
reg    flashAggregateMemCmd_1_blk_n;
reg    ap_predicate_op9_read_state1;
reg    ap_predicate_op12_write_state1;
reg    ap_block_state1;
wire   [45:0] tmp_3_fu_75_p3;
wire   [45:0] tmp_1_fu_88_p3;
wire   [44:0] tmp_2_fu_71_p1;
wire   [44:0] tmp19_fu_84_p1;
reg   [0:0] ap_NS_fsm;
reg    ap_condition_69;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((flashAggregateMemCmd_1_full_n == 1'b0) & (ap_predicate_op12_write_state1 == 1'b1)) | ((wrCmdIn_V_TVALID == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1)) | ((tmp_nbreadreq_fu_36_p3 == 1'd1) & (rdCmdIn_V_TVALID == 1'b0)) | ((tmp_nbreadreq_fu_36_p3 == 1'd1) & (flashAggregateMemCmd_1_full_n == 1'b0))) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((flashAggregateMemCmd_1_full_n == 1'b0) & (ap_predicate_op12_write_state1 == 1'b1)) | ((wrCmdIn_V_TVALID == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1)) | ((tmp_nbreadreq_fu_36_p3 == 1'd1) & (rdCmdIn_V_TVALID == 1'b0)) | ((tmp_nbreadreq_fu_36_p3 == 1'd1) & (flashAggregateMemCmd_1_full_n == 1'b0))) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((flashAggregateMemCmd_1_full_n == 1'b0) & (ap_predicate_op12_write_state1 == 1'b1)) | ((wrCmdIn_V_TVALID == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1)) | ((tmp_nbreadreq_fu_36_p3 == 1'd1) & (rdCmdIn_V_TVALID == 1'b0)) | ((tmp_nbreadreq_fu_36_p3 == 1'd1) & (flashAggregateMemCmd_1_full_n == 1'b0))) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (tmp_4_nbreadreq_fu_44_p3 == 1'd1) & (tmp_nbreadreq_fu_36_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state1)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (tmp_nbreadreq_fu_36_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state1)))) begin
        flashAggregateMemCmd_1_blk_n = flashAggregateMemCmd_1_full_n;
    end else begin
        flashAggregateMemCmd_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_69)) begin
        if ((tmp_nbreadreq_fu_36_p3 == 1'd1)) begin
            flashAggregateMemCmd_1_din = tmp_1_fu_88_p3;
        end else if ((ap_predicate_op12_write_state1 == 1'b1)) begin
            flashAggregateMemCmd_1_din = tmp_3_fu_75_p3;
        end else begin
            flashAggregateMemCmd_1_din = 'bx;
        end
    end else begin
        flashAggregateMemCmd_1_din = 'bx;
    end
end

always @ (*) begin
    if (((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((flashAggregateMemCmd_1_full_n == 1'b0) & (ap_predicate_op12_write_state1 == 1'b1)) | ((wrCmdIn_V_TVALID == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1)) | ((tmp_nbreadreq_fu_36_p3 == 1'd1) & (rdCmdIn_V_TVALID == 1'b0)) | ((tmp_nbreadreq_fu_36_p3 == 1'd1) & (flashAggregateMemCmd_1_full_n == 1'b0))) & (1'b1 == ap_CS_fsm_state1) & (ap_predicate_op12_write_state1 == 1'b1)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((flashAggregateMemCmd_1_full_n == 1'b0) & (ap_predicate_op12_write_state1 == 1'b1)) | ((wrCmdIn_V_TVALID == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1)) | ((tmp_nbreadreq_fu_36_p3 == 1'd1) & (rdCmdIn_V_TVALID == 1'b0)) | ((tmp_nbreadreq_fu_36_p3 == 1'd1) & (flashAggregateMemCmd_1_full_n == 1'b0))) & (tmp_nbreadreq_fu_36_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state1)))) begin
        flashAggregateMemCmd_1_write = 1'b1;
    end else begin
        flashAggregateMemCmd_1_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (tmp_nbreadreq_fu_36_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        rdCmdIn_V_TDATA_blk_n = rdCmdIn_V_TVALID;
    end else begin
        rdCmdIn_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((flashAggregateMemCmd_1_full_n == 1'b0) & (ap_predicate_op12_write_state1 == 1'b1)) | ((wrCmdIn_V_TVALID == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1)) | ((tmp_nbreadreq_fu_36_p3 == 1'd1) & (rdCmdIn_V_TVALID == 1'b0)) | ((tmp_nbreadreq_fu_36_p3 == 1'd1) & (flashAggregateMemCmd_1_full_n == 1'b0))) & (tmp_nbreadreq_fu_36_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        rdCmdIn_V_TREADY = 1'b1;
    end else begin
        rdCmdIn_V_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (tmp_4_nbreadreq_fu_44_p3 == 1'd1) & (tmp_nbreadreq_fu_36_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        wrCmdIn_V_TDATA_blk_n = wrCmdIn_V_TVALID;
    end else begin
        wrCmdIn_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((flashAggregateMemCmd_1_full_n == 1'b0) & (ap_predicate_op12_write_state1 == 1'b1)) | ((wrCmdIn_V_TVALID == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1)) | ((tmp_nbreadreq_fu_36_p3 == 1'd1) & (rdCmdIn_V_TVALID == 1'b0)) | ((tmp_nbreadreq_fu_36_p3 == 1'd1) & (flashAggregateMemCmd_1_full_n == 1'b0))) & (1'b1 == ap_CS_fsm_state1) & (ap_predicate_op9_read_state1 == 1'b1))) begin
        wrCmdIn_V_TREADY = 1'b1;
    end else begin
        wrCmdIn_V_TREADY = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((flashAggregateMemCmd_1_full_n == 1'b0) & (ap_predicate_op12_write_state1 == 1'b1)) | ((wrCmdIn_V_TVALID == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1)) | ((tmp_nbreadreq_fu_36_p3 == 1'd1) & (rdCmdIn_V_TVALID == 1'b0)) | ((tmp_nbreadreq_fu_36_p3 == 1'd1) & (flashAggregateMemCmd_1_full_n == 1'b0)));
end

always @ (*) begin
    ap_condition_69 = (~((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((flashAggregateMemCmd_1_full_n == 1'b0) & (ap_predicate_op12_write_state1 == 1'b1)) | ((wrCmdIn_V_TVALID == 1'b0) & (ap_predicate_op9_read_state1 == 1'b1)) | ((tmp_nbreadreq_fu_36_p3 == 1'd1) & (rdCmdIn_V_TVALID == 1'b0)) | ((tmp_nbreadreq_fu_36_p3 == 1'd1) & (flashAggregateMemCmd_1_full_n == 1'b0))) & (1'b1 == ap_CS_fsm_state1));
end

always @ (*) begin
    ap_predicate_op12_write_state1 = ((tmp_4_nbreadreq_fu_44_p3 == 1'd1) & (tmp_nbreadreq_fu_36_p3 == 1'd0));
end

always @ (*) begin
    ap_predicate_op9_read_state1 = ((tmp_4_nbreadreq_fu_44_p3 == 1'd1) & (tmp_nbreadreq_fu_36_p3 == 1'd0));
end

assign tmp19_fu_84_p1 = rdCmdIn_V_TDATA[44:0];

assign tmp_1_fu_88_p3 = {{1'd0}, {tmp19_fu_84_p1}};

assign tmp_2_fu_71_p1 = wrCmdIn_V_TDATA[44:0];

assign tmp_3_fu_75_p3 = {{1'd1}, {tmp_2_fu_71_p1}};

assign tmp_4_nbreadreq_fu_44_p3 = wrCmdIn_V_TVALID;

assign tmp_nbreadreq_fu_36_p3 = rdCmdIn_V_TVALID;

endmodule //flashCmdAggregator
