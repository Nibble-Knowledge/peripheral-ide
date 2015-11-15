----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:43:15 11/10/2015 
-- Design Name: 
-- Module Name:    shift_reg - Behavioral 
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



entity SHIFT_REGISTER is
     --Generic( CAPACITY : integer := 16);
          Port  ( CLK            :  in  STD_LOGIC;
                      DATA          :  in  STD_LOGIC_vector(3 downto 0);
                      RESET,enable      :  in  STD_LOGIC;
                     OUTPUT    :  out  STD_LOGIC_vector(15 downto 0)
							);
     end SHIFT_REGISTER;

architecture Behavioral of SHIFT_REGISTER is
signal reg: Std_Logic_Vector(15 downto 0):=(others=>'0'); 
begin
    process(CLK,RESET)
        begin
           if RESET = '1' then
                   reg<=(others=>'0'); 
            elsif (rising_edge(CLK)) and (enable = '1') then
                     reg<= reg(11 downto 0) & DATA  ; --&= concatenation                 
            end if; 
  end process;
  
OUTPUT<=reg(15 downto 0 );

end Behavioral;

