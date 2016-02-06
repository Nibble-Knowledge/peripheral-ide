----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:27:07 12/15/2015 
-- Design Name: 
-- Module Name:    IDE_control_unit - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IDE_control_unit is
    Port ( R : in  STD_LOGIC;
           W : in  STD_LOGIC;
           Re : out  STD_LOGIC;
           CS : in  STD_LOGIC;
           enables : out  STD_LOGIC_VECTOR (2 downto 0);
           data_select : out  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  w_select: out STD_LOGIC;
			  wr_prev: out STD_LOGIC_VECTOR (1 downto 0);
			  data_enable: out STD_LOGIC);
end IDE_control_unit;

architecture Behavioral of IDE_control_unit is

signal cycle_counter : std_logic_vector(2 downto 0) := "000";
signal prev_W : STD_LOGIC := '0';
signal prev_R : STD_LOGIC := '0';
signal i_ready : STD_LOGIC := '0';


begin

--Process to count and reset at required locations
process(clk, reset, R, W)
begin
		if rising_edge(clk) and CS = '0' then
			if prev_W = '1' and W = '0' then
				cycle_counter <= cycle_counter + '1';
				if cycle_counter = "100" then
					cycle_counter <= "000";
				end if;
			elsif prev_R = '1' and R = '0' then
				cycle_counter <= cycle_counter + '1';
				if cycle_counter = "100" then
					cycle_counter <= "000";
					i_ready <= '0';
				end if;
			elsif prev_R = '0' and R = '1' then
				if cycle_counter = "011" then
					i_ready <= '1';
				end if;
			end if;
			
			prev_W <= W;
			prev_R <= R;
			wr_prev <= prev_W & prev_R;
		end if;
			
		
	
	if reset = '1' then
		cycle_counter <= "000";
	end if;
	
end process;

--Combinational enable signals based on the table of signals on Google Drive

enables <= "001" when cycle_counter = "000" else 
				"010" when cycle_counter = "001" else
				"100" when cycle_counter = "010" else
				"000";

w_select <= '0' when cycle_counter = "011" else 
				'1';
data_select <= '0' when cycle_counter = "011" else 
					'1';
Re <= '1';

data_enable <=	'1' when (cycle_counter = "011" AND i_ready = '1') OR
								(cycle_counter = "100" AND i_ready = '1') else
					'0';
					

end Behavioral;

