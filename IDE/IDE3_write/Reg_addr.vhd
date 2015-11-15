----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:49:07 11/11/2015 
-- Design Name: 
-- Module Name:    Reg_addr - Behavioral 
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

entity Reg_addr is

port(	Re_clk: 		in std_logic;
		Re_rst:		in std_logic;
		Re_ld: 		in std_logic;
		Re_reg_in: 	in std_logic_vector(4 downto 0); 	  
		Re_reg_out: out std_logic_vector(4 downto 0)
    );
end Reg_addr;

architecture Behavioral of Reg_addr is

begin

 process(Re_clk, Re_rst, Re_ld)
    begin
	 if Re_rst = '1' then
                  Re_reg_out<=(others=>'0'); 
        --if (Re_rst='1') then
	    --Re_reg_out <= (Re_reg_out'range=>'0');
        elsif (Re_clk'event and Re_clk='1') and (Re_ld='1') then
	   -- if (Re_ld='1') then
	        Re_reg_out <= Re_reg_in;
	    --end if;
        end if;
    end process;


end Behavioral;

