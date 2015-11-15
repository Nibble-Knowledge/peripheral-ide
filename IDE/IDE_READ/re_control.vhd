----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:32:01 11/12/2015 
-- Design Name: 
-- Module Name:    re_control - Behavioral 
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

entity re_control is
Port ( c_clk : in  STD_LOGIC;
           c_rst : in  STD_LOGIC;
           cpu_rd : in  STD_LOGIC;
           cpu_sc : in  STD_LOGIC;
           cpu_pa : in  STD_LOGIC;
			  ready  : out STD_LOGIC;
           rd_enable : out  STD_LOGIC;
			  mux_enable : out  STD_LOGIC_vector(2 downto 0);
           rd_strobe : out  STD_LOGIC );
end re_control;

architecture Behavioral of re_control is
type states is (idle, hold, hold1, read0, read1, read2, read3, read4, finish);
signal nState, cState: states;

begin
re_control: process(c_clk, c_rst)
    begin
        if (c_rst = '1') then 
            cState <= idle;
        elsif (c_clk'event and c_clk = '1') then 
            cState <= nState;
        end if;
    end process;

    re_control_unit: process(cState, cpu_pa, cpu_sc, cpu_rd)	  --, parity, c_cpu_sc
    begin

	case cState is 
	
						when idle =>
								  	   rd_enable <= '0';
										rd_strobe <= '1';
										ready<= '0';
										mux_enable <= "000";
										if ((cpu_sc = '1') and (cpu_pa = '1')) then  
										nState <= hold;
										else 
										nState <= idle;
										end if;
										
						when hold =>
								  	   rd_enable <= '0';
										rd_strobe <= '1';
										ready <= '0';
										mux_enable <= "000";
										if (cpu_rd = '1') then
										nState <= hold1;
										else nState <= idle;
										end if;
										
						when hold1 =>
								  	   rd_enable <= '0';
										rd_strobe <= '0';
										ready <= '1';										
										mux_enable <= "000";
										nState <= read0;
						
						when read0 =>
								  	   rd_enable <= '1';
										rd_strobe <= '1';
										ready <= '1';
										mux_enable <= "000";										
										nState <= read1;
										
					   when read1 =>
								  	   rd_enable <= '0';
										rd_strobe <= '1';
										ready <= '1';
										mux_enable <= "001";
										nState <= read2;
						
						when read2 =>
								  	   rd_enable <= '0';
										rd_strobe <= '1';
										ready <= '1';
										mux_enable <= "010";
										nState <= read3;
						when read3 =>
								  	   rd_enable <= '0';
										rd_strobe <= '1';
										ready <= '1';
										mux_enable <= "011";
										nState <= read4;
						when read4 =>
								  	   rd_enable <= '0';
										rd_strobe <= '1';
										ready <= '1';
										mux_enable <= "100";
										nState <= finish;
										
						when finish =>
								  	   rd_enable <= '0';
										rd_strobe <= '1';
										ready <= '0';
										mux_enable <= "000";
										nState <= idle;
						
						when others =>
								  	   rd_enable <= '0';
										rd_strobe <= '1';
										ready <= '0';
										mux_enable <= "000";
										nState <= idle;
										
						end case;
						end process;
										

end Behavioral;

