-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2015.1
-- Copyright (C) 2015 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity memcachedPipeline_splitter is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    hashTable2splitter_V_dout : IN STD_LOGIC_VECTOR (255 downto 0);
    hashTable2splitter_V_empty_n : IN STD_LOGIC;
    hashTable2splitter_V_read : OUT STD_LOGIC;
    splitter2valueStoreFlash_V_din : OUT STD_LOGIC_VECTOR (255 downto 0);
    splitter2valueStoreFlash_V_full_n : IN STD_LOGIC;
    splitter2valueStoreFlash_V_write : OUT STD_LOGIC;
    splitter2valueStoreDram_V_din : OUT STD_LOGIC_VECTOR (255 downto 0);
    splitter2valueStoreDram_V_full_n : IN STD_LOGIC;
    splitter2valueStoreDram_V_write : OUT STD_LOGIC );
end;


architecture behav of memcachedPipeline_splitter is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_pp0_stg0_fsm_0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_7C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001111100";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_27 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100111";
    constant ap_const_lv32_801 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000100000000001";
    constant ap_const_lv32_7F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001111111";
    constant ap_const_lv256_lc_1 : STD_LOGIC_VECTOR (255 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_true : BOOLEAN := true;

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_pp0_stg0_fsm_0 : STD_LOGIC;
    signal ap_sig_bdd_20 : BOOLEAN;
    signal ap_reg_ppiten_pp0_it0 : STD_LOGIC;
    signal ap_reg_ppiten_pp0_it1 : STD_LOGIC := '0';
    signal ap_reg_ppiten_pp0_it2 : STD_LOGIC := '0';
    signal tmp_nbreadreq_fu_128_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_bdd_52 : BOOLEAN;
    signal tmp_reg_278 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal ap_reg_ppstg_tmp_reg_278_pp0_it1 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal is_validFlag_loc_reg_168 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal dramOrFlash_V_loc_reg_180 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal ap_sig_bdd_81 : BOOLEAN;
    signal is_validFlag : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal dramOrFlash_V : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal tmp112_reg_282 : STD_LOGIC_VECTOR (255 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    signal ap_reg_ppstg_tmp112_reg_282_pp0_it1 : STD_LOGIC_VECTOR (255 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    signal tmp_SOP_V_fu_212_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_SOP_V_reg_289 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal not_s_fu_230_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal not_s_reg_293 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal ap_reg_phiprechg_is_validFlag_flag_reg_156pp0_it0 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_phiprechg_is_validFlag_flag_reg_156pp0_it1 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal is_validFlag_flag_phi_fu_160_p4 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_phiprechg_is_validFlag_loc_reg_168pp0_it0 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_phiprechg_is_validFlag_loc_reg_168pp0_it1 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal is_validFlag_loc_phi_fu_172_p4 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_phiprechg_dramOrFlash_V_loc_reg_180pp0_it0 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_phiprechg_dramOrFlash_V_loc_reg_180pp0_it1 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal p_is_validFlag_flag_fu_258_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_phiprechg_is_validFlag_flag_2_reg_190pp0_it1 : STD_LOGIC_VECTOR (0 downto 0);
    signal is_validFlag_flag_2_phi_fu_193_p4 : STD_LOGIC_VECTOR (0 downto 0);
    signal not_din_EOP_V_assign_load_2_ne_fu_265_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_phiprechg_is_validFlag_new_2_reg_201pp0_it1 : STD_LOGIC_VECTOR (0 downto 0);
    signal is_validFlag_new_2_phi_fu_204_p4 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_s_fu_220_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_2_fu_251_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_pprstidle_pp0 : STD_LOGIC;
    signal ap_sig_bdd_112 : BOOLEAN;
    signal ap_sig_bdd_88 : BOOLEAN;
    signal ap_sig_bdd_123 : BOOLEAN;
    signal ap_sig_bdd_117 : BOOLEAN;
    signal ap_sig_bdd_160 : BOOLEAN;


begin




    -- the current state (ap_CS_fsm) of the state machine. --
    ap_CS_fsm_assign_proc : process(ap_rst, ap_clk)
    begin
        if (ap_rst = '1') then
            ap_CS_fsm <= ap_ST_pp0_stg0_fsm_0;
        elsif (ap_clk'event and ap_clk =  '1') then
            ap_CS_fsm <= ap_NS_fsm;
        end if;
    end process;


    -- ap_done_reg assign process. --
    ap_done_reg_assign_proc : process(ap_rst, ap_clk)
    begin
        if (ap_rst = '1') then
            ap_done_reg <= ap_const_logic_0;
        elsif (ap_clk'event and ap_clk =  '1') then
            if ((ap_const_logic_1 = ap_continue)) then 
                ap_done_reg <= ap_const_logic_0;
            elsif (((ap_const_logic_1 = ap_reg_ppiten_pp0_it2) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_52) or (ap_sig_bdd_81 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))))) then 
                ap_done_reg <= ap_const_logic_1;
            end if; 
        end if;
    end process;


    -- ap_reg_phiprechg_dramOrFlash_V_loc_reg_180pp0_it1 assign process. --
    ap_reg_phiprechg_dramOrFlash_V_loc_reg_180pp0_it1_assign_proc : process(ap_rst, ap_clk)
    begin
        if (ap_rst = '1') then
            ap_reg_phiprechg_dramOrFlash_V_loc_reg_180pp0_it1 <= ap_const_lv1_0;
        elsif (ap_clk'event and ap_clk =  '1') then
            if (ap_sig_bdd_88) then
                if (ap_sig_bdd_112) then 
                    ap_reg_phiprechg_dramOrFlash_V_loc_reg_180pp0_it1 <= not_s_fu_230_p2;
                elsif ((ap_true = ap_true)) then 
                    ap_reg_phiprechg_dramOrFlash_V_loc_reg_180pp0_it1 <= ap_reg_phiprechg_dramOrFlash_V_loc_reg_180pp0_it0;
                end if;
            end if; 
        end if;
    end process;


    -- ap_reg_phiprechg_is_validFlag_flag_reg_156pp0_it1 assign process. --
    ap_reg_phiprechg_is_validFlag_flag_reg_156pp0_it1_assign_proc : process(ap_rst, ap_clk)
    begin
        if (ap_rst = '1') then
            ap_reg_phiprechg_is_validFlag_flag_reg_156pp0_it1 <= ap_const_lv1_0;
        elsif (ap_clk'event and ap_clk =  '1') then
            if (ap_sig_bdd_88) then
                if (ap_sig_bdd_112) then 
                    ap_reg_phiprechg_is_validFlag_flag_reg_156pp0_it1 <= ap_const_lv1_1;
                elsif ((ap_true = ap_true)) then 
                    ap_reg_phiprechg_is_validFlag_flag_reg_156pp0_it1 <= ap_reg_phiprechg_is_validFlag_flag_reg_156pp0_it0;
                end if;
            end if; 
        end if;
    end process;


    -- ap_reg_phiprechg_is_validFlag_loc_reg_168pp0_it1 assign process. --
    ap_reg_phiprechg_is_validFlag_loc_reg_168pp0_it1_assign_proc : process(ap_rst, ap_clk)
    begin
        if (ap_rst = '1') then
            ap_reg_phiprechg_is_validFlag_loc_reg_168pp0_it1 <= ap_const_lv1_0;
        elsif (ap_clk'event and ap_clk =  '1') then
            if (ap_sig_bdd_88) then
                if (ap_sig_bdd_112) then 
                    ap_reg_phiprechg_is_validFlag_loc_reg_168pp0_it1 <= ap_const_lv1_1;
                elsif ((ap_true = ap_true)) then 
                    ap_reg_phiprechg_is_validFlag_loc_reg_168pp0_it1 <= ap_reg_phiprechg_is_validFlag_loc_reg_168pp0_it0;
                end if;
            end if; 
        end if;
    end process;


    -- ap_reg_ppiten_pp0_it1 assign process. --
    ap_reg_ppiten_pp0_it1_assign_proc : process(ap_rst, ap_clk)
    begin
        if (ap_rst = '1') then
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
        elsif (ap_clk'event and ap_clk =  '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_52) or (ap_sig_bdd_81 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))))) then 
                ap_reg_ppiten_pp0_it1 <= ap_reg_ppiten_pp0_it0;
            end if; 
        end if;
    end process;


    -- ap_reg_ppiten_pp0_it2 assign process. --
    ap_reg_ppiten_pp0_it2_assign_proc : process(ap_rst, ap_clk)
    begin
        if (ap_rst = '1') then
            ap_reg_ppiten_pp0_it2 <= ap_const_logic_0;
        elsif (ap_clk'event and ap_clk =  '1') then
            if (not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_52) or (ap_sig_bdd_81 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2))))) then 
                ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
            end if; 
        end if;
    end process;


    -- ap_reg_ppstg_tmp112_reg_282_pp0_it1 assign process. --
    ap_reg_ppstg_tmp112_reg_282_pp0_it1_assign_proc : process(ap_rst, ap_clk)
    begin
        if (ap_rst = '1') then
            ap_reg_ppstg_tmp112_reg_282_pp0_it1 <= ap_const_lv256_lc_1;
        elsif (ap_clk'event and ap_clk =  '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_52) or (ap_sig_bdd_81 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))))) then 
                ap_reg_ppstg_tmp112_reg_282_pp0_it1 <= tmp112_reg_282;
            end if; 
        end if;
    end process;


    -- ap_reg_ppstg_tmp_reg_278_pp0_it1 assign process. --
    ap_reg_ppstg_tmp_reg_278_pp0_it1_assign_proc : process(ap_rst, ap_clk)
    begin
        if (ap_rst = '1') then
            ap_reg_ppstg_tmp_reg_278_pp0_it1 <= ap_const_lv1_0;
        elsif (ap_clk'event and ap_clk =  '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_52) or (ap_sig_bdd_81 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))))) then 
                ap_reg_ppstg_tmp_reg_278_pp0_it1 <= tmp_reg_278;
            end if; 
        end if;
    end process;


    -- dramOrFlash_V assign process. --
    dramOrFlash_V_assign_proc : process(ap_rst, ap_clk)
    begin
        if (ap_rst = '1') then
            dramOrFlash_V <= ap_const_lv1_0;
        elsif (ap_clk'event and ap_clk =  '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_52) or (ap_sig_bdd_81 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))) and not((ap_const_lv1_0 = tmp_reg_278)) and not((ap_const_lv1_0 = tmp_SOP_V_reg_289)))) then 
                dramOrFlash_V <= not_s_reg_293;
            end if; 
        end if;
    end process;


    -- dramOrFlash_V_loc_reg_180 assign process. --
    dramOrFlash_V_loc_reg_180_assign_proc : process(ap_rst, ap_clk)
    begin
        if (ap_rst = '1') then
            dramOrFlash_V_loc_reg_180 <= ap_const_lv1_0;
        elsif (ap_clk'event and ap_clk =  '1') then
            if (ap_sig_bdd_117) then
                if (ap_sig_bdd_123) then 
                    dramOrFlash_V_loc_reg_180 <= dramOrFlash_V;
                elsif ((ap_true = ap_true)) then 
                    dramOrFlash_V_loc_reg_180 <= ap_reg_phiprechg_dramOrFlash_V_loc_reg_180pp0_it1;
                end if;
            end if; 
        end if;
    end process;


    -- is_validFlag assign process. --
    is_validFlag_assign_proc : process(ap_rst, ap_clk)
    begin
        if (ap_rst = '1') then
            is_validFlag <= ap_const_lv1_0;
        elsif (ap_clk'event and ap_clk =  '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_52) or (ap_sig_bdd_81 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))) and not((ap_const_lv1_0 = tmp_reg_278)) and not((ap_const_lv1_0 = is_validFlag_flag_2_phi_fu_193_p4)))) then 
                is_validFlag <= is_validFlag_new_2_phi_fu_204_p4;
            end if; 
        end if;
    end process;


    -- is_validFlag_loc_reg_168 assign process. --
    is_validFlag_loc_reg_168_assign_proc : process(ap_rst, ap_clk)
    begin
        if (ap_rst = '1') then
            is_validFlag_loc_reg_168 <= ap_const_lv1_0;
        elsif (ap_clk'event and ap_clk =  '1') then
            if (ap_sig_bdd_117) then
                if (ap_sig_bdd_123) then 
                    is_validFlag_loc_reg_168 <= is_validFlag;
                elsif ((ap_true = ap_true)) then 
                    is_validFlag_loc_reg_168 <= ap_reg_phiprechg_is_validFlag_loc_reg_168pp0_it1;
                end if;
            end if; 
        end if;
    end process;


    -- not_s_reg_293 assign process. --
    not_s_reg_293_assign_proc : process(ap_rst, ap_clk)
    begin
        if (ap_rst = '1') then
            not_s_reg_293 <= ap_const_lv1_0;
        elsif (ap_clk'event and ap_clk =  '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and not((tmp_nbreadreq_fu_128_p3 = ap_const_lv1_0)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_52) or (ap_sig_bdd_81 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))) and not((ap_const_lv1_0 = tmp_SOP_V_fu_212_p3)))) then 
                not_s_reg_293 <= not_s_fu_230_p2;
            end if; 
        end if;
    end process;


    -- tmp112_reg_282 assign process. --
    tmp112_reg_282_assign_proc : process(ap_rst, ap_clk)
    begin
        if (ap_rst = '1') then
            tmp112_reg_282 <= ap_const_lv256_lc_1;
        elsif (ap_clk'event and ap_clk =  '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and not((tmp_nbreadreq_fu_128_p3 = ap_const_lv1_0)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_52) or (ap_sig_bdd_81 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))))) then 
                tmp112_reg_282 <= hashTable2splitter_V_dout;
            end if; 
        end if;
    end process;


    -- tmp_SOP_V_reg_289 assign process. --
    tmp_SOP_V_reg_289_assign_proc : process(ap_rst, ap_clk)
    begin
        if (ap_rst = '1') then
            tmp_SOP_V_reg_289 <= ap_const_lv1_0;
        elsif (ap_clk'event and ap_clk =  '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and not((tmp_nbreadreq_fu_128_p3 = ap_const_lv1_0)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_52) or (ap_sig_bdd_81 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))))) then 
                tmp_SOP_V_reg_289 <= hashTable2splitter_V_dout(124 downto 124);
            end if; 
        end if;
    end process;


    -- tmp_reg_278 assign process. --
    tmp_reg_278_assign_proc : process(ap_rst, ap_clk)
    begin
        if (ap_rst = '1') then
            tmp_reg_278 <= ap_const_lv1_0;
        elsif (ap_clk'event and ap_clk =  '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_52) or (ap_sig_bdd_81 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))))) then 
                tmp_reg_278 <= tmp_nbreadreq_fu_128_p3;
            end if; 
        end if;
    end process;


    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_done_reg, ap_CS_fsm, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it2, ap_sig_bdd_52, ap_sig_bdd_81, ap_sig_pprstidle_pp0)
    begin
        case ap_CS_fsm is
            when ap_ST_pp0_stg0_fsm_0 => 
                ap_NS_fsm <= ap_ST_pp0_stg0_fsm_0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;

    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_done_reg, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it2, ap_sig_bdd_52, ap_sig_bdd_81)
    begin
        if (((ap_const_logic_1 = ap_done_reg) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it2) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_52) or (ap_sig_bdd_81 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2))))))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_idle assign process. --
    ap_idle_assign_proc : process(ap_start, ap_sig_cseq_ST_pp0_stg0_fsm_0, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it1, ap_reg_ppiten_pp0_it2)
    begin
        if ((not((ap_const_logic_1 = ap_start)) and (ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_0 = ap_reg_ppiten_pp0_it0) and (ap_const_logic_0 = ap_reg_ppiten_pp0_it1) and (ap_const_logic_0 = ap_reg_ppiten_pp0_it2))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_ready assign process. --
    ap_ready_assign_proc : process(ap_done_reg, ap_sig_cseq_ST_pp0_stg0_fsm_0, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it2, ap_sig_bdd_52, ap_sig_bdd_81)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_52) or (ap_sig_bdd_81 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_reg_phiprechg_dramOrFlash_V_loc_reg_180pp0_it0 <= "X";
    ap_reg_phiprechg_is_validFlag_flag_2_reg_190pp0_it1 <= "X";
    ap_reg_phiprechg_is_validFlag_flag_reg_156pp0_it0 <= "X";
    ap_reg_phiprechg_is_validFlag_loc_reg_168pp0_it0 <= "X";
    ap_reg_phiprechg_is_validFlag_new_2_reg_201pp0_it1 <= "X";
    ap_reg_ppiten_pp0_it0 <= ap_start;

    -- ap_sig_bdd_112 assign process. --
    ap_sig_bdd_112_assign_proc : process(tmp_nbreadreq_fu_128_p3, tmp_SOP_V_fu_212_p3)
    begin
                ap_sig_bdd_112 <= (not((tmp_nbreadreq_fu_128_p3 = ap_const_lv1_0)) and not((ap_const_lv1_0 = tmp_SOP_V_fu_212_p3)));
    end process;


    -- ap_sig_bdd_117 assign process. --
    ap_sig_bdd_117_assign_proc : process(ap_done_reg, ap_sig_cseq_ST_pp0_stg0_fsm_0, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it1, ap_reg_ppiten_pp0_it2, ap_sig_bdd_52, ap_sig_bdd_81)
    begin
                ap_sig_bdd_117 <= ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_52) or (ap_sig_bdd_81 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))));
    end process;


    -- ap_sig_bdd_123 assign process. --
    ap_sig_bdd_123_assign_proc : process(tmp_reg_278, tmp_SOP_V_reg_289)
    begin
                ap_sig_bdd_123 <= ((ap_const_lv1_0 = tmp_SOP_V_reg_289) and not((ap_const_lv1_0 = tmp_reg_278)));
    end process;


    -- ap_sig_bdd_160 assign process. --
    ap_sig_bdd_160_assign_proc : process(ap_sig_cseq_ST_pp0_stg0_fsm_0, ap_reg_ppiten_pp0_it1, tmp_reg_278)
    begin
                ap_sig_bdd_160 <= ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and not((ap_const_lv1_0 = tmp_reg_278)));
    end process;


    -- ap_sig_bdd_20 assign process. --
    ap_sig_bdd_20_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_20 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    -- ap_sig_bdd_52 assign process. --
    ap_sig_bdd_52_assign_proc : process(ap_start, ap_done_reg, hashTable2splitter_V_empty_n, tmp_nbreadreq_fu_128_p3)
    begin
                ap_sig_bdd_52 <= (((hashTable2splitter_V_empty_n = ap_const_logic_0) and not((tmp_nbreadreq_fu_128_p3 = ap_const_lv1_0))) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    -- ap_sig_bdd_81 assign process. --
    ap_sig_bdd_81_assign_proc : process(splitter2valueStoreFlash_V_full_n, ap_reg_ppstg_tmp_reg_278_pp0_it1, is_validFlag_loc_reg_168, dramOrFlash_V_loc_reg_180, splitter2valueStoreDram_V_full_n)
    begin
                ap_sig_bdd_81 <= (((splitter2valueStoreFlash_V_full_n = ap_const_logic_0) and not((ap_const_lv1_0 = ap_reg_ppstg_tmp_reg_278_pp0_it1)) and not((ap_const_lv1_0 = is_validFlag_loc_reg_168)) and (ap_const_lv1_0 = dramOrFlash_V_loc_reg_180)) or (not((ap_const_lv1_0 = ap_reg_ppstg_tmp_reg_278_pp0_it1)) and not((ap_const_lv1_0 = is_validFlag_loc_reg_168)) and (splitter2valueStoreDram_V_full_n = ap_const_logic_0) and not((ap_const_lv1_0 = dramOrFlash_V_loc_reg_180))));
    end process;


    -- ap_sig_bdd_88 assign process. --
    ap_sig_bdd_88_assign_proc : process(ap_done_reg, ap_sig_cseq_ST_pp0_stg0_fsm_0, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it2, ap_sig_bdd_52, ap_sig_bdd_81)
    begin
                ap_sig_bdd_88 <= ((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_52) or (ap_sig_bdd_81 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))));
    end process;


    -- ap_sig_cseq_ST_pp0_stg0_fsm_0 assign process. --
    ap_sig_cseq_ST_pp0_stg0_fsm_0_assign_proc : process(ap_sig_bdd_20)
    begin
        if (ap_sig_bdd_20) then 
            ap_sig_cseq_ST_pp0_stg0_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_pp0_stg0_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_pprstidle_pp0 assign process. --
    ap_sig_pprstidle_pp0_assign_proc : process(ap_start, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it1)
    begin
        if (((ap_const_logic_0 = ap_reg_ppiten_pp0_it0) and (ap_const_logic_0 = ap_reg_ppiten_pp0_it1) and (ap_const_logic_0 = ap_start))) then 
            ap_sig_pprstidle_pp0 <= ap_const_logic_1;
        else 
            ap_sig_pprstidle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    -- hashTable2splitter_V_read assign process. --
    hashTable2splitter_V_read_assign_proc : process(ap_done_reg, ap_sig_cseq_ST_pp0_stg0_fsm_0, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it2, tmp_nbreadreq_fu_128_p3, ap_sig_bdd_52, ap_sig_bdd_81)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and not((tmp_nbreadreq_fu_128_p3 = ap_const_lv1_0)) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_52) or (ap_sig_bdd_81 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))))) then 
            hashTable2splitter_V_read <= ap_const_logic_1;
        else 
            hashTable2splitter_V_read <= ap_const_logic_0;
        end if; 
    end process;


    -- is_validFlag_flag_2_phi_fu_193_p4 assign process. --
    is_validFlag_flag_2_phi_fu_193_p4_assign_proc : process(is_validFlag_flag_phi_fu_160_p4, is_validFlag_loc_phi_fu_172_p4, p_is_validFlag_flag_fu_258_p2, ap_reg_phiprechg_is_validFlag_flag_2_reg_190pp0_it1, ap_sig_bdd_160)
    begin
        if (ap_sig_bdd_160) then
            if ((ap_const_lv1_0 = is_validFlag_loc_phi_fu_172_p4)) then 
                is_validFlag_flag_2_phi_fu_193_p4 <= is_validFlag_flag_phi_fu_160_p4;
            elsif (not((ap_const_lv1_0 = is_validFlag_loc_phi_fu_172_p4))) then 
                is_validFlag_flag_2_phi_fu_193_p4 <= p_is_validFlag_flag_fu_258_p2;
            else 
                is_validFlag_flag_2_phi_fu_193_p4 <= ap_reg_phiprechg_is_validFlag_flag_2_reg_190pp0_it1;
            end if;
        else 
            is_validFlag_flag_2_phi_fu_193_p4 <= ap_reg_phiprechg_is_validFlag_flag_2_reg_190pp0_it1;
        end if; 
    end process;


    -- is_validFlag_flag_phi_fu_160_p4 assign process. --
    is_validFlag_flag_phi_fu_160_p4_assign_proc : process(ap_sig_cseq_ST_pp0_stg0_fsm_0, ap_reg_ppiten_pp0_it1, tmp_reg_278, tmp_SOP_V_reg_289, ap_reg_phiprechg_is_validFlag_flag_reg_156pp0_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and (ap_const_lv1_0 = tmp_SOP_V_reg_289) and not((ap_const_lv1_0 = tmp_reg_278)))) then 
            is_validFlag_flag_phi_fu_160_p4 <= ap_const_lv1_0;
        else 
            is_validFlag_flag_phi_fu_160_p4 <= ap_reg_phiprechg_is_validFlag_flag_reg_156pp0_it1;
        end if; 
    end process;


    -- is_validFlag_loc_phi_fu_172_p4 assign process. --
    is_validFlag_loc_phi_fu_172_p4_assign_proc : process(ap_sig_cseq_ST_pp0_stg0_fsm_0, ap_reg_ppiten_pp0_it1, tmp_reg_278, is_validFlag, tmp_SOP_V_reg_289, ap_reg_phiprechg_is_validFlag_loc_reg_168pp0_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp0_stg0_fsm_0) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it1) and (ap_const_lv1_0 = tmp_SOP_V_reg_289) and not((ap_const_lv1_0 = tmp_reg_278)))) then 
            is_validFlag_loc_phi_fu_172_p4 <= is_validFlag;
        else 
            is_validFlag_loc_phi_fu_172_p4 <= ap_reg_phiprechg_is_validFlag_loc_reg_168pp0_it1;
        end if; 
    end process;


    -- is_validFlag_new_2_phi_fu_204_p4 assign process. --
    is_validFlag_new_2_phi_fu_204_p4_assign_proc : process(is_validFlag_loc_phi_fu_172_p4, not_din_EOP_V_assign_load_2_ne_fu_265_p2, ap_reg_phiprechg_is_validFlag_new_2_reg_201pp0_it1, ap_sig_bdd_160)
    begin
        if (ap_sig_bdd_160) then
            if ((ap_const_lv1_0 = is_validFlag_loc_phi_fu_172_p4)) then 
                is_validFlag_new_2_phi_fu_204_p4 <= ap_const_lv1_1;
            elsif (not((ap_const_lv1_0 = is_validFlag_loc_phi_fu_172_p4))) then 
                is_validFlag_new_2_phi_fu_204_p4 <= not_din_EOP_V_assign_load_2_ne_fu_265_p2;
            else 
                is_validFlag_new_2_phi_fu_204_p4 <= ap_reg_phiprechg_is_validFlag_new_2_reg_201pp0_it1;
            end if;
        else 
            is_validFlag_new_2_phi_fu_204_p4 <= ap_reg_phiprechg_is_validFlag_new_2_reg_201pp0_it1;
        end if; 
    end process;

    not_din_EOP_V_assign_load_2_ne_fu_265_p2 <= (tmp_2_fu_251_p3 xor ap_const_lv1_1);
    not_s_fu_230_p2 <= "1" when (unsigned(p_Result_s_fu_220_p4) < unsigned(ap_const_lv32_801)) else "0";
    p_Result_s_fu_220_p4 <= hashTable2splitter_V_dout(39 downto 8);
    p_is_validFlag_flag_fu_258_p2 <= (tmp_2_fu_251_p3 or is_validFlag_flag_phi_fu_160_p4);
    splitter2valueStoreDram_V_din <= ap_reg_ppstg_tmp112_reg_282_pp0_it1;

    -- splitter2valueStoreDram_V_write assign process. --
    splitter2valueStoreDram_V_write_assign_proc : process(ap_done_reg, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it2, ap_sig_bdd_52, ap_reg_ppstg_tmp_reg_278_pp0_it1, is_validFlag_loc_reg_168, dramOrFlash_V_loc_reg_180, ap_sig_bdd_81)
    begin
        if ((not((ap_const_lv1_0 = ap_reg_ppstg_tmp_reg_278_pp0_it1)) and not((ap_const_lv1_0 = is_validFlag_loc_reg_168)) and not((ap_const_lv1_0 = dramOrFlash_V_loc_reg_180)) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_52) or (ap_sig_bdd_81 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))))) then 
            splitter2valueStoreDram_V_write <= ap_const_logic_1;
        else 
            splitter2valueStoreDram_V_write <= ap_const_logic_0;
        end if; 
    end process;

    splitter2valueStoreFlash_V_din <= ap_reg_ppstg_tmp112_reg_282_pp0_it1;

    -- splitter2valueStoreFlash_V_write assign process. --
    splitter2valueStoreFlash_V_write_assign_proc : process(ap_done_reg, ap_reg_ppiten_pp0_it0, ap_reg_ppiten_pp0_it2, ap_sig_bdd_52, ap_reg_ppstg_tmp_reg_278_pp0_it1, is_validFlag_loc_reg_168, dramOrFlash_V_loc_reg_180, ap_sig_bdd_81)
    begin
        if ((not((ap_const_lv1_0 = ap_reg_ppstg_tmp_reg_278_pp0_it1)) and not((ap_const_lv1_0 = is_validFlag_loc_reg_168)) and (ap_const_lv1_0 = dramOrFlash_V_loc_reg_180) and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2) and not(((ap_done_reg = ap_const_logic_1) or ((ap_const_logic_1 = ap_reg_ppiten_pp0_it0) and ap_sig_bdd_52) or (ap_sig_bdd_81 and (ap_const_logic_1 = ap_reg_ppiten_pp0_it2)))))) then 
            splitter2valueStoreFlash_V_write <= ap_const_logic_1;
        else 
            splitter2valueStoreFlash_V_write <= ap_const_logic_0;
        end if; 
    end process;

    tmp_2_fu_251_p3 <= tmp112_reg_282(127 downto 127);
    tmp_SOP_V_fu_212_p3 <= hashTable2splitter_V_dout(124 downto 124);
    tmp_nbreadreq_fu_128_p3 <= (0=>hashTable2splitter_V_empty_n, others=>'-');
end behav;
