----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:19:23 11/11/2015 
-- Design Name: 
-- Module Name:    sixteen_bit_reg - Behavioral 
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

entity sixteen_bit_reg is

port(	s_clk: 		in std_logic;
		s_rst:		in std_logic;
		s_ld: 		in std_logic;
		s_reg_in: 	in std_logic_vector(15 downto 0); 	  
		s_reg_out: out std_logic_vector(15 downto 0)
    );
end sixteen_bit_reg;

architecture Behavioral of sixteen_bit_reg is

begin

 process(s_clk, s_rst, s_ld)
    
	 begin
		if s_rst = '1' then
        s_reg_out<=(others=>'0'); 
		  
        elsif (s_clk'event and s_clk='1') and (s_ld='1') then
	     s_reg_out <= s_reg_in;
	    
        end if;
        end process;


end Behavioral;

