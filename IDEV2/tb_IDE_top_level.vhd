--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:38:05 12/15/2015
-- Design Name:   
-- Module Name:   C:/Users/Bailey/Desktop/IDEController/IDEController/tb_IDE_top_level.vhd
-- Project Name:  IDEController
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: IDE_top_level
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
 
ENTITY tb_IDE_top_level IS
END tb_IDE_top_level;
 
ARCHITECTURE behavior OF tb_IDE_top_level IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IDE_top_level
    PORT(
         W : IN  std_logic;
         R : IN  std_logic;
         Re : OUT  std_logic;
         CS : IN  std_logic;
         CPU_data : INOUT  std_logic_vector(3 downto 0);
         CS1FX : OUT  std_logic;
         CS3FX : OUT  std_logic;
         DA : OUT  std_logic_vector(2 downto 0);
         HD_data : INOUT  std_logic_vector(7 downto 0);
         DIOR : OUT  std_logic;
         DIOW : OUT  std_logic;
         reset : IN  std_logic;
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal W : std_logic := '0';
   signal R : std_logic := '0';
   signal CS : std_logic := '0';
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

	--BiDirs
   signal CPU_data : std_logic_vector(3 downto 0);
   signal HD_data : std_logic_vector(7 downto 0);

 	--Outputs
   signal Re : std_logic;
   signal CS1FX : std_logic;
   signal CS3FX : std_logic;
   signal DA : std_logic_vector(2 downto 0);
   signal DIOR : std_logic;
   signal DIOW : std_logic;

   -- Clock period definitions
   constant clk_period : time := 30 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IDE_top_level PORT MAP (
          W => W,
          R => R,
          Re => Re,
          CS => CS,
          CPU_data => CPU_data,
          CS1FX => CS1FX,
          CS3FX => CS3FX,
          DA => DA,
          HD_data => HD_data,
          DIOR => DIOR,
          DIOW => DIOW,
          reset => reset,
          clk => clk
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		reset <= '1';
      wait for clk_period*10;
		reset <= '0';
      wait for clk_period*6;
		reset <= '1';
		wait for clk_period*6;
		
		--Setup
		CS <= '0';
		W <= '1';
		CPU_data <= "0001";
		wait for clk_period*6;
		
		--State 0
		W <= '0';
		wait for clk_period*6;
		CPU_data <= "0010";
		wait for clk_period*6;
		W <= '1';
		wait for clk_period*6;
		
		--State 1
		W <= '0';
		wait for clk_period*6;
		CPU_data <= "0011";
		wait for clk_period*6;
		W <= '1';
		wait for clk_period*6;
		
		--State 2
		W <= '0';
		wait for clk_period*6;
		CPU_data <= "ZZZZ";
		wait for clk_period*6;
		
		--State 3
		R <= '1';
		HD_data <= "10101110";
		wait for clk_period*6;
		R <= '0';
		wait for clk_period*6;
		
		--State 4
		R <= '1';
		wait for clk_period*6;
		R <= '0';
		HD_data <= "ZZZZZZZZ";
		wait for clk_period*6;



		--TESTING A WRITE
		W <= '1';
		wait for clk_period*6;
		CPU_data <= "0001";
		wait for clk_period*6;
		
		--State 0
		W <= '0';
		wait for clk_period*6;
		CPU_data <= "0010";
		wait for clk_period*6;
		W <= '1';
		wait for clk_period*6;
		
		--State 1
		W <= '0';
		wait for clk_period*6;
		CPU_data <= "0011";
		wait for clk_period*6;
		W <= '1';
		wait for clk_period*6;
		
		--State 2
		W <= '0';
		wait for clk_period*6;
		CPU_data <= "ZZZZ";
		wait for clk_period*6;
		
		--State 3
		W <= '1';
		wait for clk_period*6;
		W <= '0';
		wait for clk_period*6;
		
		--State 4
		W <= '1';
		wait for clk_period*6;
		W <= '0';
		wait for clk_period*6;
		

      wait;
   end process;

END;
