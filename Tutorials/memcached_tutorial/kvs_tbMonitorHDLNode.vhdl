-------------------------------------------------------------------------------
--
-- Title       : local_link_sink.vhd - part of the Groucher simulation environment
--
-- Description : This code models the behavior of a local link sink device
--
--               Files:      writes the received data and control into a data file 
--                           every clock cycle 
--                           The characters in the text file are interpreted as hex
--                           Organization is MSB to LSB 
--                           padded with 0s on the MSBs to multiples of 4
-- data bus ' ' ctl signals(valid, done) 
--                           takes the flow ctl signal either through the parameters
--                           or from a file. this is determined through the 
--                           generic BPR_PARA
--               Interface:  the processing starts after rst de-asserts 
--                           the data and control signals are plainly recorded 
--                           the backpressure is driven either from file input
--                           or throught the parameters
--               Parameters: data width
--                           length width 
--                           rem width 
--                           l_present: indicates whether the length inetrface exists or not
--                           bpr_para: when true then DST_RDY_N is driven through
--                                     the following paramters:
--                           bpr_delay: waits for bpr_Delay*clock ticks before 
--                                     commencing assertion   
--                           bpr_period: indicates how often backpressure is asserted
--                                     in clock ticks
--                           bpr_duration: inidcates for how long backpressure is 
--                                     asserted within one period.  
--                                     DURATION < PERIOD!
--                           BPR_FILENAME : file name of input backpressure file
--                           PKT_FILENAME : filename of output data file
--
--
-- ----------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.all;

LIBRARY STD;
USE STD.TEXTIO.ALL;

entity kvs_tbMonitorHDLNode is
generic (
   D_WIDTH : integer := 64;
   BPR_PARA : Boolean := true; -- decides whether BPR from parameter or file
   BPR_DELAY : integer := 100; -- in cycles
   BPR_PERIOD : integer := 20; -- in cycles
   BPR_DURATION : integer := 2; -- in cycles
   BPR_EN : Boolean := true;
   BPR_FILENAME : string := "bpr.txt";
   PKT_FILENAME : string := "pkt.out.txt";
   GLD_FILENAME : string := "pkt/ALLSEQS-pkt.out.txt";
   GLD_LENGTH : integer := 43578
);
port (
    clk : in  std_logic;
    rst : in  std_logic;
    udp_in_ready        : out 	std_logic; 
    udp_in_valid        : in 	std_logic; 
    udp_in_keep       	: in 	std_logic_vector(7 downto 0); 
    udp_in_user      	: in 	std_logic_vector(111 downto 0); 
    udp_in_last        	: in 	std_logic; 
    udp_in_data         : in 	std_logic_vector (63 downto 0);
    done                : out std_logic
);
end kvs_tbMonitorHDLNode;


architecture structural of kvs_tbMonitorHDLNode is

constant FD_WIDTH  : integer := ((D_WIDTH-1) / 4)*4 + 4;

signal udp_in_stall_raw : std_logic;
signal para_bpr : std_logic;
signal file_bpr : std_logic;
signal udp_in_ready_im : std_logic;
signal out_counter : integer := 0;
signal err_counter : integer := 0;
signal done_reg : std_logic := '0';

begin

-- switches between parameter and file input mode
udp_in_stall_raw <= para_bpr when BPR_PARA else file_bpr;
udp_in_ready_im <= NOT udp_in_stall_raw when BPR_EN else '0';
udp_in_ready <= udp_in_ready_im;
done <= done_reg;

-- backpressure from parameter process
pbpr_p: process
begin
   if (BPR_DURATION > BPR_PERIOD) then
      assert false report "BPR_PERIOD must be greater/equal than BPR_DURATION" severity failure; 
   end if;

   para_bpr <= '0';
   wait until rst = '0';

   -- wait the once of start-up delay after rst
   for i in 0 to BPR_DELAY-1 loop
      wait until (clk'event and clk='1');
   end loop;

   -- start backpressuring
   while true loop
      for i in 0 to (BPR_PERIOD-BPR_DURATION-1) loop
         wait until (clk'event and clk='1');
      end loop;
      para_bpr <= '1';
      for i in 0 to (BPR_DURATION-1) loop
         wait until (clk'event and clk='1');
      end loop;
      para_bpr <= '0';
   end loop;
end process;

-- backpressure from file process
fbpr_p: process
   FILE input_file : TEXT;
   variable l : line;
   variable read_dat : std_logic_vector(3 downto 0);
begin
   wait until rst = '0';
   if (not BPR_PARA) then
      file_open(input_file, BPR_FILENAME, READ_MODE);
      while (not endfile(input_file)) loop
         wait until CLK'event and CLK='1'; 
         READLINE(input_file, l);
         HREAD(l, read_dat);
         file_bpr <= read_dat(0);
      end loop;
      file_close(input_file);
   end if;
end process;

-- write process for the received packet
write_pktfile_p : process
   FILE pkt_file : TEXT OPEN WRITE_MODE IS PKT_FILENAME;
   FILE gld_file : TEXT OPEN READ_MODE IS GLD_FILENAME;
   variable c         : character;
   variable lg       : line;
   variable read_dat    : std_logic_vector(63 downto 0);
   variable read_keep     : std_logic_vector(7 downto 0);
   variable l  			: line;
   variable d 			: character := 'D';
   variable blank 		: character := ' ';
   --variable user_vector : std_logic_vector(111 downto 0);
   variable dat_vector 	: std_logic_vector(63 downto 0);
   variable keep_vector : std_logic_vector(7 downto 0);
   variable ctl_vector 	: std_logic_vector(3 downto 0);
	variable last	 	: std_logic_vector(0 downto 0);
	variable modulus 	: std_logic_vector(2 downto 0);

begin
   if (D_WIDTH=0) then
      assert false report "D_WIDTH and R_WIDTH must be greater than 0" severity failure;
   end if;

   wait until rst='0'; 
   while TRUE loop
      -- write each cycle
      wait until CLK'event and CLK='1';
      -- padding
--user_vector	:= udp_in_user;
      dat_vector	:= udp_in_data;
      keep_vector 	:= udp_in_keep;
      last(0)		:= udp_in_last;
      dat_vector(FD_WIDTH-1 downto D_WIDTH) := (others => '0');
      ctl_vector(3 downto 0) := '0' & '0' & (udp_in_valid AND udp_in_ready_im) & '0'; -- udp_in_done is deprecated
		-- compose output line and mas modulus.
      if (udp_in_valid = '1' and udp_in_ready_im = '1') then
          out_counter <= out_counter + 1;
         hwrite(l, dat_vector(FD_WIDTH-1 downto 64));
         case keep_vector is
             when "00000001" => hwrite(l, "00000000000000000000000000000000000000000000000000000000"); hwrite(l, dat_vector(7 downto 0));
             when "00000011" => hwrite(l, "000000000000000000000000000000000000000000000000"); hwrite(l, dat_vector(15 downto 0));
             when "00000111" => hwrite(l, "0000000000000000000000000000000000000000"); hwrite(l, dat_vector(23 downto 0));
             when "00001111" => hwrite(l, "00000000000000000000000000000000"); hwrite(l, dat_vector(31 downto 0));
             when "00011111" => hwrite(l, "000000000000000000000000"); hwrite(l, dat_vector(39 downto 0));
             when "00111111" => hwrite(l, "0000000000000000"); hwrite(l, dat_vector(47 downto 0));
             when "01111111" => hwrite(l, "00000000"); hwrite(l, dat_vector(55 downto 0));
             when others => hwrite(l, dat_vector(63 downto 0));
         end case;
         write(l,blank);
         hwrite(l, keep_vector);
         write(l,blank);
         hwrite(l, last);
         write(l,blank);
         hwrite(l, ctl_vector);
         -- writing
         writeline(pkt_file, l);

         -- reading golden file
         READLINE(gld_file, lg);
         -- parse data line
         HREAD(lg,read_dat);
         READ(lg,c);--blank
         HREAD(lg,read_keep);
         case read_keep is
             when "00000001" => if (dat_vector(7 downto 0) /= read_dat(7 downto 0)) then err_counter <= err_counter + 1; end if;
             when "00000011" => if (dat_vector(15 downto 0) /= read_dat(15 downto 0)) then err_counter <= err_counter + 1; end if;
             when "00000111" => if (dat_vector(23 downto 0) /= read_dat(23 downto 0)) then err_counter <= err_counter + 1; end if;
             when "00001111" => if (dat_vector(31 downto 0) /= read_dat(31 downto 0)) then err_counter <= err_counter + 1; end if;
             when "00011111" => if (dat_vector(39 downto 0) /= read_dat(39 downto 0)) then err_counter <= err_counter + 1; end if;
             when "00111111" => if (dat_vector(47 downto 0) /= read_dat(47 downto 0)) then err_counter <= err_counter + 1; end if;
             when "01111111" => if (dat_vector(55 downto 0) /= read_dat(55 downto 0)) then err_counter <= err_counter + 1; end if;
             when others => if (dat_vector(63 downto 0) /= read_dat(63 downto 0)) then err_counter <= err_counter + 1; end if;
         end case;
         if (out_counter = GLD_LENGTH - 1) then
          done_reg <= '1';
          report "Num of errors = " & integer'image(err_counter);
          --report "simulation finished successfully" severity FAILURE;
         end if;
      end if;
   end loop;
end process;

end structural;
