----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:29:02 11/11/2015 
-- Design Name: 
-- Module Name:    control - Behavioral 
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

entity control is
    Port ( c_clk : in  STD_LOGIC;
           c_rst : in  STD_LOGIC;
           c_cpu_wr : in  STD_LOGIC;
           c_cpu_sc : in  STD_LOGIC;
           parity : in  STD_LOGIC;
           c_address_enable : out  STD_LOGIC;
           c_wr_enable : out  STD_LOGIC;
			  --stored_enable: out  STD_LOGIC;
           wr_strobe : out  STD_LOGIC );
end control;

architecture Behavioral of control is

type states is (idle, hold0, load_addr, hold1, strobe, hold2, hold3, write_data, write_data2);
signal nState, cState: states;

begin
control: process(c_clk, c_rst)
    begin
        if (c_rst = '1') then 
            cState <= idle;
        elsif (c_clk'event and c_clk = '1') then 
            cState <= nState;
        end if;
    end process;

    control_unit: process(cState, parity, c_cpu_sc, c_cpu_wr)	  --, parity, c_cpu_sc
    begin

	case cState is 
	
						when idle =>
										c_address_enable <= '1';	
								  	   c_wr_enable <= '0';
										--stored_enable<= '0';
										wr_strobe <= '1';
										if (c_cpu_sc = '1') and (parity = '1')and (c_cpu_wr = '1') then  -- if still '1' 
										nState <= hold0;
										else 
										nState <= idle;
										end if;
						
						when hold0 =>
										c_address_enable <= '0';	
								  	   c_wr_enable <= '0';
										--stored_enable<= '0';
										wr_strobe <= '1';
										--if (c_cpu_wr = '1') then
										nState <= load_addr;
									--	else nState <= idle;
									--	end if;
										
						when load_addr =>
										c_address_enable <= '0';	
								  	   c_wr_enable <= '0';
										--stored_enable<= '0';
										wr_strobe <= '1';
										nState <= hold1;
										
						when hold1 =>
										c_address_enable <= '0';	
								  	   c_wr_enable <= '0';
										--stored_enable<= '0';
										wr_strobe <= '1';
										nState <= strobe;
										
										
						when strobe =>
										c_address_enable <= '0';	
								  	   c_wr_enable <= '0';
										--stored_enable<= '1';
										wr_strobe <= '0';
										nState <= hold2;
						
						when hold2 =>
										c_address_enable <= '0';	
								  	   c_wr_enable <= '0';
										--stored_enable <= '0';
										wr_strobe <= '1';
										nState <= hold3;
							
						when hold3 =>
										c_address_enable <= '0';	
								  	   c_wr_enable <= '0';
										wr_strobe <= '1';
										nState <= write_data;
										
						when write_data =>
										c_address_enable <= '0';	
								  	   c_wr_enable <= '1';
										wr_strobe <= '1';
										nState <= idle;
										
						when others =>
										c_address_enable <= '0';
								  	   c_wr_enable <= '0';
										wr_strobe <= '1';
										nState <= idle;
										
						end case;
						end process;

   

end Behavioral;

