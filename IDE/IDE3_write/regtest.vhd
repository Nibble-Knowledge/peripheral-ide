--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:51:47 11/11/2015
-- Design Name:   
-- Module Name:   C:/Users/Gham/Desktop/Actual files/IDE/IDE3_final/IDE3_final/regtest.vhd
-- Project Name:  IDE3_final
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SHIFT_REGISTER
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY regtest IS
END regtest;
 
ARCHITECTURE behavior OF regtest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SHIFT_REGISTER
    PORT(
         CLK : IN  std_logic;
         DATA : IN  std_logic_vector(3 downto 0);
         RESET,enable : IN  std_logic;
         OUTPUT : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal DATA : std_logic_vector(3 downto 0) := (others => '0');
   signal RESET, enable : std_logic := '0';

 	--Outputs
   signal OUTPUT : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SHIFT_REGISTER PORT MAP (
          CLK => CLK,
          DATA => DATA,
          RESET => RESET,
			 enable=> enable,
          OUTPUT => OUTPUT
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	

     -- wait for CLK_period*10;
RESET <= '1';
WAIT FOR 10 NS;
RESET <= '0';
WAIT FOR 10 NS;
      -- insert stimulus here 
DATA <= "1111";
WAIT FOR 10 NS ;
enable<= '1';
WAIT FOR 10 NS ;
enable<= '0';
DATA <= "0000";
WAIT FOR 10 NS ;
enable<= '1';
WAIT FOR 10 NS ;
enable<= '0';
DATA <= "1111";
WAIT FOR 10 NS ;
enable<= '1';
WAIT FOR 10 NS ;
enable<= '0';
DATA <= "0000";
WAIT FOR 10 NS ;
enable<= '1';
WAIT FOR 10 NS ;
enable<= '0';



      wait;
   end process;

END;
