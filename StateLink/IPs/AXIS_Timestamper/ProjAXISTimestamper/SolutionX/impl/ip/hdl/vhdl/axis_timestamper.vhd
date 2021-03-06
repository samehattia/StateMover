-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity axis_timestamper is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    data_in_TDATA : IN STD_LOGIC_VECTOR (63 downto 0);
    data_in_TVALID : IN STD_LOGIC;
    data_in_TREADY : OUT STD_LOGIC;
    data_in_TKEEP : IN STD_LOGIC_VECTOR (7 downto 0);
    data_in_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    data_out_TDATA : OUT STD_LOGIC_VECTOR (63 downto 0);
    data_out_TVALID : OUT STD_LOGIC;
    data_out_TREADY : IN STD_LOGIC;
    data_out_TKEEP : OUT STD_LOGIC_VECTOR (7 downto 0);
    data_out_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    start_V : IN STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of axis_timestamper is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "axis_timestamper,hls_ip_2018_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xcku040-ffva1156-2-e,HLS_INPUT_CLOCK=3.300000,HLS_INPUT_ARCH=pipeline,HLS_SYN_CLOCK=2.030000,HLS_SYN_LAT=0,HLS_SYN_TPT=1,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=66,HLS_SYN_LUT=212,HLS_VERSION=2018_3}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";

    signal ap_rst_n_inv : STD_LOGIC;
    signal timestamp_V : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    signal timestamp_flag_V : STD_LOGIC_VECTOR (0 downto 0) := "1";
    signal data_in_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal tmp_1_nbreadreq_fu_70_p5 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_2_nbwritereq_fu_82_p5 : STD_LOGIC_VECTOR (0 downto 0);
    signal data_out_TDATA_blk_n : STD_LOGIC;
    signal out_word_data_V_fu_129_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_predicate_op26_read_state1 : BOOLEAN;
    signal ap_block_state1 : BOOLEAN;
    signal ap_predicate_op30_write_state1 : BOOLEAN;
    signal ap_predicate_op35_write_state1 : BOOLEAN;
    signal ap_block_state1_io : BOOLEAN;
    signal tmp_last_V_fu_158_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_fu_123_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_87 : BOOLEAN;
    signal ap_condition_125 : BOOLEAN;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    timestamp_flag_V_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_125)) then
                if ((timestamp_flag_V = ap_const_lv1_1)) then 
                    timestamp_flag_V <= ap_const_lv1_0;
                elsif (((timestamp_flag_V = ap_const_lv1_0) and (tmp_last_V_fu_158_p1 = ap_const_lv1_1))) then 
                    timestamp_flag_V <= ap_const_lv1_1;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_const_boolean_1 = ap_block_state1_io) or ((data_in_TVALID = ap_const_logic_0) and (ap_predicate_op26_read_state1 = ap_const_boolean_1)))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                timestamp_V <= out_word_data_V_fu_129_p3;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (data_in_TVALID, ap_CS_fsm, ap_CS_fsm_state1, ap_predicate_op26_read_state1, ap_block_state1_io)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    ap_block_state1_assign_proc : process(data_in_TVALID, ap_predicate_op26_read_state1)
    begin
                ap_block_state1 <= ((data_in_TVALID = ap_const_logic_0) and (ap_predicate_op26_read_state1 = ap_const_boolean_1));
    end process;


    ap_block_state1_io_assign_proc : process(data_out_TREADY, ap_predicate_op30_write_state1, ap_predicate_op35_write_state1)
    begin
                ap_block_state1_io <= (((data_out_TREADY = ap_const_logic_0) and (ap_predicate_op35_write_state1 = ap_const_boolean_1)) or ((data_out_TREADY = ap_const_logic_0) and (ap_predicate_op30_write_state1 = ap_const_boolean_1)));
    end process;


    ap_condition_125_assign_proc : process(data_in_TVALID, ap_CS_fsm_state1, tmp_1_nbreadreq_fu_70_p5, tmp_2_nbwritereq_fu_82_p5, ap_predicate_op26_read_state1, ap_block_state1_io)
    begin
                ap_condition_125 <= (not(((ap_const_boolean_1 = ap_block_state1_io) or ((data_in_TVALID = ap_const_logic_0) and (ap_predicate_op26_read_state1 = ap_const_boolean_1)))) and (tmp_2_nbwritereq_fu_82_p5 = ap_const_lv1_1) and (tmp_1_nbreadreq_fu_70_p5 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1));
    end process;


    ap_condition_87_assign_proc : process(data_in_TVALID, ap_CS_fsm_state1, ap_predicate_op26_read_state1)
    begin
                ap_condition_87 <= (not(((data_in_TVALID = ap_const_logic_0) and (ap_predicate_op26_read_state1 = ap_const_boolean_1))) and (ap_const_logic_1 = ap_CS_fsm_state1));
    end process;


    ap_predicate_op26_read_state1_assign_proc : process(timestamp_flag_V, tmp_1_nbreadreq_fu_70_p5, tmp_2_nbwritereq_fu_82_p5)
    begin
                ap_predicate_op26_read_state1 <= ((timestamp_flag_V = ap_const_lv1_0) and (tmp_2_nbwritereq_fu_82_p5 = ap_const_lv1_1) and (tmp_1_nbreadreq_fu_70_p5 = ap_const_lv1_1));
    end process;


    ap_predicate_op30_write_state1_assign_proc : process(timestamp_flag_V, tmp_1_nbreadreq_fu_70_p5, tmp_2_nbwritereq_fu_82_p5)
    begin
                ap_predicate_op30_write_state1 <= ((timestamp_flag_V = ap_const_lv1_0) and (tmp_2_nbwritereq_fu_82_p5 = ap_const_lv1_1) and (tmp_1_nbreadreq_fu_70_p5 = ap_const_lv1_1));
    end process;


    ap_predicate_op35_write_state1_assign_proc : process(timestamp_flag_V, tmp_1_nbreadreq_fu_70_p5, tmp_2_nbwritereq_fu_82_p5)
    begin
                ap_predicate_op35_write_state1 <= ((timestamp_flag_V = ap_const_lv1_1) and (tmp_2_nbwritereq_fu_82_p5 = ap_const_lv1_1) and (tmp_1_nbreadreq_fu_70_p5 = ap_const_lv1_1));
    end process;


    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;


    data_in_TDATA_blk_n_assign_proc : process(data_in_TVALID, timestamp_flag_V, ap_CS_fsm_state1, tmp_1_nbreadreq_fu_70_p5, tmp_2_nbwritereq_fu_82_p5)
    begin
        if (((timestamp_flag_V = ap_const_lv1_0) and (tmp_2_nbwritereq_fu_82_p5 = ap_const_lv1_1) and (tmp_1_nbreadreq_fu_70_p5 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            data_in_TDATA_blk_n <= data_in_TVALID;
        else 
            data_in_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    data_in_TREADY_assign_proc : process(data_in_TVALID, ap_CS_fsm_state1, ap_predicate_op26_read_state1, ap_block_state1_io)
    begin
        if ((not(((ap_const_boolean_1 = ap_block_state1_io) or ((data_in_TVALID = ap_const_logic_0) and (ap_predicate_op26_read_state1 = ap_const_boolean_1)))) and (ap_predicate_op26_read_state1 = ap_const_boolean_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            data_in_TREADY <= ap_const_logic_1;
        else 
            data_in_TREADY <= ap_const_logic_0;
        end if; 
    end process;


    data_out_TDATA_assign_proc : process(data_in_TDATA, out_word_data_V_fu_129_p3, ap_predicate_op30_write_state1, ap_predicate_op35_write_state1, ap_condition_87)
    begin
        if ((ap_const_boolean_1 = ap_condition_87)) then
            if ((ap_predicate_op35_write_state1 = ap_const_boolean_1)) then 
                data_out_TDATA <= out_word_data_V_fu_129_p3;
            elsif ((ap_predicate_op30_write_state1 = ap_const_boolean_1)) then 
                data_out_TDATA <= data_in_TDATA;
            else 
                data_out_TDATA <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            data_out_TDATA <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    data_out_TDATA_blk_n_assign_proc : process(data_out_TREADY, timestamp_flag_V, ap_CS_fsm_state1, tmp_1_nbreadreq_fu_70_p5, tmp_2_nbwritereq_fu_82_p5)
    begin
        if ((((timestamp_flag_V = ap_const_lv1_1) and (tmp_2_nbwritereq_fu_82_p5 = ap_const_lv1_1) and (tmp_1_nbreadreq_fu_70_p5 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((timestamp_flag_V = ap_const_lv1_0) and (tmp_2_nbwritereq_fu_82_p5 = ap_const_lv1_1) and (tmp_1_nbreadreq_fu_70_p5 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            data_out_TDATA_blk_n <= data_out_TREADY;
        else 
            data_out_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    data_out_TKEEP_assign_proc : process(data_in_TKEEP, ap_predicate_op30_write_state1, ap_predicate_op35_write_state1, ap_condition_87)
    begin
        if ((ap_const_boolean_1 = ap_condition_87)) then
            if ((ap_predicate_op35_write_state1 = ap_const_boolean_1)) then 
                data_out_TKEEP <= ap_const_lv8_FF;
            elsif ((ap_predicate_op30_write_state1 = ap_const_boolean_1)) then 
                data_out_TKEEP <= data_in_TKEEP;
            else 
                data_out_TKEEP <= "XXXXXXXX";
            end if;
        else 
            data_out_TKEEP <= "XXXXXXXX";
        end if; 
    end process;


    data_out_TLAST_assign_proc : process(data_in_TLAST, ap_predicate_op30_write_state1, ap_predicate_op35_write_state1, ap_condition_87)
    begin
        if ((ap_const_boolean_1 = ap_condition_87)) then
            if ((ap_predicate_op35_write_state1 = ap_const_boolean_1)) then 
                data_out_TLAST <= ap_const_lv1_0;
            elsif ((ap_predicate_op30_write_state1 = ap_const_boolean_1)) then 
                data_out_TLAST <= data_in_TLAST;
            else 
                data_out_TLAST <= "X";
            end if;
        else 
            data_out_TLAST <= "X";
        end if; 
    end process;


    data_out_TVALID_assign_proc : process(data_in_TVALID, ap_CS_fsm_state1, ap_predicate_op26_read_state1, ap_predicate_op30_write_state1, ap_predicate_op35_write_state1, ap_block_state1_io)
    begin
        if (((not(((ap_const_boolean_1 = ap_block_state1_io) or ((data_in_TVALID = ap_const_logic_0) and (ap_predicate_op26_read_state1 = ap_const_boolean_1)))) and (ap_predicate_op35_write_state1 = ap_const_boolean_1) and (ap_const_logic_1 = ap_CS_fsm_state1)) or (not(((ap_const_boolean_1 = ap_block_state1_io) or ((data_in_TVALID = ap_const_logic_0) and (ap_predicate_op26_read_state1 = ap_const_boolean_1)))) and (ap_predicate_op30_write_state1 = ap_const_boolean_1) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            data_out_TVALID <= ap_const_logic_1;
        else 
            data_out_TVALID <= ap_const_logic_0;
        end if; 
    end process;

    out_word_data_V_fu_129_p3 <= 
        tmp_fu_123_p2 when (start_V(0) = '1') else 
        ap_const_lv64_0;
    tmp_1_nbreadreq_fu_70_p5 <= (0=>(data_in_TVALID), others=>'-');
    tmp_2_nbwritereq_fu_82_p5 <= (0=>data_out_TREADY, others=>'-');
    tmp_fu_123_p2 <= std_logic_vector(unsigned(timestamp_V) + unsigned(ap_const_lv64_1));
    tmp_last_V_fu_158_p1 <= data_in_TLAST;
end behav;
