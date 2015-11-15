--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:41:47 11/12/2015
-- Design Name:   
-- Module Name:   C:/Users/Gham/Desktop/Actual files/IDE/IDE3_final/IDE3_final/sr_tb.vhd
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
 
ENTITY sr_tb IS
END sr_tb;
 
ARCHITECTURE behavior OF sr_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SHIFT_REGISTER
    PORT(
         CLK : IN  std_logic;
         DATA : IN  std_logic_vector(3 downto 0);
         RESET : IN  std_logic;
         enable : IN  std_logic;
         OUTPUT : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal DATA : std_logic_vector(3 downto 0) := (others => '0');
   signal RESET : std_logic := '0';
   signal enable : std_logic := '0';

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
          enable => enable,
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
		

 RESET <= '1';
 wait for 10 ns;

 RESET<= '0';
 wait for 10 ns;

 
 DATA<= "0001";
 wait for 10 ns;
 enable<= '1';
 wait for 10 ns;
enable<= '0';

wait for 10 ns;
DATA<= "0010";
wait for 10 ns;
enable<= '1';
wait for 10 ns;
enable<= '0';

 wait for 10 ns;
 DATA<= "0011"; 
 wait for 10 ns;
 enable<= '1';
wait for 10 ns;
enable<= '0';

  
  
 wait for 10 ns;
 DATA<= "0100";
 wait for 10 ns;
 enable<= '1';
wait for 10 ns;
enable<= '0';

 


      --wait for CLK_period*10;

      -- insert stimulus here 
		

      wait;
   end process;

END;
