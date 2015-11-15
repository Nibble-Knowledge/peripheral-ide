----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:03:33 11/10/2015 
-- Design Name: 
-- Module Name:    parity_check - Behavioral 
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

entity parity_check is
    Port ( cs : in  STD_LOGIC;
           pa : in  STD_LOGIC;
           cpu_wr : in  STD_LOGIC;
           checked : out  STD_LOGIC);
end parity_check;

architecture Behavioral of parity_check is
	  
signal temp: STD_LOGIC;

begin
temp <= pa and cs;
checked <= temp and cpu_wr;

end Behavioral;

