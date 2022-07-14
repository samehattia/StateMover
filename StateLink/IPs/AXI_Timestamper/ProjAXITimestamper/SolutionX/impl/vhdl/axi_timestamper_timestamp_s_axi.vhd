-- ==============================================================
-- File generated on Thu Jul 14 17:17:44 EDT 2022
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity axi_timestamper_timestamp_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 32;
    C_S_AXI_DATA_WIDTH    : INTEGER := 32);
port (
    -- axi4 lite slave signals
    ACLK                  :in   STD_LOGIC;
    ARESET                :in   STD_LOGIC;
    ACLK_EN               :in   STD_LOGIC;
    AWADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    AWVALID               :in   STD_LOGIC;
    AWREADY               :out  STD_LOGIC;
    WDATA                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    WSTRB                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH/8-1 downto 0);
    WVALID                :in   STD_LOGIC;
    WREADY                :out  STD_LOGIC;
    BRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    BVALID                :out  STD_LOGIC;
    BREADY                :in   STD_LOGIC;
    ARADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    ARVALID               :in   STD_LOGIC;
    ARREADY               :out  STD_LOGIC;
    RDATA                 :out  STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    RRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    RVALID                :out  STD_LOGIC;
    RREADY                :in   STD_LOGIC;
    -- user signals
    write_timestamp_V     :in   STD_LOGIC_VECTOR(31 downto 0);
    write_timestamp_V_ap_vld :in   STD_LOGIC;
    read_timestamp_V      :in   STD_LOGIC_VECTOR(31 downto 0);
    read_timestamp_V_ap_vld :in   STD_LOGIC
);
end entity axi_timestamper_timestamp_s_axi;

-- ------------------------Address Info-------------------
-- 0x00000000 : reserved
-- 0x00000004 : reserved
-- 0x00000008 : reserved
-- 0x0000000c : reserved
-- 0x80000000 : Data signal of write_timestamp_V
--              bit 31~0 - write_timestamp_V[31:0] (Read)
-- 0x80000004 : Control signal of write_timestamp_V
--              bit 0  - write_timestamp_V_ap_vld (Read/COR)
--              others - reserved
-- 0x80000010 : Data signal of read_timestamp_V
--              bit 31~0 - read_timestamp_V[31:0] (Read)
-- 0x80000014 : Control signal of read_timestamp_V
--              bit 0  - read_timestamp_V_ap_vld (Read/COR)
--              others - reserved
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of axi_timestamper_timestamp_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_WRITE_TIMESTAMP_V_DATA_0 : INTEGER := 16#80000000#;
    constant ADDR_WRITE_TIMESTAMP_V_CTRL   : INTEGER := 16#80000004#;
    constant ADDR_READ_TIMESTAMP_V_DATA_0  : INTEGER := 16#80000010#;
    constant ADDR_READ_TIMESTAMP_V_CTRL    : INTEGER := 16#80000014#;
    constant ADDR_BITS         : INTEGER := 32;

    signal waddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal wmask               : UNSIGNED(31 downto 0);
    signal aw_hs               : STD_LOGIC;
    signal w_hs                : STD_LOGIC;
    signal rdata_data          : UNSIGNED(31 downto 0);
    signal ar_hs               : STD_LOGIC;
    signal raddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal AWREADY_t           : STD_LOGIC;
    signal WREADY_t            : STD_LOGIC;
    signal ARREADY_t           : STD_LOGIC;
    signal RVALID_t            : STD_LOGIC;
    -- internal registers
    signal int_write_timestamp_V : UNSIGNED(31 downto 0) := (others => '0');
    signal int_write_timestamp_V_ap_vld : STD_LOGIC;
    signal int_read_timestamp_V : UNSIGNED(31 downto 0) := (others => '0');
    signal int_read_timestamp_V_ap_vld : STD_LOGIC;


begin
-- ----------------------- Instantiation------------------

-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata else '0';
    WREADY    <=  WREADY_t;
    BRESP     <=  "00";  -- OKAY
    BVALID    <=  '1' when wstate = wrresp else '0';
    wmask     <=  (31 downto 24 => WSTRB(3), 23 downto 16 => WSTRB(2), 15 downto 8 => WSTRB(1), 7 downto 0 => WSTRB(0));
    aw_hs     <=  AWVALID and AWREADY_t;
    w_hs      <=  WVALID and WREADY_t;

    -- write FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wstate <= wrreset;
            elsif (ACLK_EN = '1') then
                wstate <= wnext;
            end if;
        end if;
    end process;

    process (wstate, AWVALID, WVALID, BREADY)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (WVALID = '1') then
                wnext <= wrresp;
            else
                wnext <= wrdata;
            end if;
        when wrresp =>
            if (BREADY = '1') then
                wnext <= wridle;
            else
                wnext <= wrresp;
            end if;
        when others =>
            wnext <= wridle;
        end case;
    end process;

    waddr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (aw_hs = '1') then
                    waddr <= UNSIGNED(AWADDR(ADDR_BITS-1 downto 0));
                end if;
            end if;
        end if;
    end process;

-- ----------------------- AXI READ ----------------------
    ARREADY_t <= '1' when (rstate = rdidle) else '0';
    ARREADY <= ARREADY_t;
    RDATA   <= STD_LOGIC_VECTOR(rdata_data);
    RRESP   <= "00";  -- OKAY
    RVALID_t  <= '1' when (rstate = rddata) else '0';
    RVALID    <= RVALID_t;
    ar_hs   <= ARVALID and ARREADY_t;
    raddr   <= UNSIGNED(ARADDR(ADDR_BITS-1 downto 0));

    -- read FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rstate <= rdreset;
            elsif (ACLK_EN = '1') then
                rstate <= rnext;
            end if;
        end if;
    end process;

    process (rstate, ARVALID, RREADY, RVALID_t)
    begin
        case (rstate) is
        when rdidle =>
            if (ARVALID = '1') then
                rnext <= rddata;
            else
                rnext <= rdidle;
            end if;
        when rddata =>
            if (RREADY = '1' and RVALID_t = '1') then
                rnext <= rdidle;
            else
                rnext <= rddata;
            end if;
        when others =>
            rnext <= rdidle;
        end case;
    end process;

    rdata_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    case (TO_INTEGER(raddr)) is
                    when ADDR_WRITE_TIMESTAMP_V_DATA_0 =>
                        rdata_data <= RESIZE(int_write_timestamp_V(31 downto 0), 32);
                    when ADDR_WRITE_TIMESTAMP_V_CTRL =>
                        rdata_data <= (0 => int_write_timestamp_V_ap_vld, others => '0');
                    when ADDR_READ_TIMESTAMP_V_DATA_0 =>
                        rdata_data <= RESIZE(int_read_timestamp_V(31 downto 0), 32);
                    when ADDR_READ_TIMESTAMP_V_CTRL =>
                        rdata_data <= (0 => int_read_timestamp_V_ap_vld, others => '0');
                    when others =>
                        rdata_data <= (others => '0');
                    end case;
                end if;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_write_timestamp_V <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (write_timestamp_V_ap_vld = '1') then
                    int_write_timestamp_V <= UNSIGNED(write_timestamp_V); -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_write_timestamp_V_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (write_timestamp_V_ap_vld = '1') then
                    int_write_timestamp_V_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_WRITE_TIMESTAMP_V_CTRL) then
                    int_write_timestamp_V_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_read_timestamp_V <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (read_timestamp_V_ap_vld = '1') then
                    int_read_timestamp_V <= UNSIGNED(read_timestamp_V); -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_read_timestamp_V_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (read_timestamp_V_ap_vld = '1') then
                    int_read_timestamp_V_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_READ_TIMESTAMP_V_CTRL) then
                    int_read_timestamp_V_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;


-- ----------------------- Memory logic ------------------

end architecture behave;
