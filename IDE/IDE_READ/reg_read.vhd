----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:15:00 11/12/2015 
-- Design Name: 
-- Module Name:    reg_read - Behavioral 
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

entity reg_read is
port(	re_clk: 		in std_logic;
		re_rst:		in std_logic;
		re_ld: 		in std_logic;
		re_reg_in: 	in std_logic_vector(15 downto 0); 	  
		re_reg_out: 	out std_logic_vector(15 downto 0)
    );
end reg_read;

architecture Behavioral of reg_read is
begin
 process(re_clk, re_rst, re_ld)
    begin
        if (re_rst='1') then
	    re_reg_out <= (others=>'0');
        elsif (re_clk'event and re_clk='1') then
	    if (re_ld='1') then
	        re_reg_out <= re_reg_in;
	    end if;
        end if;
    end process;

end Behavioral;

