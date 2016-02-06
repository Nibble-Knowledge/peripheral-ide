----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:08:07 12/15/2015 
-- Design Name: 
-- Module Name:    IDE_top_level - Behavioral 
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

entity IDE_top_level is
    Port ( W : in  STD_LOGIC;
           R : in  STD_LOGIC;
           Re : out  STD_LOGIC;
           CS : in  STD_LOGIC;
           CPU_data : inout  STD_LOGIC_VECTOR (3 downto 0);
           CS1FX : out  STD_LOGIC;
           CS3FX : out  STD_LOGIC;
           DA : out  STD_LOGIC_VECTOR (2 downto 0);
           HD_data : inout  STD_LOGIC_VECTOR (7 downto 0);
           DIOR : out  STD_LOGIC;
           DIOW : out  STD_LOGIC;
			  reset : in	STD_LOGIC;
			  clk : in 	STD_LOGIC;
			  out_enables : OUT STD_LOGIC_VECTOR(2 downto 0);
			  wr_prev : OUT std_logic_vector (1 downto 0));
			  
end IDE_top_level;

architecture Behavioral of IDE_top_level is
	
	
	COMPONENT IDE_control_unit
	PORT(
		R : IN std_logic;
		W : IN std_logic;
		CS : IN std_logic;
		clk : IN std_logic;
		reset : IN std_logic;          
		Re : OUT std_logic;
		enables : OUT std_logic_vector(2 downto 0);
		data_select : OUT std_logic;
		w_select : OUT std_logic;
		data_enable : OUT std_logic;
		wr_prev : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;
	
	component Reg is
    Port ( data_in : in  STD_LOGIC_VECTOR (3 downto 0);
           data_out : out  STD_LOGIC_VECTOR (3 downto 0);
           enable : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC);
	end component;
	

signal i_clk : STD_LOGIC;
signal i_enables : STD_LOGIC_VECTOR (2 downto 0);
signal i_data_s : STD_LOGIC;
signal i_w_select : STD_LOGIC;
signal i_data_en : STD_LOGIC;
signal i_enables_cs : STD_LOGIC_VECTOR (2 downto 0);

signal i_CMD_out : STD_LOGIC_VECTOR (3 downto 0);
signal i_D0_out : STD_LOGIC_VECTOR (3 downto 0);
signal i_D1_out : STD_LOGIC_VECTOR (3 downto 0);

signal i_CPU_data_out : STD_LOGIC_VECTOR (3 downto 0);



begin
	
	
	
	CONTROL: IDE_control_unit PORT MAP(
		R => R,
		W => W,
		Re => Re,
		CS => CS,
		enables => i_enables,
		data_select => i_data_s,
		clk => i_clk,
		reset => not reset,
		w_select => i_w_select,
		wr_prev => wr_prev,
		data_enable => i_data_en
	);
	
	
	CMD: Reg port map(  
				data_in => CPU_data,
				data_out => i_CMD_out,
				enable => i_enables_cs(0),
				clk => i_clk,
				rst => not reset
	);


	D0: Reg port map(  
				data_in => CPU_data,
				data_out => i_D0_out,
				enable => i_enables_cs(2),
				clk => i_clk,
				rst => not reset
	);
	
	D1: Reg port map(  
				data_in => CPU_data,
				data_out => i_D1_out,
				enable => i_enables_cs(1),
				clk => i_clk,
				rst => not reset
	);
	
	--Strobes
	DIOR <= NOT i_data_en;
	DIOW <= '1' when i_w_select = '1' else NOT W;
	
	--Address
	CS1FX <= NOT i_CMD_out(3);
	CS3FX <= i_CMD_out(3);
	DA <= i_CMD_out(2 downto 0);
	
	--Data
	HD_data <= i_D1_out & i_D0_out when i_data_en = '0' else "ZZZZZZZZ";
	
	i_CPU_data_out <= HD_data(7 downto 4) when i_data_s = '0' else HD_data(3 downto 0);
	
	CPU_data <= i_CPU_data_out when i_data_en = '1' else "ZZZZ";
	
	i_enables_cs <= i_enables when CS = '0' else "000";
	
	out_enables <= i_enables_cs;
	i_clk <= clk;

end Behavioral;

