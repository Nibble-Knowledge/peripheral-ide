----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:27:16 11/11/2015 
-- Design Name: 
-- Module Name:    edge_detector - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


entity edge_detector is
      Port ( e_clk      : in  STD_LOGIC;
             WR_signal  : in  STD_LOGIC;
             w_ready, w_ready2     : out  STD_LOGIC);-- 
end edge_detector;

architecture Behavioral of edge_detector is
signal signal_d:STD_LOGIC;

begin
    process(e_clk)
    begin
	 -- if e_reset <= '1' then 
	  --w_ready <= '0';
--	  w_ready2 <= '0';
         if e_clk= '1' and e_clk'event then
               signal_d <= WR_signal;
         end if;
    end process;
	 
    w_ready <= (not signal_d) and WR_signal; 
	 w_ready2 <= (not signal_d) and WR_signal;
	 
end Behavioral;
