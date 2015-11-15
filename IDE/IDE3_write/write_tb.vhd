--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:36:53 11/11/2015
-- Design Name:   
-- Module Name:   C:/Users/Gham/Desktop/Actual files/IDE/IDE3_final/IDE3_final/write_tb.vhd
-- Project Name:  IDE3_final
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: write_circuit
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
 
ENTITY write_tb IS
END write_tb;
 
ARCHITECTURE behavior OF write_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT write_circuit
    PORT(
         wr_clk : IN  std_logic;
         wr_reset : IN  std_logic;
         wr_pa : IN  std_logic;
         wr_cs : IN  std_logic;
         wr_cpu_wr : IN  std_logic;
         wr_data_in : IN  std_logic_vector(3 downto 0);
         address : OUT  std_logic_vector(4 downto 0);
         wr_data_out : OUT  std_logic_vector(15 downto 0);
         wr_ready : OUT  std_logic;
         IOW : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal wr_clk : std_logic := '0';
   signal wr_reset : std_logic := '0';
   signal wr_pa : std_logic := '0';
   signal wr_cs : std_logic := '0';
   signal wr_cpu_wr : std_logic := '0';
   signal wr_data_in : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal address : std_logic_vector(4 downto 0);
   signal wr_data_out : std_logic_vector(15 downto 0);
   signal wr_ready : std_logic;
   signal IOW : std_logic;

   -- Clock period definitions
   constant wr_clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: write_circuit PORT MAP (
          wr_clk => wr_clk,
          wr_reset => wr_reset,
          wr_pa => wr_pa,
          wr_cs => wr_cs,
          wr_cpu_wr => wr_cpu_wr,
          wr_data_in => wr_data_in,
          address => address,
          wr_data_out => wr_data_out,
          wr_ready => wr_ready,
          IOW => IOW
        );

   -- Clock process definitions
   wr_clk_process :process
   begin
		wr_clk <= '0';
		wait for wr_clk_period/2;
		wr_clk <= '1';
		wait for wr_clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin	

 wait for wr_clk_period*2;	
      -- hold reset state for 100 ns.
      wait for 10 ns;	
		
		wr_reset <= '1';
		wait for 10 ns;
		wr_reset <= '0';
		wait for 10 ns;
		
		wr_pa <= '1';
		wr_cs <= '1';
		wait for 10 ns;
		
		wr_cpu_wr <= '1';
		wait until wr_ready = '1';
		wr_data_in <= "0001";
		wait for 5 ns;
		wr_cpu_wr <= '0';
		wait for 10 ns;
		
		wr_cpu_wr <= '1';
		wait until wr_ready = '1';
		wr_data_in <= "0010";
		wait for 10 ns;
		wr_cpu_wr <= '0';
		wait for 10 ns;
		
		wr_cpu_wr <= '1';
		wait until wr_ready = '1';
		wr_data_in <= "0011";
		wait for 10 ns;
		wr_cpu_wr <= '0';
		wait for 10 ns;
		
		wr_cpu_wr <= '1';
		wait until wr_ready = '1';
		wr_data_in <= "0100";
		wait for 10 ns;
		wr_cpu_wr <= '0';
	--	wait for 10 ns;

     --wait for wr_clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
