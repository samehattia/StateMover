-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dramModel is
port (
    rdCmdIn_V_TDATA : IN STD_LOGIC_VECTOR (39 downto 0);
    rdDataOut_V_V_TDATA : OUT STD_LOGIC_VECTOR (511 downto 0);
    wrCmdIn_V_TDATA : IN STD_LOGIC_VECTOR (39 downto 0);
    wrDataIn_V_V_TDATA : IN STD_LOGIC_VECTOR (511 downto 0);
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    rdCmdIn_V_TVALID : IN STD_LOGIC;
    rdCmdIn_V_TREADY : OUT STD_LOGIC;
    wrCmdIn_V_TVALID : IN STD_LOGIC;
    wrCmdIn_V_TREADY : OUT STD_LOGIC;
    rdDataOut_V_V_TVALID : OUT STD_LOGIC;
    rdDataOut_V_V_TREADY : IN STD_LOGIC;
    wrDataIn_V_V_TVALID : IN STD_LOGIC;
    wrDataIn_V_V_TREADY : OUT STD_LOGIC );
end;


architecture behav of dramModel is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "dramModel,hls_ip_2018_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xcku040-ffva1156-2-e,HLS_INPUT_CLOCK=6.400000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=3.183500,HLS_SYN_LAT=4,HLS_SYN_TPT=1,HLS_SYN_MEM=114,HLS_SYN_DSP=0,HLS_SYN_FF=1114,HLS_SYN_LUT=323,HLS_VERSION=2018_3}";
    constant ap_const_lv512_lc_1 : STD_LOGIC_VECTOR (511 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal ap_rst_n_inv : STD_LOGIC;
    signal cmdAggregator_U0_ap_start : STD_LOGIC;
    signal cmdAggregator_U0_ap_done : STD_LOGIC;
    signal cmdAggregator_U0_ap_continue : STD_LOGIC;
    signal cmdAggregator_U0_ap_idle : STD_LOGIC;
    signal cmdAggregator_U0_ap_ready : STD_LOGIC;
    signal cmdAggregator_U0_aggregateMemCmd_V_din : STD_LOGIC_VECTOR (20 downto 0);
    signal cmdAggregator_U0_aggregateMemCmd_V_write : STD_LOGIC;
    signal cmdAggregator_U0_rdCmdIn_V_TREADY : STD_LOGIC;
    signal cmdAggregator_U0_wrCmdIn_V_TREADY : STD_LOGIC;
    signal memAccess_U0_ap_start : STD_LOGIC;
    signal memAccess_U0_ap_done : STD_LOGIC;
    signal memAccess_U0_ap_continue : STD_LOGIC;
    signal memAccess_U0_ap_idle : STD_LOGIC;
    signal memAccess_U0_ap_ready : STD_LOGIC;
    signal memAccess_U0_aggregateMemCmd_V_read : STD_LOGIC;
    signal memAccess_U0_rdDataOut_V_V_TDATA : STD_LOGIC_VECTOR (511 downto 0);
    signal memAccess_U0_rdDataOut_V_V_TVALID : STD_LOGIC;
    signal memAccess_U0_wrDataIn_V_V_TREADY : STD_LOGIC;
    signal ap_sync_continue : STD_LOGIC;
    signal aggregateMemCmd_V_full_n : STD_LOGIC;
    signal aggregateMemCmd_V_dout : STD_LOGIC_VECTOR (20 downto 0);
    signal aggregateMemCmd_V_empty_n : STD_LOGIC;
    signal cmdAggregator_U0_start_full_n : STD_LOGIC;
    signal cmdAggregator_U0_start_write : STD_LOGIC;
    signal memAccess_U0_start_full_n : STD_LOGIC;
    signal memAccess_U0_start_write : STD_LOGIC;

    component cmdAggregator IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        rdCmdIn_V_TVALID : IN STD_LOGIC;
        wrCmdIn_V_TVALID : IN STD_LOGIC;
        aggregateMemCmd_V_din : OUT STD_LOGIC_VECTOR (20 downto 0);
        aggregateMemCmd_V_full_n : IN STD_LOGIC;
        aggregateMemCmd_V_write : OUT STD_LOGIC;
        rdCmdIn_V_TDATA : IN STD_LOGIC_VECTOR (39 downto 0);
        rdCmdIn_V_TREADY : OUT STD_LOGIC;
        wrCmdIn_V_TDATA : IN STD_LOGIC_VECTOR (39 downto 0);
        wrCmdIn_V_TREADY : OUT STD_LOGIC );
    end component;


    component memAccess IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        aggregateMemCmd_V_dout : IN STD_LOGIC_VECTOR (20 downto 0);
        aggregateMemCmd_V_empty_n : IN STD_LOGIC;
        aggregateMemCmd_V_read : OUT STD_LOGIC;
        wrDataIn_V_V_TVALID : IN STD_LOGIC;
        rdDataOut_V_V_TREADY : IN STD_LOGIC;
        rdDataOut_V_V_TDATA : OUT STD_LOGIC_VECTOR (511 downto 0);
        rdDataOut_V_V_TVALID : OUT STD_LOGIC;
        wrDataIn_V_V_TDATA : IN STD_LOGIC_VECTOR (511 downto 0);
        wrDataIn_V_V_TREADY : OUT STD_LOGIC );
    end component;


    component fifo_w21_d16_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (20 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (20 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    cmdAggregator_U0 : component cmdAggregator
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => cmdAggregator_U0_ap_start,
        ap_done => cmdAggregator_U0_ap_done,
        ap_continue => cmdAggregator_U0_ap_continue,
        ap_idle => cmdAggregator_U0_ap_idle,
        ap_ready => cmdAggregator_U0_ap_ready,
        rdCmdIn_V_TVALID => rdCmdIn_V_TVALID,
        wrCmdIn_V_TVALID => wrCmdIn_V_TVALID,
        aggregateMemCmd_V_din => cmdAggregator_U0_aggregateMemCmd_V_din,
        aggregateMemCmd_V_full_n => aggregateMemCmd_V_full_n,
        aggregateMemCmd_V_write => cmdAggregator_U0_aggregateMemCmd_V_write,
        rdCmdIn_V_TDATA => rdCmdIn_V_TDATA,
        rdCmdIn_V_TREADY => cmdAggregator_U0_rdCmdIn_V_TREADY,
        wrCmdIn_V_TDATA => wrCmdIn_V_TDATA,
        wrCmdIn_V_TREADY => cmdAggregator_U0_wrCmdIn_V_TREADY);

    memAccess_U0 : component memAccess
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => memAccess_U0_ap_start,
        ap_done => memAccess_U0_ap_done,
        ap_continue => memAccess_U0_ap_continue,
        ap_idle => memAccess_U0_ap_idle,
        ap_ready => memAccess_U0_ap_ready,
        aggregateMemCmd_V_dout => aggregateMemCmd_V_dout,
        aggregateMemCmd_V_empty_n => aggregateMemCmd_V_empty_n,
        aggregateMemCmd_V_read => memAccess_U0_aggregateMemCmd_V_read,
        wrDataIn_V_V_TVALID => wrDataIn_V_V_TVALID,
        rdDataOut_V_V_TREADY => rdDataOut_V_V_TREADY,
        rdDataOut_V_V_TDATA => memAccess_U0_rdDataOut_V_V_TDATA,
        rdDataOut_V_V_TVALID => memAccess_U0_rdDataOut_V_V_TVALID,
        wrDataIn_V_V_TDATA => wrDataIn_V_V_TDATA,
        wrDataIn_V_V_TREADY => memAccess_U0_wrDataIn_V_V_TREADY);

    aggregateMemCmd_V_U : component fifo_w21_d16_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => cmdAggregator_U0_aggregateMemCmd_V_din,
        if_full_n => aggregateMemCmd_V_full_n,
        if_write => cmdAggregator_U0_aggregateMemCmd_V_write,
        if_dout => aggregateMemCmd_V_dout,
        if_empty_n => aggregateMemCmd_V_empty_n,
        if_read => memAccess_U0_aggregateMemCmd_V_read);





    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    ap_sync_continue <= ap_const_logic_0;
    cmdAggregator_U0_ap_continue <= ap_const_logic_1;
    cmdAggregator_U0_ap_start <= ap_const_logic_1;
    cmdAggregator_U0_start_full_n <= ap_const_logic_1;
    cmdAggregator_U0_start_write <= ap_const_logic_0;
    memAccess_U0_ap_continue <= ap_const_logic_1;
    memAccess_U0_ap_start <= ap_const_logic_1;
    memAccess_U0_start_full_n <= ap_const_logic_1;
    memAccess_U0_start_write <= ap_const_logic_0;
    rdCmdIn_V_TREADY <= cmdAggregator_U0_rdCmdIn_V_TREADY;
    rdDataOut_V_V_TDATA <= memAccess_U0_rdDataOut_V_V_TDATA;
    rdDataOut_V_V_TVALID <= memAccess_U0_rdDataOut_V_V_TVALID;
    wrCmdIn_V_TREADY <= cmdAggregator_U0_wrCmdIn_V_TREADY;
    wrDataIn_V_V_TREADY <= memAccess_U0_wrDataIn_V_V_TREADY;
end behav;
