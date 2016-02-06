--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:23:07 12/16/2015
-- Design Name:   
-- Module Name:   C:/Users/Bailey/Documents/IDE V2/IDEV2/tb_IDE_control_unit.vhd
-- Project Name:  IDEV2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: IDE_control_unit
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
 
ENTITY tb_IDE_control_unit IS
END tb_IDE_control_unit;
 
ARCHITECTURE behavior OF tb_IDE_control_unit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IDE_control_unit
    PORT(
         R : IN  std_logic;
         W : IN  std_logic;
         Re : OUT  std_logic;
         CS : IN  std_logic;
         enables : OUT  std_logic_vector(2 downto 0);
         data_select : OUT  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         w_select : OUT  std_logic;
         wr_prev : OUT  std_logic_vector(1 downto 0);
         data_enable : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal R : std_logic := '0';
   signal W : std_logic := '0';
   signal CS : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal Re : std_logic;
   signal enables : std_logic_vector(2 downto 0);
   signal data_select : std_logic;
   signal w_select : std_logic;
   signal wr_prev : std_logic_vector(1 downto 0);
   signal data_enable : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IDE_control_unit PORT MAP (
          R => R,
          W => W,
          Re => Re,
          CS => CS,
          enables => enables,
          data_select => data_select,
          clk => clk,
          reset => reset,
          w_select => w_select,
          wr_prev => wr_prev,
          data_enable => data_enable
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

		--Format of a read
		--State 0
		W <= '1';
		wait for clk_period*6;
		W <= '0';
		wait for clk_period*6;
		
		--State 1
		W <= '1';
		wait for clk_period*6;
		W <= '0';
		wait for clk_period*6;
		
		--State 2
		W <= '1';
		wait for clk_period*6;
		W <= '0';
		wait for clk_period*6;
		
		--State 3
		R <= '1';
		wait for clk_period*6;
		R <= '0';
		wait for clk_period*6;
		
		--State 4
		R <= '1';
		wait for clk_period*6;
		R <= '0';
		wait for clk_period*6;
		
		
		
		--Format of a Write
		--State 0
		W <= '1';
		wait for clk_period*6;
		W <= '0';
		wait for clk_period*6;
		
		--State 1
		W <= '1';
		wait for clk_period*6;
		W <= '0';
		wait for clk_period*6;
		
		--State 2
		W <= '1';
		wait for clk_period*6;
		W <= '0';
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
