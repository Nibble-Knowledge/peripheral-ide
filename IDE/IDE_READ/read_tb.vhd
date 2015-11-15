--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:03:22 11/13/2015
-- Design Name:   
-- Module Name:   C:/Users/Gham/Desktop/Actual files/IDE/IDE3_final/IDE_READ/read_tb.vhd
-- Project Name:  IDE_READ
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: read_circuit
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
 
ENTITY read_tb IS
END read_tb;
 
ARCHITECTURE behavior OF read_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT read_circuit
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         pa : IN  std_logic;
         sc : IN  std_logic;
         rd_cpu : IN  std_logic;
         rdy : OUT  std_logic;
         IOR : OUT  std_logic;
         data_bus : IN  std_logic_vector(15 downto 0);
         data_out_cpu : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal pa : std_logic := '0';
   signal sc : std_logic := '0';
   signal rd_cpu : std_logic := '0';
   signal data_bus : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal rdy : std_logic;
   signal IOR : std_logic;
   signal data_out_cpu : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: read_circuit PORT MAP (
          clk => clk,
          reset => reset,
          pa => pa,
          sc => sc,
          rd_cpu => rd_cpu,
          rdy => rdy,
          IOR => IOR,
          data_bus => data_bus,
          data_out_cpu => data_out_cpu
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
      wait for 10 ns;

reset <= '1'; 
wait for 10 ns;
reset <= '0';	
wait for 10 ns;	

pa <= '1'; 
sc <= '1'; 
wait for 10 ns;

rd_cpu<= '1'; 
wait for 10 ns;

data_bus<= "0001001000110100";
wait for 10 ns;
rd_cpu<= '0'; 





     -- wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
