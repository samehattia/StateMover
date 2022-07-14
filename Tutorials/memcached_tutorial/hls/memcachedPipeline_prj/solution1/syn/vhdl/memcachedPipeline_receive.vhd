-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2015.1
-- Copyright (C) 2015 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity memcachedPipeline_receive is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    disp2rec_V_V_dout : IN STD_LOGIC_VECTOR (11 downto 0);
    disp2rec_V_V_empty_n : IN STD_LOGIC;
    disp2rec_V_V_read : OUT STD_LOGIC;
    memRdData_V_V_TVALID : IN STD_LOGIC;
    getPath2remux_V_V_din : OUT STD_LOGIC_VECTOR (63 downto 0);
    getPath2remux_V_V_full_n : IN STD_LOGIC;
    getPath2remux_V_V_write : OUT STD_LOGIC;
    filterPopGet_V_V_din : OUT STD_LOGIC_VECTOR (0 downto 0);
    filterPopGet_V_V_full_n : IN STD_LOGIC;
    filterPopGet_V_V_write : OUT STD_LOGIC;
    memRdData_V_V_TDATA : IN STD_LOGIC_VECTOR (511 downto 0);
    memRdData_V_V_TREADY : OUT STD_LOGIC );
end;


architecture behav of memcachedPipeline_receive is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm0_0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_ST_st2_fsm1_1 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_ST_st0_fsm1_0 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv12_0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv512_lc_1 : STD_LOGIC_VECTOR (511 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv12_FF8 : STD_LOGIC_VECTOR (11 downto 0) := "111111111000";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv14_3F : STD_LOGIC_VECTOR (13 downto 0) := "00000000111111";
    constant ap_const_lv32_1FF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000111111111";
    constant ap_const_lv10_1FF : STD_LOGIC_VECTOR (9 downto 0) := "0111111111";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv8_7 : STD_LOGIC_VECTOR (7 downto 0) := "00000111";
    constant ap_const_lv512_lc_3 : STD_LOGIC_VECTOR (511 downto 0) := "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm0 : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm0_0 : STD_LOGIC;
    signal ap_sig_bdd_23 : BOOLEAN;
    signal ap_CS_fsm1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding of ap_CS_fsm1 : signal is "none";
    signal ap_sig_cseq_ST_st0_fsm1_0 : STD_LOGIC;
    signal ap_sig_bdd_34 : BOOLEAN;
    signal tmp_nbreadreq_fu_94_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_28_nbreadreq_fu_102_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_65_fu_341_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_66_fu_347_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_bdd_73 : BOOLEAN;
    signal getState_load_reg_397 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal tmp_reg_401 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal tmp_28_reg_405 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal tmp_65_reg_424 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal ap_sig_bdd_108 : BOOLEAN;
    signal ap_sig_cseq_ST_st2_fsm1_1 : STD_LOGIC;
    signal ap_sig_bdd_114 : BOOLEAN;
    signal getState : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal getValueLength_V_1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    signal getCounter_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal memInputWord_V : STD_LOGIC_VECTOR (511 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    signal tmp_V_22_fu_169_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_V_22_reg_409 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    signal tmp_107_fu_271_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_107_reg_414 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    signal tmp_113_fu_299_p2 : STD_LOGIC_VECTOR (511 downto 0);
    signal tmp_113_reg_419 : STD_LOGIC_VECTOR (511 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    signal ap_reg_phiprechg_storemerge8_reg_137pp0_it0 : STD_LOGIC_VECTOR (7 downto 0);
    signal storemerge8_phi_fu_140_p6 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_67_fu_353_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_V_fu_392_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_68_fu_173_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal storemerge_fu_327_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_69_fu_185_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal Lo_assign_fu_207_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal Hi_assign_fu_215_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_99_fu_203_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_101_fu_231_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_102_fu_239_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_100_fu_225_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_104_fu_253_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_106_fu_265_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_103_fu_243_p4 : STD_LOGIC_VECTOR (511 downto 0);
    signal tmp_105_fu_259_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_109_fu_287_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_108_fu_279_p3 : STD_LOGIC_VECTOR (511 downto 0);
    signal tmp_111_fu_295_p1 : STD_LOGIC_VECTOR (511 downto 0);
    signal tmp_117_fu_305_p4 : STD_LOGIC_VECTOR (8 downto 0);
    signal icmp_fu_315_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_s_fu_321_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_110_fu_372_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_112_fu_377_p1 : STD_LOGIC_VECTOR (511 downto 0);
    signal tmp_114_fu_381_p2 : STD_LOGIC_VECTOR (511 downto 0);
    signal p_Result_s_fu_387_p2 : STD_LOGIC_VECTOR (511 downto 0);
    signal ap_NS_fsm0 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm1 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_sig_bdd_54 : BOOLEAN;
    signal ap_sig_bdd_121 : BOOLEAN;
    signal ap_sig_bdd_92 : BOOLEAN;
    signal ap_sig_bdd_173 : BOOLEAN;
    signal ap_sig_bdd_155 : BOOLEAN;


begin




    -- the current state (ap_CS_fsm0) of the state machine. --
    ap_CS_fsm0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm0 <= ap_ST_st1_fsm0_0;
            else
                ap_CS_fsm0 <= ap_NS_fsm0;
            end if;
        end if;
    end process;


    -- the current state (ap_CS_fsm1) of the state machine. --
    ap_CS_fsm1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm1 <= ap_ST_st0_fsm1_0;
            else
                ap_CS_fsm1 <= ap_NS_fsm1;
            end if;
        end if;
    end process;


    -- ap_done_reg assign process. --
    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_continue)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm1_1) and not(((ap_done_reg = ap_const_logic_1) or ap_sig_bdd_108)))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    -- getCounter_1 assign process. --
    getCounter_1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                getCounter_1 <= ap_const_lv8_0;
            else
                if (ap_sig_bdd_121) then
                    if (not((getState = ap_const_lv1_0))) then 
                        getCounter_1 <= storemerge8_phi_fu_140_p6;
                    elsif (ap_sig_bdd_54) then 
                        getCounter_1 <= tmp_69_fu_185_p2;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    -- getState assign process. --
    getState_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                getState <= ap_const_lv1_0;
            else
                if (ap_sig_bdd_121) then
                    if (ap_sig_bdd_155) then 
                        getState <= ap_const_lv1_0;
                    elsif (ap_sig_bdd_54) then 
                        getState <= ap_const_lv1_1;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    -- getState_load_reg_397 assign process. --
    getState_load_reg_397_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                getState_load_reg_397 <= ap_const_lv1_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm0_0) and not(((ap_done_reg = ap_const_logic_1) or ap_sig_bdd_73 or (ap_sig_bdd_108 and (ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm1_1)))))) then 
                    getState_load_reg_397 <= getState;
                end if; 
            end if;
        end if;
    end process;


    -- getValueLength_V_1 assign process. --
    getValueLength_V_1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                getValueLength_V_1 <= ap_const_lv12_0;
            else
                if (ap_sig_bdd_121) then
                    if (not((getState = ap_const_lv1_0))) then 
                        getValueLength_V_1 <= storemerge_fu_327_p3;
                    elsif (ap_sig_bdd_54) then 
                        getValueLength_V_1 <= tmp_68_fu_173_p2;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    -- memInputWord_V assign process. --
    memInputWord_V_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                memInputWord_V <= ap_const_lv512_lc_1;
            else
                if ((((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm0_0) and (getState = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_94_p3)) and not((ap_const_lv1_0 = tmp_28_nbreadreq_fu_102_p3)) and not(((ap_done_reg = ap_const_logic_1) or ap_sig_bdd_73 or (ap_sig_bdd_108 and (ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm1_1))))) or ((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm0_0) and not((getState = ap_const_lv1_0)) and (ap_const_lv1_0 = tmp_65_fu_341_p2) and not((ap_const_lv1_0 = tmp_66_fu_347_p2)) and not(((ap_done_reg = ap_const_logic_1) or ap_sig_bdd_73 or (ap_sig_bdd_108 and (ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm1_1))))))) then 
                    memInputWord_V <= memRdData_V_V_TDATA;
                end if; 
            end if;
        end if;
    end process;


    -- tmp_107_reg_414 assign process. --
    tmp_107_reg_414_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                tmp_107_reg_414(1) <= '0';
                tmp_107_reg_414(2) <= '0';
                tmp_107_reg_414(3) <= '0';
                tmp_107_reg_414(4) <= '0';
                tmp_107_reg_414(5) <= '0';
                tmp_107_reg_414(6) <= '0';
                tmp_107_reg_414(7) <= '0';
                tmp_107_reg_414(8) <= '0';
                tmp_107_reg_414(9) <= '0';
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm0_0) and not((getState = ap_const_lv1_0)) and not(((ap_done_reg = ap_const_logic_1) or ap_sig_bdd_73 or (ap_sig_bdd_108 and (ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm1_1)))))) then 
                                        tmp_107_reg_414(9 downto 1) <= tmp_107_fu_271_p3(9 downto 1);
                end if; 
            end if;
        end if;
    end process;


    -- tmp_113_reg_419 assign process. --
    tmp_113_reg_419_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                tmp_113_reg_419 <= ap_const_lv512_lc_1;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm0_0) and not((getState = ap_const_lv1_0)) and not(((ap_done_reg = ap_const_logic_1) or ap_sig_bdd_73 or (ap_sig_bdd_108 and (ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm1_1)))))) then 
                    tmp_113_reg_419 <= tmp_113_fu_299_p2;
                end if; 
            end if;
        end if;
    end process;


    -- tmp_28_reg_405 assign process. --
    tmp_28_reg_405_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                tmp_28_reg_405 <= ap_const_lv1_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm0_0) and (getState = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_94_p3)) and not(((ap_done_reg = ap_const_logic_1) or ap_sig_bdd_73 or (ap_sig_bdd_108 and (ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm1_1)))))) then 
                    tmp_28_reg_405 <= tmp_28_nbreadreq_fu_102_p3;
                end if; 
            end if;
        end if;
    end process;


    -- tmp_65_reg_424 assign process. --
    tmp_65_reg_424_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                tmp_65_reg_424 <= ap_const_lv1_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm0_0) and not((getState = ap_const_lv1_0)) and not(((ap_done_reg = ap_const_logic_1) or ap_sig_bdd_73 or (ap_sig_bdd_108 and (ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm1_1)))))) then 
                    tmp_65_reg_424 <= tmp_65_fu_341_p2;
                end if; 
            end if;
        end if;
    end process;


    -- tmp_V_22_reg_409 assign process. --
    tmp_V_22_reg_409_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                tmp_V_22_reg_409 <= ap_const_lv64_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm0_0) and (getState = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_94_p3)) and not((ap_const_lv1_0 = tmp_28_nbreadreq_fu_102_p3)) and not(((ap_done_reg = ap_const_logic_1) or ap_sig_bdd_73 or (ap_sig_bdd_108 and (ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm1_1)))))) then 
                    tmp_V_22_reg_409 <= tmp_V_22_fu_169_p1;
                end if; 
            end if;
        end if;
    end process;


    -- tmp_reg_401 assign process. --
    tmp_reg_401_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                tmp_reg_401 <= ap_const_lv1_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm0_0) and (getState = ap_const_lv1_0) and not(((ap_done_reg = ap_const_logic_1) or ap_sig_bdd_73 or (ap_sig_bdd_108 and (ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm1_1)))))) then 
                    tmp_reg_401 <= tmp_nbreadreq_fu_94_p3;
                end if; 
            end if;
        end if;
    end process;

    tmp_107_reg_414(0) <= '1';

    -- the next state (ap_NS_fsm1) of the state machine. --
    ap_NS_fsm1_assign_proc : process (ap_done_reg, ap_sig_cseq_ST_st1_fsm0_0, ap_CS_fsm1, ap_sig_bdd_73, ap_sig_bdd_108, ap_sig_cseq_ST_st2_fsm1_1)
    begin
        case ap_CS_fsm1 is
            when ap_ST_st2_fsm1_1 => 
                if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm0_0) and not(((ap_done_reg = ap_const_logic_1) or ap_sig_bdd_108)) and not(ap_sig_bdd_73))) then
                    ap_NS_fsm1 <= ap_ST_st2_fsm1_1;
                elsif ((not(((ap_done_reg = ap_const_logic_1) or ap_sig_bdd_108)) and (not((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm0_0)) or ((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm0_0) and ap_sig_bdd_73)))) then
                    ap_NS_fsm1 <= ap_ST_st0_fsm1_0;
                else
                    ap_NS_fsm1 <= ap_ST_st2_fsm1_1;
                end if;
            when ap_ST_st0_fsm1_0 => 
                if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm0_0) and not(((ap_done_reg = ap_const_logic_1) or ap_sig_bdd_73 or (ap_sig_bdd_108 and (ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm1_1)))))) then
                    ap_NS_fsm1 <= ap_ST_st2_fsm1_1;
                else
                    ap_NS_fsm1 <= ap_ST_st0_fsm1_0;
                end if;
            when others =>  
                ap_NS_fsm1 <= "XX";
        end case;
    end process;

    -- the next state (ap_NS_fsm0) of the state machine. --
    ap_NS_fsm0_assign_proc : process (ap_done_reg, ap_CS_fsm0, ap_sig_bdd_73, ap_sig_bdd_108, ap_sig_cseq_ST_st2_fsm1_1)
    begin
        case ap_CS_fsm0 is
            when ap_ST_st1_fsm0_0 => 
                ap_NS_fsm0 <= ap_ST_st1_fsm0_0;
            when others =>  
                ap_NS_fsm0 <= "X";
        end case;
    end process;
    Hi_assign_fu_215_p2 <= (Lo_assign_fu_207_p3 or ap_const_lv14_3F);
    Lo_assign_fu_207_p3 <= (getCounter_1 & ap_const_lv6_0);

    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_done_reg, ap_sig_bdd_108, ap_sig_cseq_ST_st2_fsm1_1)
    begin
        if (((ap_const_logic_1 = ap_done_reg) or ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm1_1) and not(((ap_done_reg = ap_const_logic_1) or ap_sig_bdd_108))))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_idle assign process. --
    ap_idle_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm0_0, ap_sig_cseq_ST_st0_fsm1_0)
    begin
        if ((not((ap_const_logic_1 = ap_start)) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm0_0) and (ap_const_logic_1 = ap_sig_cseq_ST_st0_fsm1_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_ready assign process. --
    ap_ready_assign_proc : process(ap_done_reg, ap_sig_cseq_ST_st1_fsm0_0, ap_sig_bdd_73, ap_sig_bdd_108, ap_sig_cseq_ST_st2_fsm1_1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm0_0) and not(((ap_done_reg = ap_const_logic_1) or ap_sig_bdd_73 or (ap_sig_bdd_108 and (ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm1_1)))))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_reg_phiprechg_storemerge8_reg_137pp0_it0 <= "XXXXXXXX";

    -- ap_sig_bdd_108 assign process. --
    ap_sig_bdd_108_assign_proc : process(getPath2remux_V_V_full_n, getState_load_reg_397, tmp_reg_401, tmp_28_reg_405, filterPopGet_V_V_full_n, tmp_65_reg_424)
    begin
                ap_sig_bdd_108 <= (((getPath2remux_V_V_full_n = ap_const_logic_0) and (ap_const_lv1_0 = getState_load_reg_397) and not((ap_const_lv1_0 = tmp_reg_401)) and not((ap_const_lv1_0 = tmp_28_reg_405))) or ((getPath2remux_V_V_full_n = ap_const_logic_0) and not((ap_const_lv1_0 = getState_load_reg_397))) or (not((ap_const_lv1_0 = getState_load_reg_397)) and (filterPopGet_V_V_full_n = ap_const_logic_0) and not((ap_const_lv1_0 = tmp_65_reg_424))));
    end process;


    -- ap_sig_bdd_114 assign process. --
    ap_sig_bdd_114_assign_proc : process(ap_CS_fsm1)
    begin
                ap_sig_bdd_114 <= (ap_const_lv1_1 = ap_CS_fsm1(1 downto 1));
    end process;


    -- ap_sig_bdd_121 assign process. --
    ap_sig_bdd_121_assign_proc : process(ap_done_reg, ap_sig_cseq_ST_st1_fsm0_0, ap_sig_bdd_73, ap_sig_bdd_108, ap_sig_cseq_ST_st2_fsm1_1)
    begin
                ap_sig_bdd_121 <= ((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm0_0) and not(((ap_done_reg = ap_const_logic_1) or ap_sig_bdd_73 or (ap_sig_bdd_108 and (ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm1_1)))));
    end process;


    -- ap_sig_bdd_155 assign process. --
    ap_sig_bdd_155_assign_proc : process(tmp_65_fu_341_p2, getState)
    begin
                ap_sig_bdd_155 <= (not((getState = ap_const_lv1_0)) and not((ap_const_lv1_0 = tmp_65_fu_341_p2)));
    end process;


    -- ap_sig_bdd_173 assign process. --
    ap_sig_bdd_173_assign_proc : process(ap_done_reg, ap_sig_bdd_108, ap_sig_cseq_ST_st2_fsm1_1)
    begin
                ap_sig_bdd_173 <= ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm1_1) and not(((ap_done_reg = ap_const_logic_1) or ap_sig_bdd_108)));
    end process;


    -- ap_sig_bdd_23 assign process. --
    ap_sig_bdd_23_assign_proc : process(ap_CS_fsm0)
    begin
                ap_sig_bdd_23 <= (ap_CS_fsm0(0 downto 0) = ap_const_lv1_1);
    end process;


    -- ap_sig_bdd_34 assign process. --
    ap_sig_bdd_34_assign_proc : process(ap_CS_fsm1)
    begin
                ap_sig_bdd_34 <= (ap_const_lv1_1 = ap_CS_fsm1(0 downto 0));
    end process;


    -- ap_sig_bdd_54 assign process. --
    ap_sig_bdd_54_assign_proc : process(tmp_nbreadreq_fu_94_p3, tmp_28_nbreadreq_fu_102_p3, getState)
    begin
                ap_sig_bdd_54 <= ((getState = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_94_p3)) and not((ap_const_lv1_0 = tmp_28_nbreadreq_fu_102_p3)));
    end process;


    -- ap_sig_bdd_73 assign process. --
    ap_sig_bdd_73_assign_proc : process(ap_start, ap_done_reg, disp2rec_V_V_empty_n, tmp_nbreadreq_fu_94_p3, tmp_28_nbreadreq_fu_102_p3, memRdData_V_V_TVALID, tmp_65_fu_341_p2, tmp_66_fu_347_p2, getState)
    begin
                ap_sig_bdd_73 <= (((disp2rec_V_V_empty_n = ap_const_logic_0) and (getState = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_94_p3)) and not((ap_const_lv1_0 = tmp_28_nbreadreq_fu_102_p3))) or ((getState = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_94_p3)) and not((ap_const_lv1_0 = tmp_28_nbreadreq_fu_102_p3)) and (memRdData_V_V_TVALID = ap_const_logic_0)) or ((memRdData_V_V_TVALID = ap_const_logic_0) and not((getState = ap_const_lv1_0)) and (ap_const_lv1_0 = tmp_65_fu_341_p2) and not((ap_const_lv1_0 = tmp_66_fu_347_p2))) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    -- ap_sig_bdd_92 assign process. --
    ap_sig_bdd_92_assign_proc : process(getState_load_reg_397, tmp_reg_401, tmp_28_reg_405)
    begin
                ap_sig_bdd_92 <= ((ap_const_lv1_0 = getState_load_reg_397) and not((ap_const_lv1_0 = tmp_reg_401)) and not((ap_const_lv1_0 = tmp_28_reg_405)));
    end process;


    -- ap_sig_cseq_ST_st0_fsm1_0 assign process. --
    ap_sig_cseq_ST_st0_fsm1_0_assign_proc : process(ap_sig_bdd_34)
    begin
        if (ap_sig_bdd_34) then 
            ap_sig_cseq_ST_st0_fsm1_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st0_fsm1_0 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st1_fsm0_0 assign process. --
    ap_sig_cseq_ST_st1_fsm0_0_assign_proc : process(ap_sig_bdd_23)
    begin
        if (ap_sig_bdd_23) then 
            ap_sig_cseq_ST_st1_fsm0_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm0_0 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st2_fsm1_1 assign process. --
    ap_sig_cseq_ST_st2_fsm1_1_assign_proc : process(ap_sig_bdd_114)
    begin
        if (ap_sig_bdd_114) then 
            ap_sig_cseq_ST_st2_fsm1_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st2_fsm1_1 <= ap_const_logic_0;
        end if; 
    end process;


    -- disp2rec_V_V_read assign process. --
    disp2rec_V_V_read_assign_proc : process(ap_done_reg, ap_sig_cseq_ST_st1_fsm0_0, tmp_nbreadreq_fu_94_p3, tmp_28_nbreadreq_fu_102_p3, ap_sig_bdd_73, ap_sig_bdd_108, ap_sig_cseq_ST_st2_fsm1_1, getState)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm0_0) and (getState = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_94_p3)) and not((ap_const_lv1_0 = tmp_28_nbreadreq_fu_102_p3)) and not(((ap_done_reg = ap_const_logic_1) or ap_sig_bdd_73 or (ap_sig_bdd_108 and (ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm1_1)))))) then 
            disp2rec_V_V_read <= ap_const_logic_1;
        else 
            disp2rec_V_V_read <= ap_const_logic_0;
        end if; 
    end process;

    filterPopGet_V_V_din <= ap_const_lv1_1;

    -- filterPopGet_V_V_write assign process. --
    filterPopGet_V_V_write_assign_proc : process(ap_done_reg, getState_load_reg_397, tmp_65_reg_424, ap_sig_bdd_108, ap_sig_cseq_ST_st2_fsm1_1)
    begin
        if ((not((ap_const_lv1_0 = getState_load_reg_397)) and not((ap_const_lv1_0 = tmp_65_reg_424)) and (ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm1_1) and not(((ap_done_reg = ap_const_logic_1) or ap_sig_bdd_108)))) then 
            filterPopGet_V_V_write <= ap_const_logic_1;
        else 
            filterPopGet_V_V_write <= ap_const_logic_0;
        end if; 
    end process;


    -- getPath2remux_V_V_din assign process. --
    getPath2remux_V_V_din_assign_proc : process(getState_load_reg_397, tmp_V_22_reg_409, tmp_V_fu_392_p1, ap_sig_bdd_92, ap_sig_bdd_173)
    begin
        if (ap_sig_bdd_173) then
            if (not((ap_const_lv1_0 = getState_load_reg_397))) then 
                getPath2remux_V_V_din <= tmp_V_fu_392_p1;
            elsif (ap_sig_bdd_92) then 
                getPath2remux_V_V_din <= tmp_V_22_reg_409;
            else 
                getPath2remux_V_V_din <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            getPath2remux_V_V_din <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    -- getPath2remux_V_V_write assign process. --
    getPath2remux_V_V_write_assign_proc : process(ap_done_reg, getState_load_reg_397, tmp_reg_401, tmp_28_reg_405, ap_sig_bdd_108, ap_sig_cseq_ST_st2_fsm1_1)
    begin
        if ((((ap_const_lv1_0 = getState_load_reg_397) and not((ap_const_lv1_0 = tmp_reg_401)) and not((ap_const_lv1_0 = tmp_28_reg_405)) and (ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm1_1) and not(((ap_done_reg = ap_const_logic_1) or ap_sig_bdd_108))) or (not((ap_const_lv1_0 = getState_load_reg_397)) and (ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm1_1) and not(((ap_done_reg = ap_const_logic_1) or ap_sig_bdd_108))))) then 
            getPath2remux_V_V_write <= ap_const_logic_1;
        else 
            getPath2remux_V_V_write <= ap_const_logic_0;
        end if; 
    end process;

    icmp_fu_315_p2 <= "0" when (tmp_117_fu_305_p4 = ap_const_lv9_0) else "1";

    -- memRdData_V_V_TREADY assign process. --
    memRdData_V_V_TREADY_assign_proc : process(ap_done_reg, ap_sig_cseq_ST_st1_fsm0_0, tmp_nbreadreq_fu_94_p3, tmp_28_nbreadreq_fu_102_p3, tmp_65_fu_341_p2, tmp_66_fu_347_p2, ap_sig_bdd_73, ap_sig_bdd_108, ap_sig_cseq_ST_st2_fsm1_1, getState)
    begin
        if ((((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm0_0) and (getState = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_nbreadreq_fu_94_p3)) and not((ap_const_lv1_0 = tmp_28_nbreadreq_fu_102_p3)) and not(((ap_done_reg = ap_const_logic_1) or ap_sig_bdd_73 or (ap_sig_bdd_108 and (ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm1_1))))) or ((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm0_0) and not((getState = ap_const_lv1_0)) and (ap_const_lv1_0 = tmp_65_fu_341_p2) and not((ap_const_lv1_0 = tmp_66_fu_347_p2)) and not(((ap_done_reg = ap_const_logic_1) or ap_sig_bdd_73 or (ap_sig_bdd_108 and (ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm1_1))))))) then 
            memRdData_V_V_TREADY <= ap_const_logic_1;
        else 
            memRdData_V_V_TREADY <= ap_const_logic_0;
        end if; 
    end process;

    p_Result_s_fu_387_p2 <= (tmp_113_reg_419 and tmp_114_fu_381_p2);

    -- storemerge8_phi_fu_140_p6 assign process. --
    storemerge8_phi_fu_140_p6_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm0_0, tmp_65_fu_341_p2, tmp_66_fu_347_p2, getState, ap_reg_phiprechg_storemerge8_reg_137pp0_it0, tmp_67_fu_353_p2)
    begin
        if (((ap_const_logic_1 = ap_start) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm0_0) and not((getState = ap_const_lv1_0)) and (ap_const_lv1_0 = tmp_65_fu_341_p2) and (ap_const_lv1_0 = tmp_66_fu_347_p2))) then 
            storemerge8_phi_fu_140_p6 <= tmp_67_fu_353_p2;
        elsif ((((ap_const_logic_1 = ap_start) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm0_0) and not((getState = ap_const_lv1_0)) and not((ap_const_lv1_0 = tmp_65_fu_341_p2))) or ((ap_const_logic_1 = ap_start) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm0_0) and not((getState = ap_const_lv1_0)) and (ap_const_lv1_0 = tmp_65_fu_341_p2) and not((ap_const_lv1_0 = tmp_66_fu_347_p2))))) then 
            storemerge8_phi_fu_140_p6 <= ap_const_lv8_0;
        else 
            storemerge8_phi_fu_140_p6 <= ap_reg_phiprechg_storemerge8_reg_137pp0_it0;
        end if; 
    end process;

    storemerge_fu_327_p3 <= 
        tmp_s_fu_321_p2 when (icmp_fu_315_p2(0) = '1') else 
        ap_const_lv12_0;
    tmp_100_fu_225_p2 <= "1" when (unsigned(Lo_assign_fu_207_p3) > unsigned(Hi_assign_fu_215_p2)) else "0";
    tmp_101_fu_231_p3 <= (tmp_99_fu_203_p1 & ap_const_lv6_0);
    tmp_102_fu_239_p1 <= Hi_assign_fu_215_p2(10 - 1 downto 0);
    
    tmp_103_fu_243_p4_proc : process(memInputWord_V)
    variable vlo_cpy : STD_LOGIC_VECTOR(512+32 - 1 downto 0);
    variable vhi_cpy : STD_LOGIC_VECTOR(512+32 - 1 downto 0);
    variable v0_cpy : STD_LOGIC_VECTOR(512 - 1 downto 0);
    variable tmp_103_fu_243_p4_i : integer;
    variable section : STD_LOGIC_VECTOR(512 - 1 downto 0);
    variable tmp_mask : STD_LOGIC_VECTOR(512 - 1 downto 0);
    variable resvalue, res_value, res_mask : STD_LOGIC_VECTOR(512 - 1 downto 0);
    begin
        vlo_cpy := (others => '0');
        vlo_cpy(9 - 1 downto 0) := ap_const_lv32_1FF(9 - 1 downto 0);
        vhi_cpy := (others => '0');
        vhi_cpy(9 - 1 downto 0) := ap_const_lv32_0(9 - 1 downto 0);
        v0_cpy := memInputWord_V;
        if (vlo_cpy(9 - 1 downto 0) > vhi_cpy(9 - 1 downto 0)) then
            vhi_cpy(9-1 downto 0) := std_logic_vector(512-1-unsigned(ap_const_lv32_0(9-1 downto 0)));
            vlo_cpy(9-1 downto 0) := std_logic_vector(512-1-unsigned(ap_const_lv32_1FF(9-1 downto 0)));
            for tmp_103_fu_243_p4_i in 0 to 512-1 loop
                v0_cpy(tmp_103_fu_243_p4_i) := memInputWord_V(512-1-tmp_103_fu_243_p4_i);
            end loop;
        end if;
        res_value := std_logic_vector(shift_right(unsigned(v0_cpy),to_integer(unsigned('0' & vlo_cpy(9-1 downto 0)))));

        section := (others=>'0');
        section(9-1 downto 0) := std_logic_vector(unsigned(vhi_cpy(9-1 downto 0)) - unsigned(vlo_cpy(9-1 downto 0)));
        tmp_mask := (others => '1');
        res_mask := std_logic_vector(shift_left(unsigned(tmp_mask),to_integer(unsigned('0' & section(31-1 downto 0)))));
        res_mask := res_mask(512-2 downto 0) & '0';
        resvalue := res_value and not res_mask;
        tmp_103_fu_243_p4 <= resvalue(512-1 downto 0);
    end process;

    tmp_104_fu_253_p2 <= std_logic_vector(unsigned(tmp_101_fu_231_p3) - unsigned(tmp_102_fu_239_p1));
    tmp_105_fu_259_p2 <= std_logic_vector(unsigned(ap_const_lv10_1FF) - unsigned(tmp_101_fu_231_p3));
    tmp_106_fu_265_p2 <= std_logic_vector(unsigned(tmp_102_fu_239_p1) - unsigned(tmp_101_fu_231_p3));
    tmp_107_fu_271_p3 <= 
        tmp_104_fu_253_p2 when (tmp_100_fu_225_p2(0) = '1') else 
        tmp_106_fu_265_p2;
    tmp_108_fu_279_p3 <= 
        tmp_103_fu_243_p4 when (tmp_100_fu_225_p2(0) = '1') else 
        memInputWord_V;
    tmp_109_fu_287_p3 <= 
        tmp_105_fu_259_p2 when (tmp_100_fu_225_p2(0) = '1') else 
        tmp_101_fu_231_p3;
    tmp_110_fu_372_p2 <= std_logic_vector(unsigned(ap_const_lv10_1FF) - unsigned(tmp_107_reg_414));
    tmp_111_fu_295_p1 <= std_logic_vector(resize(unsigned(tmp_109_fu_287_p3),512));
    tmp_112_fu_377_p1 <= std_logic_vector(resize(unsigned(tmp_110_fu_372_p2),512));
    tmp_113_fu_299_p2 <= std_logic_vector(shift_right(unsigned(tmp_108_fu_279_p3),to_integer(unsigned('0' & tmp_111_fu_295_p1(31-1 downto 0)))));
    tmp_114_fu_381_p2 <= std_logic_vector(shift_right(unsigned(ap_const_lv512_lc_3),to_integer(unsigned('0' & tmp_112_fu_377_p1(31-1 downto 0)))));
    tmp_117_fu_305_p4 <= getValueLength_V_1(11 downto 3);
    tmp_28_nbreadreq_fu_102_p3 <= (0=>memRdData_V_V_TVALID, others=>'-');
    tmp_65_fu_341_p2 <= "1" when (storemerge_fu_327_p3 = ap_const_lv12_0) else "0";
    tmp_66_fu_347_p2 <= "1" when (getCounter_1 = ap_const_lv8_7) else "0";
    tmp_67_fu_353_p2 <= std_logic_vector(unsigned(getCounter_1) + unsigned(ap_const_lv8_1));
    tmp_68_fu_173_p2 <= std_logic_vector(signed(ap_const_lv12_FF8) + signed(disp2rec_V_V_dout));
    tmp_69_fu_185_p2 <= std_logic_vector(unsigned(ap_const_lv8_1) + unsigned(getCounter_1));
    tmp_99_fu_203_p1 <= getCounter_1(4 - 1 downto 0);
    tmp_V_22_fu_169_p1 <= memRdData_V_V_TDATA(64 - 1 downto 0);
    tmp_V_fu_392_p1 <= p_Result_s_fu_387_p2(64 - 1 downto 0);
    tmp_nbreadreq_fu_94_p3 <= (0=>disp2rec_V_V_empty_n, others=>'-');
    tmp_s_fu_321_p2 <= std_logic_vector(unsigned(getValueLength_V_1) + unsigned(ap_const_lv12_FF8));
end behav;
