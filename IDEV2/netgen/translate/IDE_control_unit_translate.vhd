--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: IDE_control_unit_translate.vhd
-- /___/   /\     Timestamp: Wed Dec 16 12:53:06 2015
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm IDE_control_unit -w -dir netgen/translate -ofmt vhdl -sim IDE_control_unit.ngd IDE_control_unit_translate.vhd 
-- Device	: 3s250evq100-5
-- Input file	: IDE_control_unit.ngd
-- Output file	: C:\Users\Bailey\Documents\IDE V2\IDEV2\netgen\translate\IDE_control_unit_translate.vhd
-- # of Entities	: 1
-- Design Name	: IDE_control_unit
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity IDE_control_unit is
  port (
    clk : in STD_LOGIC := 'X'; 
    CS : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    R : in STD_LOGIC := 'X'; 
    W : in STD_LOGIC := 'X'; 
    Re : out STD_LOGIC; 
    w_select : out STD_LOGIC; 
    data_select : out STD_LOGIC; 
    data_enable : out STD_LOGIC; 
    enables : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    wr_prev : out STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end IDE_control_unit;

architecture Structure of IDE_control_unit is
  signal R_IBUF_4 : STD_LOGIC; 
  signal Re_OBUF_6 : STD_LOGIC; 
  signal W_IBUF_8 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal cycle_counter_not0002 : STD_LOGIC; 
  signal data_enable_OBUF_19 : STD_LOGIC; 
  signal enables_0_OBUF_24 : STD_LOGIC; 
  signal enables_1_OBUF_25 : STD_LOGIC; 
  signal enables_2_OBUF_26 : STD_LOGIC; 
  signal i_ready_27 : STD_LOGIC; 
  signal i_ready_mux0000 : STD_LOGIC; 
  signal i_ready_not0001 : STD_LOGIC; 
  signal i_ready_not000112_30 : STD_LOGIC; 
  signal i_ready_not000120_31 : STD_LOGIC; 
  signal i_ready_not000130_32 : STD_LOGIC; 
  signal i_ready_not00019_33 : STD_LOGIC; 
  signal prev_R_34 : STD_LOGIC; 
  signal prev_W_35 : STD_LOGIC; 
  signal reset_IBUF_37 : STD_LOGIC; 
  signal w_select_OBUF_39 : STD_LOGIC; 
  signal wr_prev_0_42 : STD_LOGIC; 
  signal wr_prev_1_43 : STD_LOGIC; 
  signal i_ready_not00019_O : STD_LOGIC; 
  signal i_ready_not000120_O : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_2 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal cycle_counter : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal cycle_counter_mux0000 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
begin
  XST_VCC : X_ONE
    port map (
      O => Re_OBUF_6
    );
  i_ready : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => i_ready_not0001,
      I => i_ready_mux0000,
      O => i_ready_27,
      SET => GND,
      RST => GND
    );
  cycle_counter_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => cycle_counter_not0002,
      RST => reset_IBUF_37,
      I => cycle_counter_mux0000(2),
      O => cycle_counter(0),
      SET => GND
    );
  cycle_counter_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => cycle_counter_not0002,
      RST => reset_IBUF_37,
      I => cycle_counter_mux0000(1),
      O => cycle_counter(1),
      SET => GND
    );
  cycle_counter_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => cycle_counter_not0002,
      RST => reset_IBUF_37,
      I => cycle_counter_mux0000(0),
      O => cycle_counter(2),
      SET => GND
    );
  prev_R : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => R_IBUF_4,
      O => prev_R_34,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  prev_W : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => W_IBUF_8,
      O => prev_W_35,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  wr_prev_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => prev_R_34,
      O => wr_prev_0_42,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  wr_prev_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => prev_W_35,
      O => wr_prev_1_43,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  w_select1 : X_LUT3
    generic map(
      INIT => X"BF"
    )
    port map (
      ADR0 => cycle_counter(2),
      ADR1 => cycle_counter(0),
      ADR2 => cycle_counter(1),
      O => w_select_OBUF_39
    );
  enables_2_1 : X_LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      ADR0 => cycle_counter(1),
      ADR1 => cycle_counter(0),
      ADR2 => cycle_counter(2),
      O => enables_2_OBUF_26
    );
  enables_1_1 : X_LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      ADR0 => cycle_counter(0),
      ADR1 => cycle_counter(1),
      ADR2 => cycle_counter(2),
      O => enables_1_OBUF_25
    );
  enables_0_1 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => cycle_counter(1),
      ADR1 => cycle_counter(0),
      ADR2 => cycle_counter(2),
      O => enables_0_OBUF_24
    );
  data_enable_or00001 : X_LUT4
    generic map(
      INIT => X"2008"
    )
    port map (
      ADR0 => i_ready_27,
      ADR1 => cycle_counter(2),
      ADR2 => cycle_counter(1),
      ADR3 => cycle_counter(0),
      O => data_enable_OBUF_19
    );
  cycle_counter_mux0000_1_1 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => cycle_counter(0),
      ADR1 => cycle_counter(1),
      O => cycle_counter_mux0000(1)
    );
  cycle_counter_mux0000_2_1 : X_LUT3
    generic map(
      INIT => X"51"
    )
    port map (
      ADR0 => cycle_counter(0),
      ADR1 => cycle_counter(2),
      ADR2 => cycle_counter(1),
      O => cycle_counter_mux0000(2)
    );
  cycle_counter_mux0000_0_1 : X_LUT3
    generic map(
      INIT => X"68"
    )
    port map (
      ADR0 => cycle_counter(0),
      ADR1 => cycle_counter(1),
      ADR2 => cycle_counter(2),
      O => cycle_counter_mux0000(0)
    );
  i_ready_mux00001 : X_LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      ADR0 => R_IBUF_4,
      ADR1 => prev_R_34,
      O => i_ready_mux0000
    );
  i_ready_not000112 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => cycle_counter(0),
      ADR1 => cycle_counter(1),
      ADR2 => R_IBUF_4,
      ADR3 => i_ready_not00019_33,
      O => i_ready_not000112_30
    );
  i_ready_not000130 : X_LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      ADR0 => cycle_counter(2),
      ADR1 => cycle_counter(1),
      ADR2 => cycle_counter(0),
      ADR3 => i_ready_not000120_31,
      O => i_ready_not000130_32
    );
  reset_IBUF : X_BUF
    port map (
      I => reset,
      O => reset_IBUF_37
    );
  R_IBUF : X_BUF
    port map (
      I => R,
      O => R_IBUF_4
    );
  W_IBUF : X_BUF
    port map (
      I => W,
      O => W_IBUF_8
    );
  i_ready_not000147 : X_LUT4
    generic map(
      INIT => X"F5C4"
    )
    port map (
      ADR0 => prev_W_35,
      ADR1 => i_ready_not000130_32,
      ADR2 => W_IBUF_8,
      ADR3 => i_ready_not000112_30,
      O => i_ready_not0001
    );
  cycle_counter_not00021 : X_LUT4
    generic map(
      INIT => X"44F4"
    )
    port map (
      ADR0 => R_IBUF_4,
      ADR1 => prev_R_34,
      ADR2 => prev_W_35,
      ADR3 => W_IBUF_8,
      O => cycle_counter_not0002
    );
  i_ready_not00019_LUT2_L_BUF : X_BUF
    port map (
      I => i_ready_not00019_O,
      O => i_ready_not00019_33
    );
  i_ready_not00019 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => prev_R_34,
      ADR1 => cycle_counter(2),
      O => i_ready_not00019_O
    );
  i_ready_not000120_LUT2_L_BUF : X_BUF
    port map (
      I => i_ready_not000120_O,
      O => i_ready_not000120_31
    );
  i_ready_not000120 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => R_IBUF_4,
      ADR1 => prev_R_34,
      O => i_ready_not000120_O
    );
  clk_BUFGP_BUFG : X_CKBUF
    port map (
      I => clk_BUFGP_IBUFG_2,
      O => clk_BUFGP
    );
  clk_BUFGP_IBUFG : X_CKBUF
    port map (
      I => clk,
      O => clk_BUFGP_IBUFG_2
    );
  Re_OBUF : X_OBUF
    port map (
      I => Re_OBUF_6,
      O => Re
    );
  data_enable_OBUF : X_OBUF
    port map (
      I => data_enable_OBUF_19,
      O => data_enable
    );
  data_select_OBUF : X_OBUF
    port map (
      I => w_select_OBUF_39,
      O => data_select
    );
  enables_0_OBUF : X_OBUF
    port map (
      I => enables_0_OBUF_24,
      O => enables(0)
    );
  enables_1_OBUF : X_OBUF
    port map (
      I => enables_1_OBUF_25,
      O => enables(1)
    );
  enables_2_OBUF : X_OBUF
    port map (
      I => enables_2_OBUF_26,
      O => enables(2)
    );
  w_select_OBUF : X_OBUF
    port map (
      I => w_select_OBUF_39,
      O => w_select
    );
  wr_prev_0_OBUF : X_OBUF
    port map (
      I => wr_prev_0_42,
      O => wr_prev(0)
    );
  wr_prev_1_OBUF : X_OBUF
    port map (
      I => wr_prev_1_43,
      O => wr_prev(1)
    );
  NlwBlock_IDE_control_unit_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_IDE_control_unit_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

