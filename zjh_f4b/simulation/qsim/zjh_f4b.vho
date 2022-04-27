-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "12/29/2021 01:32:43"

-- 
-- Device: Altera 10CL006YU256C6G Package UFBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	zjh_f4b IS
    PORT (
	ACC : OUT std_logic_vector(15 DOWNTO 0);
	clk : IN std_logic;
	reset : IN std_logic;
	clkMBR : IN std_logic;
	BRN : OUT std_logic_vector(15 DOWNTO 0);
	BROUT : OUT std_logic_vector(15 DOWNTO 0);
	CAROUT : OUT std_logic_vector(7 DOWNTO 0);
	CONTROL : OUT std_logic_vector(31 DOWNTO 0);
	IROUT : OUT std_logic_vector(7 DOWNTO 0);
	MAROUT : OUT std_logic_vector(7 DOWNTO 0);
	PC : OUT std_logic_vector(7 DOWNTO 0);
	RAMN : OUT std_logic_vector(15 DOWNTO 0);
	RAMOUT : OUT std_logic_vector(15 DOWNTO 0)
	);
END zjh_f4b;

-- Design Ports Information
-- ACC[15]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[14]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[13]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[12]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[11]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[10]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[9]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[8]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[7]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[6]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[4]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[3]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[2]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[1]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACC[0]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRN[15]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRN[14]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRN[13]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRN[12]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRN[11]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRN[10]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRN[9]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRN[8]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRN[7]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRN[6]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRN[5]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRN[4]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRN[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRN[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRN[1]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRN[0]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BROUT[15]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BROUT[14]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BROUT[13]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BROUT[12]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BROUT[11]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BROUT[10]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BROUT[9]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BROUT[8]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BROUT[7]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BROUT[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BROUT[5]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BROUT[4]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BROUT[3]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BROUT[2]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BROUT[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BROUT[0]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAROUT[7]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAROUT[6]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAROUT[5]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAROUT[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAROUT[3]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAROUT[2]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAROUT[1]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAROUT[0]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[31]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[30]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[29]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[28]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[27]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[26]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[25]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[24]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[23]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[22]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[21]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[20]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[19]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[18]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[17]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[16]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[15]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[14]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[13]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[12]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[11]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[10]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[9]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[8]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[7]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[6]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[5]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[4]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[3]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[1]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONTROL[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROUT[7]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROUT[6]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROUT[5]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROUT[4]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROUT[3]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROUT[2]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROUT[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROUT[0]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROUT[7]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROUT[6]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROUT[5]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROUT[4]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROUT[3]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROUT[2]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROUT[1]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MAROUT[0]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[7]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[6]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[5]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[4]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[3]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[2]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[0]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMN[15]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMN[14]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMN[13]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMN[12]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMN[11]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMN[10]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMN[9]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMN[8]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMN[7]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMN[6]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMN[5]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMN[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMN[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMN[2]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMN[1]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMN[0]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOUT[15]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOUT[14]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOUT[13]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOUT[12]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOUT[11]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOUT[10]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOUT[9]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOUT[8]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOUT[7]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOUT[6]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOUT[5]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOUT[4]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOUT[3]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOUT[2]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOUT[1]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMOUT[0]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clkMBR	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF zjh_f4b IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ACC : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clkMBR : std_logic;
SIGNAL ww_BRN : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_BROUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_CAROUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CONTROL : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_IROUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_MAROUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_PC : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RAMN : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_RAMOUT : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst7|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst7|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst7|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst10|srom|rom_block|auto_generated|q_a[22]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkMBR~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \ACC[15]~output_o\ : std_logic;
SIGNAL \ACC[14]~output_o\ : std_logic;
SIGNAL \ACC[13]~output_o\ : std_logic;
SIGNAL \ACC[12]~output_o\ : std_logic;
SIGNAL \ACC[11]~output_o\ : std_logic;
SIGNAL \ACC[10]~output_o\ : std_logic;
SIGNAL \ACC[9]~output_o\ : std_logic;
SIGNAL \ACC[8]~output_o\ : std_logic;
SIGNAL \ACC[7]~output_o\ : std_logic;
SIGNAL \ACC[6]~output_o\ : std_logic;
SIGNAL \ACC[5]~output_o\ : std_logic;
SIGNAL \ACC[4]~output_o\ : std_logic;
SIGNAL \ACC[3]~output_o\ : std_logic;
SIGNAL \ACC[2]~output_o\ : std_logic;
SIGNAL \ACC[1]~output_o\ : std_logic;
SIGNAL \ACC[0]~output_o\ : std_logic;
SIGNAL \BRN[15]~output_o\ : std_logic;
SIGNAL \BRN[14]~output_o\ : std_logic;
SIGNAL \BRN[13]~output_o\ : std_logic;
SIGNAL \BRN[12]~output_o\ : std_logic;
SIGNAL \BRN[11]~output_o\ : std_logic;
SIGNAL \BRN[10]~output_o\ : std_logic;
SIGNAL \BRN[9]~output_o\ : std_logic;
SIGNAL \BRN[8]~output_o\ : std_logic;
SIGNAL \BRN[7]~output_o\ : std_logic;
SIGNAL \BRN[6]~output_o\ : std_logic;
SIGNAL \BRN[5]~output_o\ : std_logic;
SIGNAL \BRN[4]~output_o\ : std_logic;
SIGNAL \BRN[3]~output_o\ : std_logic;
SIGNAL \BRN[2]~output_o\ : std_logic;
SIGNAL \BRN[1]~output_o\ : std_logic;
SIGNAL \BRN[0]~output_o\ : std_logic;
SIGNAL \BROUT[15]~output_o\ : std_logic;
SIGNAL \BROUT[14]~output_o\ : std_logic;
SIGNAL \BROUT[13]~output_o\ : std_logic;
SIGNAL \BROUT[12]~output_o\ : std_logic;
SIGNAL \BROUT[11]~output_o\ : std_logic;
SIGNAL \BROUT[10]~output_o\ : std_logic;
SIGNAL \BROUT[9]~output_o\ : std_logic;
SIGNAL \BROUT[8]~output_o\ : std_logic;
SIGNAL \BROUT[7]~output_o\ : std_logic;
SIGNAL \BROUT[6]~output_o\ : std_logic;
SIGNAL \BROUT[5]~output_o\ : std_logic;
SIGNAL \BROUT[4]~output_o\ : std_logic;
SIGNAL \BROUT[3]~output_o\ : std_logic;
SIGNAL \BROUT[2]~output_o\ : std_logic;
SIGNAL \BROUT[1]~output_o\ : std_logic;
SIGNAL \BROUT[0]~output_o\ : std_logic;
SIGNAL \CAROUT[7]~output_o\ : std_logic;
SIGNAL \CAROUT[6]~output_o\ : std_logic;
SIGNAL \CAROUT[5]~output_o\ : std_logic;
SIGNAL \CAROUT[4]~output_o\ : std_logic;
SIGNAL \CAROUT[3]~output_o\ : std_logic;
SIGNAL \CAROUT[2]~output_o\ : std_logic;
SIGNAL \CAROUT[1]~output_o\ : std_logic;
SIGNAL \CAROUT[0]~output_o\ : std_logic;
SIGNAL \CONTROL[31]~output_o\ : std_logic;
SIGNAL \CONTROL[30]~output_o\ : std_logic;
SIGNAL \CONTROL[29]~output_o\ : std_logic;
SIGNAL \CONTROL[28]~output_o\ : std_logic;
SIGNAL \CONTROL[27]~output_o\ : std_logic;
SIGNAL \CONTROL[26]~output_o\ : std_logic;
SIGNAL \CONTROL[25]~output_o\ : std_logic;
SIGNAL \CONTROL[24]~output_o\ : std_logic;
SIGNAL \CONTROL[23]~output_o\ : std_logic;
SIGNAL \CONTROL[22]~output_o\ : std_logic;
SIGNAL \CONTROL[21]~output_o\ : std_logic;
SIGNAL \CONTROL[20]~output_o\ : std_logic;
SIGNAL \CONTROL[19]~output_o\ : std_logic;
SIGNAL \CONTROL[18]~output_o\ : std_logic;
SIGNAL \CONTROL[17]~output_o\ : std_logic;
SIGNAL \CONTROL[16]~output_o\ : std_logic;
SIGNAL \CONTROL[15]~output_o\ : std_logic;
SIGNAL \CONTROL[14]~output_o\ : std_logic;
SIGNAL \CONTROL[13]~output_o\ : std_logic;
SIGNAL \CONTROL[12]~output_o\ : std_logic;
SIGNAL \CONTROL[11]~output_o\ : std_logic;
SIGNAL \CONTROL[10]~output_o\ : std_logic;
SIGNAL \CONTROL[9]~output_o\ : std_logic;
SIGNAL \CONTROL[8]~output_o\ : std_logic;
SIGNAL \CONTROL[7]~output_o\ : std_logic;
SIGNAL \CONTROL[6]~output_o\ : std_logic;
SIGNAL \CONTROL[5]~output_o\ : std_logic;
SIGNAL \CONTROL[4]~output_o\ : std_logic;
SIGNAL \CONTROL[3]~output_o\ : std_logic;
SIGNAL \CONTROL[2]~output_o\ : std_logic;
SIGNAL \CONTROL[1]~output_o\ : std_logic;
SIGNAL \CONTROL[0]~output_o\ : std_logic;
SIGNAL \IROUT[7]~output_o\ : std_logic;
SIGNAL \IROUT[6]~output_o\ : std_logic;
SIGNAL \IROUT[5]~output_o\ : std_logic;
SIGNAL \IROUT[4]~output_o\ : std_logic;
SIGNAL \IROUT[3]~output_o\ : std_logic;
SIGNAL \IROUT[2]~output_o\ : std_logic;
SIGNAL \IROUT[1]~output_o\ : std_logic;
SIGNAL \IROUT[0]~output_o\ : std_logic;
SIGNAL \MAROUT[7]~output_o\ : std_logic;
SIGNAL \MAROUT[6]~output_o\ : std_logic;
SIGNAL \MAROUT[5]~output_o\ : std_logic;
SIGNAL \MAROUT[4]~output_o\ : std_logic;
SIGNAL \MAROUT[3]~output_o\ : std_logic;
SIGNAL \MAROUT[2]~output_o\ : std_logic;
SIGNAL \MAROUT[1]~output_o\ : std_logic;
SIGNAL \MAROUT[0]~output_o\ : std_logic;
SIGNAL \PC[7]~output_o\ : std_logic;
SIGNAL \PC[6]~output_o\ : std_logic;
SIGNAL \PC[5]~output_o\ : std_logic;
SIGNAL \PC[4]~output_o\ : std_logic;
SIGNAL \PC[3]~output_o\ : std_logic;
SIGNAL \PC[2]~output_o\ : std_logic;
SIGNAL \PC[1]~output_o\ : std_logic;
SIGNAL \PC[0]~output_o\ : std_logic;
SIGNAL \RAMN[15]~output_o\ : std_logic;
SIGNAL \RAMN[14]~output_o\ : std_logic;
SIGNAL \RAMN[13]~output_o\ : std_logic;
SIGNAL \RAMN[12]~output_o\ : std_logic;
SIGNAL \RAMN[11]~output_o\ : std_logic;
SIGNAL \RAMN[10]~output_o\ : std_logic;
SIGNAL \RAMN[9]~output_o\ : std_logic;
SIGNAL \RAMN[8]~output_o\ : std_logic;
SIGNAL \RAMN[7]~output_o\ : std_logic;
SIGNAL \RAMN[6]~output_o\ : std_logic;
SIGNAL \RAMN[5]~output_o\ : std_logic;
SIGNAL \RAMN[4]~output_o\ : std_logic;
SIGNAL \RAMN[3]~output_o\ : std_logic;
SIGNAL \RAMN[2]~output_o\ : std_logic;
SIGNAL \RAMN[1]~output_o\ : std_logic;
SIGNAL \RAMN[0]~output_o\ : std_logic;
SIGNAL \RAMOUT[15]~output_o\ : std_logic;
SIGNAL \RAMOUT[14]~output_o\ : std_logic;
SIGNAL \RAMOUT[13]~output_o\ : std_logic;
SIGNAL \RAMOUT[12]~output_o\ : std_logic;
SIGNAL \RAMOUT[11]~output_o\ : std_logic;
SIGNAL \RAMOUT[10]~output_o\ : std_logic;
SIGNAL \RAMOUT[9]~output_o\ : std_logic;
SIGNAL \RAMOUT[8]~output_o\ : std_logic;
SIGNAL \RAMOUT[7]~output_o\ : std_logic;
SIGNAL \RAMOUT[6]~output_o\ : std_logic;
SIGNAL \RAMOUT[5]~output_o\ : std_logic;
SIGNAL \RAMOUT[4]~output_o\ : std_logic;
SIGNAL \RAMOUT[3]~output_o\ : std_logic;
SIGNAL \RAMOUT[2]~output_o\ : std_logic;
SIGNAL \RAMOUT[1]~output_o\ : std_logic;
SIGNAL \RAMOUT[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \clkMBR~input_o\ : std_logic;
SIGNAL \clkMBR~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \inst2|temp[0]~feeder_combout\ : std_logic;
SIGNAL \inst9|PCout[0]~8_combout\ : std_logic;
SIGNAL \inst9|PCout[1]~11\ : std_logic;
SIGNAL \inst9|PCout[2]~12_combout\ : std_logic;
SIGNAL \inst9|PCout[2]~13\ : std_logic;
SIGNAL \inst9|PCout[3]~14_combout\ : std_logic;
SIGNAL \inst9|PCout[4]~17\ : std_logic;
SIGNAL \inst9|PCout[5]~18_combout\ : std_logic;
SIGNAL \inst9|PCout[5]~19\ : std_logic;
SIGNAL \inst9|PCout[6]~20_combout\ : std_logic;
SIGNAL \inst9|PCout[6]~21\ : std_logic;
SIGNAL \inst9|PCout[7]~22_combout\ : std_logic;
SIGNAL \inst2|temp[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|temp[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|temp[3]~feeder_combout\ : std_logic;
SIGNAL \inst|ACC[6]~54_combout\ : std_logic;
SIGNAL \inst10|srom|rom_block|auto_generated|q_a[22]~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|MBR_BR[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|MBR_BR[15]~1_combout\ : std_logic;
SIGNAL \inst1|BRout[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|temp[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|temp~11_combout\ : std_logic;
SIGNAL \inst2|MBR_RAM[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|MBR_RAM[15]~0_combout\ : std_logic;
SIGNAL \inst2|temp[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|MBR_BR[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|BRout[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst1|BRout[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|Add0~9_combout\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add0~11_combout\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst2|MBR_BR[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|BRout[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|Add0~13_combout\ : std_logic;
SIGNAL \inst2|temp[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|temp~9_combout\ : std_logic;
SIGNAL \inst2|MBR_RAM[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|MBR_BR[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|BRout[7]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \inst1|BRout[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~31\ : std_logic;
SIGNAL \inst|Add0~32_combout\ : std_logic;
SIGNAL \inst|ACC~124_combout\ : std_logic;
SIGNAL \inst|ACC~126_combout\ : std_logic;
SIGNAL \inst2|MBR_BR[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|BRout[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|Add0~15_combout\ : std_logic;
SIGNAL \inst|Add0~17_cout\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|ACC~127_combout\ : std_logic;
SIGNAL \inst|ACC~128_combout\ : std_logic;
SIGNAL \inst|ACC~120_combout\ : std_logic;
SIGNAL \inst|ACC~122_combout\ : std_logic;
SIGNAL \inst2|temp[8]~feeder_combout\ : std_logic;
SIGNAL \inst2|temp~7_combout\ : std_logic;
SIGNAL \inst2|MBR_RAM[8]~feeder_combout\ : std_logic;
SIGNAL \inst2|temp[9]~feeder_combout\ : std_logic;
SIGNAL \inst1|BRout[9]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \inst1|BRout[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst1|BRout[10]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \inst1|BRout[10]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|Add0~5_combout\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~7_combout\ : std_logic;
SIGNAL \inst|Add0~33\ : std_logic;
SIGNAL \inst|Add0~35\ : std_logic;
SIGNAL \inst|Add0~37\ : std_logic;
SIGNAL \inst|Add0~38_combout\ : std_logic;
SIGNAL \inst|ACC~140_combout\ : std_logic;
SIGNAL \inst1|BRout[11]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \inst1|BRout[11]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~39\ : std_logic;
SIGNAL \inst|Add0~40_combout\ : std_logic;
SIGNAL \inst1|BRout[12]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \inst1|BRout[12]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|Add0~3_combout\ : std_logic;
SIGNAL \inst|Add0~41\ : std_logic;
SIGNAL \inst|Add0~42_combout\ : std_logic;
SIGNAL \inst|ACC~138_combout\ : std_logic;
SIGNAL \inst1|BRout[13]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst2|MBR_BR[14]~feeder_combout\ : std_logic;
SIGNAL \inst1|BRout[14]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|Add0~1_combout\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~43\ : std_logic;
SIGNAL \inst|Add0~45\ : std_logic;
SIGNAL \inst|Add0~46_combout\ : std_logic;
SIGNAL \inst|ACC~136_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \inst|ACC~55_combout\ : std_logic;
SIGNAL \inst|ACC~56_combout\ : std_logic;
SIGNAL \inst|ACC~135_combout\ : std_logic;
SIGNAL \inst|ACC~57_combout\ : std_logic;
SIGNAL \inst|ACC~58_combout\ : std_logic;
SIGNAL \inst|ACC[6]~59_combout\ : std_logic;
SIGNAL \inst|ACC[6]~60_combout\ : std_logic;
SIGNAL \inst|ACC~61_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \inst|ACC~62_combout\ : std_logic;
SIGNAL \inst|Add0~44_combout\ : std_logic;
SIGNAL \inst|ACC~63_combout\ : std_logic;
SIGNAL \inst|ACC~64_combout\ : std_logic;
SIGNAL \inst|ACC~65_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \inst|ACC~66_combout\ : std_logic;
SIGNAL \inst|ACC~67_combout\ : std_logic;
SIGNAL \inst|ACC~137_combout\ : std_logic;
SIGNAL \inst|ACC~68_combout\ : std_logic;
SIGNAL \inst|ACC~69_combout\ : std_logic;
SIGNAL \inst|ACC~70_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \inst|ACC~71_combout\ : std_logic;
SIGNAL \inst|ACC~72_combout\ : std_logic;
SIGNAL \inst|ACC~73_combout\ : std_logic;
SIGNAL \inst|ACC~74_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \inst|ACC~75_combout\ : std_logic;
SIGNAL \inst|ACC~76_combout\ : std_logic;
SIGNAL \inst|ACC~139_combout\ : std_logic;
SIGNAL \inst|ACC~77_combout\ : std_logic;
SIGNAL \inst|ACC~78_combout\ : std_logic;
SIGNAL \inst|ACC~79_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \inst|ACC~80_combout\ : std_logic;
SIGNAL \inst|Add0~36_combout\ : std_logic;
SIGNAL \inst|ACC~81_combout\ : std_logic;
SIGNAL \inst|ACC~82_combout\ : std_logic;
SIGNAL \inst|ACC~83_combout\ : std_logic;
SIGNAL \inst2|temp~6_combout\ : std_logic;
SIGNAL \inst2|MBR_RAM[9]~feeder_combout\ : std_logic;
SIGNAL \inst2|temp[10]~feeder_combout\ : std_logic;
SIGNAL \inst2|temp~5_combout\ : std_logic;
SIGNAL \inst2|MBR_RAM[10]~feeder_combout\ : std_logic;
SIGNAL \inst2|temp[11]~feeder_combout\ : std_logic;
SIGNAL \inst2|temp~4_combout\ : std_logic;
SIGNAL \inst2|MBR_RAM[11]~feeder_combout\ : std_logic;
SIGNAL \inst2|temp[12]~feeder_combout\ : std_logic;
SIGNAL \inst2|temp~3_combout\ : std_logic;
SIGNAL \inst2|MBR_RAM[12]~feeder_combout\ : std_logic;
SIGNAL \inst2|temp[13]~feeder_combout\ : std_logic;
SIGNAL \inst2|temp~2_combout\ : std_logic;
SIGNAL \inst2|MBR_RAM[13]~feeder_combout\ : std_logic;
SIGNAL \inst2|temp[14]~feeder_combout\ : std_logic;
SIGNAL \inst2|temp~1_combout\ : std_logic;
SIGNAL \inst2|MBR_RAM[14]~feeder_combout\ : std_logic;
SIGNAL \inst2|temp[15]~feeder_combout\ : std_logic;
SIGNAL \inst2|temp~0_combout\ : std_logic;
SIGNAL \inst2|MBR_BR~8_combout\ : std_logic;
SIGNAL \inst1|BRout[8]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \inst1|BRout[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|Add0~34_combout\ : std_logic;
SIGNAL \inst|ACC~142_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \inst|ACC~84_combout\ : std_logic;
SIGNAL \inst|ACC~85_combout\ : std_logic;
SIGNAL \inst|ACC~141_combout\ : std_logic;
SIGNAL \inst|ACC~86_combout\ : std_logic;
SIGNAL \inst|ACC~87_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \inst|ACC~121_combout\ : std_logic;
SIGNAL \inst|ACC~123_combout\ : std_logic;
SIGNAL \inst|ACC~125_combout\ : std_logic;
SIGNAL \inst|ACC~129_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \inst|ACC~88_combout\ : std_logic;
SIGNAL \inst|ACC~89_combout\ : std_logic;
SIGNAL \inst|ACC~90_combout\ : std_logic;
SIGNAL \inst|ACC~91_combout\ : std_logic;
SIGNAL \inst|ACC~92_combout\ : std_logic;
SIGNAL \inst2|temp~8_combout\ : std_logic;
SIGNAL \inst2|MBR_RAM[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|MBR_BR~15_combout\ : std_logic;
SIGNAL \inst2|MBR_BR[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|BRout[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~21\ : std_logic;
SIGNAL \inst|Add0~23\ : std_logic;
SIGNAL \inst|Add0~25\ : std_logic;
SIGNAL \inst|Add0~27\ : std_logic;
SIGNAL \inst|Add0~29\ : std_logic;
SIGNAL \inst|Add0~30_combout\ : std_logic;
SIGNAL \inst|ACC~144_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \inst|ACC~93_combout\ : std_logic;
SIGNAL \inst|ACC~94_combout\ : std_logic;
SIGNAL \inst|ACC~143_combout\ : std_logic;
SIGNAL \inst|ACC~95_combout\ : std_logic;
SIGNAL \inst|ACC~96_combout\ : std_logic;
SIGNAL \inst|ACC~97_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \inst|ACC~98_combout\ : std_logic;
SIGNAL \inst|Add0~28_combout\ : std_logic;
SIGNAL \inst|ACC~99_combout\ : std_logic;
SIGNAL \inst|ACC~100_combout\ : std_logic;
SIGNAL \inst|ACC~101_combout\ : std_logic;
SIGNAL \inst2|temp~10_combout\ : std_logic;
SIGNAL \inst2|MBR_RAM[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|MBR_BR~12_combout\ : std_logic;
SIGNAL \inst1|BRout[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|ACC~146_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \inst|ACC~102_combout\ : std_logic;
SIGNAL \inst|ACC~103_combout\ : std_logic;
SIGNAL \inst|ACC~145_combout\ : std_logic;
SIGNAL \inst|ACC~104_combout\ : std_logic;
SIGNAL \inst|ACC~105_combout\ : std_logic;
SIGNAL \inst|ACC~106_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \inst|ACC~107_combout\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|ACC~108_combout\ : std_logic;
SIGNAL \inst|ACC~109_combout\ : std_logic;
SIGNAL \inst|ACC~110_combout\ : std_logic;
SIGNAL \inst2|temp~12_combout\ : std_logic;
SIGNAL \inst2|MBR_RAM[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|MBR_BR~0_combout\ : std_logic;
SIGNAL \inst2|MBR_OP[5]~0_combout\ : std_logic;
SIGNAL \inst5|Add0~0_combout\ : std_logic;
SIGNAL \inst5|CARout[0]~9\ : std_logic;
SIGNAL \inst5|CARout[1]~11\ : std_logic;
SIGNAL \inst5|CARout[2]~13\ : std_logic;
SIGNAL \inst5|CARout[3]~15\ : std_logic;
SIGNAL \inst5|CARout[4]~17\ : std_logic;
SIGNAL \inst5|CARout[5]~19\ : std_logic;
SIGNAL \inst5|CARout[6]~21\ : std_logic;
SIGNAL \inst5|CARout[7]~22_combout\ : std_logic;
SIGNAL \inst5|Equal0~0_combout\ : std_logic;
SIGNAL \inst5|CARout[7]~24_combout\ : std_logic;
SIGNAL \inst5|Equal2~0_combout\ : std_logic;
SIGNAL \inst5|Equal1~0_combout\ : std_logic;
SIGNAL \inst5|CARout[7]~25_combout\ : std_logic;
SIGNAL \inst|ACC[6]~53_combout\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|ACC~148_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \inst|ACC~111_combout\ : std_logic;
SIGNAL \inst|ACC~112_combout\ : std_logic;
SIGNAL \inst|ACC~147_combout\ : std_logic;
SIGNAL \inst|ACC~113_combout\ : std_logic;
SIGNAL \inst|ACC~114_combout\ : std_logic;
SIGNAL \inst2|temp~13_combout\ : std_logic;
SIGNAL \inst2|MBR_RAM[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|MBR_BR~2_combout\ : std_logic;
SIGNAL \inst5|Add0~1_combout\ : std_logic;
SIGNAL \inst5|CARout[6]~20_combout\ : std_logic;
SIGNAL \inst|ACC~52_combout\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|ACC~115_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \inst|ACC~116_combout\ : std_logic;
SIGNAL \inst|ACC~117_combout\ : std_logic;
SIGNAL \inst|ACC~118_combout\ : std_logic;
SIGNAL \inst|ACC~119_combout\ : std_logic;
SIGNAL \inst2|temp~14_combout\ : std_logic;
SIGNAL \inst2|MBR_RAM[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|MBR_BR~9_combout\ : std_logic;
SIGNAL \inst2|MBR_MAR[7]~feeder_combout\ : std_logic;
SIGNAL \inst9|PCout[7]~25_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \inst|ACC[28]~12_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \inst|ACC[27]~11_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \inst|ACC[26]~10_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \inst|ACC[25]~9_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \inst|ACC[24]~8_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \inst|ACC[23]~7_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \inst|ACC[22]~6_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \inst|ACC[21]~5_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \inst|ACC[20]~4_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \inst|ACC[19]~3_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \inst|ACC[18]~2_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \inst|ACC[17]~1_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \inst|ACC[16]~0_combout\ : std_logic;
SIGNAL \inst1|BRout[15]~_Duplicate_1_q\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~47\ : std_logic;
SIGNAL \inst|Add0~49\ : std_logic;
SIGNAL \inst|Add0~50_combout\ : std_logic;
SIGNAL \inst|ACC[30]~130_combout\ : std_logic;
SIGNAL \inst|ACC[30]~131_combout\ : std_logic;
SIGNAL \inst|ACC[30]~132_combout\ : std_logic;
SIGNAL \inst|ACC[30]~133_combout\ : std_logic;
SIGNAL \inst|ACC[30]~134_combout\ : std_logic;
SIGNAL \inst|Add0~51\ : std_logic;
SIGNAL \inst|Add0~52_combout\ : std_logic;
SIGNAL \inst|Add0~53\ : std_logic;
SIGNAL \inst|Add0~54_combout\ : std_logic;
SIGNAL \inst|Add0~55\ : std_logic;
SIGNAL \inst|Add0~56_combout\ : std_logic;
SIGNAL \inst|Add0~57\ : std_logic;
SIGNAL \inst|Add0~58_combout\ : std_logic;
SIGNAL \inst|Add0~59\ : std_logic;
SIGNAL \inst|Add0~60_combout\ : std_logic;
SIGNAL \inst|Add0~61\ : std_logic;
SIGNAL \inst|Add0~62_combout\ : std_logic;
SIGNAL \inst|Add0~63\ : std_logic;
SIGNAL \inst|Add0~64_combout\ : std_logic;
SIGNAL \inst|Add0~65\ : std_logic;
SIGNAL \inst|Add0~66_combout\ : std_logic;
SIGNAL \inst|Add0~67\ : std_logic;
SIGNAL \inst|Add0~68_combout\ : std_logic;
SIGNAL \inst|Add0~69\ : std_logic;
SIGNAL \inst|Add0~70_combout\ : std_logic;
SIGNAL \inst|Add0~71\ : std_logic;
SIGNAL \inst|Add0~72_combout\ : std_logic;
SIGNAL \inst|Add0~73\ : std_logic;
SIGNAL \inst|Add0~74_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \inst|ACC[31]~15_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \inst|ACC[30]~14_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \inst|ACC[29]~13_combout\ : std_logic;
SIGNAL \inst|Add0~75\ : std_logic;
SIGNAL \inst|Add0~76_combout\ : std_logic;
SIGNAL \inst|Add0~77\ : std_logic;
SIGNAL \inst|Add0~78_combout\ : std_logic;
SIGNAL \inst|Add0~79\ : std_logic;
SIGNAL \inst|Add0~80_combout\ : std_logic;
SIGNAL \inst|LessThan0~8_combout\ : std_logic;
SIGNAL \inst|LessThan0~5_combout\ : std_logic;
SIGNAL \inst|LessThan0~6_combout\ : std_logic;
SIGNAL \inst|LessThan0~7_combout\ : std_logic;
SIGNAL \inst|LessThan0~9_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|LessThan0~4_combout\ : std_logic;
SIGNAL \inst9|PCout[7]~26_combout\ : std_logic;
SIGNAL \inst9|PCout[7]~27_combout\ : std_logic;
SIGNAL \inst9|Equal0~0_combout\ : std_logic;
SIGNAL \inst9|PCout[7]~28_combout\ : std_logic;
SIGNAL \inst4|MARout~0_combout\ : std_logic;
SIGNAL \inst4|MARout[7]~1_combout\ : std_logic;
SIGNAL \inst2|MBR_BR~10_combout\ : std_logic;
SIGNAL \inst2|MBR_MAR[6]~feeder_combout\ : std_logic;
SIGNAL \inst4|MARout~2_combout\ : std_logic;
SIGNAL \inst2|MBR_BR~11_combout\ : std_logic;
SIGNAL \inst2|MBR_MAR[5]~feeder_combout\ : std_logic;
SIGNAL \inst4|MARout~3_combout\ : std_logic;
SIGNAL \inst2|MBR_BR~3_combout\ : std_logic;
SIGNAL \inst5|Add0~2_combout\ : std_logic;
SIGNAL \inst5|CARout[5]~18_combout\ : std_logic;
SIGNAL \inst9|PCout[7]~24_combout\ : std_logic;
SIGNAL \inst9|PCout[3]~15\ : std_logic;
SIGNAL \inst9|PCout[4]~16_combout\ : std_logic;
SIGNAL \inst2|MBR_MAR[4]~feeder_combout\ : std_logic;
SIGNAL \inst4|MARout~4_combout\ : std_logic;
SIGNAL \inst2|MBR_BR~13_combout\ : std_logic;
SIGNAL \inst2|MBR_MAR[3]~feeder_combout\ : std_logic;
SIGNAL \inst4|MARout~5_combout\ : std_logic;
SIGNAL \inst2|MBR_BR~14_combout\ : std_logic;
SIGNAL \inst2|MBR_MAR[2]~feeder_combout\ : std_logic;
SIGNAL \inst4|MARout~6_combout\ : std_logic;
SIGNAL \inst2|MBR_BR~16_combout\ : std_logic;
SIGNAL \inst9|PCout[0]~9\ : std_logic;
SIGNAL \inst9|PCout[1]~10_combout\ : std_logic;
SIGNAL \inst2|MBR_MAR[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|MARout~7_combout\ : std_logic;
SIGNAL \inst2|MBR_BR~4_combout\ : std_logic;
SIGNAL \inst2|MBR_OP[4]~feeder_combout\ : std_logic;
SIGNAL \inst5|Add0~3_combout\ : std_logic;
SIGNAL \inst5|CARout[4]~16_combout\ : std_logic;
SIGNAL \inst4|MARout~8_combout\ : std_logic;
SIGNAL \inst2|MBR_BR~5_combout\ : std_logic;
SIGNAL \inst5|Add0~4_combout\ : std_logic;
SIGNAL \inst5|CARout[3]~14_combout\ : std_logic;
SIGNAL \inst2|temp~15_combout\ : std_logic;
SIGNAL \inst2|MBR_RAM[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|MBR_BR~6_combout\ : std_logic;
SIGNAL \inst2|MBR_OP[2]~feeder_combout\ : std_logic;
SIGNAL \inst5|Add0~5_combout\ : std_logic;
SIGNAL \inst5|CARout[2]~12_combout\ : std_logic;
SIGNAL \inst2|MBR_BR~7_combout\ : std_logic;
SIGNAL \inst2|MBR_OP[1]~feeder_combout\ : std_logic;
SIGNAL \inst5|Add0~6_combout\ : std_logic;
SIGNAL \inst5|CARout[1]~10_combout\ : std_logic;
SIGNAL \inst5|Equal3~0_combout\ : std_logic;
SIGNAL \inst2|MBR_OP[0]~feeder_combout\ : std_logic;
SIGNAL \inst5|Add0~7_combout\ : std_logic;
SIGNAL \inst5|CARout[0]~8_combout\ : std_logic;
SIGNAL \inst|ACC~45_combout\ : std_logic;
SIGNAL \inst|ACC~44_combout\ : std_logic;
SIGNAL \inst|ACC~46_combout\ : std_logic;
SIGNAL \inst|ACC~47_combout\ : std_logic;
SIGNAL \inst|Add0~48_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \inst|ACC~48_combout\ : std_logic;
SIGNAL \inst|ACC~49_combout\ : std_logic;
SIGNAL \inst|ACC~50_combout\ : std_logic;
SIGNAL \inst|ACC~51_combout\ : std_logic;
SIGNAL \inst|ACC\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst4|MARout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|CARout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|MBR_RAM\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst9|PCout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst10|srom|rom_block|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst7|sram|ram_block|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|MBR_BR\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|MBR_OP\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|MBR_MAR\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|temp\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_clkMBR~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \inst10|srom|rom_block|auto_generated|ALT_INV_q_a\ : std_logic_vector(15 DOWNTO 15);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ACC <= ww_ACC;
ww_clk <= clk;
ww_reset <= reset;
ww_clkMBR <= clkMBR;
BRN <= ww_BRN;
BROUT <= ww_BROUT;
CAROUT <= ww_CAROUT;
CONTROL <= ww_CONTROL;
IROUT <= ww_IROUT;
MAROUT <= ww_MAROUT;
PC <= ww_PC;
RAMN <= ww_RAMN;
RAMOUT <= ww_RAMOUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst10|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst5|CARout\(7) & \inst5|CARout\(6) & \inst5|CARout\(5) & \inst5|CARout\(4) & \inst5|CARout\(3) & \inst5|CARout\(2) & \inst5|CARout\(1) & \inst5|CARout\(0));

\inst10|srom|rom_block|auto_generated|q_a\(0) <= \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst10|srom|rom_block|auto_generated|q_a\(1) <= \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst10|srom|rom_block|auto_generated|q_a\(2) <= \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst10|srom|rom_block|auto_generated|q_a\(3) <= \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst10|srom|rom_block|auto_generated|q_a\(4) <= \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst10|srom|rom_block|auto_generated|q_a\(5) <= \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst10|srom|rom_block|auto_generated|q_a\(6) <= \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst10|srom|rom_block|auto_generated|q_a\(7) <= \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst10|srom|rom_block|auto_generated|q_a\(8) <= \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst10|srom|rom_block|auto_generated|q_a\(9) <= \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst10|srom|rom_block|auto_generated|q_a\(10) <= \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst10|srom|rom_block|auto_generated|q_a\(11) <= \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst10|srom|rom_block|auto_generated|q_a\(12) <= \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst10|srom|rom_block|auto_generated|q_a\(13) <= \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst10|srom|rom_block|auto_generated|q_a\(14) <= \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\inst10|srom|rom_block|auto_generated|q_a\(15) <= \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\inst10|srom|rom_block|auto_generated|q_a\(16) <= \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\inst10|srom|rom_block|auto_generated|q_a\(17) <= \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\inst10|srom|rom_block|auto_generated|q_a\(18) <= \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\inst10|srom|rom_block|auto_generated|q_a\(19) <= \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\inst10|srom|rom_block|auto_generated|q_a\(20) <= \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\inst10|srom|rom_block|auto_generated|q_a\(21) <= \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\inst10|srom|rom_block|auto_generated|q_a\(22) <= \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\inst10|srom|rom_block|auto_generated|q_a\(23) <= \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);
\inst10|srom|rom_block|auto_generated|q_a\(24) <= \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(24);
\inst10|srom|rom_block|auto_generated|q_a\(25) <= \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(25);
\inst10|srom|rom_block|auto_generated|q_a\(26) <= \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(26);
\inst10|srom|rom_block|auto_generated|q_a\(27) <= \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(27);
\inst10|srom|rom_block|auto_generated|q_a\(28) <= \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(28);
\inst10|srom|rom_block|auto_generated|q_a\(29) <= \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(29);
\inst10|srom|rom_block|auto_generated|q_a\(30) <= \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(30);
\inst10|srom|rom_block|auto_generated|q_a\(31) <= \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(31);

\inst7|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & \inst2|MBR_RAM\(15) & \inst2|MBR_RAM\(14) & \inst2|MBR_RAM\(13) & \inst2|MBR_RAM\(12) & \inst2|MBR_RAM\(11) & \inst2|MBR_RAM\(10) & \inst2|MBR_RAM\(9) & 
\inst2|MBR_RAM\(8) & \inst2|MBR_RAM\(7) & \inst2|MBR_RAM\(6) & \inst2|MBR_RAM\(5) & \inst2|MBR_RAM\(4) & \inst2|MBR_RAM\(3) & \inst2|MBR_RAM\(2) & \inst2|MBR_RAM\(1) & \inst2|MBR_RAM\(0));

\inst7|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst4|MARout\(7) & \inst4|MARout\(6) & \inst4|MARout\(5) & \inst4|MARout\(4) & \inst4|MARout\(3) & \inst4|MARout\(2) & \inst4|MARout\(1) & \inst4|MARout\(0));

\inst7|sram|ram_block|auto_generated|q_a\(0) <= \inst7|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst7|sram|ram_block|auto_generated|q_a\(1) <= \inst7|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst7|sram|ram_block|auto_generated|q_a\(2) <= \inst7|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst7|sram|ram_block|auto_generated|q_a\(3) <= \inst7|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst7|sram|ram_block|auto_generated|q_a\(4) <= \inst7|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst7|sram|ram_block|auto_generated|q_a\(5) <= \inst7|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst7|sram|ram_block|auto_generated|q_a\(6) <= \inst7|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst7|sram|ram_block|auto_generated|q_a\(7) <= \inst7|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst7|sram|ram_block|auto_generated|q_a\(8) <= \inst7|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst7|sram|ram_block|auto_generated|q_a\(9) <= \inst7|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\inst7|sram|ram_block|auto_generated|q_a\(10) <= \inst7|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\inst7|sram|ram_block|auto_generated|q_a\(11) <= \inst7|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\inst7|sram|ram_block|auto_generated|q_a\(12) <= \inst7|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\inst7|sram|ram_block|auto_generated|q_a\(13) <= \inst7|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\inst7|sram|ram_block|auto_generated|q_a\(14) <= \inst7|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\inst7|sram|ram_block|auto_generated|q_a\(15) <= \inst7|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\inst|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\inst|Mult0|auto_generated|mac_mult1~DATAOUT31\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT30\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT29\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT28\ & 
\inst|Mult0|auto_generated|mac_mult1~DATAOUT27\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT26\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT25\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT24\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT23\ & 
\inst|Mult0|auto_generated|mac_mult1~DATAOUT22\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT21\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT20\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT19\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT18\ & 
\inst|Mult0|auto_generated|mac_mult1~DATAOUT17\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\inst|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT8\ & 
\inst|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT3\ & 
\inst|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \inst|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \inst|Mult0|auto_generated|mac_mult1~dataout\ & \inst|Mult0|auto_generated|mac_mult1~3\ & \inst|Mult0|auto_generated|mac_mult1~2\ & 
\inst|Mult0|auto_generated|mac_mult1~1\ & \inst|Mult0|auto_generated|mac_mult1~0\);

\inst|Mult0|auto_generated|mac_out2~0\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\inst|Mult0|auto_generated|mac_out2~1\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\inst|Mult0|auto_generated|mac_out2~2\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\inst|Mult0|auto_generated|mac_out2~3\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\inst|Mult0|auto_generated|mac_out2~dataout\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\inst|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\inst|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\inst|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\inst|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\inst|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\inst|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\inst|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\inst|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\inst|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\inst|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\inst|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\inst|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\inst|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\inst|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\inst|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\inst|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\inst|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\inst|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\inst|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\inst|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\inst|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\inst|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\inst|Mult0|auto_generated|mac_out2~DATAOUT23\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\inst|Mult0|auto_generated|mac_out2~DATAOUT24\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\inst|Mult0|auto_generated|mac_out2~DATAOUT25\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\inst|Mult0|auto_generated|mac_out2~DATAOUT26\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\inst|Mult0|auto_generated|mac_out2~DATAOUT27\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\inst|Mult0|auto_generated|mac_out2~DATAOUT28\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\inst|Mult0|auto_generated|mac_out2~DATAOUT29\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\inst|Mult0|auto_generated|mac_out2~DATAOUT30\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\inst|Mult0|auto_generated|mac_out2~DATAOUT31\ <= \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\inst|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\inst|ACC\(15) & \inst|ACC\(14) & \inst|ACC\(13) & \inst|ACC\(12) & \inst|ACC\(11) & \inst|ACC\(10) & \inst|ACC\(9) & \inst|ACC\(8) & \inst|ACC\(7) & \inst|ACC\(6) & \inst|ACC\(5) & 
\inst|ACC\(4) & \inst|ACC\(3) & \inst|ACC\(2) & \inst|ACC\(1) & \inst|ACC\(0) & gnd & gnd);

\inst|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\inst2|MBR_BR\(15) & \inst2|MBR_BR\(14) & \inst2|MBR_BR\(13) & \inst2|MBR_BR\(12) & \inst2|MBR_BR\(11) & \inst2|MBR_BR\(10) & \inst2|MBR_BR\(9) & \inst2|MBR_BR\(8) & \inst2|MBR_BR\(7) & 
\inst2|MBR_BR\(6) & \inst2|MBR_BR\(5) & \inst2|MBR_BR\(4) & \inst2|MBR_BR\(3) & \inst2|MBR_BR\(2) & \inst2|MBR_BR\(1) & \inst2|MBR_BR\(0) & gnd & gnd);

\inst|Mult0|auto_generated|mac_mult1~0\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\inst|Mult0|auto_generated|mac_mult1~1\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\inst|Mult0|auto_generated|mac_mult1~2\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\inst|Mult0|auto_generated|mac_mult1~3\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\inst|Mult0|auto_generated|mac_mult1~dataout\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT30\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\inst|Mult0|auto_generated|mac_mult1~DATAOUT31\ <= \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\inst10|srom|rom_block|auto_generated|q_a[22]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst10|srom|rom_block|auto_generated|q_a\(22));

\clkMBR~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkMBR~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\ALT_INV_clkMBR~inputclkctrl_outclk\ <= NOT \clkMBR~inputclkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\inst10|srom|rom_block|auto_generated|ALT_INV_q_a\(15) <= NOT \inst10|srom|rom_block|auto_generated|q_a\(15);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y0_N2
\ACC[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ACC\(15),
	devoe => ww_devoe,
	o => \ACC[15]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\ACC[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ACC\(14),
	devoe => ww_devoe,
	o => \ACC[14]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\ACC[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ACC\(13),
	devoe => ww_devoe,
	o => \ACC[13]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\ACC[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ACC\(12),
	devoe => ww_devoe,
	o => \ACC[12]~output_o\);

-- Location: IOOBUF_X21_Y0_N16
\ACC[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ACC\(11),
	devoe => ww_devoe,
	o => \ACC[11]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\ACC[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ACC\(10),
	devoe => ww_devoe,
	o => \ACC[10]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\ACC[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ACC\(9),
	devoe => ww_devoe,
	o => \ACC[9]~output_o\);

-- Location: IOOBUF_X34_Y6_N16
\ACC[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ACC\(8),
	devoe => ww_devoe,
	o => \ACC[8]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\ACC[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ACC\(7),
	devoe => ww_devoe,
	o => \ACC[7]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\ACC[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ACC\(6),
	devoe => ww_devoe,
	o => \ACC[6]~output_o\);

-- Location: IOOBUF_X21_Y24_N9
\ACC[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ACC\(5),
	devoe => ww_devoe,
	o => \ACC[5]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\ACC[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ACC\(4),
	devoe => ww_devoe,
	o => \ACC[4]~output_o\);

-- Location: IOOBUF_X25_Y0_N9
\ACC[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ACC\(3),
	devoe => ww_devoe,
	o => \ACC[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\ACC[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ACC\(2),
	devoe => ww_devoe,
	o => \ACC[2]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\ACC[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ACC\(1),
	devoe => ww_devoe,
	o => \ACC[1]~output_o\);

-- Location: IOOBUF_X34_Y7_N16
\ACC[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ACC\(0),
	devoe => ww_devoe,
	o => \ACC[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\BRN[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_BR\(15),
	devoe => ww_devoe,
	o => \BRN[15]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\BRN[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_BR\(14),
	devoe => ww_devoe,
	o => \BRN[14]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\BRN[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_BR\(13),
	devoe => ww_devoe,
	o => \BRN[13]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\BRN[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_BR\(12),
	devoe => ww_devoe,
	o => \BRN[12]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\BRN[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_BR\(11),
	devoe => ww_devoe,
	o => \BRN[11]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\BRN[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_BR\(10),
	devoe => ww_devoe,
	o => \BRN[10]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\BRN[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_BR\(9),
	devoe => ww_devoe,
	o => \BRN[9]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\BRN[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_BR\(8),
	devoe => ww_devoe,
	o => \BRN[8]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\BRN[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_BR\(7),
	devoe => ww_devoe,
	o => \BRN[7]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\BRN[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_BR\(6),
	devoe => ww_devoe,
	o => \BRN[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\BRN[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_BR\(5),
	devoe => ww_devoe,
	o => \BRN[5]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\BRN[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_BR\(4),
	devoe => ww_devoe,
	o => \BRN[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\BRN[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_BR\(3),
	devoe => ww_devoe,
	o => \BRN[3]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\BRN[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_BR\(2),
	devoe => ww_devoe,
	o => \BRN[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\BRN[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_BR\(1),
	devoe => ww_devoe,
	o => \BRN[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\BRN[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_BR\(0),
	devoe => ww_devoe,
	o => \BRN[0]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\BROUT[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|BRout[15]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \BROUT[15]~output_o\);

-- Location: IOOBUF_X3_Y24_N16
\BROUT[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|BRout[14]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \BROUT[14]~output_o\);

-- Location: IOOBUF_X11_Y24_N9
\BROUT[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|BRout[13]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \BROUT[13]~output_o\);

-- Location: IOOBUF_X9_Y24_N23
\BROUT[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|BRout[12]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \BROUT[12]~output_o\);

-- Location: IOOBUF_X11_Y24_N23
\BROUT[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|BRout[11]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \BROUT[11]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\BROUT[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|BRout[10]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \BROUT[10]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\BROUT[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|BRout[9]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \BROUT[9]~output_o\);

-- Location: IOOBUF_X23_Y24_N23
\BROUT[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|BRout[8]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \BROUT[8]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\BROUT[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|BRout[7]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \BROUT[7]~output_o\);

-- Location: IOOBUF_X21_Y24_N2
\BROUT[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|BRout[6]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \BROUT[6]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\BROUT[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|BRout[5]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \BROUT[5]~output_o\);

-- Location: IOOBUF_X25_Y0_N23
\BROUT[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|BRout[4]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \BROUT[4]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\BROUT[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|BRout[3]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \BROUT[3]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\BROUT[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|BRout[2]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \BROUT[2]~output_o\);

-- Location: IOOBUF_X21_Y24_N16
\BROUT[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|BRout[1]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \BROUT[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\BROUT[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|BRout[0]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \BROUT[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\CAROUT[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|CARout\(7),
	devoe => ww_devoe,
	o => \CAROUT[7]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\CAROUT[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|CARout\(6),
	devoe => ww_devoe,
	o => \CAROUT[6]~output_o\);

-- Location: IOOBUF_X5_Y24_N23
\CAROUT[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|CARout\(5),
	devoe => ww_devoe,
	o => \CAROUT[5]~output_o\);

-- Location: IOOBUF_X13_Y24_N2
\CAROUT[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|CARout\(4),
	devoe => ww_devoe,
	o => \CAROUT[4]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\CAROUT[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|CARout\(3),
	devoe => ww_devoe,
	o => \CAROUT[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\CAROUT[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|CARout\(2),
	devoe => ww_devoe,
	o => \CAROUT[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\CAROUT[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|CARout\(1),
	devoe => ww_devoe,
	o => \CAROUT[1]~output_o\);

-- Location: IOOBUF_X5_Y24_N2
\CAROUT[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|CARout\(0),
	devoe => ww_devoe,
	o => \CAROUT[0]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\CONTROL[31]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|srom|rom_block|auto_generated|q_a\(31),
	devoe => ww_devoe,
	o => \CONTROL[31]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\CONTROL[30]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|srom|rom_block|auto_generated|q_a\(30),
	devoe => ww_devoe,
	o => \CONTROL[30]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\CONTROL[29]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|srom|rom_block|auto_generated|q_a\(29),
	devoe => ww_devoe,
	o => \CONTROL[29]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\CONTROL[28]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|srom|rom_block|auto_generated|q_a\(28),
	devoe => ww_devoe,
	o => \CONTROL[28]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\CONTROL[27]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|srom|rom_block|auto_generated|q_a\(27),
	devoe => ww_devoe,
	o => \CONTROL[27]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\CONTROL[26]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|srom|rom_block|auto_generated|q_a\(26),
	devoe => ww_devoe,
	o => \CONTROL[26]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\CONTROL[25]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|srom|rom_block|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => \CONTROL[25]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\CONTROL[24]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|srom|rom_block|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => \CONTROL[24]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\CONTROL[23]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|srom|rom_block|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => \CONTROL[23]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\CONTROL[22]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|srom|rom_block|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => \CONTROL[22]~output_o\);

-- Location: IOOBUF_X18_Y24_N9
\CONTROL[21]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|srom|rom_block|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => \CONTROL[21]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\CONTROL[20]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|srom|rom_block|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => \CONTROL[20]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\CONTROL[19]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|srom|rom_block|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => \CONTROL[19]~output_o\);

-- Location: IOOBUF_X25_Y24_N23
\CONTROL[18]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|srom|rom_block|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => \CONTROL[18]~output_o\);

-- Location: IOOBUF_X34_Y5_N23
\CONTROL[17]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|srom|rom_block|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => \CONTROL[17]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\CONTROL[16]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|srom|rom_block|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => \CONTROL[16]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\CONTROL[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|srom|rom_block|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \CONTROL[15]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\CONTROL[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|srom|rom_block|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \CONTROL[14]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\CONTROL[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|srom|rom_block|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \CONTROL[13]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\CONTROL[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|srom|rom_block|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \CONTROL[12]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\CONTROL[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|srom|rom_block|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \CONTROL[11]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\CONTROL[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|srom|rom_block|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \CONTROL[10]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\CONTROL[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|srom|rom_block|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \CONTROL[9]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\CONTROL[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|srom|rom_block|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \CONTROL[8]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\CONTROL[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|srom|rom_block|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \CONTROL[7]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\CONTROL[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|srom|rom_block|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \CONTROL[6]~output_o\);

-- Location: IOOBUF_X5_Y24_N16
\CONTROL[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|srom|rom_block|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \CONTROL[5]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\CONTROL[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|srom|rom_block|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \CONTROL[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\CONTROL[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|srom|rom_block|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \CONTROL[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\CONTROL[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|srom|rom_block|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \CONTROL[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\CONTROL[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|srom|rom_block|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \CONTROL[1]~output_o\);

-- Location: IOOBUF_X7_Y24_N16
\CONTROL[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|srom|rom_block|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \CONTROL[0]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\IROUT[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_OP\(7),
	devoe => ww_devoe,
	o => \IROUT[7]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\IROUT[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_OP\(6),
	devoe => ww_devoe,
	o => \IROUT[6]~output_o\);

-- Location: IOOBUF_X11_Y24_N2
\IROUT[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_OP\(5),
	devoe => ww_devoe,
	o => \IROUT[5]~output_o\);

-- Location: IOOBUF_X13_Y24_N9
\IROUT[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_OP\(4),
	devoe => ww_devoe,
	o => \IROUT[4]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\IROUT[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_OP\(3),
	devoe => ww_devoe,
	o => \IROUT[3]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\IROUT[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_OP\(2),
	devoe => ww_devoe,
	o => \IROUT[2]~output_o\);

-- Location: IOOBUF_X9_Y24_N16
\IROUT[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_OP\(1),
	devoe => ww_devoe,
	o => \IROUT[1]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\IROUT[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_OP\(0),
	devoe => ww_devoe,
	o => \IROUT[0]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\MAROUT[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|MARout\(7),
	devoe => ww_devoe,
	o => \MAROUT[7]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\MAROUT[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|MARout\(6),
	devoe => ww_devoe,
	o => \MAROUT[6]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\MAROUT[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|MARout\(5),
	devoe => ww_devoe,
	o => \MAROUT[5]~output_o\);

-- Location: IOOBUF_X34_Y19_N9
\MAROUT[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|MARout\(4),
	devoe => ww_devoe,
	o => \MAROUT[4]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\MAROUT[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|MARout\(3),
	devoe => ww_devoe,
	o => \MAROUT[3]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\MAROUT[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|MARout\(2),
	devoe => ww_devoe,
	o => \MAROUT[2]~output_o\);

-- Location: IOOBUF_X34_Y3_N16
\MAROUT[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|MARout\(1),
	devoe => ww_devoe,
	o => \MAROUT[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\MAROUT[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|MARout\(0),
	devoe => ww_devoe,
	o => \MAROUT[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\PC[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|PCout\(7),
	devoe => ww_devoe,
	o => \PC[7]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\PC[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|PCout\(6),
	devoe => ww_devoe,
	o => \PC[6]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\PC[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|PCout\(5),
	devoe => ww_devoe,
	o => \PC[5]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\PC[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|PCout\(4),
	devoe => ww_devoe,
	o => \PC[4]~output_o\);

-- Location: IOOBUF_X34_Y10_N2
\PC[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|PCout\(3),
	devoe => ww_devoe,
	o => \PC[3]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\PC[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|PCout\(2),
	devoe => ww_devoe,
	o => \PC[2]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\PC[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|PCout\(1),
	devoe => ww_devoe,
	o => \PC[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\PC[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|PCout\(0),
	devoe => ww_devoe,
	o => \PC[0]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\RAMN[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_RAM\(15),
	devoe => ww_devoe,
	o => \RAMN[15]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\RAMN[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_RAM\(14),
	devoe => ww_devoe,
	o => \RAMN[14]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\RAMN[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_RAM\(13),
	devoe => ww_devoe,
	o => \RAMN[13]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\RAMN[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_RAM\(12),
	devoe => ww_devoe,
	o => \RAMN[12]~output_o\);

-- Location: IOOBUF_X34_Y5_N16
\RAMN[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_RAM\(11),
	devoe => ww_devoe,
	o => \RAMN[11]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\RAMN[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_RAM\(10),
	devoe => ww_devoe,
	o => \RAMN[10]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\RAMN[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_RAM\(9),
	devoe => ww_devoe,
	o => \RAMN[9]~output_o\);

-- Location: IOOBUF_X34_Y11_N2
\RAMN[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_RAM\(8),
	devoe => ww_devoe,
	o => \RAMN[8]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\RAMN[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_RAM\(7),
	devoe => ww_devoe,
	o => \RAMN[7]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\RAMN[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_RAM\(6),
	devoe => ww_devoe,
	o => \RAMN[6]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\RAMN[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_RAM\(5),
	devoe => ww_devoe,
	o => \RAMN[5]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\RAMN[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_RAM\(4),
	devoe => ww_devoe,
	o => \RAMN[4]~output_o\);

-- Location: IOOBUF_X34_Y20_N2
\RAMN[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_RAM\(3),
	devoe => ww_devoe,
	o => \RAMN[3]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\RAMN[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_RAM\(2),
	devoe => ww_devoe,
	o => \RAMN[2]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\RAMN[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_RAM\(1),
	devoe => ww_devoe,
	o => \RAMN[1]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\RAMN[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|MBR_RAM\(0),
	devoe => ww_devoe,
	o => \RAMN[0]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\RAMOUT[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|sram|ram_block|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \RAMOUT[15]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\RAMOUT[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|sram|ram_block|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \RAMOUT[14]~output_o\);

-- Location: IOOBUF_X25_Y24_N9
\RAMOUT[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|sram|ram_block|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \RAMOUT[13]~output_o\);

-- Location: IOOBUF_X34_Y19_N2
\RAMOUT[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|sram|ram_block|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \RAMOUT[12]~output_o\);

-- Location: IOOBUF_X34_Y11_N9
\RAMOUT[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|sram|ram_block|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \RAMOUT[11]~output_o\);

-- Location: IOOBUF_X25_Y24_N16
\RAMOUT[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|sram|ram_block|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \RAMOUT[10]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\RAMOUT[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|sram|ram_block|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \RAMOUT[9]~output_o\);

-- Location: IOOBUF_X25_Y24_N2
\RAMOUT[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|sram|ram_block|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \RAMOUT[8]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\RAMOUT[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|sram|ram_block|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \RAMOUT[7]~output_o\);

-- Location: IOOBUF_X34_Y8_N16
\RAMOUT[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|sram|ram_block|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \RAMOUT[6]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\RAMOUT[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|sram|ram_block|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \RAMOUT[5]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\RAMOUT[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|sram|ram_block|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \RAMOUT[4]~output_o\);

-- Location: IOOBUF_X34_Y7_N23
\RAMOUT[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|sram|ram_block|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \RAMOUT[3]~output_o\);

-- Location: IOOBUF_X34_Y8_N9
\RAMOUT[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|sram|ram_block|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \RAMOUT[2]~output_o\);

-- Location: IOOBUF_X34_Y8_N23
\RAMOUT[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|sram|ram_block|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \RAMOUT[1]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\RAMOUT[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|sram|ram_block|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \RAMOUT[0]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y11_N1
\clkMBR~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkMBR,
	o => \clkMBR~input_o\);

-- Location: CLKCTRL_G4
\clkMBR~inputclkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkMBR~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkMBR~inputclkctrl_outclk\);

-- Location: IOIBUF_X25_Y0_N1
\reset~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X19_Y7_N4
\inst2|temp[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|temp[0]~feeder_combout\ = \inst2|temp~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|temp~15_combout\,
	combout => \inst2|temp[0]~feeder_combout\);

-- Location: FF_X19_Y7_N5
\inst2|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|temp[0]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|temp\(0));

-- Location: LCCOMB_X25_Y5_N2
\inst9|PCout[0]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst9|PCout[0]~8_combout\ = \inst9|PCout\(0) $ (VCC)
-- \inst9|PCout[0]~9\ = CARRY(\inst9|PCout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|PCout\(0),
	datad => VCC,
	combout => \inst9|PCout[0]~8_combout\,
	cout => \inst9|PCout[0]~9\);

-- Location: LCCOMB_X25_Y5_N4
\inst9|PCout[1]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst9|PCout[1]~10_combout\ = (\inst9|PCout\(1) & (!\inst9|PCout[0]~9\)) # (!\inst9|PCout\(1) & ((\inst9|PCout[0]~9\) # (GND)))
-- \inst9|PCout[1]~11\ = CARRY((!\inst9|PCout[0]~9\) # (!\inst9|PCout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|PCout\(1),
	datad => VCC,
	cin => \inst9|PCout[0]~9\,
	combout => \inst9|PCout[1]~10_combout\,
	cout => \inst9|PCout[1]~11\);

-- Location: LCCOMB_X25_Y5_N6
\inst9|PCout[2]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst9|PCout[2]~12_combout\ = (\inst9|PCout\(2) & (\inst9|PCout[1]~11\ $ (GND))) # (!\inst9|PCout\(2) & (!\inst9|PCout[1]~11\ & VCC))
-- \inst9|PCout[2]~13\ = CARRY((\inst9|PCout\(2) & !\inst9|PCout[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|PCout\(2),
	datad => VCC,
	cin => \inst9|PCout[1]~11\,
	combout => \inst9|PCout[2]~12_combout\,
	cout => \inst9|PCout[2]~13\);

-- Location: LCCOMB_X25_Y5_N8
\inst9|PCout[3]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst9|PCout[3]~14_combout\ = (\inst9|PCout\(3) & (!\inst9|PCout[2]~13\)) # (!\inst9|PCout\(3) & ((\inst9|PCout[2]~13\) # (GND)))
-- \inst9|PCout[3]~15\ = CARRY((!\inst9|PCout[2]~13\) # (!\inst9|PCout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|PCout\(3),
	datad => VCC,
	cin => \inst9|PCout[2]~13\,
	combout => \inst9|PCout[3]~14_combout\,
	cout => \inst9|PCout[3]~15\);

-- Location: LCCOMB_X25_Y5_N10
\inst9|PCout[4]~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst9|PCout[4]~16_combout\ = (\inst9|PCout\(4) & (\inst9|PCout[3]~15\ $ (GND))) # (!\inst9|PCout\(4) & (!\inst9|PCout[3]~15\ & VCC))
-- \inst9|PCout[4]~17\ = CARRY((\inst9|PCout\(4) & !\inst9|PCout[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|PCout\(4),
	datad => VCC,
	cin => \inst9|PCout[3]~15\,
	combout => \inst9|PCout[4]~16_combout\,
	cout => \inst9|PCout[4]~17\);

-- Location: LCCOMB_X25_Y5_N12
\inst9|PCout[5]~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst9|PCout[5]~18_combout\ = (\inst9|PCout\(5) & (!\inst9|PCout[4]~17\)) # (!\inst9|PCout\(5) & ((\inst9|PCout[4]~17\) # (GND)))
-- \inst9|PCout[5]~19\ = CARRY((!\inst9|PCout[4]~17\) # (!\inst9|PCout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|PCout\(5),
	datad => VCC,
	cin => \inst9|PCout[4]~17\,
	combout => \inst9|PCout[5]~18_combout\,
	cout => \inst9|PCout[5]~19\);

-- Location: LCCOMB_X25_Y5_N14
\inst9|PCout[6]~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst9|PCout[6]~20_combout\ = (\inst9|PCout\(6) & (\inst9|PCout[5]~19\ $ (GND))) # (!\inst9|PCout\(6) & (!\inst9|PCout[5]~19\ & VCC))
-- \inst9|PCout[6]~21\ = CARRY((\inst9|PCout\(6) & !\inst9|PCout[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|PCout\(6),
	datad => VCC,
	cin => \inst9|PCout[5]~19\,
	combout => \inst9|PCout[6]~20_combout\,
	cout => \inst9|PCout[6]~21\);

-- Location: LCCOMB_X25_Y5_N16
\inst9|PCout[7]~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst9|PCout[7]~22_combout\ = \inst9|PCout[6]~21\ $ (\inst9|PCout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst9|PCout\(7),
	cin => \inst9|PCout[6]~21\,
	combout => \inst9|PCout[7]~22_combout\);

-- Location: LCCOMB_X21_Y5_N14
\inst2|temp[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|temp[1]~feeder_combout\ = \inst2|temp~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|temp~14_combout\,
	combout => \inst2|temp[1]~feeder_combout\);

-- Location: FF_X21_Y5_N15
\inst2|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|temp[1]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|temp\(1));

-- Location: LCCOMB_X23_Y4_N26
\inst2|temp[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|temp[2]~feeder_combout\ = \inst2|temp~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|temp~13_combout\,
	combout => \inst2|temp[2]~feeder_combout\);

-- Location: FF_X23_Y4_N27
\inst2|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|temp[2]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|temp\(2));

-- Location: LCCOMB_X21_Y5_N30
\inst2|temp[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|temp[3]~feeder_combout\ = \inst2|temp~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|temp~12_combout\,
	combout => \inst2|temp[3]~feeder_combout\);

-- Location: FF_X21_Y5_N31
\inst2|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|temp[3]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|temp\(3));

-- Location: LCCOMB_X21_Y5_N8
\inst|ACC[6]~54\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC[6]~54_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(13) & \inst10|srom|rom_block|auto_generated|q_a\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datad => \inst10|srom|rom_block|auto_generated|q_a\(14),
	combout => \inst|ACC[6]~54_combout\);

-- Location: M9K_X15_Y5_N0
\inst10|srom|rom_block|auto_generated|ram_block1a0\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100004B000000000004080000000C0B00000081020000084000000000000000000000000408000000080500000084000000000000000000000000408000000080A2000008400000000000000000000000040800000",
	mem_init0 => X"08092000000840000000000000000000000004080000000808200000840000000000000004080000000C07000000810200000840000000000000004080000000C06000000810200000840000000000000004080000000C04000000810200000840000000000000004080000000C03000000810200000840000000000000004080000000C03000000810A0000084000000000000000000000000408000000092020000084000000000000000000000000000000000000000000000000000100004B00100004600100003C00100003700100003200100002D00100002800100004100100002300100001E001000019001000014002000000000A00000000810000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./rom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_rom:inst10|altrom:srom|altsyncram:rom_block|altsyncram_1301:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 36,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clkMBR~inputclkctrl_outclk\,
	portaaddr => \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst10|srom|rom_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: CLKCTRL_G0
\inst10|srom|rom_block|auto_generated|q_a[22]~clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst10|srom|rom_block|auto_generated|q_a[22]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst10|srom|rom_block|auto_generated|q_a[22]~clkctrl_outclk\);

-- Location: LCCOMB_X18_Y5_N30
\inst2|MBR_BR[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_BR[3]~feeder_combout\ = \inst2|MBR_BR~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|MBR_BR~13_combout\,
	combout => \inst2|MBR_BR[3]~feeder_combout\);

-- Location: LCCOMB_X19_Y5_N20
\inst2|MBR_BR[15]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_BR[15]~1_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(16)) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(16),
	datab => \reset~input_o\,
	combout => \inst2|MBR_BR[15]~1_combout\);

-- Location: FF_X18_Y5_N31
\inst2|MBR_BR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_BR[3]~feeder_combout\,
	ena => \inst2|MBR_BR[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_BR\(3));

-- Location: FF_X17_Y5_N15
\inst1|BRout[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|srom|rom_block|auto_generated|q_a[22]~clkctrl_outclk\,
	asdata => \inst2|MBR_BR\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|BRout[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y4_N22
\inst2|temp[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|temp[4]~feeder_combout\ = \inst2|temp~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|temp~11_combout\,
	combout => \inst2|temp[4]~feeder_combout\);

-- Location: FF_X23_Y4_N23
\inst2|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|temp[4]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|temp\(4));

-- Location: LCCOMB_X23_Y4_N0
\inst2|temp~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|temp~11_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(20) & ((\inst|ACC\(4)))) # (!\inst10|srom|rom_block|auto_generated|q_a\(20) & (\inst2|temp\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|temp\(4),
	datac => \inst|ACC\(4),
	datad => \inst10|srom|rom_block|auto_generated|q_a\(20),
	combout => \inst2|temp~11_combout\);

-- Location: LCCOMB_X22_Y5_N26
\inst2|MBR_RAM[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_RAM[4]~feeder_combout\ = \inst2|temp~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|temp~11_combout\,
	combout => \inst2|MBR_RAM[4]~feeder_combout\);

-- Location: LCCOMB_X22_Y5_N24
\inst2|MBR_RAM[15]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_RAM[15]~0_combout\ = (\reset~input_o\ & \inst10|srom|rom_block|auto_generated|q_a\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \inst10|srom|rom_block|auto_generated|q_a\(17),
	combout => \inst2|MBR_RAM[15]~0_combout\);

-- Location: FF_X22_Y5_N27
\inst2|MBR_RAM[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_RAM[4]~feeder_combout\,
	ena => \inst2|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_RAM\(4));

-- Location: LCCOMB_X22_Y4_N12
\inst2|temp[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|temp[5]~feeder_combout\ = \inst2|temp~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|temp~10_combout\,
	combout => \inst2|temp[5]~feeder_combout\);

-- Location: FF_X22_Y4_N13
\inst2|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|temp[5]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|temp\(5));

-- Location: LCCOMB_X24_Y5_N30
\inst2|MBR_BR[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_BR[5]~feeder_combout\ = \inst2|MBR_BR~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|MBR_BR~11_combout\,
	combout => \inst2|MBR_BR[5]~feeder_combout\);

-- Location: FF_X24_Y5_N31
\inst2|MBR_BR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_BR[5]~feeder_combout\,
	ena => \inst2|MBR_BR[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_BR\(5));

-- Location: FF_X17_Y5_N7
\inst1|BRout[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|srom|rom_block|auto_generated|q_a[22]~clkctrl_outclk\,
	asdata => \inst2|MBR_BR\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|BRout[5]~_Duplicate_1_q\);

-- Location: FF_X19_Y5_N31
\inst2|MBR_BR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	asdata => \inst2|MBR_BR~10_combout\,
	sload => VCC,
	ena => \inst2|MBR_BR[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_BR\(6));

-- Location: FF_X17_Y5_N9
\inst1|BRout[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|srom|rom_block|auto_generated|q_a[22]~clkctrl_outclk\,
	asdata => \inst2|MBR_BR\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|BRout[6]~_Duplicate_1_q\);

-- Location: LCCOMB_X16_Y5_N14
\inst|Equal1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(14) & (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (!\inst10|srom|rom_block|auto_generated|q_a\(13) & !\inst10|srom|rom_block|auto_generated|q_a\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(14),
	datab => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datad => \inst10|srom|rom_block|auto_generated|q_a\(15),
	combout => \inst|Equal1~0_combout\);

-- Location: LCCOMB_X17_Y5_N8
\inst|Add0~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~9_combout\ = \inst1|BRout[6]~_Duplicate_1_q\ $ (\inst|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|BRout[6]~_Duplicate_1_q\,
	datad => \inst|Equal1~0_combout\,
	combout => \inst|Add0~9_combout\);

-- Location: LCCOMB_X17_Y5_N6
\inst|Add0~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = \inst1|BRout[5]~_Duplicate_1_q\ $ (\inst|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|BRout[5]~_Duplicate_1_q\,
	datad => \inst|Equal1~0_combout\,
	combout => \inst|Add0~10_combout\);

-- Location: LCCOMB_X17_Y5_N12
\inst|Add0~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~11_combout\ = \inst1|BRout[4]~_Duplicate_1_q\ $ (\inst|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|BRout[4]~_Duplicate_1_q\,
	datad => \inst|Equal1~0_combout\,
	combout => \inst|Add0~11_combout\);

-- Location: LCCOMB_X17_Y5_N14
\inst|Add0~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = \inst1|BRout[3]~_Duplicate_1_q\ $ (\inst|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|BRout[3]~_Duplicate_1_q\,
	datad => \inst|Equal1~0_combout\,
	combout => \inst|Add0~12_combout\);

-- Location: LCCOMB_X24_Y5_N14
\inst2|MBR_BR[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_BR[2]~feeder_combout\ = \inst2|MBR_BR~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|MBR_BR~14_combout\,
	combout => \inst2|MBR_BR[2]~feeder_combout\);

-- Location: FF_X24_Y5_N15
\inst2|MBR_BR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_BR[2]~feeder_combout\,
	ena => \inst2|MBR_BR[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_BR\(2));

-- Location: FF_X17_Y5_N1
\inst1|BRout[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|srom|rom_block|auto_generated|q_a[22]~clkctrl_outclk\,
	asdata => \inst2|MBR_BR\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|BRout[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y5_N0
\inst|Add0~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~13_combout\ = \inst1|BRout[2]~_Duplicate_1_q\ $ (\inst|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|BRout[2]~_Duplicate_1_q\,
	datad => \inst|Equal1~0_combout\,
	combout => \inst|Add0~13_combout\);

-- Location: LCCOMB_X22_Y4_N28
\inst2|temp[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|temp[6]~feeder_combout\ = \inst2|temp~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|temp~9_combout\,
	combout => \inst2|temp[6]~feeder_combout\);

-- Location: FF_X22_Y4_N29
\inst2|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|temp[6]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|temp\(6));

-- Location: LCCOMB_X22_Y4_N14
\inst2|temp~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|temp~9_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(20) & ((\inst|ACC\(6)))) # (!\inst10|srom|rom_block|auto_generated|q_a\(20) & (\inst2|temp\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|temp\(6),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(20),
	datad => \inst|ACC\(6),
	combout => \inst2|temp~9_combout\);

-- Location: LCCOMB_X22_Y5_N30
\inst2|MBR_RAM[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_RAM[6]~feeder_combout\ = \inst2|temp~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|temp~9_combout\,
	combout => \inst2|MBR_RAM[6]~feeder_combout\);

-- Location: FF_X22_Y5_N31
\inst2|MBR_RAM[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_RAM[6]~feeder_combout\,
	ena => \inst2|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_RAM\(6));

-- Location: FF_X21_Y4_N5
\inst2|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	asdata => \inst2|temp~8_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|temp\(7));

-- Location: LCCOMB_X24_Y5_N12
\inst2|MBR_BR[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_BR[7]~feeder_combout\ = \inst2|MBR_BR~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|MBR_BR~9_combout\,
	combout => \inst2|MBR_BR[7]~feeder_combout\);

-- Location: FF_X24_Y5_N13
\inst2|MBR_BR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_BR[7]~feeder_combout\,
	ena => \inst2|MBR_BR[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_BR\(7));

-- Location: LCCOMB_X16_Y5_N20
\inst1|BRout[7]~_Duplicate_1feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst1|BRout[7]~_Duplicate_1feeder_combout\ = \inst2|MBR_BR\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|MBR_BR\(7),
	combout => \inst1|BRout[7]~_Duplicate_1feeder_combout\);

-- Location: FF_X16_Y5_N21
\inst1|BRout[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|srom|rom_block|auto_generated|q_a[22]~clkctrl_outclk\,
	d => \inst1|BRout[7]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|BRout[7]~_Duplicate_1_q\);

-- Location: LCCOMB_X16_Y5_N6
\inst|Add0~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = \inst1|BRout[7]~_Duplicate_1_q\ $ (\inst|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BRout[7]~_Duplicate_1_q\,
	datac => \inst|Equal1~0_combout\,
	combout => \inst|Add0~8_combout\);

-- Location: LCCOMB_X17_Y5_N30
\inst|Add0~30\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~30_combout\ = (\inst|ACC\(6) & ((\inst|Add0~9_combout\ & (\inst|Add0~29\ & VCC)) # (!\inst|Add0~9_combout\ & (!\inst|Add0~29\)))) # (!\inst|ACC\(6) & ((\inst|Add0~9_combout\ & (!\inst|Add0~29\)) # (!\inst|Add0~9_combout\ & ((\inst|Add0~29\) # 
-- (GND)))))
-- \inst|Add0~31\ = CARRY((\inst|ACC\(6) & (!\inst|Add0~9_combout\ & !\inst|Add0~29\)) # (!\inst|ACC\(6) & ((!\inst|Add0~29\) # (!\inst|Add0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(6),
	datab => \inst|Add0~9_combout\,
	datad => VCC,
	cin => \inst|Add0~29\,
	combout => \inst|Add0~30_combout\,
	cout => \inst|Add0~31\);

-- Location: LCCOMB_X17_Y4_N0
\inst|Add0~32\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~32_combout\ = ((\inst|ACC\(7) $ (\inst|Add0~8_combout\ $ (!\inst|Add0~31\)))) # (GND)
-- \inst|Add0~33\ = CARRY((\inst|ACC\(7) & ((\inst|Add0~8_combout\) # (!\inst|Add0~31\))) # (!\inst|ACC\(7) & (\inst|Add0~8_combout\ & !\inst|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(7),
	datab => \inst|Add0~8_combout\,
	datad => VCC,
	cin => \inst|Add0~31\,
	combout => \inst|Add0~32_combout\,
	cout => \inst|Add0~33\);

-- Location: LCCOMB_X19_Y7_N18
\inst|ACC~124\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~124_combout\ = (\inst|ACC\(0) & !\inst10|srom|rom_block|auto_generated|q_a\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ACC\(0),
	datad => \inst10|srom|rom_block|auto_generated|q_a\(11),
	combout => \inst|ACC~124_combout\);

-- Location: LCCOMB_X19_Y7_N22
\inst|ACC~126\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~126_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & (((\inst|ACC\(1)) # (\inst10|srom|rom_block|auto_generated|q_a\(14))))) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (!\inst|ACC\(0) & 
-- ((!\inst10|srom|rom_block|auto_generated|q_a\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(0),
	datab => \inst|ACC\(1),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datad => \inst10|srom|rom_block|auto_generated|q_a\(14),
	combout => \inst|ACC~126_combout\);

-- Location: LCCOMB_X24_Y5_N28
\inst2|MBR_BR[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_BR[0]~feeder_combout\ = \inst2|MBR_BR~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|MBR_BR~16_combout\,
	combout => \inst2|MBR_BR[0]~feeder_combout\);

-- Location: FF_X24_Y5_N29
\inst2|MBR_BR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_BR[0]~feeder_combout\,
	ena => \inst2|MBR_BR[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_BR\(0));

-- Location: FF_X17_Y5_N5
\inst1|BRout[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|srom|rom_block|auto_generated|q_a[22]~clkctrl_outclk\,
	asdata => \inst2|MBR_BR\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|BRout[0]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y5_N4
\inst|Add0~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~15_combout\ = \inst1|BRout[0]~_Duplicate_1_q\ $ (\inst|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|BRout[0]~_Duplicate_1_q\,
	datad => \inst|Equal1~0_combout\,
	combout => \inst|Add0~15_combout\);

-- Location: LCCOMB_X17_Y5_N16
\inst|Add0~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~17_cout\ = CARRY(\inst|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~0_combout\,
	datad => VCC,
	cout => \inst|Add0~17_cout\);

-- Location: LCCOMB_X17_Y5_N18
\inst|Add0~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|ACC\(0) & ((\inst|Add0~15_combout\ & (\inst|Add0~17_cout\ & VCC)) # (!\inst|Add0~15_combout\ & (!\inst|Add0~17_cout\)))) # (!\inst|ACC\(0) & ((\inst|Add0~15_combout\ & (!\inst|Add0~17_cout\)) # (!\inst|Add0~15_combout\ & 
-- ((\inst|Add0~17_cout\) # (GND)))))
-- \inst|Add0~19\ = CARRY((\inst|ACC\(0) & (!\inst|Add0~15_combout\ & !\inst|Add0~17_cout\)) # (!\inst|ACC\(0) & ((!\inst|Add0~17_cout\) # (!\inst|Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(0),
	datab => \inst|Add0~15_combout\,
	datad => VCC,
	cin => \inst|Add0~17_cout\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: LCCOMB_X19_Y7_N0
\inst|ACC~127\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~127_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(14) & ((\inst|ACC~126_combout\ & (\inst|ACC~124_combout\)) # (!\inst|ACC~126_combout\ & ((\inst|Add0~18_combout\))))) # (!\inst10|srom|rom_block|auto_generated|q_a\(14) & 
-- (((\inst|ACC~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(14),
	datab => \inst|ACC~124_combout\,
	datac => \inst|ACC~126_combout\,
	datad => \inst|Add0~18_combout\,
	combout => \inst|ACC~127_combout\);

-- Location: LCCOMB_X19_Y7_N14
\inst|ACC~128\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~128_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(14) & ((\inst10|srom|rom_block|auto_generated|q_a\(15) & (\inst|ACC~124_combout\)) # (!\inst10|srom|rom_block|auto_generated|q_a\(15) & ((\inst|ACC~127_combout\))))) # 
-- (!\inst10|srom|rom_block|auto_generated|q_a\(14) & ((\inst10|srom|rom_block|auto_generated|q_a\(15) & ((\inst|ACC~127_combout\))) # (!\inst10|srom|rom_block|auto_generated|q_a\(15) & (\inst|ACC~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(14),
	datab => \inst|ACC~124_combout\,
	datac => \inst10|srom|rom_block|auto_generated|q_a\(15),
	datad => \inst|ACC~127_combout\,
	combout => \inst|ACC~128_combout\);

-- Location: LCCOMB_X19_Y7_N26
\inst|ACC~120\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~120_combout\ = (\inst|ACC\(0) & ((\inst10|srom|rom_block|auto_generated|q_a\(12)) # (\inst1|BRout[0]~_Duplicate_1_q\))) # (!\inst|ACC\(0) & (\inst10|srom|rom_block|auto_generated|q_a\(12) & \inst1|BRout[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(0),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datad => \inst1|BRout[0]~_Duplicate_1_q\,
	combout => \inst|ACC~120_combout\);

-- Location: LCCOMB_X19_Y7_N30
\inst|ACC~122\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~122_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & (((\inst|Add0~18_combout\)))) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (\inst|ACC\(0) & (!\inst10|srom|rom_block|auto_generated|q_a\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(0),
	datab => \inst10|srom|rom_block|auto_generated|q_a\(11),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datad => \inst|Add0~18_combout\,
	combout => \inst|ACC~122_combout\);

-- Location: LCCOMB_X21_Y4_N22
\inst2|temp[8]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|temp[8]~feeder_combout\ = \inst2|temp~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|temp~7_combout\,
	combout => \inst2|temp[8]~feeder_combout\);

-- Location: FF_X21_Y4_N23
\inst2|temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|temp[8]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|temp\(8));

-- Location: LCCOMB_X21_Y4_N4
\inst2|temp~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|temp~7_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(20) & ((\inst|ACC\(8)))) # (!\inst10|srom|rom_block|auto_generated|q_a\(20) & (\inst2|temp\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|temp\(8),
	datab => \inst10|srom|rom_block|auto_generated|q_a\(20),
	datad => \inst|ACC\(8),
	combout => \inst2|temp~7_combout\);

-- Location: LCCOMB_X22_Y5_N14
\inst2|MBR_RAM[8]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_RAM[8]~feeder_combout\ = \inst2|temp~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|temp~7_combout\,
	combout => \inst2|MBR_RAM[8]~feeder_combout\);

-- Location: FF_X22_Y5_N15
\inst2|MBR_RAM[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_RAM[8]~feeder_combout\,
	ena => \inst2|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_RAM\(8));

-- Location: LCCOMB_X21_Y6_N0
\inst2|temp[9]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|temp[9]~feeder_combout\ = \inst2|temp~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|temp~6_combout\,
	combout => \inst2|temp[9]~feeder_combout\);

-- Location: FF_X21_Y6_N1
\inst2|temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|temp[9]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|temp\(9));

-- Location: FF_X19_Y5_N27
\inst2|MBR_BR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	asdata => \inst2|MBR_BR~7_combout\,
	sload => VCC,
	ena => \inst2|MBR_BR[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_BR\(9));

-- Location: LCCOMB_X16_Y5_N8
\inst1|BRout[9]~_Duplicate_1feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst1|BRout[9]~_Duplicate_1feeder_combout\ = \inst2|MBR_BR\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|MBR_BR\(9),
	combout => \inst1|BRout[9]~_Duplicate_1feeder_combout\);

-- Location: FF_X16_Y5_N9
\inst1|BRout[9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|srom|rom_block|auto_generated|q_a[22]~clkctrl_outclk\,
	d => \inst1|BRout[9]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|BRout[9]~_Duplicate_1_q\);

-- Location: FF_X19_Y5_N13
\inst2|MBR_BR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	asdata => \inst2|MBR_BR~6_combout\,
	sload => VCC,
	ena => \inst2|MBR_BR[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_BR\(10));

-- Location: LCCOMB_X16_Y5_N26
\inst1|BRout[10]~_Duplicate_1feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst1|BRout[10]~_Duplicate_1feeder_combout\ = \inst2|MBR_BR\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|MBR_BR\(10),
	combout => \inst1|BRout[10]~_Duplicate_1feeder_combout\);

-- Location: FF_X16_Y5_N27
\inst1|BRout[10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|srom|rom_block|auto_generated|q_a[22]~clkctrl_outclk\,
	d => \inst1|BRout[10]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|BRout[10]~_Duplicate_1_q\);

-- Location: LCCOMB_X16_Y5_N12
\inst|Add0~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~5_combout\ = \inst1|BRout[10]~_Duplicate_1_q\ $ (\inst|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BRout[10]~_Duplicate_1_q\,
	datac => \inst|Equal1~0_combout\,
	combout => \inst|Add0~5_combout\);

-- Location: LCCOMB_X16_Y5_N2
\inst|Add0~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = \inst1|BRout[9]~_Duplicate_1_q\ $ (\inst|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BRout[9]~_Duplicate_1_q\,
	datac => \inst|Equal1~0_combout\,
	combout => \inst|Add0~6_combout\);

-- Location: LCCOMB_X16_Y5_N16
\inst|Add0~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~7_combout\ = \inst1|BRout[8]~_Duplicate_1_q\ $ (\inst|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BRout[8]~_Duplicate_1_q\,
	datac => \inst|Equal1~0_combout\,
	combout => \inst|Add0~7_combout\);

-- Location: LCCOMB_X17_Y4_N2
\inst|Add0~34\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~34_combout\ = (\inst|ACC\(8) & ((\inst|Add0~7_combout\ & (\inst|Add0~33\ & VCC)) # (!\inst|Add0~7_combout\ & (!\inst|Add0~33\)))) # (!\inst|ACC\(8) & ((\inst|Add0~7_combout\ & (!\inst|Add0~33\)) # (!\inst|Add0~7_combout\ & ((\inst|Add0~33\) # 
-- (GND)))))
-- \inst|Add0~35\ = CARRY((\inst|ACC\(8) & (!\inst|Add0~7_combout\ & !\inst|Add0~33\)) # (!\inst|ACC\(8) & ((!\inst|Add0~33\) # (!\inst|Add0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(8),
	datab => \inst|Add0~7_combout\,
	datad => VCC,
	cin => \inst|Add0~33\,
	combout => \inst|Add0~34_combout\,
	cout => \inst|Add0~35\);

-- Location: LCCOMB_X17_Y4_N4
\inst|Add0~36\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~36_combout\ = ((\inst|ACC\(9) $ (\inst|Add0~6_combout\ $ (!\inst|Add0~35\)))) # (GND)
-- \inst|Add0~37\ = CARRY((\inst|ACC\(9) & ((\inst|Add0~6_combout\) # (!\inst|Add0~35\))) # (!\inst|ACC\(9) & (\inst|Add0~6_combout\ & !\inst|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(9),
	datab => \inst|Add0~6_combout\,
	datad => VCC,
	cin => \inst|Add0~35\,
	combout => \inst|Add0~36_combout\,
	cout => \inst|Add0~37\);

-- Location: LCCOMB_X17_Y4_N6
\inst|Add0~38\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~38_combout\ = (\inst|Add0~5_combout\ & ((\inst|ACC\(10) & (\inst|Add0~37\ & VCC)) # (!\inst|ACC\(10) & (!\inst|Add0~37\)))) # (!\inst|Add0~5_combout\ & ((\inst|ACC\(10) & (!\inst|Add0~37\)) # (!\inst|ACC\(10) & ((\inst|Add0~37\) # (GND)))))
-- \inst|Add0~39\ = CARRY((\inst|Add0~5_combout\ & (!\inst|ACC\(10) & !\inst|Add0~37\)) # (!\inst|Add0~5_combout\ & ((!\inst|Add0~37\) # (!\inst|ACC\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~5_combout\,
	datab => \inst|ACC\(10),
	datad => VCC,
	cin => \inst|Add0~37\,
	combout => \inst|Add0~38_combout\,
	cout => \inst|Add0~39\);

-- Location: LCCOMB_X21_Y6_N14
\inst|ACC~140\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~140_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(14) & ((\inst10|srom|rom_block|auto_generated|q_a\(13) & (\inst1|BRout[10]~_Duplicate_1_q\)) # (!\inst10|srom|rom_block|auto_generated|q_a\(13) & ((\inst|Add0~38_combout\))))) # 
-- (!\inst10|srom|rom_block|auto_generated|q_a\(14) & (((\inst|Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BRout[10]~_Duplicate_1_q\,
	datab => \inst10|srom|rom_block|auto_generated|q_a\(14),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datad => \inst|Add0~38_combout\,
	combout => \inst|ACC~140_combout\);

-- Location: FF_X19_Y5_N23
\inst2|MBR_BR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	asdata => \inst2|MBR_BR~5_combout\,
	sload => VCC,
	ena => \inst2|MBR_BR[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_BR\(11));

-- Location: LCCOMB_X16_Y5_N0
\inst1|BRout[11]~_Duplicate_1feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst1|BRout[11]~_Duplicate_1feeder_combout\ = \inst2|MBR_BR\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|MBR_BR\(11),
	combout => \inst1|BRout[11]~_Duplicate_1feeder_combout\);

-- Location: FF_X16_Y5_N1
\inst1|BRout[11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|srom|rom_block|auto_generated|q_a[22]~clkctrl_outclk\,
	d => \inst1|BRout[11]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|BRout[11]~_Duplicate_1_q\);

-- Location: LCCOMB_X16_Y5_N30
\inst|Add0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = \inst1|BRout[11]~_Duplicate_1_q\ $ (\inst|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|BRout[11]~_Duplicate_1_q\,
	datac => \inst|Equal1~0_combout\,
	combout => \inst|Add0~4_combout\);

-- Location: LCCOMB_X17_Y4_N8
\inst|Add0~40\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~40_combout\ = ((\inst|Add0~4_combout\ $ (\inst|ACC\(11) $ (!\inst|Add0~39\)))) # (GND)
-- \inst|Add0~41\ = CARRY((\inst|Add0~4_combout\ & ((\inst|ACC\(11)) # (!\inst|Add0~39\))) # (!\inst|Add0~4_combout\ & (\inst|ACC\(11) & !\inst|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~4_combout\,
	datab => \inst|ACC\(11),
	datad => VCC,
	cin => \inst|Add0~39\,
	combout => \inst|Add0~40_combout\,
	cout => \inst|Add0~41\);

-- Location: FF_X19_Y5_N17
\inst2|MBR_BR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	asdata => \inst2|MBR_BR~4_combout\,
	sload => VCC,
	ena => \inst2|MBR_BR[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_BR\(12));

-- Location: LCCOMB_X16_Y5_N18
\inst1|BRout[12]~_Duplicate_1feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst1|BRout[12]~_Duplicate_1feeder_combout\ = \inst2|MBR_BR\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|MBR_BR\(12),
	combout => \inst1|BRout[12]~_Duplicate_1feeder_combout\);

-- Location: FF_X16_Y5_N19
\inst1|BRout[12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|srom|rom_block|auto_generated|q_a[22]~clkctrl_outclk\,
	d => \inst1|BRout[12]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|BRout[12]~_Duplicate_1_q\);

-- Location: LCCOMB_X16_Y5_N4
\inst|Add0~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~3_combout\ = \inst|Equal1~0_combout\ $ (\inst1|BRout[12]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal1~0_combout\,
	datad => \inst1|BRout[12]~_Duplicate_1_q\,
	combout => \inst|Add0~3_combout\);

-- Location: LCCOMB_X17_Y4_N10
\inst|Add0~42\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~42_combout\ = (\inst|ACC\(12) & ((\inst|Add0~3_combout\ & (\inst|Add0~41\ & VCC)) # (!\inst|Add0~3_combout\ & (!\inst|Add0~41\)))) # (!\inst|ACC\(12) & ((\inst|Add0~3_combout\ & (!\inst|Add0~41\)) # (!\inst|Add0~3_combout\ & ((\inst|Add0~41\) # 
-- (GND)))))
-- \inst|Add0~43\ = CARRY((\inst|ACC\(12) & (!\inst|Add0~3_combout\ & !\inst|Add0~41\)) # (!\inst|ACC\(12) & ((!\inst|Add0~41\) # (!\inst|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(12),
	datab => \inst|Add0~3_combout\,
	datad => VCC,
	cin => \inst|Add0~41\,
	combout => \inst|Add0~42_combout\,
	cout => \inst|Add0~43\);

-- Location: LCCOMB_X18_Y4_N14
\inst|ACC~138\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~138_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(13) & ((\inst10|srom|rom_block|auto_generated|q_a\(14) & (\inst1|BRout[12]~_Duplicate_1_q\)) # (!\inst10|srom|rom_block|auto_generated|q_a\(14) & ((\inst|Add0~42_combout\))))) # 
-- (!\inst10|srom|rom_block|auto_generated|q_a\(13) & (((\inst|Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BRout[12]~_Duplicate_1_q\,
	datab => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(14),
	datad => \inst|Add0~42_combout\,
	combout => \inst|ACC~138_combout\);

-- Location: FF_X19_Y5_N11
\inst2|MBR_BR[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	asdata => \inst2|MBR_BR~3_combout\,
	sload => VCC,
	ena => \inst2|MBR_BR[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_BR\(13));

-- Location: FF_X16_Y5_N25
\inst1|BRout[13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|srom|rom_block|auto_generated|q_a[22]~clkctrl_outclk\,
	asdata => \inst2|MBR_BR\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|BRout[13]~_Duplicate_1_q\);

-- Location: LCCOMB_X18_Y5_N12
\inst2|MBR_BR[14]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_BR[14]~feeder_combout\ = \inst2|MBR_BR~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|MBR_BR~2_combout\,
	combout => \inst2|MBR_BR[14]~feeder_combout\);

-- Location: FF_X18_Y5_N13
\inst2|MBR_BR[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_BR[14]~feeder_combout\,
	ena => \inst2|MBR_BR[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_BR\(14));

-- Location: FF_X16_Y5_N11
\inst1|BRout[14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|srom|rom_block|auto_generated|q_a[22]~clkctrl_outclk\,
	asdata => \inst2|MBR_BR\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|BRout[14]~_Duplicate_1_q\);

-- Location: LCCOMB_X16_Y5_N10
\inst|Add0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~1_combout\ = \inst1|BRout[14]~_Duplicate_1_q\ $ (\inst|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|BRout[14]~_Duplicate_1_q\,
	datad => \inst|Equal1~0_combout\,
	combout => \inst|Add0~1_combout\);

-- Location: LCCOMB_X16_Y5_N24
\inst|Add0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = \inst1|BRout[13]~_Duplicate_1_q\ $ (\inst|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|BRout[13]~_Duplicate_1_q\,
	datad => \inst|Equal1~0_combout\,
	combout => \inst|Add0~2_combout\);

-- Location: LCCOMB_X17_Y4_N12
\inst|Add0~44\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~44_combout\ = ((\inst|Add0~2_combout\ $ (\inst|ACC\(13) $ (!\inst|Add0~43\)))) # (GND)
-- \inst|Add0~45\ = CARRY((\inst|Add0~2_combout\ & ((\inst|ACC\(13)) # (!\inst|Add0~43\))) # (!\inst|Add0~2_combout\ & (\inst|ACC\(13) & !\inst|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~2_combout\,
	datab => \inst|ACC\(13),
	datad => VCC,
	cin => \inst|Add0~43\,
	combout => \inst|Add0~44_combout\,
	cout => \inst|Add0~45\);

-- Location: LCCOMB_X17_Y4_N14
\inst|Add0~46\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~46_combout\ = (\inst|ACC\(14) & ((\inst|Add0~1_combout\ & (\inst|Add0~45\ & VCC)) # (!\inst|Add0~1_combout\ & (!\inst|Add0~45\)))) # (!\inst|ACC\(14) & ((\inst|Add0~1_combout\ & (!\inst|Add0~45\)) # (!\inst|Add0~1_combout\ & ((\inst|Add0~45\) # 
-- (GND)))))
-- \inst|Add0~47\ = CARRY((\inst|ACC\(14) & (!\inst|Add0~1_combout\ & !\inst|Add0~45\)) # (!\inst|ACC\(14) & ((!\inst|Add0~45\) # (!\inst|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(14),
	datab => \inst|Add0~1_combout\,
	datad => VCC,
	cin => \inst|Add0~45\,
	combout => \inst|Add0~46_combout\,
	cout => \inst|Add0~47\);

-- Location: LCCOMB_X18_Y4_N26
\inst|ACC~136\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~136_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(14) & ((\inst10|srom|rom_block|auto_generated|q_a\(13) & (\inst1|BRout[14]~_Duplicate_1_q\)) # (!\inst10|srom|rom_block|auto_generated|q_a\(13) & ((\inst|Add0~46_combout\))))) # 
-- (!\inst10|srom|rom_block|auto_generated|q_a\(14) & (((\inst|Add0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(14),
	datab => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datac => \inst1|BRout[14]~_Duplicate_1_q\,
	datad => \inst|Add0~46_combout\,
	combout => \inst|ACC~136_combout\);

-- Location: FF_X19_Y5_N21
\inst2|MBR_BR[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	asdata => \inst2|MBR_BR~0_combout\,
	sload => VCC,
	ena => \inst2|MBR_BR[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_BR\(15));

-- Location: DSPMULT_X20_Y4_N0
\inst|Mult0|auto_generated|mac_mult1\ : cyclone10lp_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \inst10|srom|rom_block|auto_generated|q_a[22]~clkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \inst|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \inst|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X20_Y4_N2
\inst|Mult0|auto_generated|mac_out2\ : cyclone10lp_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \inst|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X19_Y4_N28
\inst|ACC~55\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~55_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & ((\inst10|srom|rom_block|auto_generated|q_a\(13) & ((\inst|Mult0|auto_generated|mac_out2~DATAOUT14\))) # (!\inst10|srom|rom_block|auto_generated|q_a\(13) & (\inst|ACC\(15))))) # 
-- (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (((\inst10|srom|rom_block|auto_generated|q_a\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datab => \inst|ACC\(15),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datad => \inst|Mult0|auto_generated|mac_out2~DATAOUT14\,
	combout => \inst|ACC~55_combout\);

-- Location: LCCOMB_X19_Y4_N2
\inst|ACC~56\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~56_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & (\inst|ACC\(14) $ (((!\inst|ACC~55_combout\))))) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (\inst|ACC~55_combout\ & (\inst|ACC\(14) $ (!\inst|ACC\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datab => \inst|ACC\(14),
	datac => \inst|ACC\(13),
	datad => \inst|ACC~55_combout\,
	combout => \inst|ACC~56_combout\);

-- Location: LCCOMB_X19_Y4_N10
\inst|ACC~135\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~135_combout\ = \inst|ACC\(14) $ (((\inst|ACC~56_combout\ & ((!\inst10|srom|rom_block|auto_generated|q_a\(13)) # (!\inst10|srom|rom_block|auto_generated|q_a\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(14),
	datab => \inst|ACC\(14),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datad => \inst|ACC~56_combout\,
	combout => \inst|ACC~135_combout\);

-- Location: LCCOMB_X19_Y4_N20
\inst|ACC~57\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~57_combout\ = (\inst|ACC[6]~53_combout\ & ((\inst|ACC~136_combout\) # ((\inst|ACC[6]~54_combout\ & \inst|ACC~135_combout\)))) # (!\inst|ACC[6]~53_combout\ & ((\inst|ACC[6]~54_combout\ & (\inst|ACC~136_combout\ & \inst|ACC~135_combout\)) # 
-- (!\inst|ACC[6]~54_combout\ & ((!\inst|ACC~135_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC[6]~53_combout\,
	datab => \inst|ACC[6]~54_combout\,
	datac => \inst|ACC~136_combout\,
	datad => \inst|ACC~135_combout\,
	combout => \inst|ACC~57_combout\);

-- Location: LCCOMB_X19_Y4_N12
\inst|ACC~58\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~58_combout\ = (\reset~input_o\ & (\inst|ACC~52_combout\ & \inst|ACC~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \inst|ACC~52_combout\,
	datad => \inst|ACC~57_combout\,
	combout => \inst|ACC~58_combout\);

-- Location: LCCOMB_X19_Y6_N28
\inst|ACC[6]~59\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC[6]~59_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(15) & (((\inst10|srom|rom_block|auto_generated|q_a\(14))))) # (!\inst10|srom|rom_block|auto_generated|q_a\(15) & ((\inst10|srom|rom_block|auto_generated|q_a\(12) & 
-- (!\inst10|srom|rom_block|auto_generated|q_a\(13))) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & ((!\inst10|srom|rom_block|auto_generated|q_a\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(15),
	datab => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(14),
	datad => \inst10|srom|rom_block|auto_generated|q_a\(12),
	combout => \inst|ACC[6]~59_combout\);

-- Location: LCCOMB_X19_Y6_N26
\inst|ACC[6]~60\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC[6]~60_combout\ = ((\inst10|srom|rom_block|auto_generated|q_a\(11)) # (!\inst|ACC[6]~59_combout\)) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \inst|ACC[6]~59_combout\,
	datad => \inst10|srom|rom_block|auto_generated|q_a\(11),
	combout => \inst|ACC[6]~60_combout\);

-- Location: FF_X19_Y4_N13
\inst|ACC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|ACC~58_combout\,
	ena => \inst|ACC[6]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(14));

-- Location: LCCOMB_X19_Y4_N30
\inst|ACC~61\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~61_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & (((\inst10|srom|rom_block|auto_generated|q_a\(13)) # (\inst|ACC\(14))))) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (!\inst|ACC\(13) & 
-- (!\inst10|srom|rom_block|auto_generated|q_a\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datab => \inst|ACC\(13),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datad => \inst|ACC\(14),
	combout => \inst|ACC~61_combout\);

-- Location: LCCOMB_X19_Y4_N8
\inst|ACC~62\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~62_combout\ = (\inst|ACC~61_combout\ & (((\inst|Mult0|auto_generated|mac_out2~DATAOUT13\) # (!\inst10|srom|rom_block|auto_generated|q_a\(13))))) # (!\inst|ACC~61_combout\ & (\inst|ACC\(12) & (\inst10|srom|rom_block|auto_generated|q_a\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC~61_combout\,
	datab => \inst|ACC\(12),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datad => \inst|Mult0|auto_generated|mac_out2~DATAOUT13\,
	combout => \inst|ACC~62_combout\);

-- Location: LCCOMB_X19_Y4_N18
\inst|ACC~63\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~63_combout\ = (\inst|ACC[6]~53_combout\ & ((\inst|ACC[6]~54_combout\) # ((\inst|Add0~44_combout\)))) # (!\inst|ACC[6]~53_combout\ & (!\inst|ACC[6]~54_combout\ & (\inst|ACC~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC[6]~53_combout\,
	datab => \inst|ACC[6]~54_combout\,
	datac => \inst|ACC~62_combout\,
	datad => \inst|Add0~44_combout\,
	combout => \inst|ACC~63_combout\);

-- Location: LCCOMB_X19_Y4_N16
\inst|ACC~64\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~64_combout\ = (\inst1|BRout[13]~_Duplicate_1_q\ & ((\inst|ACC~63_combout\) # ((\inst|ACC[6]~54_combout\ & \inst|ACC\(13))))) # (!\inst1|BRout[13]~_Duplicate_1_q\ & (\inst|ACC~63_combout\ & ((\inst|ACC\(13)) # (!\inst|ACC[6]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BRout[13]~_Duplicate_1_q\,
	datab => \inst|ACC[6]~54_combout\,
	datac => \inst|ACC\(13),
	datad => \inst|ACC~63_combout\,
	combout => \inst|ACC~64_combout\);

-- Location: LCCOMB_X19_Y4_N6
\inst|ACC~65\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~65_combout\ = (\reset~input_o\ & (\inst|ACC~52_combout\ & \inst|ACC~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \inst|ACC~52_combout\,
	datad => \inst|ACC~64_combout\,
	combout => \inst|ACC~65_combout\);

-- Location: FF_X19_Y4_N7
\inst|ACC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|ACC~65_combout\,
	ena => \inst|ACC[6]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(13));

-- Location: LCCOMB_X19_Y4_N26
\inst|ACC~66\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~66_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & ((\inst10|srom|rom_block|auto_generated|q_a\(13) & ((\inst|Mult0|auto_generated|mac_out2~DATAOUT12\))) # (!\inst10|srom|rom_block|auto_generated|q_a\(13) & (\inst|ACC\(13))))) # 
-- (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (((\inst10|srom|rom_block|auto_generated|q_a\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datab => \inst|ACC\(13),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datad => \inst|Mult0|auto_generated|mac_out2~DATAOUT12\,
	combout => \inst|ACC~66_combout\);

-- Location: LCCOMB_X18_Y4_N16
\inst|ACC~67\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~67_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & ((\inst|ACC\(12) $ (!\inst|ACC~66_combout\)))) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (\inst|ACC~66_combout\ & (\inst|ACC\(11) $ (!\inst|ACC\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(11),
	datab => \inst|ACC\(12),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datad => \inst|ACC~66_combout\,
	combout => \inst|ACC~67_combout\);

-- Location: LCCOMB_X18_Y4_N20
\inst|ACC~137\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~137_combout\ = \inst|ACC\(12) $ (((\inst|ACC~67_combout\ & ((!\inst10|srom|rom_block|auto_generated|q_a\(13)) # (!\inst10|srom|rom_block|auto_generated|q_a\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(14),
	datab => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datac => \inst|ACC\(12),
	datad => \inst|ACC~67_combout\,
	combout => \inst|ACC~137_combout\);

-- Location: LCCOMB_X18_Y4_N10
\inst|ACC~68\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~68_combout\ = (\inst|ACC[6]~53_combout\ & ((\inst|ACC~138_combout\) # ((\inst|ACC[6]~54_combout\ & \inst|ACC~137_combout\)))) # (!\inst|ACC[6]~53_combout\ & ((\inst|ACC[6]~54_combout\ & (\inst|ACC~138_combout\ & \inst|ACC~137_combout\)) # 
-- (!\inst|ACC[6]~54_combout\ & ((!\inst|ACC~137_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC[6]~53_combout\,
	datab => \inst|ACC[6]~54_combout\,
	datac => \inst|ACC~138_combout\,
	datad => \inst|ACC~137_combout\,
	combout => \inst|ACC~68_combout\);

-- Location: LCCOMB_X18_Y4_N28
\inst|ACC~69\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~69_combout\ = (\reset~input_o\ & (\inst|ACC~52_combout\ & \inst|ACC~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \inst|ACC~52_combout\,
	datad => \inst|ACC~68_combout\,
	combout => \inst|ACC~69_combout\);

-- Location: FF_X18_Y4_N29
\inst|ACC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|ACC~69_combout\,
	ena => \inst|ACC[6]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(12));

-- Location: LCCOMB_X18_Y4_N4
\inst|ACC~70\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~70_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & (((\inst|ACC\(12)) # (\inst10|srom|rom_block|auto_generated|q_a\(13))))) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (!\inst|ACC\(11) & 
-- ((!\inst10|srom|rom_block|auto_generated|q_a\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(11),
	datab => \inst|ACC\(12),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datad => \inst10|srom|rom_block|auto_generated|q_a\(13),
	combout => \inst|ACC~70_combout\);

-- Location: LCCOMB_X18_Y4_N2
\inst|ACC~71\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~71_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(13) & ((\inst|ACC~70_combout\ & ((\inst|Mult0|auto_generated|mac_out2~DATAOUT11\))) # (!\inst|ACC~70_combout\ & (\inst|ACC\(10))))) # (!\inst10|srom|rom_block|auto_generated|q_a\(13) & 
-- (((\inst|ACC~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datab => \inst|ACC\(10),
	datac => \inst|ACC~70_combout\,
	datad => \inst|Mult0|auto_generated|mac_out2~DATAOUT11\,
	combout => \inst|ACC~71_combout\);

-- Location: LCCOMB_X18_Y4_N0
\inst|ACC~72\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~72_combout\ = (\inst|ACC[6]~54_combout\ & (((\inst|ACC[6]~53_combout\)))) # (!\inst|ACC[6]~54_combout\ & ((\inst|ACC[6]~53_combout\ & (\inst|Add0~40_combout\)) # (!\inst|ACC[6]~53_combout\ & ((\inst|ACC~71_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~40_combout\,
	datab => \inst|ACC[6]~54_combout\,
	datac => \inst|ACC[6]~53_combout\,
	datad => \inst|ACC~71_combout\,
	combout => \inst|ACC~72_combout\);

-- Location: LCCOMB_X18_Y4_N6
\inst|ACC~73\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~73_combout\ = (\inst1|BRout[11]~_Duplicate_1_q\ & ((\inst|ACC~72_combout\) # ((\inst|ACC[6]~54_combout\ & \inst|ACC\(11))))) # (!\inst1|BRout[11]~_Duplicate_1_q\ & (\inst|ACC~72_combout\ & ((\inst|ACC\(11)) # (!\inst|ACC[6]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BRout[11]~_Duplicate_1_q\,
	datab => \inst|ACC[6]~54_combout\,
	datac => \inst|ACC\(11),
	datad => \inst|ACC~72_combout\,
	combout => \inst|ACC~73_combout\);

-- Location: LCCOMB_X18_Y4_N18
\inst|ACC~74\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~74_combout\ = (\reset~input_o\ & (\inst|ACC~52_combout\ & \inst|ACC~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \inst|ACC~52_combout\,
	datad => \inst|ACC~73_combout\,
	combout => \inst|ACC~74_combout\);

-- Location: FF_X18_Y4_N19
\inst|ACC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|ACC~74_combout\,
	ena => \inst|ACC[6]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(11));

-- Location: LCCOMB_X21_Y6_N10
\inst|ACC~75\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~75_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(13) & (((\inst|Mult0|auto_generated|mac_out2~DATAOUT10\) # (!\inst10|srom|rom_block|auto_generated|q_a\(12))))) # (!\inst10|srom|rom_block|auto_generated|q_a\(13) & (\inst|ACC\(11) & 
-- (\inst10|srom|rom_block|auto_generated|q_a\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datab => \inst|ACC\(11),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datad => \inst|Mult0|auto_generated|mac_out2~DATAOUT10\,
	combout => \inst|ACC~75_combout\);

-- Location: LCCOMB_X21_Y6_N12
\inst|ACC~76\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~76_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & (\inst|ACC\(10) $ (((!\inst|ACC~75_combout\))))) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (\inst|ACC~75_combout\ & (\inst|ACC\(10) $ (!\inst|ACC\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(10),
	datab => \inst|ACC\(9),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datad => \inst|ACC~75_combout\,
	combout => \inst|ACC~76_combout\);

-- Location: LCCOMB_X21_Y6_N16
\inst|ACC~139\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~139_combout\ = \inst|ACC\(10) $ (((\inst|ACC~76_combout\ & ((!\inst10|srom|rom_block|auto_generated|q_a\(14)) # (!\inst10|srom|rom_block|auto_generated|q_a\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datab => \inst10|srom|rom_block|auto_generated|q_a\(14),
	datac => \inst|ACC\(10),
	datad => \inst|ACC~76_combout\,
	combout => \inst|ACC~139_combout\);

-- Location: LCCOMB_X21_Y6_N18
\inst|ACC~77\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~77_combout\ = (\inst|ACC[6]~53_combout\ & ((\inst|ACC~140_combout\) # ((\inst|ACC[6]~54_combout\ & \inst|ACC~139_combout\)))) # (!\inst|ACC[6]~53_combout\ & ((\inst|ACC[6]~54_combout\ & (\inst|ACC~140_combout\ & \inst|ACC~139_combout\)) # 
-- (!\inst|ACC[6]~54_combout\ & ((!\inst|ACC~139_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC[6]~53_combout\,
	datab => \inst|ACC[6]~54_combout\,
	datac => \inst|ACC~140_combout\,
	datad => \inst|ACC~139_combout\,
	combout => \inst|ACC~77_combout\);

-- Location: LCCOMB_X21_Y6_N20
\inst|ACC~78\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~78_combout\ = (\reset~input_o\ & (\inst|ACC~52_combout\ & \inst|ACC~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \inst|ACC~52_combout\,
	datad => \inst|ACC~77_combout\,
	combout => \inst|ACC~78_combout\);

-- Location: FF_X21_Y6_N21
\inst|ACC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|ACC~78_combout\,
	ena => \inst|ACC[6]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(10));

-- Location: LCCOMB_X21_Y6_N8
\inst|ACC~79\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~79_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & ((\inst|ACC\(10)) # ((\inst10|srom|rom_block|auto_generated|q_a\(13))))) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (((!\inst|ACC\(9) & 
-- !\inst10|srom|rom_block|auto_generated|q_a\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(10),
	datab => \inst|ACC\(9),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datad => \inst10|srom|rom_block|auto_generated|q_a\(13),
	combout => \inst|ACC~79_combout\);

-- Location: LCCOMB_X21_Y6_N22
\inst|ACC~80\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~80_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(13) & ((\inst|ACC~79_combout\ & ((\inst|Mult0|auto_generated|mac_out2~DATAOUT9\))) # (!\inst|ACC~79_combout\ & (\inst|ACC\(8))))) # (!\inst10|srom|rom_block|auto_generated|q_a\(13) & 
-- (((\inst|ACC~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datab => \inst|ACC\(8),
	datac => \inst|ACC~79_combout\,
	datad => \inst|Mult0|auto_generated|mac_out2~DATAOUT9\,
	combout => \inst|ACC~80_combout\);

-- Location: LCCOMB_X21_Y6_N24
\inst|ACC~81\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~81_combout\ = (\inst|ACC[6]~53_combout\ & ((\inst|ACC[6]~54_combout\) # ((\inst|Add0~36_combout\)))) # (!\inst|ACC[6]~53_combout\ & (!\inst|ACC[6]~54_combout\ & (\inst|ACC~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC[6]~53_combout\,
	datab => \inst|ACC[6]~54_combout\,
	datac => \inst|ACC~80_combout\,
	datad => \inst|Add0~36_combout\,
	combout => \inst|ACC~81_combout\);

-- Location: LCCOMB_X21_Y6_N2
\inst|ACC~82\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~82_combout\ = (\inst1|BRout[9]~_Duplicate_1_q\ & ((\inst|ACC~81_combout\) # ((\inst|ACC\(9) & \inst|ACC[6]~54_combout\)))) # (!\inst1|BRout[9]~_Duplicate_1_q\ & (\inst|ACC~81_combout\ & ((\inst|ACC\(9)) # (!\inst|ACC[6]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BRout[9]~_Duplicate_1_q\,
	datab => \inst|ACC\(9),
	datac => \inst|ACC[6]~54_combout\,
	datad => \inst|ACC~81_combout\,
	combout => \inst|ACC~82_combout\);

-- Location: LCCOMB_X21_Y6_N6
\inst|ACC~83\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~83_combout\ = (\reset~input_o\ & (\inst|ACC~52_combout\ & \inst|ACC~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \inst|ACC~52_combout\,
	datad => \inst|ACC~82_combout\,
	combout => \inst|ACC~83_combout\);

-- Location: FF_X21_Y6_N7
\inst|ACC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|ACC~83_combout\,
	ena => \inst|ACC[6]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(9));

-- Location: LCCOMB_X21_Y6_N26
\inst2|temp~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|temp~6_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(20) & ((\inst|ACC\(9)))) # (!\inst10|srom|rom_block|auto_generated|q_a\(20) & (\inst2|temp\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|temp\(9),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(20),
	datad => \inst|ACC\(9),
	combout => \inst2|temp~6_combout\);

-- Location: LCCOMB_X22_Y5_N0
\inst2|MBR_RAM[9]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_RAM[9]~feeder_combout\ = \inst2|temp~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|temp~6_combout\,
	combout => \inst2|MBR_RAM[9]~feeder_combout\);

-- Location: FF_X22_Y5_N1
\inst2|MBR_RAM[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_RAM[9]~feeder_combout\,
	ena => \inst2|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_RAM\(9));

-- Location: LCCOMB_X21_Y6_N4
\inst2|temp[10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|temp[10]~feeder_combout\ = \inst2|temp~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|temp~5_combout\,
	combout => \inst2|temp[10]~feeder_combout\);

-- Location: FF_X21_Y6_N5
\inst2|temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|temp[10]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|temp\(10));

-- Location: LCCOMB_X21_Y6_N30
\inst2|temp~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|temp~5_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(20) & ((\inst|ACC\(10)))) # (!\inst10|srom|rom_block|auto_generated|q_a\(20) & (\inst2|temp\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|temp\(10),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(20),
	datad => \inst|ACC\(10),
	combout => \inst2|temp~5_combout\);

-- Location: LCCOMB_X22_Y5_N10
\inst2|MBR_RAM[10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_RAM[10]~feeder_combout\ = \inst2|temp~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|temp~5_combout\,
	combout => \inst2|MBR_RAM[10]~feeder_combout\);

-- Location: FF_X22_Y5_N11
\inst2|MBR_RAM[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_RAM[10]~feeder_combout\,
	ena => \inst2|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_RAM\(10));

-- Location: LCCOMB_X18_Y4_N22
\inst2|temp[11]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|temp[11]~feeder_combout\ = \inst2|temp~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|temp~4_combout\,
	combout => \inst2|temp[11]~feeder_combout\);

-- Location: FF_X18_Y4_N23
\inst2|temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|temp[11]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|temp\(11));

-- Location: LCCOMB_X18_Y4_N12
\inst2|temp~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|temp~4_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(20) & ((\inst|ACC\(11)))) # (!\inst10|srom|rom_block|auto_generated|q_a\(20) & (\inst2|temp\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|temp\(11),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(20),
	datad => \inst|ACC\(11),
	combout => \inst2|temp~4_combout\);

-- Location: LCCOMB_X22_Y5_N20
\inst2|MBR_RAM[11]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_RAM[11]~feeder_combout\ = \inst2|temp~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|temp~4_combout\,
	combout => \inst2|MBR_RAM[11]~feeder_combout\);

-- Location: FF_X22_Y5_N21
\inst2|MBR_RAM[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_RAM[11]~feeder_combout\,
	ena => \inst2|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_RAM\(11));

-- Location: LCCOMB_X18_Y4_N30
\inst2|temp[12]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|temp[12]~feeder_combout\ = \inst2|temp~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|temp~3_combout\,
	combout => \inst2|temp[12]~feeder_combout\);

-- Location: FF_X18_Y4_N31
\inst2|temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|temp[12]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|temp\(12));

-- Location: LCCOMB_X18_Y4_N24
\inst2|temp~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|temp~3_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(20) & ((\inst|ACC\(12)))) # (!\inst10|srom|rom_block|auto_generated|q_a\(20) & (\inst2|temp\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|temp\(12),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(20),
	datad => \inst|ACC\(12),
	combout => \inst2|temp~3_combout\);

-- Location: LCCOMB_X22_Y5_N2
\inst2|MBR_RAM[12]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_RAM[12]~feeder_combout\ = \inst2|temp~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|temp~3_combout\,
	combout => \inst2|MBR_RAM[12]~feeder_combout\);

-- Location: FF_X22_Y5_N3
\inst2|MBR_RAM[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_RAM[12]~feeder_combout\,
	ena => \inst2|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_RAM\(12));

-- Location: LCCOMB_X19_Y4_N22
\inst2|temp[13]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|temp[13]~feeder_combout\ = \inst2|temp~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|temp~2_combout\,
	combout => \inst2|temp[13]~feeder_combout\);

-- Location: FF_X19_Y4_N23
\inst2|temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|temp[13]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|temp\(13));

-- Location: LCCOMB_X19_Y4_N24
\inst2|temp~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|temp~2_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(20) & ((\inst|ACC\(13)))) # (!\inst10|srom|rom_block|auto_generated|q_a\(20) & (\inst2|temp\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|temp\(13),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(20),
	datad => \inst|ACC\(13),
	combout => \inst2|temp~2_combout\);

-- Location: LCCOMB_X22_Y5_N12
\inst2|MBR_RAM[13]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_RAM[13]~feeder_combout\ = \inst2|temp~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|temp~2_combout\,
	combout => \inst2|MBR_RAM[13]~feeder_combout\);

-- Location: FF_X22_Y5_N13
\inst2|MBR_RAM[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_RAM[13]~feeder_combout\,
	ena => \inst2|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_RAM\(13));

-- Location: LCCOMB_X19_Y4_N14
\inst2|temp[14]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|temp[14]~feeder_combout\ = \inst2|temp~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|temp~1_combout\,
	combout => \inst2|temp[14]~feeder_combout\);

-- Location: FF_X19_Y4_N15
\inst2|temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|temp[14]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|temp\(14));

-- Location: LCCOMB_X19_Y4_N0
\inst2|temp~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|temp~1_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(20) & ((\inst|ACC\(14)))) # (!\inst10|srom|rom_block|auto_generated|q_a\(20) & (\inst2|temp\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|temp\(14),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(20),
	datad => \inst|ACC\(14),
	combout => \inst2|temp~1_combout\);

-- Location: LCCOMB_X22_Y5_N22
\inst2|MBR_RAM[14]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_RAM[14]~feeder_combout\ = \inst2|temp~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|temp~1_combout\,
	combout => \inst2|MBR_RAM[14]~feeder_combout\);

-- Location: FF_X22_Y5_N23
\inst2|MBR_RAM[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_RAM[14]~feeder_combout\,
	ena => \inst2|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_RAM\(14));

-- Location: LCCOMB_X19_Y6_N16
\inst2|temp[15]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|temp[15]~feeder_combout\ = \inst2|temp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|temp~0_combout\,
	combout => \inst2|temp[15]~feeder_combout\);

-- Location: FF_X19_Y6_N17
\inst2|temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|temp[15]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|temp\(15));

-- Location: LCCOMB_X19_Y6_N30
\inst2|temp~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|temp~0_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(20) & ((\inst|ACC\(15)))) # (!\inst10|srom|rom_block|auto_generated|q_a\(20) & (\inst2|temp\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|temp\(15),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(20),
	datad => \inst|ACC\(15),
	combout => \inst2|temp~0_combout\);

-- Location: FF_X22_Y5_N25
\inst2|MBR_RAM[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	asdata => \inst2|temp~0_combout\,
	sload => VCC,
	ena => \inst2|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_RAM\(15));

-- Location: M9K_X27_Y5_N0
\inst7|sram|ram_block|auto_generated|ram_block1a0\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000640000400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300005040068C04A100A8C01A400E8C02A40068C02A20069002A0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./add100.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:inst7|altram:sram|altsyncram:ram_block|altsyncram_7p91:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst10|srom|rom_block|auto_generated|q_a\(17),
	portare => VCC,
	clk0 => \clkMBR~inputclkctrl_outclk\,
	portadatain => \inst7|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst7|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst7|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X19_Y5_N26
\inst2|MBR_BR~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_BR~8_combout\ = (\reset~input_o\ & \inst7|sram|ram_block|auto_generated|q_a\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \inst7|sram|ram_block|auto_generated|q_a\(8),
	combout => \inst2|MBR_BR~8_combout\);

-- Location: FF_X19_Y5_N25
\inst2|MBR_BR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	asdata => \inst2|MBR_BR~8_combout\,
	sload => VCC,
	ena => \inst2|MBR_BR[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_BR\(8));

-- Location: LCCOMB_X16_Y5_N22
\inst1|BRout[8]~_Duplicate_1feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst1|BRout[8]~_Duplicate_1feeder_combout\ = \inst2|MBR_BR\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|MBR_BR\(8),
	combout => \inst1|BRout[8]~_Duplicate_1feeder_combout\);

-- Location: FF_X16_Y5_N23
\inst1|BRout[8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|srom|rom_block|auto_generated|q_a[22]~clkctrl_outclk\,
	d => \inst1|BRout[8]~_Duplicate_1feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|BRout[8]~_Duplicate_1_q\);

-- Location: LCCOMB_X21_Y4_N30
\inst|ACC~142\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~142_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(14) & ((\inst10|srom|rom_block|auto_generated|q_a\(13) & (\inst1|BRout[8]~_Duplicate_1_q\)) # (!\inst10|srom|rom_block|auto_generated|q_a\(13) & ((\inst|Add0~34_combout\))))) # 
-- (!\inst10|srom|rom_block|auto_generated|q_a\(14) & (((\inst|Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(14),
	datab => \inst1|BRout[8]~_Duplicate_1_q\,
	datac => \inst|Add0~34_combout\,
	datad => \inst10|srom|rom_block|auto_generated|q_a\(13),
	combout => \inst|ACC~142_combout\);

-- Location: LCCOMB_X21_Y4_N12
\inst|ACC~84\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~84_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & ((\inst10|srom|rom_block|auto_generated|q_a\(13) & ((\inst|Mult0|auto_generated|mac_out2~DATAOUT8\))) # (!\inst10|srom|rom_block|auto_generated|q_a\(13) & (\inst|ACC\(9))))) # 
-- (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (\inst10|srom|rom_block|auto_generated|q_a\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datab => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datac => \inst|ACC\(9),
	datad => \inst|Mult0|auto_generated|mac_out2~DATAOUT8\,
	combout => \inst|ACC~84_combout\);

-- Location: LCCOMB_X21_Y4_N6
\inst|ACC~85\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~85_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & ((\inst|ACC\(8) $ (!\inst|ACC~84_combout\)))) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (\inst|ACC~84_combout\ & (\inst|ACC\(7) $ (!\inst|ACC\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datab => \inst|ACC\(7),
	datac => \inst|ACC\(8),
	datad => \inst|ACC~84_combout\,
	combout => \inst|ACC~85_combout\);

-- Location: LCCOMB_X21_Y4_N28
\inst|ACC~141\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~141_combout\ = \inst|ACC\(8) $ (((\inst|ACC~85_combout\ & ((!\inst10|srom|rom_block|auto_generated|q_a\(13)) # (!\inst10|srom|rom_block|auto_generated|q_a\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(14),
	datab => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datac => \inst|ACC\(8),
	datad => \inst|ACC~85_combout\,
	combout => \inst|ACC~141_combout\);

-- Location: LCCOMB_X21_Y4_N24
\inst|ACC~86\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~86_combout\ = (\inst|ACC[6]~53_combout\ & ((\inst|ACC~142_combout\) # ((\inst|ACC[6]~54_combout\ & \inst|ACC~141_combout\)))) # (!\inst|ACC[6]~53_combout\ & ((\inst|ACC[6]~54_combout\ & (\inst|ACC~142_combout\ & \inst|ACC~141_combout\)) # 
-- (!\inst|ACC[6]~54_combout\ & ((!\inst|ACC~141_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC[6]~54_combout\,
	datab => \inst|ACC[6]~53_combout\,
	datac => \inst|ACC~142_combout\,
	datad => \inst|ACC~141_combout\,
	combout => \inst|ACC~86_combout\);

-- Location: LCCOMB_X21_Y4_N20
\inst|ACC~87\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~87_combout\ = (\reset~input_o\ & (\inst|ACC~52_combout\ & \inst|ACC~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \inst|ACC~52_combout\,
	datad => \inst|ACC~86_combout\,
	combout => \inst|ACC~87_combout\);

-- Location: FF_X21_Y4_N21
\inst|ACC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|ACC~87_combout\,
	ena => \inst|ACC[6]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(8));

-- Location: LCCOMB_X19_Y7_N12
\inst|ACC~121\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~121_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & \inst|Mult0|auto_generated|mac_out2~dataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datad => \inst|Mult0|auto_generated|mac_out2~dataout\,
	combout => \inst|ACC~121_combout\);

-- Location: LCCOMB_X19_Y7_N16
\inst|ACC~123\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~123_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(14) & (\inst10|srom|rom_block|auto_generated|q_a\(15))) # (!\inst10|srom|rom_block|auto_generated|q_a\(14) & ((\inst10|srom|rom_block|auto_generated|q_a\(15) & 
-- ((\inst|ACC~121_combout\))) # (!\inst10|srom|rom_block|auto_generated|q_a\(15) & (\inst|ACC~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(14),
	datab => \inst10|srom|rom_block|auto_generated|q_a\(15),
	datac => \inst|ACC~122_combout\,
	datad => \inst|ACC~121_combout\,
	combout => \inst|ACC~123_combout\);

-- Location: LCCOMB_X19_Y7_N20
\inst|ACC~125\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~125_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(14) & ((\inst|ACC~123_combout\ & (\inst|ACC~124_combout\)) # (!\inst|ACC~123_combout\ & ((\inst|ACC~120_combout\))))) # (!\inst10|srom|rom_block|auto_generated|q_a\(14) & 
-- (((\inst|ACC~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(14),
	datab => \inst|ACC~124_combout\,
	datac => \inst|ACC~120_combout\,
	datad => \inst|ACC~123_combout\,
	combout => \inst|ACC~125_combout\);

-- Location: LCCOMB_X19_Y7_N24
\inst|ACC~129\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~129_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(13) & ((\inst|ACC~125_combout\))) # (!\inst10|srom|rom_block|auto_generated|q_a\(13) & (\inst|ACC~128_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datac => \inst|ACC~128_combout\,
	datad => \inst|ACC~125_combout\,
	combout => \inst|ACC~129_combout\);

-- Location: FF_X19_Y7_N25
\inst|ACC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|ACC~129_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(0));

-- Location: LCCOMB_X21_Y4_N26
\inst|ACC~88\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~88_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & ((\inst|ACC\(8)) # ((\inst10|srom|rom_block|auto_generated|q_a\(13))))) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (((!\inst|ACC\(7) & 
-- !\inst10|srom|rom_block|auto_generated|q_a\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(8),
	datab => \inst|ACC\(7),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datad => \inst10|srom|rom_block|auto_generated|q_a\(13),
	combout => \inst|ACC~88_combout\);

-- Location: LCCOMB_X21_Y4_N16
\inst|ACC~89\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~89_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(13) & ((\inst|ACC~88_combout\ & ((\inst|Mult0|auto_generated|mac_out2~DATAOUT7\))) # (!\inst|ACC~88_combout\ & (\inst|ACC\(6))))) # (!\inst10|srom|rom_block|auto_generated|q_a\(13) & 
-- (((\inst|ACC~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(6),
	datab => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datac => \inst|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datad => \inst|ACC~88_combout\,
	combout => \inst|ACC~89_combout\);

-- Location: LCCOMB_X21_Y4_N2
\inst|ACC~90\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~90_combout\ = (\inst|ACC[6]~54_combout\ & (\inst|ACC[6]~53_combout\)) # (!\inst|ACC[6]~54_combout\ & ((\inst|ACC[6]~53_combout\ & (\inst|Add0~32_combout\)) # (!\inst|ACC[6]~53_combout\ & ((\inst|ACC~89_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC[6]~54_combout\,
	datab => \inst|ACC[6]~53_combout\,
	datac => \inst|Add0~32_combout\,
	datad => \inst|ACC~89_combout\,
	combout => \inst|ACC~90_combout\);

-- Location: LCCOMB_X21_Y4_N0
\inst|ACC~91\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~91_combout\ = (\inst|ACC[6]~54_combout\ & ((\inst|ACC\(7) & ((\inst1|BRout[7]~_Duplicate_1_q\) # (\inst|ACC~90_combout\))) # (!\inst|ACC\(7) & (\inst1|BRout[7]~_Duplicate_1_q\ & \inst|ACC~90_combout\)))) # (!\inst|ACC[6]~54_combout\ & 
-- (((\inst|ACC~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC[6]~54_combout\,
	datab => \inst|ACC\(7),
	datac => \inst1|BRout[7]~_Duplicate_1_q\,
	datad => \inst|ACC~90_combout\,
	combout => \inst|ACC~91_combout\);

-- Location: LCCOMB_X21_Y4_N10
\inst|ACC~92\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~92_combout\ = (\reset~input_o\ & (\inst|ACC~52_combout\ & \inst|ACC~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \inst|ACC~52_combout\,
	datad => \inst|ACC~91_combout\,
	combout => \inst|ACC~92_combout\);

-- Location: FF_X21_Y4_N11
\inst|ACC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|ACC~92_combout\,
	ena => \inst|ACC[6]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(7));

-- Location: LCCOMB_X21_Y4_N18
\inst2|temp~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|temp~8_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(20) & ((\inst|ACC\(7)))) # (!\inst10|srom|rom_block|auto_generated|q_a\(20) & (\inst2|temp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|temp\(7),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(20),
	datad => \inst|ACC\(7),
	combout => \inst2|temp~8_combout\);

-- Location: LCCOMB_X22_Y5_N28
\inst2|MBR_RAM[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_RAM[7]~feeder_combout\ = \inst2|temp~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|temp~8_combout\,
	combout => \inst2|MBR_RAM[7]~feeder_combout\);

-- Location: FF_X22_Y5_N29
\inst2|MBR_RAM[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_RAM[7]~feeder_combout\,
	ena => \inst2|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_RAM\(7));

-- Location: LCCOMB_X26_Y5_N12
\inst2|MBR_BR~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_BR~15_combout\ = (\reset~input_o\ & \inst7|sram|ram_block|auto_generated|q_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \inst7|sram|ram_block|auto_generated|q_a\(1),
	combout => \inst2|MBR_BR~15_combout\);

-- Location: LCCOMB_X18_Y5_N0
\inst2|MBR_BR[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_BR[1]~feeder_combout\ = \inst2|MBR_BR~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|MBR_BR~15_combout\,
	combout => \inst2|MBR_BR[1]~feeder_combout\);

-- Location: FF_X18_Y5_N1
\inst2|MBR_BR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_BR[1]~feeder_combout\,
	ena => \inst2|MBR_BR[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_BR\(1));

-- Location: FF_X17_Y5_N11
\inst1|BRout[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|srom|rom_block|auto_generated|q_a[22]~clkctrl_outclk\,
	asdata => \inst2|MBR_BR\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|BRout[1]~_Duplicate_1_q\);

-- Location: LCCOMB_X17_Y5_N10
\inst|Add0~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = \inst1|BRout[1]~_Duplicate_1_q\ $ (\inst|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|BRout[1]~_Duplicate_1_q\,
	datad => \inst|Equal1~0_combout\,
	combout => \inst|Add0~14_combout\);

-- Location: LCCOMB_X17_Y5_N20
\inst|Add0~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = ((\inst|Add0~14_combout\ $ (\inst|ACC\(1) $ (!\inst|Add0~19\)))) # (GND)
-- \inst|Add0~21\ = CARRY((\inst|Add0~14_combout\ & ((\inst|ACC\(1)) # (!\inst|Add0~19\))) # (!\inst|Add0~14_combout\ & (\inst|ACC\(1) & !\inst|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~14_combout\,
	datab => \inst|ACC\(1),
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: LCCOMB_X17_Y5_N22
\inst|Add0~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = (\inst|ACC\(2) & ((\inst|Add0~13_combout\ & (\inst|Add0~21\ & VCC)) # (!\inst|Add0~13_combout\ & (!\inst|Add0~21\)))) # (!\inst|ACC\(2) & ((\inst|Add0~13_combout\ & (!\inst|Add0~21\)) # (!\inst|Add0~13_combout\ & ((\inst|Add0~21\) 
-- # (GND)))))
-- \inst|Add0~23\ = CARRY((\inst|ACC\(2) & (!\inst|Add0~13_combout\ & !\inst|Add0~21\)) # (!\inst|ACC\(2) & ((!\inst|Add0~21\) # (!\inst|Add0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(2),
	datab => \inst|Add0~13_combout\,
	datad => VCC,
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\,
	cout => \inst|Add0~23\);

-- Location: LCCOMB_X17_Y5_N24
\inst|Add0~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = ((\inst|ACC\(3) $ (\inst|Add0~12_combout\ $ (!\inst|Add0~23\)))) # (GND)
-- \inst|Add0~25\ = CARRY((\inst|ACC\(3) & ((\inst|Add0~12_combout\) # (!\inst|Add0~23\))) # (!\inst|ACC\(3) & (\inst|Add0~12_combout\ & !\inst|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(3),
	datab => \inst|Add0~12_combout\,
	datad => VCC,
	cin => \inst|Add0~23\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: LCCOMB_X17_Y5_N26
\inst|Add0~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = (\inst|Add0~11_combout\ & ((\inst|ACC\(4) & (\inst|Add0~25\ & VCC)) # (!\inst|ACC\(4) & (!\inst|Add0~25\)))) # (!\inst|Add0~11_combout\ & ((\inst|ACC\(4) & (!\inst|Add0~25\)) # (!\inst|ACC\(4) & ((\inst|Add0~25\) # (GND)))))
-- \inst|Add0~27\ = CARRY((\inst|Add0~11_combout\ & (!\inst|ACC\(4) & !\inst|Add0~25\)) # (!\inst|Add0~11_combout\ & ((!\inst|Add0~25\) # (!\inst|ACC\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~11_combout\,
	datab => \inst|ACC\(4),
	datad => VCC,
	cin => \inst|Add0~25\,
	combout => \inst|Add0~26_combout\,
	cout => \inst|Add0~27\);

-- Location: LCCOMB_X17_Y5_N28
\inst|Add0~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~28_combout\ = ((\inst|Add0~10_combout\ $ (\inst|ACC\(5) $ (!\inst|Add0~27\)))) # (GND)
-- \inst|Add0~29\ = CARRY((\inst|Add0~10_combout\ & ((\inst|ACC\(5)) # (!\inst|Add0~27\))) # (!\inst|Add0~10_combout\ & (\inst|ACC\(5) & !\inst|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~10_combout\,
	datab => \inst|ACC\(5),
	datad => VCC,
	cin => \inst|Add0~27\,
	combout => \inst|Add0~28_combout\,
	cout => \inst|Add0~29\);

-- Location: LCCOMB_X22_Y4_N22
\inst|ACC~144\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~144_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(13) & ((\inst10|srom|rom_block|auto_generated|q_a\(14) & (\inst1|BRout[6]~_Duplicate_1_q\)) # (!\inst10|srom|rom_block|auto_generated|q_a\(14) & ((\inst|Add0~30_combout\))))) # 
-- (!\inst10|srom|rom_block|auto_generated|q_a\(13) & (((\inst|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datab => \inst1|BRout[6]~_Duplicate_1_q\,
	datac => \inst|Add0~30_combout\,
	datad => \inst10|srom|rom_block|auto_generated|q_a\(14),
	combout => \inst|ACC~144_combout\);

-- Location: LCCOMB_X21_Y4_N14
\inst|ACC~93\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~93_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & ((\inst10|srom|rom_block|auto_generated|q_a\(13) & ((\inst|Mult0|auto_generated|mac_out2~DATAOUT6\))) # (!\inst10|srom|rom_block|auto_generated|q_a\(13) & (\inst|ACC\(7))))) # 
-- (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (((\inst10|srom|rom_block|auto_generated|q_a\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datab => \inst|ACC\(7),
	datac => \inst|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datad => \inst10|srom|rom_block|auto_generated|q_a\(13),
	combout => \inst|ACC~93_combout\);

-- Location: LCCOMB_X22_Y4_N16
\inst|ACC~94\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~94_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & (\inst|ACC\(6) $ (((!\inst|ACC~93_combout\))))) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (\inst|ACC~93_combout\ & (\inst|ACC\(6) $ (!\inst|ACC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(6),
	datab => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datac => \inst|ACC\(5),
	datad => \inst|ACC~93_combout\,
	combout => \inst|ACC~94_combout\);

-- Location: LCCOMB_X22_Y4_N24
\inst|ACC~143\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~143_combout\ = \inst|ACC\(6) $ (((\inst|ACC~94_combout\ & ((!\inst10|srom|rom_block|auto_generated|q_a\(13)) # (!\inst10|srom|rom_block|auto_generated|q_a\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(14),
	datab => \inst|ACC\(6),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datad => \inst|ACC~94_combout\,
	combout => \inst|ACC~143_combout\);

-- Location: LCCOMB_X22_Y4_N10
\inst|ACC~95\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~95_combout\ = (\inst|ACC[6]~53_combout\ & ((\inst|ACC~144_combout\) # ((\inst|ACC[6]~54_combout\ & \inst|ACC~143_combout\)))) # (!\inst|ACC[6]~53_combout\ & ((\inst|ACC[6]~54_combout\ & (\inst|ACC~144_combout\ & \inst|ACC~143_combout\)) # 
-- (!\inst|ACC[6]~54_combout\ & ((!\inst|ACC~143_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC[6]~53_combout\,
	datab => \inst|ACC[6]~54_combout\,
	datac => \inst|ACC~144_combout\,
	datad => \inst|ACC~143_combout\,
	combout => \inst|ACC~95_combout\);

-- Location: LCCOMB_X22_Y4_N0
\inst|ACC~96\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~96_combout\ = (\reset~input_o\ & (\inst|ACC~52_combout\ & \inst|ACC~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \inst|ACC~52_combout\,
	datad => \inst|ACC~95_combout\,
	combout => \inst|ACC~96_combout\);

-- Location: FF_X22_Y4_N1
\inst|ACC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|ACC~96_combout\,
	ena => \inst|ACC[6]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(6));

-- Location: LCCOMB_X22_Y4_N4
\inst|ACC~97\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~97_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(13) & (((\inst10|srom|rom_block|auto_generated|q_a\(12))))) # (!\inst10|srom|rom_block|auto_generated|q_a\(13) & ((\inst10|srom|rom_block|auto_generated|q_a\(12) & ((\inst|ACC\(6)))) # 
-- (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (!\inst|ACC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(5),
	datab => \inst|ACC\(6),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datad => \inst10|srom|rom_block|auto_generated|q_a\(12),
	combout => \inst|ACC~97_combout\);

-- Location: LCCOMB_X22_Y4_N30
\inst|ACC~98\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~98_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(13) & ((\inst|ACC~97_combout\ & ((\inst|Mult0|auto_generated|mac_out2~DATAOUT5\))) # (!\inst|ACC~97_combout\ & (\inst|ACC\(4))))) # (!\inst10|srom|rom_block|auto_generated|q_a\(13) & 
-- (((\inst|ACC~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(4),
	datab => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datac => \inst|ACC~97_combout\,
	datad => \inst|Mult0|auto_generated|mac_out2~DATAOUT5\,
	combout => \inst|ACC~98_combout\);

-- Location: LCCOMB_X22_Y4_N20
\inst|ACC~99\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~99_combout\ = (\inst|ACC[6]~53_combout\ & ((\inst|ACC[6]~54_combout\) # ((\inst|Add0~28_combout\)))) # (!\inst|ACC[6]~53_combout\ & (!\inst|ACC[6]~54_combout\ & (\inst|ACC~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC[6]~53_combout\,
	datab => \inst|ACC[6]~54_combout\,
	datac => \inst|ACC~98_combout\,
	datad => \inst|Add0~28_combout\,
	combout => \inst|ACC~99_combout\);

-- Location: LCCOMB_X22_Y4_N6
\inst|ACC~100\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~100_combout\ = (\inst1|BRout[5]~_Duplicate_1_q\ & ((\inst|ACC~99_combout\) # ((\inst|ACC[6]~54_combout\ & \inst|ACC\(5))))) # (!\inst1|BRout[5]~_Duplicate_1_q\ & (\inst|ACC~99_combout\ & ((\inst|ACC\(5)) # (!\inst|ACC[6]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BRout[5]~_Duplicate_1_q\,
	datab => \inst|ACC[6]~54_combout\,
	datac => \inst|ACC\(5),
	datad => \inst|ACC~99_combout\,
	combout => \inst|ACC~100_combout\);

-- Location: LCCOMB_X22_Y4_N18
\inst|ACC~101\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~101_combout\ = (\reset~input_o\ & (\inst|ACC~52_combout\ & \inst|ACC~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \inst|ACC~52_combout\,
	datad => \inst|ACC~100_combout\,
	combout => \inst|ACC~101_combout\);

-- Location: FF_X22_Y4_N19
\inst|ACC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|ACC~101_combout\,
	ena => \inst|ACC[6]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(5));

-- Location: LCCOMB_X22_Y4_N2
\inst2|temp~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|temp~10_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(20) & ((\inst|ACC\(5)))) # (!\inst10|srom|rom_block|auto_generated|q_a\(20) & (\inst2|temp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|temp\(5),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(20),
	datad => \inst|ACC\(5),
	combout => \inst2|temp~10_combout\);

-- Location: LCCOMB_X22_Y5_N16
\inst2|MBR_RAM[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_RAM[5]~feeder_combout\ = \inst2|temp~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|temp~10_combout\,
	combout => \inst2|MBR_RAM[5]~feeder_combout\);

-- Location: FF_X22_Y5_N17
\inst2|MBR_RAM[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_RAM[5]~feeder_combout\,
	ena => \inst2|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_RAM\(5));

-- Location: LCCOMB_X24_Y5_N0
\inst2|MBR_BR~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_BR~12_combout\ = (\reset~input_o\ & \inst7|sram|ram_block|auto_generated|q_a\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \inst7|sram|ram_block|auto_generated|q_a\(4),
	combout => \inst2|MBR_BR~12_combout\);

-- Location: FF_X24_Y5_N1
\inst2|MBR_BR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_BR~12_combout\,
	ena => \inst2|MBR_BR[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_BR\(4));

-- Location: FF_X17_Y5_N13
\inst1|BRout[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|srom|rom_block|auto_generated|q_a[22]~clkctrl_outclk\,
	asdata => \inst2|MBR_BR\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|BRout[4]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y4_N8
\inst|ACC~146\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~146_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(14) & ((\inst10|srom|rom_block|auto_generated|q_a\(13) & (\inst1|BRout[4]~_Duplicate_1_q\)) # (!\inst10|srom|rom_block|auto_generated|q_a\(13) & ((\inst|Add0~26_combout\))))) # 
-- (!\inst10|srom|rom_block|auto_generated|q_a\(14) & (((\inst|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BRout[4]~_Duplicate_1_q\,
	datab => \inst10|srom|rom_block|auto_generated|q_a\(14),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datad => \inst|Add0~26_combout\,
	combout => \inst|ACC~146_combout\);

-- Location: LCCOMB_X21_Y4_N8
\inst|ACC~102\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~102_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & ((\inst10|srom|rom_block|auto_generated|q_a\(13) & ((\inst|Mult0|auto_generated|mac_out2~DATAOUT4\))) # (!\inst10|srom|rom_block|auto_generated|q_a\(13) & (\inst|ACC\(5))))) # 
-- (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (\inst10|srom|rom_block|auto_generated|q_a\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datab => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datac => \inst|ACC\(5),
	datad => \inst|Mult0|auto_generated|mac_out2~DATAOUT4\,
	combout => \inst|ACC~102_combout\);

-- Location: LCCOMB_X22_Y4_N8
\inst|ACC~103\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~103_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & ((\inst|ACC\(4) $ (!\inst|ACC~102_combout\)))) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (\inst|ACC~102_combout\ & (\inst|ACC\(3) $ (!\inst|ACC\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(3),
	datab => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datac => \inst|ACC\(4),
	datad => \inst|ACC~102_combout\,
	combout => \inst|ACC~103_combout\);

-- Location: LCCOMB_X23_Y4_N10
\inst|ACC~145\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~145_combout\ = \inst|ACC\(4) $ (((\inst|ACC~103_combout\ & ((!\inst10|srom|rom_block|auto_generated|q_a\(13)) # (!\inst10|srom|rom_block|auto_generated|q_a\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(4),
	datab => \inst10|srom|rom_block|auto_generated|q_a\(14),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datad => \inst|ACC~103_combout\,
	combout => \inst|ACC~145_combout\);

-- Location: LCCOMB_X23_Y4_N18
\inst|ACC~104\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~104_combout\ = (\inst|ACC[6]~53_combout\ & ((\inst|ACC~146_combout\) # ((\inst|ACC[6]~54_combout\ & \inst|ACC~145_combout\)))) # (!\inst|ACC[6]~53_combout\ & ((\inst|ACC[6]~54_combout\ & (\inst|ACC~146_combout\ & \inst|ACC~145_combout\)) # 
-- (!\inst|ACC[6]~54_combout\ & ((!\inst|ACC~145_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC[6]~53_combout\,
	datab => \inst|ACC[6]~54_combout\,
	datac => \inst|ACC~146_combout\,
	datad => \inst|ACC~145_combout\,
	combout => \inst|ACC~104_combout\);

-- Location: LCCOMB_X23_Y4_N4
\inst|ACC~105\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~105_combout\ = (\reset~input_o\ & (\inst|ACC~52_combout\ & \inst|ACC~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \inst|ACC~52_combout\,
	datad => \inst|ACC~104_combout\,
	combout => \inst|ACC~105_combout\);

-- Location: FF_X23_Y4_N5
\inst|ACC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|ACC~105_combout\,
	ena => \inst|ACC[6]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(4));

-- Location: LCCOMB_X18_Y5_N14
\inst|ACC~106\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~106_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & (((\inst|ACC\(4)) # (\inst10|srom|rom_block|auto_generated|q_a\(13))))) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (!\inst|ACC\(3) & 
-- ((!\inst10|srom|rom_block|auto_generated|q_a\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(3),
	datab => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datac => \inst|ACC\(4),
	datad => \inst10|srom|rom_block|auto_generated|q_a\(13),
	combout => \inst|ACC~106_combout\);

-- Location: LCCOMB_X21_Y5_N22
\inst|ACC~107\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~107_combout\ = (\inst|ACC~106_combout\ & (((\inst|Mult0|auto_generated|mac_out2~DATAOUT3\) # (!\inst10|srom|rom_block|auto_generated|q_a\(13))))) # (!\inst|ACC~106_combout\ & (\inst|ACC\(2) & (\inst10|srom|rom_block|auto_generated|q_a\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC~106_combout\,
	datab => \inst|ACC\(2),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datad => \inst|Mult0|auto_generated|mac_out2~DATAOUT3\,
	combout => \inst|ACC~107_combout\);

-- Location: LCCOMB_X21_Y5_N20
\inst|ACC~108\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~108_combout\ = (\inst|ACC[6]~54_combout\ & (\inst|ACC[6]~53_combout\)) # (!\inst|ACC[6]~54_combout\ & ((\inst|ACC[6]~53_combout\ & ((\inst|Add0~24_combout\))) # (!\inst|ACC[6]~53_combout\ & (\inst|ACC~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC[6]~54_combout\,
	datab => \inst|ACC[6]~53_combout\,
	datac => \inst|ACC~107_combout\,
	datad => \inst|Add0~24_combout\,
	combout => \inst|ACC~108_combout\);

-- Location: LCCOMB_X21_Y5_N10
\inst|ACC~109\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~109_combout\ = (\inst|ACC[6]~54_combout\ & ((\inst|ACC\(3) & ((\inst1|BRout[3]~_Duplicate_1_q\) # (\inst|ACC~108_combout\))) # (!\inst|ACC\(3) & (\inst1|BRout[3]~_Duplicate_1_q\ & \inst|ACC~108_combout\)))) # (!\inst|ACC[6]~54_combout\ & 
-- (((\inst|ACC~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC[6]~54_combout\,
	datab => \inst|ACC\(3),
	datac => \inst1|BRout[3]~_Duplicate_1_q\,
	datad => \inst|ACC~108_combout\,
	combout => \inst|ACC~109_combout\);

-- Location: LCCOMB_X21_Y5_N28
\inst|ACC~110\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~110_combout\ = (\reset~input_o\ & (\inst|ACC~52_combout\ & \inst|ACC~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \inst|ACC~52_combout\,
	datad => \inst|ACC~109_combout\,
	combout => \inst|ACC~110_combout\);

-- Location: FF_X21_Y5_N29
\inst|ACC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|ACC~110_combout\,
	ena => \inst|ACC[6]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(3));

-- Location: LCCOMB_X21_Y5_N12
\inst2|temp~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|temp~12_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(20) & ((\inst|ACC\(3)))) # (!\inst10|srom|rom_block|auto_generated|q_a\(20) & (\inst2|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|temp\(3),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(20),
	datad => \inst|ACC\(3),
	combout => \inst2|temp~12_combout\);

-- Location: LCCOMB_X22_Y5_N8
\inst2|MBR_RAM[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_RAM[3]~feeder_combout\ = \inst2|temp~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|temp~12_combout\,
	combout => \inst2|MBR_RAM[3]~feeder_combout\);

-- Location: FF_X22_Y5_N9
\inst2|MBR_RAM[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_RAM[3]~feeder_combout\,
	ena => \inst2|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_RAM\(3));

-- Location: LCCOMB_X19_Y5_N4
\inst2|MBR_BR~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_BR~0_combout\ = (\reset~input_o\ & \inst7|sram|ram_block|auto_generated|q_a\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \inst7|sram|ram_block|auto_generated|q_a\(15),
	combout => \inst2|MBR_BR~0_combout\);

-- Location: LCCOMB_X19_Y5_N8
\inst2|MBR_OP[5]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_OP[5]~0_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(21)) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \inst10|srom|rom_block|auto_generated|q_a\(21),
	combout => \inst2|MBR_OP[5]~0_combout\);

-- Location: FF_X19_Y5_N1
\inst2|MBR_OP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	asdata => \inst2|MBR_BR~0_combout\,
	sload => VCC,
	ena => \inst2|MBR_OP[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_OP\(7));

-- Location: LCCOMB_X13_Y5_N28
\inst5|Add0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst5|Add0~0_combout\ = (!\inst5|Equal3~0_combout\ & \inst2|MBR_OP\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal3~0_combout\,
	datac => \inst2|MBR_OP\(7),
	combout => \inst5|Add0~0_combout\);

-- Location: LCCOMB_X14_Y5_N0
\inst5|CARout[0]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst5|CARout[0]~8_combout\ = (\inst5|CARout\(0) & (\inst5|Add0~7_combout\ $ (VCC))) # (!\inst5|CARout\(0) & (\inst5|Add0~7_combout\ & VCC))
-- \inst5|CARout[0]~9\ = CARRY((\inst5|CARout\(0) & \inst5|Add0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|CARout\(0),
	datab => \inst5|Add0~7_combout\,
	datad => VCC,
	combout => \inst5|CARout[0]~8_combout\,
	cout => \inst5|CARout[0]~9\);

-- Location: LCCOMB_X14_Y5_N2
\inst5|CARout[1]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst5|CARout[1]~10_combout\ = (\inst5|Add0~6_combout\ & ((\inst5|CARout\(1) & (\inst5|CARout[0]~9\ & VCC)) # (!\inst5|CARout\(1) & (!\inst5|CARout[0]~9\)))) # (!\inst5|Add0~6_combout\ & ((\inst5|CARout\(1) & (!\inst5|CARout[0]~9\)) # (!\inst5|CARout\(1) 
-- & ((\inst5|CARout[0]~9\) # (GND)))))
-- \inst5|CARout[1]~11\ = CARRY((\inst5|Add0~6_combout\ & (!\inst5|CARout\(1) & !\inst5|CARout[0]~9\)) # (!\inst5|Add0~6_combout\ & ((!\inst5|CARout[0]~9\) # (!\inst5|CARout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~6_combout\,
	datab => \inst5|CARout\(1),
	datad => VCC,
	cin => \inst5|CARout[0]~9\,
	combout => \inst5|CARout[1]~10_combout\,
	cout => \inst5|CARout[1]~11\);

-- Location: LCCOMB_X14_Y5_N4
\inst5|CARout[2]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst5|CARout[2]~12_combout\ = ((\inst5|CARout\(2) $ (\inst5|Add0~5_combout\ $ (!\inst5|CARout[1]~11\)))) # (GND)
-- \inst5|CARout[2]~13\ = CARRY((\inst5|CARout\(2) & ((\inst5|Add0~5_combout\) # (!\inst5|CARout[1]~11\))) # (!\inst5|CARout\(2) & (\inst5|Add0~5_combout\ & !\inst5|CARout[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|CARout\(2),
	datab => \inst5|Add0~5_combout\,
	datad => VCC,
	cin => \inst5|CARout[1]~11\,
	combout => \inst5|CARout[2]~12_combout\,
	cout => \inst5|CARout[2]~13\);

-- Location: LCCOMB_X14_Y5_N6
\inst5|CARout[3]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst5|CARout[3]~14_combout\ = (\inst5|CARout\(3) & ((\inst5|Add0~4_combout\ & (\inst5|CARout[2]~13\ & VCC)) # (!\inst5|Add0~4_combout\ & (!\inst5|CARout[2]~13\)))) # (!\inst5|CARout\(3) & ((\inst5|Add0~4_combout\ & (!\inst5|CARout[2]~13\)) # 
-- (!\inst5|Add0~4_combout\ & ((\inst5|CARout[2]~13\) # (GND)))))
-- \inst5|CARout[3]~15\ = CARRY((\inst5|CARout\(3) & (!\inst5|Add0~4_combout\ & !\inst5|CARout[2]~13\)) # (!\inst5|CARout\(3) & ((!\inst5|CARout[2]~13\) # (!\inst5|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|CARout\(3),
	datab => \inst5|Add0~4_combout\,
	datad => VCC,
	cin => \inst5|CARout[2]~13\,
	combout => \inst5|CARout[3]~14_combout\,
	cout => \inst5|CARout[3]~15\);

-- Location: LCCOMB_X14_Y5_N8
\inst5|CARout[4]~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst5|CARout[4]~16_combout\ = ((\inst5|Add0~3_combout\ $ (\inst5|CARout\(4) $ (!\inst5|CARout[3]~15\)))) # (GND)
-- \inst5|CARout[4]~17\ = CARRY((\inst5|Add0~3_combout\ & ((\inst5|CARout\(4)) # (!\inst5|CARout[3]~15\))) # (!\inst5|Add0~3_combout\ & (\inst5|CARout\(4) & !\inst5|CARout[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Add0~3_combout\,
	datab => \inst5|CARout\(4),
	datad => VCC,
	cin => \inst5|CARout[3]~15\,
	combout => \inst5|CARout[4]~16_combout\,
	cout => \inst5|CARout[4]~17\);

-- Location: LCCOMB_X14_Y5_N10
\inst5|CARout[5]~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst5|CARout[5]~18_combout\ = (\inst5|CARout\(5) & ((\inst5|Add0~2_combout\ & (\inst5|CARout[4]~17\ & VCC)) # (!\inst5|Add0~2_combout\ & (!\inst5|CARout[4]~17\)))) # (!\inst5|CARout\(5) & ((\inst5|Add0~2_combout\ & (!\inst5|CARout[4]~17\)) # 
-- (!\inst5|Add0~2_combout\ & ((\inst5|CARout[4]~17\) # (GND)))))
-- \inst5|CARout[5]~19\ = CARRY((\inst5|CARout\(5) & (!\inst5|Add0~2_combout\ & !\inst5|CARout[4]~17\)) # (!\inst5|CARout\(5) & ((!\inst5|CARout[4]~17\) # (!\inst5|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|CARout\(5),
	datab => \inst5|Add0~2_combout\,
	datad => VCC,
	cin => \inst5|CARout[4]~17\,
	combout => \inst5|CARout[5]~18_combout\,
	cout => \inst5|CARout[5]~19\);

-- Location: LCCOMB_X14_Y5_N12
\inst5|CARout[6]~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst5|CARout[6]~20_combout\ = ((\inst5|CARout\(6) $ (\inst5|Add0~1_combout\ $ (!\inst5|CARout[5]~19\)))) # (GND)
-- \inst5|CARout[6]~21\ = CARRY((\inst5|CARout\(6) & ((\inst5|Add0~1_combout\) # (!\inst5|CARout[5]~19\))) # (!\inst5|CARout\(6) & (\inst5|Add0~1_combout\ & !\inst5|CARout[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|CARout\(6),
	datab => \inst5|Add0~1_combout\,
	datad => VCC,
	cin => \inst5|CARout[5]~19\,
	combout => \inst5|CARout[6]~20_combout\,
	cout => \inst5|CARout[6]~21\);

-- Location: LCCOMB_X14_Y5_N14
\inst5|CARout[7]~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst5|CARout[7]~22_combout\ = \inst5|CARout\(7) $ (\inst5|CARout[6]~21\ $ (\inst5|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|CARout\(7),
	datad => \inst5|Add0~0_combout\,
	cin => \inst5|CARout[6]~21\,
	combout => \inst5|CARout[7]~22_combout\);

-- Location: LCCOMB_X13_Y5_N14
\inst5|Equal0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst5|Equal0~0_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(26) & (!\inst10|srom|rom_block|auto_generated|q_a\(25) & (!\inst10|srom|rom_block|auto_generated|q_a\(23) & !\inst10|srom|rom_block|auto_generated|q_a\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(26),
	datab => \inst10|srom|rom_block|auto_generated|q_a\(25),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(23),
	datad => \inst10|srom|rom_block|auto_generated|q_a\(24),
	combout => \inst5|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y5_N16
\inst5|CARout[7]~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst5|CARout[7]~24_combout\ = (\inst5|Equal0~0_combout\) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \inst5|Equal0~0_combout\,
	combout => \inst5|CARout[7]~24_combout\);

-- Location: LCCOMB_X13_Y5_N4
\inst5|Equal2~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst5|Equal2~0_combout\ = (!\inst10|srom|rom_block|auto_generated|q_a\(25) & (\inst10|srom|rom_block|auto_generated|q_a\(24) & (!\inst10|srom|rom_block|auto_generated|q_a\(23) & !\inst10|srom|rom_block|auto_generated|q_a\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(25),
	datab => \inst10|srom|rom_block|auto_generated|q_a\(24),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(23),
	datad => \inst10|srom|rom_block|auto_generated|q_a\(26),
	combout => \inst5|Equal2~0_combout\);

-- Location: LCCOMB_X13_Y5_N2
\inst5|Equal1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst5|Equal1~0_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(25) & (!\inst10|srom|rom_block|auto_generated|q_a\(24) & (!\inst10|srom|rom_block|auto_generated|q_a\(23) & !\inst10|srom|rom_block|auto_generated|q_a\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(25),
	datab => \inst10|srom|rom_block|auto_generated|q_a\(24),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(23),
	datad => \inst10|srom|rom_block|auto_generated|q_a\(26),
	combout => \inst5|Equal1~0_combout\);

-- Location: LCCOMB_X14_Y5_N30
\inst5|CARout[7]~25\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst5|CARout[7]~25_combout\ = (\inst5|Equal1~0_combout\) # ((\inst5|Equal3~0_combout\) # ((\inst5|Equal2~0_combout\) # (\inst5|CARout[7]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal1~0_combout\,
	datab => \inst5|Equal3~0_combout\,
	datac => \inst5|Equal2~0_combout\,
	datad => \inst5|CARout[7]~24_combout\,
	combout => \inst5|CARout[7]~25_combout\);

-- Location: FF_X14_Y5_N15
\inst5|CARout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|CARout[7]~22_combout\,
	asdata => \inst10|srom|rom_block|auto_generated|q_a\(7),
	sclr => \inst5|CARout[7]~24_combout\,
	sload => \inst5|Equal2~0_combout\,
	ena => \inst5|CARout[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|CARout\(7));

-- Location: LCCOMB_X21_Y6_N28
\inst|ACC[6]~53\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC[6]~53_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(13) & ((\inst10|srom|rom_block|auto_generated|q_a\(14) & ((\inst10|srom|rom_block|auto_generated|q_a\(12)))) # (!\inst10|srom|rom_block|auto_generated|q_a\(14) & 
-- (!\inst10|srom|rom_block|auto_generated|q_a\(15))))) # (!\inst10|srom|rom_block|auto_generated|q_a\(13) & (((\inst10|srom|rom_block|auto_generated|q_a\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datab => \inst10|srom|rom_block|auto_generated|q_a\(15),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datad => \inst10|srom|rom_block|auto_generated|q_a\(14),
	combout => \inst|ACC[6]~53_combout\);

-- Location: LCCOMB_X17_Y5_N2
\inst|ACC~148\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~148_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(14) & ((\inst10|srom|rom_block|auto_generated|q_a\(13) & (\inst1|BRout[2]~_Duplicate_1_q\)) # (!\inst10|srom|rom_block|auto_generated|q_a\(13) & ((\inst|Add0~22_combout\))))) # 
-- (!\inst10|srom|rom_block|auto_generated|q_a\(14) & (((\inst|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BRout[2]~_Duplicate_1_q\,
	datab => \inst10|srom|rom_block|auto_generated|q_a\(14),
	datac => \inst|Add0~22_combout\,
	datad => \inst10|srom|rom_block|auto_generated|q_a\(13),
	combout => \inst|ACC~148_combout\);

-- Location: LCCOMB_X23_Y4_N16
\inst|ACC~111\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~111_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & ((\inst10|srom|rom_block|auto_generated|q_a\(13) & ((\inst|Mult0|auto_generated|mac_out2~DATAOUT2\))) # (!\inst10|srom|rom_block|auto_generated|q_a\(13) & (\inst|ACC\(3))))) # 
-- (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (((\inst10|srom|rom_block|auto_generated|q_a\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(3),
	datab => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datad => \inst|Mult0|auto_generated|mac_out2~DATAOUT2\,
	combout => \inst|ACC~111_combout\);

-- Location: LCCOMB_X23_Y4_N2
\inst|ACC~112\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~112_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & ((\inst|ACC\(2) $ (!\inst|ACC~111_combout\)))) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (\inst|ACC~111_combout\ & (\inst|ACC\(1) $ (!\inst|ACC\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(1),
	datab => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datac => \inst|ACC\(2),
	datad => \inst|ACC~111_combout\,
	combout => \inst|ACC~112_combout\);

-- Location: LCCOMB_X23_Y4_N6
\inst|ACC~147\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~147_combout\ = \inst|ACC\(2) $ (((\inst|ACC~112_combout\ & ((!\inst10|srom|rom_block|auto_generated|q_a\(14)) # (!\inst10|srom|rom_block|auto_generated|q_a\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datab => \inst|ACC\(2),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(14),
	datad => \inst|ACC~112_combout\,
	combout => \inst|ACC~147_combout\);

-- Location: LCCOMB_X23_Y4_N24
\inst|ACC~113\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~113_combout\ = (\inst|ACC[6]~53_combout\ & ((\inst|ACC~148_combout\) # ((\inst|ACC[6]~54_combout\ & \inst|ACC~147_combout\)))) # (!\inst|ACC[6]~53_combout\ & ((\inst|ACC[6]~54_combout\ & (\inst|ACC~148_combout\ & \inst|ACC~147_combout\)) # 
-- (!\inst|ACC[6]~54_combout\ & ((!\inst|ACC~147_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC[6]~53_combout\,
	datab => \inst|ACC[6]~54_combout\,
	datac => \inst|ACC~148_combout\,
	datad => \inst|ACC~147_combout\,
	combout => \inst|ACC~113_combout\);

-- Location: LCCOMB_X23_Y4_N14
\inst|ACC~114\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~114_combout\ = (\reset~input_o\ & (\inst|ACC~52_combout\ & \inst|ACC~113_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \inst|ACC~52_combout\,
	datad => \inst|ACC~113_combout\,
	combout => \inst|ACC~114_combout\);

-- Location: FF_X23_Y4_N15
\inst|ACC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|ACC~114_combout\,
	ena => \inst|ACC[6]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(2));

-- Location: LCCOMB_X23_Y4_N12
\inst2|temp~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|temp~13_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(20) & ((\inst|ACC\(2)))) # (!\inst10|srom|rom_block|auto_generated|q_a\(20) & (\inst2|temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|temp\(2),
	datac => \inst|ACC\(2),
	datad => \inst10|srom|rom_block|auto_generated|q_a\(20),
	combout => \inst2|temp~13_combout\);

-- Location: LCCOMB_X22_Y5_N6
\inst2|MBR_RAM[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_RAM[2]~feeder_combout\ = \inst2|temp~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|temp~13_combout\,
	combout => \inst2|MBR_RAM[2]~feeder_combout\);

-- Location: FF_X22_Y5_N7
\inst2|MBR_RAM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_RAM[2]~feeder_combout\,
	ena => \inst2|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_RAM\(2));

-- Location: LCCOMB_X19_Y5_N24
\inst2|MBR_BR~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_BR~2_combout\ = (\reset~input_o\ & \inst7|sram|ram_block|auto_generated|q_a\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \inst7|sram|ram_block|auto_generated|q_a\(14),
	combout => \inst2|MBR_BR~2_combout\);

-- Location: FF_X19_Y5_N15
\inst2|MBR_OP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	asdata => \inst2|MBR_BR~2_combout\,
	sload => VCC,
	ena => \inst2|MBR_OP[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_OP\(6));

-- Location: LCCOMB_X14_Y5_N18
\inst5|Add0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst5|Add0~1_combout\ = (!\inst5|Equal3~0_combout\ & \inst2|MBR_OP\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Equal3~0_combout\,
	datad => \inst2|MBR_OP\(6),
	combout => \inst5|Add0~1_combout\);

-- Location: FF_X14_Y5_N13
\inst5|CARout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|CARout[6]~20_combout\,
	asdata => \inst10|srom|rom_block|auto_generated|q_a\(6),
	sclr => \inst5|CARout[7]~24_combout\,
	sload => \inst5|Equal2~0_combout\,
	ena => \inst5|CARout[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|CARout\(6));

-- Location: LCCOMB_X23_Y4_N20
\inst|ACC~52\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~52_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(15) & (!\inst10|srom|rom_block|auto_generated|q_a\(14))) # (!\inst10|srom|rom_block|auto_generated|q_a\(15) & ((\inst10|srom|rom_block|auto_generated|q_a\(12) & 
-- ((\inst10|srom|rom_block|auto_generated|q_a\(13)))) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (\inst10|srom|rom_block|auto_generated|q_a\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(15),
	datab => \inst10|srom|rom_block|auto_generated|q_a\(14),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datad => \inst10|srom|rom_block|auto_generated|q_a\(12),
	combout => \inst|ACC~52_combout\);

-- Location: LCCOMB_X21_Y5_N4
\inst|ACC~115\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~115_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & (((\inst10|srom|rom_block|auto_generated|q_a\(13)) # (\inst|ACC\(2))))) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (!\inst|ACC\(1) & 
-- (!\inst10|srom|rom_block|auto_generated|q_a\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datab => \inst|ACC\(1),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datad => \inst|ACC\(2),
	combout => \inst|ACC~115_combout\);

-- Location: LCCOMB_X21_Y5_N26
\inst|ACC~116\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~116_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(13) & ((\inst|ACC~115_combout\ & ((\inst|Mult0|auto_generated|mac_out2~DATAOUT1\))) # (!\inst|ACC~115_combout\ & (\inst|ACC\(0))))) # (!\inst10|srom|rom_block|auto_generated|q_a\(13) & 
-- (((\inst|ACC~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(0),
	datab => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datac => \inst|ACC~115_combout\,
	datad => \inst|Mult0|auto_generated|mac_out2~DATAOUT1\,
	combout => \inst|ACC~116_combout\);

-- Location: LCCOMB_X21_Y5_N24
\inst|ACC~117\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~117_combout\ = (\inst|ACC[6]~54_combout\ & (\inst|ACC[6]~53_combout\)) # (!\inst|ACC[6]~54_combout\ & ((\inst|ACC[6]~53_combout\ & (\inst|Add0~20_combout\)) # (!\inst|ACC[6]~53_combout\ & ((\inst|ACC~116_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC[6]~54_combout\,
	datab => \inst|ACC[6]~53_combout\,
	datac => \inst|Add0~20_combout\,
	datad => \inst|ACC~116_combout\,
	combout => \inst|ACC~117_combout\);

-- Location: LCCOMB_X21_Y5_N2
\inst|ACC~118\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~118_combout\ = (\inst|ACC[6]~54_combout\ & ((\inst1|BRout[1]~_Duplicate_1_q\ & ((\inst|ACC\(1)) # (\inst|ACC~117_combout\))) # (!\inst1|BRout[1]~_Duplicate_1_q\ & (\inst|ACC\(1) & \inst|ACC~117_combout\)))) # (!\inst|ACC[6]~54_combout\ & 
-- (((\inst|ACC~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC[6]~54_combout\,
	datab => \inst1|BRout[1]~_Duplicate_1_q\,
	datac => \inst|ACC\(1),
	datad => \inst|ACC~117_combout\,
	combout => \inst|ACC~118_combout\);

-- Location: LCCOMB_X21_Y5_N18
\inst|ACC~119\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~119_combout\ = (\reset~input_o\ & (\inst|ACC~52_combout\ & \inst|ACC~118_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \inst|ACC~52_combout\,
	datad => \inst|ACC~118_combout\,
	combout => \inst|ACC~119_combout\);

-- Location: FF_X21_Y5_N19
\inst|ACC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|ACC~119_combout\,
	ena => \inst|ACC[6]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(1));

-- Location: LCCOMB_X21_Y5_N0
\inst2|temp~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|temp~14_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(20) & ((\inst|ACC\(1)))) # (!\inst10|srom|rom_block|auto_generated|q_a\(20) & (\inst2|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|temp\(1),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(20),
	datad => \inst|ACC\(1),
	combout => \inst2|temp~14_combout\);

-- Location: LCCOMB_X22_Y5_N4
\inst2|MBR_RAM[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_RAM[1]~feeder_combout\ = \inst2|temp~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|temp~14_combout\,
	combout => \inst2|MBR_RAM[1]~feeder_combout\);

-- Location: FF_X22_Y5_N5
\inst2|MBR_RAM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_RAM[1]~feeder_combout\,
	ena => \inst2|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_RAM\(1));

-- Location: LCCOMB_X26_Y5_N28
\inst2|MBR_BR~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_BR~9_combout\ = (\reset~input_o\ & \inst7|sram|ram_block|auto_generated|q_a\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \inst7|sram|ram_block|auto_generated|q_a\(7),
	combout => \inst2|MBR_BR~9_combout\);

-- Location: LCCOMB_X25_Y5_N24
\inst2|MBR_MAR[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_MAR[7]~feeder_combout\ = \inst2|MBR_BR~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|MBR_BR~9_combout\,
	combout => \inst2|MBR_MAR[7]~feeder_combout\);

-- Location: FF_X25_Y5_N25
\inst2|MBR_MAR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_MAR[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_MAR\(7));

-- Location: LCCOMB_X23_Y5_N10
\inst9|PCout[7]~25\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst9|PCout[7]~25_combout\ = (!\inst10|srom|rom_block|auto_generated|q_a\(9) & !\inst10|srom|rom_block|auto_generated|q_a\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(9),
	datad => \inst10|srom|rom_block|auto_generated|q_a\(8),
	combout => \inst9|PCout[7]~25_combout\);

-- Location: LCCOMB_X17_Y3_N30
\inst|ACC[28]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC[28]~12_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & (\inst|Mult0|auto_generated|mac_out2~DATAOUT28\)) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & ((!\inst|ACC\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datab => \inst|Mult0|auto_generated|mac_out2~DATAOUT28\,
	datac => \inst|ACC\(28),
	combout => \inst|ACC[28]~12_combout\);

-- Location: LCCOMB_X16_Y4_N18
\inst|ACC[27]~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC[27]~11_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & (\inst|Mult0|auto_generated|mac_out2~DATAOUT27\)) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & ((!\inst|ACC\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|auto_generated|mac_out2~DATAOUT27\,
	datac => \inst|ACC\(27),
	datad => \inst10|srom|rom_block|auto_generated|q_a\(12),
	combout => \inst|ACC[27]~11_combout\);

-- Location: LCCOMB_X17_Y3_N20
\inst|ACC[26]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC[26]~10_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & ((\inst|Mult0|auto_generated|mac_out2~DATAOUT26\))) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (!\inst|ACC\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datac => \inst|ACC\(26),
	datad => \inst|Mult0|auto_generated|mac_out2~DATAOUT26\,
	combout => \inst|ACC[26]~10_combout\);

-- Location: LCCOMB_X17_Y3_N18
\inst|ACC[25]~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC[25]~9_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & ((\inst|Mult0|auto_generated|mac_out2~DATAOUT25\))) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (!\inst|ACC\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datac => \inst|ACC\(25),
	datad => \inst|Mult0|auto_generated|mac_out2~DATAOUT25\,
	combout => \inst|ACC[25]~9_combout\);

-- Location: LCCOMB_X16_Y4_N4
\inst|ACC[24]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC[24]~8_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & ((\inst|Mult0|auto_generated|mac_out2~DATAOUT24\))) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (!\inst|ACC\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datac => \inst|ACC\(24),
	datad => \inst|Mult0|auto_generated|mac_out2~DATAOUT24\,
	combout => \inst|ACC[24]~8_combout\);

-- Location: LCCOMB_X16_Y4_N22
\inst|ACC[23]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC[23]~7_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & ((\inst|Mult0|auto_generated|mac_out2~DATAOUT23\))) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (!\inst|ACC\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datac => \inst|ACC\(23),
	datad => \inst|Mult0|auto_generated|mac_out2~DATAOUT23\,
	combout => \inst|ACC[23]~7_combout\);

-- Location: LCCOMB_X16_Y4_N24
\inst|ACC[22]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC[22]~6_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & ((\inst|Mult0|auto_generated|mac_out2~DATAOUT22\))) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (!\inst|ACC\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datac => \inst|ACC\(22),
	datad => \inst|Mult0|auto_generated|mac_out2~DATAOUT22\,
	combout => \inst|ACC[22]~6_combout\);

-- Location: LCCOMB_X16_Y4_N26
\inst|ACC[21]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC[21]~5_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & (\inst|Mult0|auto_generated|mac_out2~DATAOUT21\)) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & ((!\inst|ACC\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datac => \inst|ACC\(21),
	datad => \inst10|srom|rom_block|auto_generated|q_a\(12),
	combout => \inst|ACC[21]~5_combout\);

-- Location: LCCOMB_X16_Y4_N8
\inst|ACC[20]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC[20]~4_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & ((\inst|Mult0|auto_generated|mac_out2~DATAOUT20\))) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (!\inst|ACC\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datac => \inst|ACC\(20),
	datad => \inst|Mult0|auto_generated|mac_out2~DATAOUT20\,
	combout => \inst|ACC[20]~4_combout\);

-- Location: LCCOMB_X16_Y4_N10
\inst|ACC[19]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC[19]~3_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & ((\inst|Mult0|auto_generated|mac_out2~DATAOUT19\))) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (!\inst|ACC\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datac => \inst|ACC\(19),
	datad => \inst|Mult0|auto_generated|mac_out2~DATAOUT19\,
	combout => \inst|ACC[19]~3_combout\);

-- Location: LCCOMB_X16_Y4_N12
\inst|ACC[18]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC[18]~2_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & ((\inst|Mult0|auto_generated|mac_out2~DATAOUT18\))) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (!\inst|ACC\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datac => \inst|ACC\(18),
	datad => \inst|Mult0|auto_generated|mac_out2~DATAOUT18\,
	combout => \inst|ACC[18]~2_combout\);

-- Location: LCCOMB_X16_Y4_N14
\inst|ACC[17]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC[17]~1_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & ((\inst|Mult0|auto_generated|mac_out2~DATAOUT17\))) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (!\inst|ACC\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datac => \inst|ACC\(17),
	datad => \inst|Mult0|auto_generated|mac_out2~DATAOUT17\,
	combout => \inst|ACC[17]~1_combout\);

-- Location: LCCOMB_X16_Y4_N16
\inst|ACC[16]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC[16]~0_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & (\inst|Mult0|auto_generated|mac_out2~DATAOUT16\)) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & ((!\inst|ACC\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|auto_generated|mac_out2~DATAOUT16\,
	datac => \inst|ACC\(16),
	datad => \inst10|srom|rom_block|auto_generated|q_a\(12),
	combout => \inst|ACC[16]~0_combout\);

-- Location: FF_X16_Y5_N29
\inst1|BRout[15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst10|srom|rom_block|auto_generated|q_a[22]~clkctrl_outclk\,
	asdata => \inst2|MBR_BR\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|BRout[15]~_Duplicate_1_q\);

-- Location: LCCOMB_X16_Y5_N28
\inst|Add0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst1|BRout[15]~_Duplicate_1_q\ $ (\inst|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|BRout[15]~_Duplicate_1_q\,
	datad => \inst|Equal1~0_combout\,
	combout => \inst|Add0~0_combout\);

-- Location: LCCOMB_X17_Y4_N16
\inst|Add0~48\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~48_combout\ = ((\inst|Add0~0_combout\ $ (\inst|ACC\(15) $ (!\inst|Add0~47\)))) # (GND)
-- \inst|Add0~49\ = CARRY((\inst|Add0~0_combout\ & ((\inst|ACC\(15)) # (!\inst|Add0~47\))) # (!\inst|Add0~0_combout\ & (\inst|ACC\(15) & !\inst|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~0_combout\,
	datab => \inst|ACC\(15),
	datad => VCC,
	cin => \inst|Add0~47\,
	combout => \inst|Add0~48_combout\,
	cout => \inst|Add0~49\);

-- Location: LCCOMB_X17_Y4_N18
\inst|Add0~50\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~50_combout\ = (\inst|Equal1~0_combout\ & ((\inst|ACC\(16) & (\inst|Add0~49\ & VCC)) # (!\inst|ACC\(16) & (!\inst|Add0~49\)))) # (!\inst|Equal1~0_combout\ & ((\inst|ACC\(16) & (!\inst|Add0~49\)) # (!\inst|ACC\(16) & ((\inst|Add0~49\) # (GND)))))
-- \inst|Add0~51\ = CARRY((\inst|Equal1~0_combout\ & (!\inst|ACC\(16) & !\inst|Add0~49\)) # (!\inst|Equal1~0_combout\ & ((!\inst|Add0~49\) # (!\inst|ACC\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~0_combout\,
	datab => \inst|ACC\(16),
	datad => VCC,
	cin => \inst|Add0~49\,
	combout => \inst|Add0~50_combout\,
	cout => \inst|Add0~51\);

-- Location: LCCOMB_X16_Y4_N0
\inst|ACC[30]~130\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC[30]~130_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(13) & (((\inst10|srom|rom_block|auto_generated|q_a\(15) & \inst10|srom|rom_block|auto_generated|q_a\(14))) # (!\inst10|srom|rom_block|auto_generated|q_a\(12)))) # 
-- (!\inst10|srom|rom_block|auto_generated|q_a\(13) & ((\inst10|srom|rom_block|auto_generated|q_a\(12)) # (\inst10|srom|rom_block|auto_generated|q_a\(15) $ (!\inst10|srom|rom_block|auto_generated|q_a\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datab => \inst10|srom|rom_block|auto_generated|q_a\(15),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(14),
	datad => \inst10|srom|rom_block|auto_generated|q_a\(12),
	combout => \inst|ACC[30]~130_combout\);

-- Location: LCCOMB_X16_Y4_N6
\inst|ACC[30]~131\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC[30]~131_combout\ = (\inst|ACC[30]~130_combout\) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \inst|ACC[30]~130_combout\,
	combout => \inst|ACC[30]~131_combout\);

-- Location: LCCOMB_X16_Y6_N28
\inst|ACC[30]~132\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC[30]~132_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & (\inst10|srom|rom_block|auto_generated|q_a\(14) & (!\inst10|srom|rom_block|auto_generated|q_a\(15) & \inst10|srom|rom_block|auto_generated|q_a\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datab => \inst10|srom|rom_block|auto_generated|q_a\(14),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(15),
	datad => \inst10|srom|rom_block|auto_generated|q_a\(13),
	combout => \inst|ACC[30]~132_combout\);

-- Location: LCCOMB_X16_Y6_N18
\inst|ACC[30]~133\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC[30]~133_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(15) & ((\inst10|srom|rom_block|auto_generated|q_a\(14)) # (\inst10|srom|rom_block|auto_generated|q_a\(12) $ (\inst10|srom|rom_block|auto_generated|q_a\(13))))) # 
-- (!\inst10|srom|rom_block|auto_generated|q_a\(15) & ((\inst10|srom|rom_block|auto_generated|q_a\(12) & ((!\inst10|srom|rom_block|auto_generated|q_a\(13)))) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & 
-- (!\inst10|srom|rom_block|auto_generated|q_a\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datab => \inst10|srom|rom_block|auto_generated|q_a\(14),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(15),
	datad => \inst10|srom|rom_block|auto_generated|q_a\(13),
	combout => \inst|ACC[30]~133_combout\);

-- Location: LCCOMB_X16_Y6_N8
\inst|ACC[30]~134\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC[30]~134_combout\ = ((!\inst|ACC[30]~132_combout\ & ((\inst10|srom|rom_block|auto_generated|q_a\(11)) # (!\inst|ACC[30]~133_combout\)))) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \inst|ACC[30]~132_combout\,
	datac => \inst10|srom|rom_block|auto_generated|q_a\(11),
	datad => \inst|ACC[30]~133_combout\,
	combout => \inst|ACC[30]~134_combout\);

-- Location: FF_X16_Y4_N17
\inst|ACC[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|ACC[16]~0_combout\,
	asdata => \inst|Add0~50_combout\,
	sclr => \inst|ACC[30]~131_combout\,
	sload => \inst10|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	ena => \inst|ACC[30]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(16));

-- Location: LCCOMB_X17_Y4_N20
\inst|Add0~52\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~52_combout\ = ((\inst|Equal1~0_combout\ $ (\inst|ACC\(17) $ (!\inst|Add0~51\)))) # (GND)
-- \inst|Add0~53\ = CARRY((\inst|Equal1~0_combout\ & ((\inst|ACC\(17)) # (!\inst|Add0~51\))) # (!\inst|Equal1~0_combout\ & (\inst|ACC\(17) & !\inst|Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~0_combout\,
	datab => \inst|ACC\(17),
	datad => VCC,
	cin => \inst|Add0~51\,
	combout => \inst|Add0~52_combout\,
	cout => \inst|Add0~53\);

-- Location: FF_X16_Y4_N15
\inst|ACC[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|ACC[17]~1_combout\,
	asdata => \inst|Add0~52_combout\,
	sclr => \inst|ACC[30]~131_combout\,
	sload => \inst10|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	ena => \inst|ACC[30]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(17));

-- Location: LCCOMB_X17_Y4_N22
\inst|Add0~54\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~54_combout\ = (\inst|Equal1~0_combout\ & ((\inst|ACC\(18) & (\inst|Add0~53\ & VCC)) # (!\inst|ACC\(18) & (!\inst|Add0~53\)))) # (!\inst|Equal1~0_combout\ & ((\inst|ACC\(18) & (!\inst|Add0~53\)) # (!\inst|ACC\(18) & ((\inst|Add0~53\) # (GND)))))
-- \inst|Add0~55\ = CARRY((\inst|Equal1~0_combout\ & (!\inst|ACC\(18) & !\inst|Add0~53\)) # (!\inst|Equal1~0_combout\ & ((!\inst|Add0~53\) # (!\inst|ACC\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~0_combout\,
	datab => \inst|ACC\(18),
	datad => VCC,
	cin => \inst|Add0~53\,
	combout => \inst|Add0~54_combout\,
	cout => \inst|Add0~55\);

-- Location: FF_X16_Y4_N13
\inst|ACC[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|ACC[18]~2_combout\,
	asdata => \inst|Add0~54_combout\,
	sclr => \inst|ACC[30]~131_combout\,
	sload => \inst10|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	ena => \inst|ACC[30]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(18));

-- Location: LCCOMB_X17_Y4_N24
\inst|Add0~56\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~56_combout\ = ((\inst|Equal1~0_combout\ $ (\inst|ACC\(19) $ (!\inst|Add0~55\)))) # (GND)
-- \inst|Add0~57\ = CARRY((\inst|Equal1~0_combout\ & ((\inst|ACC\(19)) # (!\inst|Add0~55\))) # (!\inst|Equal1~0_combout\ & (\inst|ACC\(19) & !\inst|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~0_combout\,
	datab => \inst|ACC\(19),
	datad => VCC,
	cin => \inst|Add0~55\,
	combout => \inst|Add0~56_combout\,
	cout => \inst|Add0~57\);

-- Location: FF_X16_Y4_N11
\inst|ACC[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|ACC[19]~3_combout\,
	asdata => \inst|Add0~56_combout\,
	sclr => \inst|ACC[30]~131_combout\,
	sload => \inst10|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	ena => \inst|ACC[30]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(19));

-- Location: LCCOMB_X17_Y4_N26
\inst|Add0~58\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~58_combout\ = (\inst|Equal1~0_combout\ & ((\inst|ACC\(20) & (\inst|Add0~57\ & VCC)) # (!\inst|ACC\(20) & (!\inst|Add0~57\)))) # (!\inst|Equal1~0_combout\ & ((\inst|ACC\(20) & (!\inst|Add0~57\)) # (!\inst|ACC\(20) & ((\inst|Add0~57\) # (GND)))))
-- \inst|Add0~59\ = CARRY((\inst|Equal1~0_combout\ & (!\inst|ACC\(20) & !\inst|Add0~57\)) # (!\inst|Equal1~0_combout\ & ((!\inst|Add0~57\) # (!\inst|ACC\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~0_combout\,
	datab => \inst|ACC\(20),
	datad => VCC,
	cin => \inst|Add0~57\,
	combout => \inst|Add0~58_combout\,
	cout => \inst|Add0~59\);

-- Location: FF_X16_Y4_N9
\inst|ACC[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|ACC[20]~4_combout\,
	asdata => \inst|Add0~58_combout\,
	sclr => \inst|ACC[30]~131_combout\,
	sload => \inst10|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	ena => \inst|ACC[30]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(20));

-- Location: LCCOMB_X17_Y4_N28
\inst|Add0~60\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~60_combout\ = ((\inst|Equal1~0_combout\ $ (\inst|ACC\(21) $ (!\inst|Add0~59\)))) # (GND)
-- \inst|Add0~61\ = CARRY((\inst|Equal1~0_combout\ & ((\inst|ACC\(21)) # (!\inst|Add0~59\))) # (!\inst|Equal1~0_combout\ & (\inst|ACC\(21) & !\inst|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~0_combout\,
	datab => \inst|ACC\(21),
	datad => VCC,
	cin => \inst|Add0~59\,
	combout => \inst|Add0~60_combout\,
	cout => \inst|Add0~61\);

-- Location: FF_X16_Y4_N27
\inst|ACC[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|ACC[21]~5_combout\,
	asdata => \inst|Add0~60_combout\,
	sclr => \inst|ACC[30]~131_combout\,
	sload => \inst10|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	ena => \inst|ACC[30]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(21));

-- Location: LCCOMB_X17_Y4_N30
\inst|Add0~62\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~62_combout\ = (\inst|Equal1~0_combout\ & ((\inst|ACC\(22) & (\inst|Add0~61\ & VCC)) # (!\inst|ACC\(22) & (!\inst|Add0~61\)))) # (!\inst|Equal1~0_combout\ & ((\inst|ACC\(22) & (!\inst|Add0~61\)) # (!\inst|ACC\(22) & ((\inst|Add0~61\) # (GND)))))
-- \inst|Add0~63\ = CARRY((\inst|Equal1~0_combout\ & (!\inst|ACC\(22) & !\inst|Add0~61\)) # (!\inst|Equal1~0_combout\ & ((!\inst|Add0~61\) # (!\inst|ACC\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~0_combout\,
	datab => \inst|ACC\(22),
	datad => VCC,
	cin => \inst|Add0~61\,
	combout => \inst|Add0~62_combout\,
	cout => \inst|Add0~63\);

-- Location: FF_X16_Y4_N25
\inst|ACC[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|ACC[22]~6_combout\,
	asdata => \inst|Add0~62_combout\,
	sclr => \inst|ACC[30]~131_combout\,
	sload => \inst10|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	ena => \inst|ACC[30]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(22));

-- Location: LCCOMB_X17_Y3_N0
\inst|Add0~64\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~64_combout\ = ((\inst|ACC\(23) $ (\inst|Equal1~0_combout\ $ (!\inst|Add0~63\)))) # (GND)
-- \inst|Add0~65\ = CARRY((\inst|ACC\(23) & ((\inst|Equal1~0_combout\) # (!\inst|Add0~63\))) # (!\inst|ACC\(23) & (\inst|Equal1~0_combout\ & !\inst|Add0~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(23),
	datab => \inst|Equal1~0_combout\,
	datad => VCC,
	cin => \inst|Add0~63\,
	combout => \inst|Add0~64_combout\,
	cout => \inst|Add0~65\);

-- Location: FF_X16_Y4_N23
\inst|ACC[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|ACC[23]~7_combout\,
	asdata => \inst|Add0~64_combout\,
	sclr => \inst|ACC[30]~131_combout\,
	sload => \inst10|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	ena => \inst|ACC[30]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(23));

-- Location: LCCOMB_X17_Y3_N2
\inst|Add0~66\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~66_combout\ = (\inst|ACC\(24) & ((\inst|Equal1~0_combout\ & (\inst|Add0~65\ & VCC)) # (!\inst|Equal1~0_combout\ & (!\inst|Add0~65\)))) # (!\inst|ACC\(24) & ((\inst|Equal1~0_combout\ & (!\inst|Add0~65\)) # (!\inst|Equal1~0_combout\ & 
-- ((\inst|Add0~65\) # (GND)))))
-- \inst|Add0~67\ = CARRY((\inst|ACC\(24) & (!\inst|Equal1~0_combout\ & !\inst|Add0~65\)) # (!\inst|ACC\(24) & ((!\inst|Add0~65\) # (!\inst|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(24),
	datab => \inst|Equal1~0_combout\,
	datad => VCC,
	cin => \inst|Add0~65\,
	combout => \inst|Add0~66_combout\,
	cout => \inst|Add0~67\);

-- Location: FF_X16_Y4_N5
\inst|ACC[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|ACC[24]~8_combout\,
	asdata => \inst|Add0~66_combout\,
	sclr => \inst|ACC[30]~131_combout\,
	sload => \inst10|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	ena => \inst|ACC[30]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(24));

-- Location: LCCOMB_X17_Y3_N4
\inst|Add0~68\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~68_combout\ = ((\inst|ACC\(25) $ (\inst|Equal1~0_combout\ $ (!\inst|Add0~67\)))) # (GND)
-- \inst|Add0~69\ = CARRY((\inst|ACC\(25) & ((\inst|Equal1~0_combout\) # (!\inst|Add0~67\))) # (!\inst|ACC\(25) & (\inst|Equal1~0_combout\ & !\inst|Add0~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(25),
	datab => \inst|Equal1~0_combout\,
	datad => VCC,
	cin => \inst|Add0~67\,
	combout => \inst|Add0~68_combout\,
	cout => \inst|Add0~69\);

-- Location: FF_X17_Y3_N19
\inst|ACC[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|ACC[25]~9_combout\,
	asdata => \inst|Add0~68_combout\,
	sclr => \inst|ACC[30]~131_combout\,
	sload => \inst10|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	ena => \inst|ACC[30]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(25));

-- Location: LCCOMB_X17_Y3_N6
\inst|Add0~70\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~70_combout\ = (\inst|ACC\(26) & ((\inst|Equal1~0_combout\ & (\inst|Add0~69\ & VCC)) # (!\inst|Equal1~0_combout\ & (!\inst|Add0~69\)))) # (!\inst|ACC\(26) & ((\inst|Equal1~0_combout\ & (!\inst|Add0~69\)) # (!\inst|Equal1~0_combout\ & 
-- ((\inst|Add0~69\) # (GND)))))
-- \inst|Add0~71\ = CARRY((\inst|ACC\(26) & (!\inst|Equal1~0_combout\ & !\inst|Add0~69\)) # (!\inst|ACC\(26) & ((!\inst|Add0~69\) # (!\inst|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(26),
	datab => \inst|Equal1~0_combout\,
	datad => VCC,
	cin => \inst|Add0~69\,
	combout => \inst|Add0~70_combout\,
	cout => \inst|Add0~71\);

-- Location: FF_X17_Y3_N21
\inst|ACC[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|ACC[26]~10_combout\,
	asdata => \inst|Add0~70_combout\,
	sclr => \inst|ACC[30]~131_combout\,
	sload => \inst10|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	ena => \inst|ACC[30]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(26));

-- Location: LCCOMB_X17_Y3_N8
\inst|Add0~72\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~72_combout\ = ((\inst|ACC\(27) $ (\inst|Equal1~0_combout\ $ (!\inst|Add0~71\)))) # (GND)
-- \inst|Add0~73\ = CARRY((\inst|ACC\(27) & ((\inst|Equal1~0_combout\) # (!\inst|Add0~71\))) # (!\inst|ACC\(27) & (\inst|Equal1~0_combout\ & !\inst|Add0~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(27),
	datab => \inst|Equal1~0_combout\,
	datad => VCC,
	cin => \inst|Add0~71\,
	combout => \inst|Add0~72_combout\,
	cout => \inst|Add0~73\);

-- Location: FF_X16_Y4_N19
\inst|ACC[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|ACC[27]~11_combout\,
	asdata => \inst|Add0~72_combout\,
	sclr => \inst|ACC[30]~131_combout\,
	sload => \inst10|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	ena => \inst|ACC[30]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(27));

-- Location: LCCOMB_X17_Y3_N10
\inst|Add0~74\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~74_combout\ = (\inst|ACC\(28) & ((\inst|Equal1~0_combout\ & (\inst|Add0~73\ & VCC)) # (!\inst|Equal1~0_combout\ & (!\inst|Add0~73\)))) # (!\inst|ACC\(28) & ((\inst|Equal1~0_combout\ & (!\inst|Add0~73\)) # (!\inst|Equal1~0_combout\ & 
-- ((\inst|Add0~73\) # (GND)))))
-- \inst|Add0~75\ = CARRY((\inst|ACC\(28) & (!\inst|Equal1~0_combout\ & !\inst|Add0~73\)) # (!\inst|ACC\(28) & ((!\inst|Add0~73\) # (!\inst|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(28),
	datab => \inst|Equal1~0_combout\,
	datad => VCC,
	cin => \inst|Add0~73\,
	combout => \inst|Add0~74_combout\,
	cout => \inst|Add0~75\);

-- Location: FF_X17_Y3_N31
\inst|ACC[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|ACC[28]~12_combout\,
	asdata => \inst|Add0~74_combout\,
	sclr => \inst|ACC[30]~131_combout\,
	sload => \inst10|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	ena => \inst|ACC[30]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(28));

-- Location: LCCOMB_X17_Y3_N28
\inst|ACC[31]~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC[31]~15_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & ((\inst|Mult0|auto_generated|mac_out2~DATAOUT31\))) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (!\inst|ACC\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datac => \inst|ACC\(31),
	datad => \inst|Mult0|auto_generated|mac_out2~DATAOUT31\,
	combout => \inst|ACC[31]~15_combout\);

-- Location: LCCOMB_X17_Y3_N26
\inst|ACC[30]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC[30]~14_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & (\inst|Mult0|auto_generated|mac_out2~DATAOUT30\)) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & ((!\inst|ACC\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|mac_out2~DATAOUT30\,
	datac => \inst|ACC\(30),
	datad => \inst10|srom|rom_block|auto_generated|q_a\(12),
	combout => \inst|ACC[30]~14_combout\);

-- Location: LCCOMB_X17_Y3_N24
\inst|ACC[29]~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC[29]~13_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & ((\inst|Mult0|auto_generated|mac_out2~DATAOUT29\))) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (!\inst|ACC\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datac => \inst|ACC\(29),
	datad => \inst|Mult0|auto_generated|mac_out2~DATAOUT29\,
	combout => \inst|ACC[29]~13_combout\);

-- Location: LCCOMB_X17_Y3_N12
\inst|Add0~76\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~76_combout\ = ((\inst|ACC\(29) $ (\inst|Equal1~0_combout\ $ (!\inst|Add0~75\)))) # (GND)
-- \inst|Add0~77\ = CARRY((\inst|ACC\(29) & ((\inst|Equal1~0_combout\) # (!\inst|Add0~75\))) # (!\inst|ACC\(29) & (\inst|Equal1~0_combout\ & !\inst|Add0~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(29),
	datab => \inst|Equal1~0_combout\,
	datad => VCC,
	cin => \inst|Add0~75\,
	combout => \inst|Add0~76_combout\,
	cout => \inst|Add0~77\);

-- Location: FF_X17_Y3_N25
\inst|ACC[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|ACC[29]~13_combout\,
	asdata => \inst|Add0~76_combout\,
	sclr => \inst|ACC[30]~131_combout\,
	sload => \inst10|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	ena => \inst|ACC[30]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(29));

-- Location: LCCOMB_X17_Y3_N14
\inst|Add0~78\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~78_combout\ = (\inst|ACC\(30) & ((\inst|Equal1~0_combout\ & (\inst|Add0~77\ & VCC)) # (!\inst|Equal1~0_combout\ & (!\inst|Add0~77\)))) # (!\inst|ACC\(30) & ((\inst|Equal1~0_combout\ & (!\inst|Add0~77\)) # (!\inst|Equal1~0_combout\ & 
-- ((\inst|Add0~77\) # (GND)))))
-- \inst|Add0~79\ = CARRY((\inst|ACC\(30) & (!\inst|Equal1~0_combout\ & !\inst|Add0~77\)) # (!\inst|ACC\(30) & ((!\inst|Add0~77\) # (!\inst|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(30),
	datab => \inst|Equal1~0_combout\,
	datad => VCC,
	cin => \inst|Add0~77\,
	combout => \inst|Add0~78_combout\,
	cout => \inst|Add0~79\);

-- Location: FF_X17_Y3_N27
\inst|ACC[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|ACC[30]~14_combout\,
	asdata => \inst|Add0~78_combout\,
	sclr => \inst|ACC[30]~131_combout\,
	sload => \inst10|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	ena => \inst|ACC[30]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(30));

-- Location: LCCOMB_X17_Y3_N16
\inst|Add0~80\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|Add0~80_combout\ = \inst|ACC\(31) $ (\inst|Add0~79\ $ (!\inst|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ACC\(31),
	datad => \inst|Equal1~0_combout\,
	cin => \inst|Add0~79\,
	combout => \inst|Add0~80_combout\);

-- Location: FF_X17_Y3_N29
\inst|ACC[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|ACC[31]~15_combout\,
	asdata => \inst|Add0~80_combout\,
	sclr => \inst|ACC[30]~131_combout\,
	sload => \inst10|srom|rom_block|auto_generated|ALT_INV_q_a\(15),
	ena => \inst|ACC[30]~134_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(31));

-- Location: LCCOMB_X17_Y3_N22
\inst|LessThan0~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|LessThan0~8_combout\ = (\inst|ACC\(28)) # ((\inst|ACC\(31)) # ((\inst|ACC\(30)) # (\inst|ACC\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(28),
	datab => \inst|ACC\(31),
	datac => \inst|ACC\(30),
	datad => \inst|ACC\(29),
	combout => \inst|LessThan0~8_combout\);

-- Location: LCCOMB_X16_Y4_N20
\inst|LessThan0~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_combout\ = (\inst|ACC\(18)) # ((\inst|ACC\(19)) # ((\inst|ACC\(17)) # (\inst|ACC\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(18),
	datab => \inst|ACC\(19),
	datac => \inst|ACC\(17),
	datad => \inst|ACC\(16),
	combout => \inst|LessThan0~5_combout\);

-- Location: LCCOMB_X16_Y4_N30
\inst|LessThan0~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|LessThan0~6_combout\ = (\inst|ACC\(21)) # ((\inst|ACC\(22)) # ((\inst|ACC\(20)) # (\inst|ACC\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(21),
	datab => \inst|ACC\(22),
	datac => \inst|ACC\(20),
	datad => \inst|ACC\(23),
	combout => \inst|LessThan0~6_combout\);

-- Location: LCCOMB_X16_Y4_N28
\inst|LessThan0~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|LessThan0~7_combout\ = (\inst|ACC\(25)) # ((\inst|ACC\(27)) # ((\inst|ACC\(24)) # (\inst|ACC\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(25),
	datab => \inst|ACC\(27),
	datac => \inst|ACC\(24),
	datad => \inst|ACC\(26),
	combout => \inst|LessThan0~7_combout\);

-- Location: LCCOMB_X16_Y4_N2
\inst|LessThan0~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|LessThan0~9_combout\ = (\inst|LessThan0~8_combout\) # ((\inst|LessThan0~5_combout\) # ((\inst|LessThan0~6_combout\) # (\inst|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~8_combout\,
	datab => \inst|LessThan0~5_combout\,
	datac => \inst|LessThan0~6_combout\,
	datad => \inst|LessThan0~7_combout\,
	combout => \inst|LessThan0~9_combout\);

-- Location: LCCOMB_X21_Y5_N16
\inst|LessThan0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (\inst|ACC\(4)) # ((\inst|ACC\(2)) # ((\inst|ACC\(1)) # (\inst|ACC\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(4),
	datab => \inst|ACC\(2),
	datac => \inst|ACC\(1),
	datad => \inst|ACC\(3),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X22_Y4_N26
\inst|LessThan0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (\inst|ACC\(5)) # ((\inst|ACC\(6)) # ((\inst|ACC\(8)) # (\inst|ACC\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(5),
	datab => \inst|ACC\(6),
	datac => \inst|ACC\(8),
	datad => \inst|ACC\(7),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X18_Y4_N8
\inst|LessThan0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (\inst|ACC\(11)) # ((\inst|ACC\(9)) # ((\inst|ACC\(12)) # (\inst|ACC\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(11),
	datab => \inst|ACC\(9),
	datac => \inst|ACC\(12),
	datad => \inst|ACC\(10),
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X19_Y4_N4
\inst|LessThan0~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (\inst|ACC\(0)) # ((\inst|ACC\(14)) # ((\inst|ACC\(13)) # (\inst|ACC\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(0),
	datab => \inst|ACC\(14),
	datac => \inst|ACC\(13),
	datad => \inst|ACC\(15),
	combout => \inst|LessThan0~3_combout\);

-- Location: LCCOMB_X22_Y5_N18
\inst|LessThan0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|LessThan0~4_combout\ = (\inst|LessThan0~0_combout\) # ((\inst|LessThan0~1_combout\) # ((\inst|LessThan0~2_combout\) # (\inst|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~0_combout\,
	datab => \inst|LessThan0~1_combout\,
	datac => \inst|LessThan0~2_combout\,
	datad => \inst|LessThan0~3_combout\,
	combout => \inst|LessThan0~4_combout\);

-- Location: LCCOMB_X23_Y5_N24
\inst9|PCout[7]~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst9|PCout[7]~26_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(10)) # ((\inst9|PCout[7]~25_combout\ & ((\inst|LessThan0~9_combout\) # (\inst|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|PCout[7]~25_combout\,
	datab => \inst10|srom|rom_block|auto_generated|q_a\(10),
	datac => \inst|LessThan0~9_combout\,
	datad => \inst|LessThan0~4_combout\,
	combout => \inst9|PCout[7]~26_combout\);

-- Location: LCCOMB_X23_Y5_N4
\inst9|PCout[7]~27\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst9|PCout[7]~27_combout\ = (!\inst10|srom|rom_block|auto_generated|q_a\(9) & (\reset~input_o\ & (!\inst10|srom|rom_block|auto_generated|q_a\(10) & !\inst10|srom|rom_block|auto_generated|q_a\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(9),
	datab => \reset~input_o\,
	datac => \inst10|srom|rom_block|auto_generated|q_a\(10),
	datad => \inst10|srom|rom_block|auto_generated|q_a\(8),
	combout => \inst9|PCout[7]~27_combout\);

-- Location: LCCOMB_X23_Y5_N14
\inst9|Equal0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst9|Equal0~0_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(13)) # (((\inst10|srom|rom_block|auto_generated|q_a\(15)) # (!\inst10|srom|rom_block|auto_generated|q_a\(14))) # (!\inst10|srom|rom_block|auto_generated|q_a\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datab => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(14),
	datad => \inst10|srom|rom_block|auto_generated|q_a\(15),
	combout => \inst9|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y5_N24
\inst9|PCout[7]~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst9|PCout[7]~28_combout\ = (!\inst9|Equal0~0_combout\) # (!\inst9|PCout[7]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|PCout[7]~27_combout\,
	datad => \inst9|Equal0~0_combout\,
	combout => \inst9|PCout[7]~28_combout\);

-- Location: FF_X25_Y5_N17
\inst9|PCout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst9|PCout[7]~22_combout\,
	asdata => \inst2|MBR_MAR\(7),
	sclr => \inst9|PCout[7]~24_combout\,
	sload => \inst9|PCout[7]~26_combout\,
	ena => \inst9|PCout[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|PCout\(7));

-- Location: LCCOMB_X26_Y5_N16
\inst4|MARout~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst4|MARout~0_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(18) & ((\inst2|MBR_MAR\(7)))) # (!\inst10|srom|rom_block|auto_generated|q_a\(18) & (\inst9|PCout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(18),
	datac => \inst9|PCout\(7),
	datad => \inst2|MBR_MAR\(7),
	combout => \inst4|MARout~0_combout\);

-- Location: LCCOMB_X26_Y5_N14
\inst4|MARout[7]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst4|MARout[7]~1_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(19)) # (\inst10|srom|rom_block|auto_generated|q_a\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|srom|rom_block|auto_generated|q_a\(19),
	datad => \inst10|srom|rom_block|auto_generated|q_a\(18),
	combout => \inst4|MARout[7]~1_combout\);

-- Location: FF_X26_Y5_N17
\inst4|MARout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|MARout~0_combout\,
	ena => \inst4|MARout[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|MARout\(7));

-- Location: LCCOMB_X26_Y5_N2
\inst2|MBR_BR~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_BR~10_combout\ = (\reset~input_o\ & \inst7|sram|ram_block|auto_generated|q_a\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \inst7|sram|ram_block|auto_generated|q_a\(6),
	combout => \inst2|MBR_BR~10_combout\);

-- Location: LCCOMB_X25_Y5_N28
\inst2|MBR_MAR[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_MAR[6]~feeder_combout\ = \inst2|MBR_BR~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|MBR_BR~10_combout\,
	combout => \inst2|MBR_MAR[6]~feeder_combout\);

-- Location: FF_X25_Y5_N29
\inst2|MBR_MAR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_MAR[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_MAR\(6));

-- Location: FF_X25_Y5_N15
\inst9|PCout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst9|PCout[6]~20_combout\,
	asdata => \inst2|MBR_MAR\(6),
	sclr => \inst9|PCout[7]~24_combout\,
	sload => \inst9|PCout[7]~26_combout\,
	ena => \inst9|PCout[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|PCout\(6));

-- Location: LCCOMB_X26_Y5_N30
\inst4|MARout~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst4|MARout~2_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(18) & ((\inst2|MBR_MAR\(6)))) # (!\inst10|srom|rom_block|auto_generated|q_a\(18) & (\inst9|PCout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(18),
	datac => \inst9|PCout\(6),
	datad => \inst2|MBR_MAR\(6),
	combout => \inst4|MARout~2_combout\);

-- Location: FF_X26_Y5_N31
\inst4|MARout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|MARout~2_combout\,
	ena => \inst4|MARout[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|MARout\(6));

-- Location: LCCOMB_X26_Y5_N24
\inst2|MBR_BR~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_BR~11_combout\ = (\reset~input_o\ & \inst7|sram|ram_block|auto_generated|q_a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \inst7|sram|ram_block|auto_generated|q_a\(5),
	combout => \inst2|MBR_BR~11_combout\);

-- Location: LCCOMB_X25_Y5_N22
\inst2|MBR_MAR[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_MAR[5]~feeder_combout\ = \inst2|MBR_BR~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|MBR_BR~11_combout\,
	combout => \inst2|MBR_MAR[5]~feeder_combout\);

-- Location: FF_X25_Y5_N23
\inst2|MBR_MAR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_MAR[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_MAR\(5));

-- Location: FF_X25_Y5_N13
\inst9|PCout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst9|PCout[5]~18_combout\,
	asdata => \inst2|MBR_MAR\(5),
	sclr => \inst9|PCout[7]~24_combout\,
	sload => \inst9|PCout[7]~26_combout\,
	ena => \inst9|PCout[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|PCout\(5));

-- Location: LCCOMB_X26_Y5_N20
\inst4|MARout~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst4|MARout~3_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(18) & ((\inst2|MBR_MAR\(5)))) # (!\inst10|srom|rom_block|auto_generated|q_a\(18) & (\inst9|PCout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(18),
	datac => \inst9|PCout\(5),
	datad => \inst2|MBR_MAR\(5),
	combout => \inst4|MARout~3_combout\);

-- Location: FF_X26_Y5_N21
\inst4|MARout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|MARout~3_combout\,
	ena => \inst4|MARout[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|MARout\(5));

-- Location: LCCOMB_X19_Y5_N14
\inst2|MBR_BR~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_BR~3_combout\ = (\reset~input_o\ & \inst7|sram|ram_block|auto_generated|q_a\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \inst7|sram|ram_block|auto_generated|q_a\(13),
	combout => \inst2|MBR_BR~3_combout\);

-- Location: FF_X19_Y5_N5
\inst2|MBR_OP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	asdata => \inst2|MBR_BR~3_combout\,
	sload => VCC,
	ena => \inst2|MBR_OP[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_OP\(5));

-- Location: LCCOMB_X14_Y5_N24
\inst5|Add0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst5|Add0~2_combout\ = (!\inst5|Equal3~0_combout\ & \inst2|MBR_OP\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Equal3~0_combout\,
	datad => \inst2|MBR_OP\(5),
	combout => \inst5|Add0~2_combout\);

-- Location: FF_X14_Y5_N11
\inst5|CARout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|CARout[5]~18_combout\,
	asdata => \inst10|srom|rom_block|auto_generated|q_a\(5),
	sclr => \inst5|CARout[7]~24_combout\,
	sload => \inst5|Equal2~0_combout\,
	ena => \inst5|CARout[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|CARout\(5));

-- Location: LCCOMB_X23_Y5_N8
\inst9|PCout[7]~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst9|PCout[7]~24_combout\ = ((!\inst10|srom|rom_block|auto_generated|q_a\(9) & (!\inst10|srom|rom_block|auto_generated|q_a\(10) & \inst10|srom|rom_block|auto_generated|q_a\(8)))) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(9),
	datab => \reset~input_o\,
	datac => \inst10|srom|rom_block|auto_generated|q_a\(10),
	datad => \inst10|srom|rom_block|auto_generated|q_a\(8),
	combout => \inst9|PCout[7]~24_combout\);

-- Location: FF_X25_Y5_N9
\inst9|PCout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst9|PCout[3]~14_combout\,
	asdata => \inst2|MBR_MAR\(3),
	sclr => \inst9|PCout[7]~24_combout\,
	sload => \inst9|PCout[7]~26_combout\,
	ena => \inst9|PCout[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|PCout\(3));

-- Location: LCCOMB_X25_Y5_N18
\inst2|MBR_MAR[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_MAR[4]~feeder_combout\ = \inst2|MBR_BR~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|MBR_BR~12_combout\,
	combout => \inst2|MBR_MAR[4]~feeder_combout\);

-- Location: FF_X25_Y5_N19
\inst2|MBR_MAR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_MAR[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_MAR\(4));

-- Location: FF_X25_Y5_N11
\inst9|PCout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst9|PCout[4]~16_combout\,
	asdata => \inst2|MBR_MAR\(4),
	sclr => \inst9|PCout[7]~24_combout\,
	sload => \inst9|PCout[7]~26_combout\,
	ena => \inst9|PCout[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|PCout\(4));

-- Location: LCCOMB_X26_Y5_N26
\inst4|MARout~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst4|MARout~4_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(18) & ((\inst2|MBR_MAR\(4)))) # (!\inst10|srom|rom_block|auto_generated|q_a\(18) & (\inst9|PCout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|PCout\(4),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(18),
	datad => \inst2|MBR_MAR\(4),
	combout => \inst4|MARout~4_combout\);

-- Location: FF_X26_Y5_N27
\inst4|MARout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|MARout~4_combout\,
	ena => \inst4|MARout[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|MARout\(4));

-- Location: LCCOMB_X26_Y5_N22
\inst2|MBR_BR~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_BR~13_combout\ = (\reset~input_o\ & \inst7|sram|ram_block|auto_generated|q_a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \inst7|sram|ram_block|auto_generated|q_a\(3),
	combout => \inst2|MBR_BR~13_combout\);

-- Location: LCCOMB_X25_Y5_N0
\inst2|MBR_MAR[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_MAR[3]~feeder_combout\ = \inst2|MBR_BR~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|MBR_BR~13_combout\,
	combout => \inst2|MBR_MAR[3]~feeder_combout\);

-- Location: FF_X25_Y5_N1
\inst2|MBR_MAR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_MAR[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_MAR\(3));

-- Location: LCCOMB_X26_Y5_N0
\inst4|MARout~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst4|MARout~5_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(18) & (\inst2|MBR_MAR\(3))) # (!\inst10|srom|rom_block|auto_generated|q_a\(18) & ((\inst9|PCout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(18),
	datac => \inst2|MBR_MAR\(3),
	datad => \inst9|PCout\(3),
	combout => \inst4|MARout~5_combout\);

-- Location: FF_X26_Y5_N1
\inst4|MARout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|MARout~5_combout\,
	ena => \inst4|MARout[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|MARout\(3));

-- Location: LCCOMB_X24_Y5_N22
\inst2|MBR_BR~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_BR~14_combout\ = (\reset~input_o\ & \inst7|sram|ram_block|auto_generated|q_a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \inst7|sram|ram_block|auto_generated|q_a\(2),
	combout => \inst2|MBR_BR~14_combout\);

-- Location: LCCOMB_X25_Y5_N20
\inst2|MBR_MAR[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_MAR[2]~feeder_combout\ = \inst2|MBR_BR~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|MBR_BR~14_combout\,
	combout => \inst2|MBR_MAR[2]~feeder_combout\);

-- Location: FF_X25_Y5_N21
\inst2|MBR_MAR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_MAR[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_MAR\(2));

-- Location: FF_X25_Y5_N7
\inst9|PCout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst9|PCout[2]~12_combout\,
	asdata => \inst2|MBR_MAR\(2),
	sclr => \inst9|PCout[7]~24_combout\,
	sload => \inst9|PCout[7]~26_combout\,
	ena => \inst9|PCout[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|PCout\(2));

-- Location: LCCOMB_X26_Y5_N18
\inst4|MARout~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst4|MARout~6_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(18) & ((\inst2|MBR_MAR\(2)))) # (!\inst10|srom|rom_block|auto_generated|q_a\(18) & (\inst9|PCout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(18),
	datac => \inst9|PCout\(2),
	datad => \inst2|MBR_MAR\(2),
	combout => \inst4|MARout~6_combout\);

-- Location: FF_X26_Y5_N19
\inst4|MARout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|MARout~6_combout\,
	ena => \inst4|MARout[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|MARout\(2));

-- Location: LCCOMB_X25_Y5_N26
\inst2|MBR_BR~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_BR~16_combout\ = (\reset~input_o\ & \inst7|sram|ram_block|auto_generated|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \inst7|sram|ram_block|auto_generated|q_a\(0),
	combout => \inst2|MBR_BR~16_combout\);

-- Location: FF_X25_Y5_N27
\inst2|MBR_MAR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_BR~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_MAR\(0));

-- Location: FF_X25_Y5_N3
\inst9|PCout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst9|PCout[0]~8_combout\,
	asdata => \inst2|MBR_MAR\(0),
	sclr => \inst9|PCout[7]~24_combout\,
	sload => \inst9|PCout[7]~26_combout\,
	ena => \inst9|PCout[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|PCout\(0));

-- Location: LCCOMB_X25_Y5_N30
\inst2|MBR_MAR[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_MAR[1]~feeder_combout\ = \inst2|MBR_BR~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|MBR_BR~15_combout\,
	combout => \inst2|MBR_MAR[1]~feeder_combout\);

-- Location: FF_X25_Y5_N31
\inst2|MBR_MAR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_MAR[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_MAR\(1));

-- Location: FF_X25_Y5_N5
\inst9|PCout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst9|PCout[1]~10_combout\,
	asdata => \inst2|MBR_MAR\(1),
	sclr => \inst9|PCout[7]~24_combout\,
	sload => \inst9|PCout[7]~26_combout\,
	ena => \inst9|PCout[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|PCout\(1));

-- Location: LCCOMB_X26_Y5_N8
\inst4|MARout~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst4|MARout~7_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(18) & ((\inst2|MBR_MAR\(1)))) # (!\inst10|srom|rom_block|auto_generated|q_a\(18) & (\inst9|PCout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(18),
	datac => \inst9|PCout\(1),
	datad => \inst2|MBR_MAR\(1),
	combout => \inst4|MARout~7_combout\);

-- Location: FF_X26_Y5_N9
\inst4|MARout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|MARout~7_combout\,
	ena => \inst4|MARout[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|MARout\(1));

-- Location: LCCOMB_X19_Y5_N22
\inst2|MBR_BR~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_BR~4_combout\ = (\reset~input_o\ & \inst7|sram|ram_block|auto_generated|q_a\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \inst7|sram|ram_block|auto_generated|q_a\(12),
	combout => \inst2|MBR_BR~4_combout\);

-- Location: LCCOMB_X19_Y5_N18
\inst2|MBR_OP[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_OP[4]~feeder_combout\ = \inst2|MBR_BR~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|MBR_BR~4_combout\,
	combout => \inst2|MBR_OP[4]~feeder_combout\);

-- Location: FF_X19_Y5_N19
\inst2|MBR_OP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_OP[4]~feeder_combout\,
	ena => \inst2|MBR_OP[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_OP\(4));

-- Location: LCCOMB_X14_Y5_N26
\inst5|Add0~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst5|Add0~3_combout\ = (!\inst5|Equal3~0_combout\ & \inst2|MBR_OP\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Equal3~0_combout\,
	datad => \inst2|MBR_OP\(4),
	combout => \inst5|Add0~3_combout\);

-- Location: FF_X14_Y5_N9
\inst5|CARout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|CARout[4]~16_combout\,
	asdata => \inst10|srom|rom_block|auto_generated|q_a\(4),
	sclr => \inst5|CARout[7]~24_combout\,
	sload => \inst5|Equal2~0_combout\,
	ena => \inst5|CARout[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|CARout\(4));

-- Location: LCCOMB_X26_Y5_N10
\inst4|MARout~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst4|MARout~8_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(18) & (\inst2|MBR_MAR\(0))) # (!\inst10|srom|rom_block|auto_generated|q_a\(18) & ((\inst9|PCout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(18),
	datac => \inst2|MBR_MAR\(0),
	datad => \inst9|PCout\(0),
	combout => \inst4|MARout~8_combout\);

-- Location: FF_X26_Y5_N11
\inst4|MARout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|MARout~8_combout\,
	ena => \inst4|MARout[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|MARout\(0));

-- Location: LCCOMB_X19_Y5_N12
\inst2|MBR_BR~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_BR~5_combout\ = (\reset~input_o\ & \inst7|sram|ram_block|auto_generated|q_a\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \inst7|sram|ram_block|auto_generated|q_a\(11),
	combout => \inst2|MBR_BR~5_combout\);

-- Location: FF_X19_Y5_N9
\inst2|MBR_OP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	asdata => \inst2|MBR_BR~5_combout\,
	sload => VCC,
	ena => \inst2|MBR_OP[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_OP\(3));

-- Location: LCCOMB_X19_Y5_N10
\inst5|Add0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst5|Add0~4_combout\ = (\inst2|MBR_OP\(3) & !\inst5|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|MBR_OP\(3),
	datad => \inst5|Equal3~0_combout\,
	combout => \inst5|Add0~4_combout\);

-- Location: FF_X14_Y5_N7
\inst5|CARout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|CARout[3]~14_combout\,
	asdata => \inst10|srom|rom_block|auto_generated|q_a\(3),
	sclr => \inst5|CARout[7]~24_combout\,
	sload => \inst5|Equal2~0_combout\,
	ena => \inst5|CARout[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|CARout\(3));

-- Location: LCCOMB_X19_Y7_N6
\inst2|temp~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|temp~15_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(20) & ((\inst|ACC\(0)))) # (!\inst10|srom|rom_block|auto_generated|q_a\(20) & (\inst2|temp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|temp\(0),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(20),
	datad => \inst|ACC\(0),
	combout => \inst2|temp~15_combout\);

-- Location: LCCOMB_X21_Y7_N24
\inst2|MBR_RAM[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_RAM[0]~feeder_combout\ = \inst2|temp~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|temp~15_combout\,
	combout => \inst2|MBR_RAM[0]~feeder_combout\);

-- Location: FF_X21_Y7_N25
\inst2|MBR_RAM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_RAM[0]~feeder_combout\,
	ena => \inst2|MBR_RAM[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_RAM\(0));

-- Location: LCCOMB_X19_Y5_N30
\inst2|MBR_BR~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_BR~6_combout\ = (\reset~input_o\ & \inst7|sram|ram_block|auto_generated|q_a\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \inst7|sram|ram_block|auto_generated|q_a\(10),
	combout => \inst2|MBR_BR~6_combout\);

-- Location: LCCOMB_X19_Y5_N2
\inst2|MBR_OP[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_OP[2]~feeder_combout\ = \inst2|MBR_BR~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|MBR_BR~6_combout\,
	combout => \inst2|MBR_OP[2]~feeder_combout\);

-- Location: FF_X19_Y5_N3
\inst2|MBR_OP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_OP[2]~feeder_combout\,
	ena => \inst2|MBR_OP[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_OP\(2));

-- Location: LCCOMB_X14_Y5_N28
\inst5|Add0~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst5|Add0~5_combout\ = (!\inst5|Equal3~0_combout\ & \inst2|MBR_OP\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Equal3~0_combout\,
	datad => \inst2|MBR_OP\(2),
	combout => \inst5|Add0~5_combout\);

-- Location: FF_X14_Y5_N5
\inst5|CARout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|CARout[2]~12_combout\,
	asdata => \inst10|srom|rom_block|auto_generated|q_a\(2),
	sclr => \inst5|CARout[7]~24_combout\,
	sload => \inst5|Equal2~0_combout\,
	ena => \inst5|CARout[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|CARout\(2));

-- Location: LCCOMB_X19_Y5_N16
\inst2|MBR_BR~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_BR~7_combout\ = (\reset~input_o\ & \inst7|sram|ram_block|auto_generated|q_a\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \inst7|sram|ram_block|auto_generated|q_a\(9),
	combout => \inst2|MBR_BR~7_combout\);

-- Location: LCCOMB_X19_Y5_N28
\inst2|MBR_OP[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_OP[1]~feeder_combout\ = \inst2|MBR_BR~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|MBR_BR~7_combout\,
	combout => \inst2|MBR_OP[1]~feeder_combout\);

-- Location: FF_X19_Y5_N29
\inst2|MBR_OP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_OP[1]~feeder_combout\,
	ena => \inst2|MBR_OP[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_OP\(1));

-- Location: LCCOMB_X14_Y5_N22
\inst5|Add0~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst5|Add0~6_combout\ = (!\inst5|Equal3~0_combout\ & \inst2|MBR_OP\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Equal3~0_combout\,
	datad => \inst2|MBR_OP\(1),
	combout => \inst5|Add0~6_combout\);

-- Location: FF_X14_Y5_N3
\inst5|CARout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|CARout[1]~10_combout\,
	asdata => \inst10|srom|rom_block|auto_generated|q_a\(1),
	sclr => \inst5|CARout[7]~24_combout\,
	sload => \inst5|Equal2~0_combout\,
	ena => \inst5|CARout[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|CARout\(1));

-- Location: LCCOMB_X14_Y5_N20
\inst5|Equal3~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst5|Equal3~0_combout\ = (!\inst10|srom|rom_block|auto_generated|q_a\(25) & (\inst10|srom|rom_block|auto_generated|q_a\(23) & (!\inst10|srom|rom_block|auto_generated|q_a\(24) & !\inst10|srom|rom_block|auto_generated|q_a\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(25),
	datab => \inst10|srom|rom_block|auto_generated|q_a\(23),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(24),
	datad => \inst10|srom|rom_block|auto_generated|q_a\(26),
	combout => \inst5|Equal3~0_combout\);

-- Location: LCCOMB_X19_Y5_N6
\inst2|MBR_OP[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst2|MBR_OP[0]~feeder_combout\ = \inst2|MBR_BR~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|MBR_BR~8_combout\,
	combout => \inst2|MBR_OP[0]~feeder_combout\);

-- Location: FF_X19_Y5_N7
\inst2|MBR_OP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkMBR~inputclkctrl_outclk\,
	d => \inst2|MBR_OP[0]~feeder_combout\,
	ena => \inst2|MBR_OP[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|MBR_OP\(0));

-- Location: LCCOMB_X19_Y5_N0
\inst5|Add0~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst5|Add0~7_combout\ = (\inst5|Equal3~0_combout\) # (\inst2|MBR_OP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal3~0_combout\,
	datad => \inst2|MBR_OP\(0),
	combout => \inst5|Add0~7_combout\);

-- Location: FF_X14_Y5_N1
\inst5|CARout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|CARout[0]~8_combout\,
	asdata => \inst10|srom|rom_block|auto_generated|q_a\(0),
	sclr => \inst5|CARout[7]~24_combout\,
	sload => \inst5|Equal2~0_combout\,
	ena => \inst5|CARout[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|CARout\(0));

-- Location: LCCOMB_X19_Y6_N24
\inst|ACC~45\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~45_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(14) & (\inst10|srom|rom_block|auto_generated|q_a\(13) & (!\inst10|srom|rom_block|auto_generated|q_a\(15)))) # (!\inst10|srom|rom_block|auto_generated|q_a\(14) & 
-- (\inst10|srom|rom_block|auto_generated|q_a\(15) & ((\inst10|srom|rom_block|auto_generated|q_a\(13)) # (\inst10|srom|rom_block|auto_generated|q_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(14),
	datab => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(15),
	datad => \inst10|srom|rom_block|auto_generated|q_a\(12),
	combout => \inst|ACC~45_combout\);

-- Location: LCCOMB_X19_Y6_N10
\inst|ACC~44\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~44_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(14) & ((\inst10|srom|rom_block|auto_generated|q_a\(15)) # (\inst10|srom|rom_block|auto_generated|q_a\(13) $ (!\inst10|srom|rom_block|auto_generated|q_a\(12))))) # 
-- (!\inst10|srom|rom_block|auto_generated|q_a\(14) & (\inst10|srom|rom_block|auto_generated|q_a\(12) & (\inst10|srom|rom_block|auto_generated|q_a\(13) $ (\inst10|srom|rom_block|auto_generated|q_a\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(14),
	datab => \inst10|srom|rom_block|auto_generated|q_a\(13),
	datac => \inst10|srom|rom_block|auto_generated|q_a\(15),
	datad => \inst10|srom|rom_block|auto_generated|q_a\(12),
	combout => \inst|ACC~44_combout\);

-- Location: LCCOMB_X19_Y6_N22
\inst|ACC~46\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~46_combout\ = (\inst|ACC~44_combout\ & ((\inst|ACC\(15) & (!\inst|ACC~45_combout\)) # (!\inst|ACC\(15) & ((!\inst10|srom|rom_block|auto_generated|q_a\(15)))))) # (!\inst|ACC~44_combout\ & ((\inst10|srom|rom_block|auto_generated|q_a\(15) & 
-- ((\inst|ACC~45_combout\))) # (!\inst10|srom|rom_block|auto_generated|q_a\(15) & (\inst|ACC\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(15),
	datab => \inst|ACC~45_combout\,
	datac => \inst10|srom|rom_block|auto_generated|q_a\(15),
	datad => \inst|ACC~44_combout\,
	combout => \inst|ACC~46_combout\);

-- Location: LCCOMB_X19_Y6_N4
\inst|ACC~47\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~47_combout\ = (\inst|ACC\(15) & (((!\inst10|srom|rom_block|auto_generated|q_a\(15) & \inst|ACC~44_combout\)))) # (!\inst|ACC\(15) & (!\inst|ACC~45_combout\ & (\inst10|srom|rom_block|auto_generated|q_a\(15) $ (\inst|ACC~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC\(15),
	datab => \inst|ACC~45_combout\,
	datac => \inst10|srom|rom_block|auto_generated|q_a\(15),
	datad => \inst|ACC~44_combout\,
	combout => \inst|ACC~47_combout\);

-- Location: LCCOMB_X19_Y6_N18
\inst|ACC~48\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~48_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(12) & ((\inst|Mult0|auto_generated|mac_out2~DATAOUT15\))) # (!\inst10|srom|rom_block|auto_generated|q_a\(12) & (\inst|ACC\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(12),
	datac => \inst|ACC\(14),
	datad => \inst|Mult0|auto_generated|mac_out2~DATAOUT15\,
	combout => \inst|ACC~48_combout\);

-- Location: LCCOMB_X19_Y6_N12
\inst|ACC~49\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~49_combout\ = (\inst10|srom|rom_block|auto_generated|q_a\(15) & ((\inst|ACC~48_combout\))) # (!\inst10|srom|rom_block|auto_generated|q_a\(15) & (\inst1|BRout[15]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|BRout[15]~_Duplicate_1_q\,
	datac => \inst10|srom|rom_block|auto_generated|q_a\(15),
	datad => \inst|ACC~48_combout\,
	combout => \inst|ACC~49_combout\);

-- Location: LCCOMB_X19_Y6_N6
\inst|ACC~50\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~50_combout\ = (\inst|ACC~45_combout\ & (((\inst|ACC~47_combout\) # (!\inst|ACC~49_combout\)))) # (!\inst|ACC~45_combout\ & (\inst10|srom|rom_block|auto_generated|q_a\(11) & (!\inst|ACC~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|srom|rom_block|auto_generated|q_a\(11),
	datab => \inst|ACC~45_combout\,
	datac => \inst|ACC~47_combout\,
	datad => \inst|ACC~49_combout\,
	combout => \inst|ACC~50_combout\);

-- Location: LCCOMB_X19_Y6_N20
\inst|ACC~51\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \inst|ACC~51_combout\ = (\inst|ACC~46_combout\ & (!\inst|ACC~50_combout\ & ((\inst|Add0~48_combout\) # (!\inst|ACC~47_combout\)))) # (!\inst|ACC~46_combout\ & (\inst|ACC~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ACC~46_combout\,
	datab => \inst|ACC~47_combout\,
	datac => \inst|Add0~48_combout\,
	datad => \inst|ACC~50_combout\,
	combout => \inst|ACC~51_combout\);

-- Location: FF_X19_Y6_N21
\inst|ACC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \inst|ACC~51_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ACC\(15));

ww_ACC(15) <= \ACC[15]~output_o\;

ww_ACC(14) <= \ACC[14]~output_o\;

ww_ACC(13) <= \ACC[13]~output_o\;

ww_ACC(12) <= \ACC[12]~output_o\;

ww_ACC(11) <= \ACC[11]~output_o\;

ww_ACC(10) <= \ACC[10]~output_o\;

ww_ACC(9) <= \ACC[9]~output_o\;

ww_ACC(8) <= \ACC[8]~output_o\;

ww_ACC(7) <= \ACC[7]~output_o\;

ww_ACC(6) <= \ACC[6]~output_o\;

ww_ACC(5) <= \ACC[5]~output_o\;

ww_ACC(4) <= \ACC[4]~output_o\;

ww_ACC(3) <= \ACC[3]~output_o\;

ww_ACC(2) <= \ACC[2]~output_o\;

ww_ACC(1) <= \ACC[1]~output_o\;

ww_ACC(0) <= \ACC[0]~output_o\;

ww_BRN(15) <= \BRN[15]~output_o\;

ww_BRN(14) <= \BRN[14]~output_o\;

ww_BRN(13) <= \BRN[13]~output_o\;

ww_BRN(12) <= \BRN[12]~output_o\;

ww_BRN(11) <= \BRN[11]~output_o\;

ww_BRN(10) <= \BRN[10]~output_o\;

ww_BRN(9) <= \BRN[9]~output_o\;

ww_BRN(8) <= \BRN[8]~output_o\;

ww_BRN(7) <= \BRN[7]~output_o\;

ww_BRN(6) <= \BRN[6]~output_o\;

ww_BRN(5) <= \BRN[5]~output_o\;

ww_BRN(4) <= \BRN[4]~output_o\;

ww_BRN(3) <= \BRN[3]~output_o\;

ww_BRN(2) <= \BRN[2]~output_o\;

ww_BRN(1) <= \BRN[1]~output_o\;

ww_BRN(0) <= \BRN[0]~output_o\;

ww_BROUT(15) <= \BROUT[15]~output_o\;

ww_BROUT(14) <= \BROUT[14]~output_o\;

ww_BROUT(13) <= \BROUT[13]~output_o\;

ww_BROUT(12) <= \BROUT[12]~output_o\;

ww_BROUT(11) <= \BROUT[11]~output_o\;

ww_BROUT(10) <= \BROUT[10]~output_o\;

ww_BROUT(9) <= \BROUT[9]~output_o\;

ww_BROUT(8) <= \BROUT[8]~output_o\;

ww_BROUT(7) <= \BROUT[7]~output_o\;

ww_BROUT(6) <= \BROUT[6]~output_o\;

ww_BROUT(5) <= \BROUT[5]~output_o\;

ww_BROUT(4) <= \BROUT[4]~output_o\;

ww_BROUT(3) <= \BROUT[3]~output_o\;

ww_BROUT(2) <= \BROUT[2]~output_o\;

ww_BROUT(1) <= \BROUT[1]~output_o\;

ww_BROUT(0) <= \BROUT[0]~output_o\;

ww_CAROUT(7) <= \CAROUT[7]~output_o\;

ww_CAROUT(6) <= \CAROUT[6]~output_o\;

ww_CAROUT(5) <= \CAROUT[5]~output_o\;

ww_CAROUT(4) <= \CAROUT[4]~output_o\;

ww_CAROUT(3) <= \CAROUT[3]~output_o\;

ww_CAROUT(2) <= \CAROUT[2]~output_o\;

ww_CAROUT(1) <= \CAROUT[1]~output_o\;

ww_CAROUT(0) <= \CAROUT[0]~output_o\;

ww_CONTROL(31) <= \CONTROL[31]~output_o\;

ww_CONTROL(30) <= \CONTROL[30]~output_o\;

ww_CONTROL(29) <= \CONTROL[29]~output_o\;

ww_CONTROL(28) <= \CONTROL[28]~output_o\;

ww_CONTROL(27) <= \CONTROL[27]~output_o\;

ww_CONTROL(26) <= \CONTROL[26]~output_o\;

ww_CONTROL(25) <= \CONTROL[25]~output_o\;

ww_CONTROL(24) <= \CONTROL[24]~output_o\;

ww_CONTROL(23) <= \CONTROL[23]~output_o\;

ww_CONTROL(22) <= \CONTROL[22]~output_o\;

ww_CONTROL(21) <= \CONTROL[21]~output_o\;

ww_CONTROL(20) <= \CONTROL[20]~output_o\;

ww_CONTROL(19) <= \CONTROL[19]~output_o\;

ww_CONTROL(18) <= \CONTROL[18]~output_o\;

ww_CONTROL(17) <= \CONTROL[17]~output_o\;

ww_CONTROL(16) <= \CONTROL[16]~output_o\;

ww_CONTROL(15) <= \CONTROL[15]~output_o\;

ww_CONTROL(14) <= \CONTROL[14]~output_o\;

ww_CONTROL(13) <= \CONTROL[13]~output_o\;

ww_CONTROL(12) <= \CONTROL[12]~output_o\;

ww_CONTROL(11) <= \CONTROL[11]~output_o\;

ww_CONTROL(10) <= \CONTROL[10]~output_o\;

ww_CONTROL(9) <= \CONTROL[9]~output_o\;

ww_CONTROL(8) <= \CONTROL[8]~output_o\;

ww_CONTROL(7) <= \CONTROL[7]~output_o\;

ww_CONTROL(6) <= \CONTROL[6]~output_o\;

ww_CONTROL(5) <= \CONTROL[5]~output_o\;

ww_CONTROL(4) <= \CONTROL[4]~output_o\;

ww_CONTROL(3) <= \CONTROL[3]~output_o\;

ww_CONTROL(2) <= \CONTROL[2]~output_o\;

ww_CONTROL(1) <= \CONTROL[1]~output_o\;

ww_CONTROL(0) <= \CONTROL[0]~output_o\;

ww_IROUT(7) <= \IROUT[7]~output_o\;

ww_IROUT(6) <= \IROUT[6]~output_o\;

ww_IROUT(5) <= \IROUT[5]~output_o\;

ww_IROUT(4) <= \IROUT[4]~output_o\;

ww_IROUT(3) <= \IROUT[3]~output_o\;

ww_IROUT(2) <= \IROUT[2]~output_o\;

ww_IROUT(1) <= \IROUT[1]~output_o\;

ww_IROUT(0) <= \IROUT[0]~output_o\;

ww_MAROUT(7) <= \MAROUT[7]~output_o\;

ww_MAROUT(6) <= \MAROUT[6]~output_o\;

ww_MAROUT(5) <= \MAROUT[5]~output_o\;

ww_MAROUT(4) <= \MAROUT[4]~output_o\;

ww_MAROUT(3) <= \MAROUT[3]~output_o\;

ww_MAROUT(2) <= \MAROUT[2]~output_o\;

ww_MAROUT(1) <= \MAROUT[1]~output_o\;

ww_MAROUT(0) <= \MAROUT[0]~output_o\;

ww_PC(7) <= \PC[7]~output_o\;

ww_PC(6) <= \PC[6]~output_o\;

ww_PC(5) <= \PC[5]~output_o\;

ww_PC(4) <= \PC[4]~output_o\;

ww_PC(3) <= \PC[3]~output_o\;

ww_PC(2) <= \PC[2]~output_o\;

ww_PC(1) <= \PC[1]~output_o\;

ww_PC(0) <= \PC[0]~output_o\;

ww_RAMN(15) <= \RAMN[15]~output_o\;

ww_RAMN(14) <= \RAMN[14]~output_o\;

ww_RAMN(13) <= \RAMN[13]~output_o\;

ww_RAMN(12) <= \RAMN[12]~output_o\;

ww_RAMN(11) <= \RAMN[11]~output_o\;

ww_RAMN(10) <= \RAMN[10]~output_o\;

ww_RAMN(9) <= \RAMN[9]~output_o\;

ww_RAMN(8) <= \RAMN[8]~output_o\;

ww_RAMN(7) <= \RAMN[7]~output_o\;

ww_RAMN(6) <= \RAMN[6]~output_o\;

ww_RAMN(5) <= \RAMN[5]~output_o\;

ww_RAMN(4) <= \RAMN[4]~output_o\;

ww_RAMN(3) <= \RAMN[3]~output_o\;

ww_RAMN(2) <= \RAMN[2]~output_o\;

ww_RAMN(1) <= \RAMN[1]~output_o\;

ww_RAMN(0) <= \RAMN[0]~output_o\;

ww_RAMOUT(15) <= \RAMOUT[15]~output_o\;

ww_RAMOUT(14) <= \RAMOUT[14]~output_o\;

ww_RAMOUT(13) <= \RAMOUT[13]~output_o\;

ww_RAMOUT(12) <= \RAMOUT[12]~output_o\;

ww_RAMOUT(11) <= \RAMOUT[11]~output_o\;

ww_RAMOUT(10) <= \RAMOUT[10]~output_o\;

ww_RAMOUT(9) <= \RAMOUT[9]~output_o\;

ww_RAMOUT(8) <= \RAMOUT[8]~output_o\;

ww_RAMOUT(7) <= \RAMOUT[7]~output_o\;

ww_RAMOUT(6) <= \RAMOUT[6]~output_o\;

ww_RAMOUT(5) <= \RAMOUT[5]~output_o\;

ww_RAMOUT(4) <= \RAMOUT[4]~output_o\;

ww_RAMOUT(3) <= \RAMOUT[3]~output_o\;

ww_RAMOUT(2) <= \RAMOUT[2]~output_o\;

ww_RAMOUT(1) <= \RAMOUT[1]~output_o\;

ww_RAMOUT(0) <= \RAMOUT[0]~output_o\;
END structure;


