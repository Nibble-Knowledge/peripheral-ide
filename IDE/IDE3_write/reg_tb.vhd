--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:05:00 11/11/2015
-- Design Name:   
-- Module Name:   C:/Users/Gham/Desktop/Actual files/IDE/IDE3_final/IDE3_final/reg_tb.vhd
-- Project Name:  IDE3_final
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Reg_addr
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
 
ENTITY reg_tb IS
END reg_tb;
 
ARCHITECTURE behavior OF reg_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Reg_addr
    PORT(
         Re_clk : IN  std_logic;
         Re_rst : IN  std_logic;
         Re_ld : IN  std_logic;
         Re_reg_in : IN  std_logic_vector(4 downto 0);
         Re_reg_out : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Re_clk : std_logic := '0';
   signal Re_rst : std_logic := '0';
   signal Re_ld : std_logic := '0';
   signal Re_reg_in : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal Re_reg_out : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant Re_clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Reg_addr PORT MAP (
          Re_clk => Re_clk,
          Re_rst => Re_rst,
          Re_ld => Re_ld,
          Re_reg_in => Re_reg_in,
          Re_reg_out => Re_reg_out
        );

   -- Clock process definitions
   Re_clk_process :process
   begin
		Re_clk <= '0';
		wait for Re_clk_period/2;
		Re_clk <= '1';
		wait for Re_clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	
		Re_rst <= '1';
		wait for 10 ns;	
		Re_rst <= '0';
		wait for 10 ns;
		
		Re_reg_in <= "00110";
		wait for 10 ns;
		
		
		Re_ld <= '1';
		wait for 10 ns;
		Re_ld <= '0';
		wait for 5 ns;
		
		Re_ld <= '1';
		wait for 5 ns;
		Re_reg_in <= "11111";
		wait for 10 ns;
		
		
		

     -- wait for Re_clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
