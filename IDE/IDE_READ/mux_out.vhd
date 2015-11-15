----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:25:44 11/12/2015 
-- Design Name: 
-- Module Name:    mux_out - Behavioral 
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

entity mux_out is
port(	mux_in: 	in std_logic_vector(15 downto 0); 	 -- data read from hard drive
		mux_enable:	in std_logic_vector (2 downto 0);
		mux_out:	out std_logic_vector(3 downto 0)		 -- data to cpu
		);
end mux_out;

architecture Behavioral of mux_out is

begin
process(mux_in, mux_enable)
    begin
       
		 case mux_enable is
	        when   "001" => mux_out <= mux_in (15 downto 12);
			  when   "010" => mux_out <= mux_in (11 downto 8); --when Re_ld  "0010";
			  when   "011" => mux_out <= mux_in (7 downto 4); --when Re_ld  "0011";
			  when   "100" => mux_out <= mux_in (3 downto 0); --when Re_ld  "0100";
			  when others =>	 mux_out <= "ZZZZ";
		 end case;

    end process;

end Behavioral;

