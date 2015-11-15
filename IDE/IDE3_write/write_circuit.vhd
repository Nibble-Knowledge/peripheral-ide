----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:47:33 11/11/2015 
-- Design Name: 
-- Module Name:    write_circuit - Behavioral 
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

entity write_circuit is
    Port ( wr_clk : in  STD_LOGIC;
           wr_reset : in  STD_LOGIC;
           wr_pa : in  STD_LOGIC;
           wr_cs : in  STD_LOGIC;
			  wr_cpu_wr: in STD_logic;
           wr_data_in : in  STD_LOGIC_VECTOR (3 downto 0);
			  address: out STD_LOGIC_VECTOR (4 downto 0);
           wr_data_out : out  STD_LOGIC_VECTOR (15 downto 0);
           wr_ready : out  STD_LOGIC;
			  IOW: out  STD_LOGIC
			  );
end write_circuit;

architecture Behavioral of write_circuit is

component parity_check is
    Port ( cs : in  STD_LOGIC;
           pa : in  STD_LOGIC;
           cpu_wr : in  STD_LOGIC;
           checked : out  STD_LOGIC);
end component;

component edge_detector is
      Port ( e_clk      : in  STD_LOGIC;
             WR_signal  : in  STD_LOGIC;
             w_ready, w_ready2    : out  STD_LOGIC); --- w_ready2
end component;

component SHIFT_REGISTER is
    -- Generic( CAPACITY : integer := 16);
          Port  ( CLK            :  in  STD_LOGIC;
                   DATA          :  in  STD_LOGIC_vector(3 downto 0);
                   RESET,enable      :  in  STD_LOGIC;
                   OUTPUT    :  out  STD_LOGIC_vector(15 downto 0));
end component;

--U3: SHIFT_REGISTER 
--port map (wr_clk, wr_data_in ,wr_reset, w_ready_s, wr_data_out_s);

component control is
    Port ( c_clk : in  STD_LOGIC;
           c_rst : in  STD_LOGIC;
           c_cpu_wr : in  STD_LOGIC;
           c_cpu_sc : in  STD_LOGIC;
           parity : in  STD_LOGIC;
           c_address_enable : out  STD_LOGIC;
           c_wr_enable : out  STD_LOGIC;
           wr_strobe : out  STD_LOGIC);
end component;

component Reg_addr is
port(	Re_clk: 		in std_logic;
		Re_rst:		in std_logic;
		Re_ld: 		in std_logic;
		Re_reg_in: 	in std_logic_vector(4 downto 0); 	  
		Re_reg_out: out std_logic_vector(4 downto 0)
    );
end component;

component sixteen_bit_reg is

port(	s_clk: 		in std_logic;
		s_rst:		in std_logic;
		s_ld: 		in std_logic;
		s_reg_in: 	in std_logic_vector(15 downto 0); 	  
		s_reg_out: out std_logic_vector(15 downto 0)
    );
end component;

Signal checked_s : STD_LOGIC;
signal w_ready_s : STD_LOGIC;
--signal addr_ld_s : STD_LOGIC;
signal c_address_enable_s, c_wr_enable_s : STD_LOGIC;
signal wr_data_out_s : STD_LOGIC_vector(15 downto 0);  --,stored_s

begin

U1: parity_check
port map (wr_cs, wr_pa, wr_cpu_wr, checked_s);

U2: edge_detector
port map (wr_clk, checked_s, w_ready_s, wr_ready);

U3: SHIFT_REGISTER --generic map(16)
port map (wr_clk, wr_data_in ,wr_reset, w_ready_s, wr_data_out_s);

--DATA_storage: Reg_addr generic map(16) 	
--port map (wr_clk, wr_reset, c_wr_enable_s, wr_data_out_s, stored_s); 

U4: control
port map(wr_clk, wr_reset, wr_cpu_wr, wr_cs, wr_pa, c_address_enable_s , c_wr_enable_s ,IOW);

ADRR_OUT: Reg_addr  
	port map (wr_clk, wr_reset, c_address_enable_s, wr_data_out_s(15 downto 11), address);

data_out: sixteen_bit_reg  	
port map (wr_clk, wr_reset, c_wr_enable_s, wr_data_out_s (15 downto 0), wr_data_out); --stored_s

end Behavioral;