----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:06:47 11/12/2015 
-- Design Name: 
-- Module Name:    read_circuit - Behavioral 
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

entity read_circuit is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           pa : in  STD_LOGIC;
           sc : in  STD_LOGIC;
			  rd_cpu: in STD_LOGIC;
			  rdy: out STD_LOGIC;
			  IOR: out STD_LOGIC;
			  data_bus: in STD_LOGIC_VECTOR (15 downto 0);
           data_out_cpu : out  STD_LOGIC_VECTOR (3 downto 0)
);
end read_circuit;

architecture Behavioral of read_circuit is

component re_control is
Port ( c_clk : in  STD_LOGIC;
           c_rst : in  STD_LOGIC;
           cpu_rd : in  STD_LOGIC;
           cpu_sc : in  STD_LOGIC;
           cpu_pa : in  STD_LOGIC;
			  ready  : out STD_LOGIC;
           rd_enable : out  STD_LOGIC;
			  mux_enable : out  std_logic_vector (2 downto 0);
           rd_strobe : out  STD_LOGIC );
end component;

component reg_read is
port(	re_clk: 		in std_logic;
		re_rst:		in std_logic;
		re_ld: 		in std_logic;
		re_reg_in: 	in std_logic_vector(15 downto 0); 	  
		re_reg_out: 	out std_logic_vector(15 downto 0)
    );
end component;

component mux_out is
port(	mux_in: 	in std_logic_vector(15 downto 0); 	 -- data read from hard drive
		mux_enable:	in std_logic_vector (2 downto 0);
		mux_out:	out std_logic_vector(3 downto 0)		 -- data to cpu
		);
end component;

signal rd_enable_s : std_logic;
signal mux_enable_s : std_logic_vector(2 downto 0);
signal data_read_s: std_logic_vector(15 downto 0);

begin

re_cntrl: re_control
port map (clk , reset, rd_cpu, sc, pa, rdy, rd_enable_s , mux_enable_s, IOR);

REG_RD: reg_read
port map (clk , reset, rd_enable_s, data_bus, data_read_s);  


mux_rd: mux_out  				-- read to cpu
	port map (  data_read_s, mux_enable_s, data_out_cpu);

end Behavioral;

