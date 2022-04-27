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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "12/19/2020 13:08:45"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alu IS
    PORT (
	op : IN std_logic_vector(3 DOWNTO 0);
	accD : IN std_logic_vector(15 DOWNTO 0);
	dBus : IN std_logic_vector(15 DOWNTO 0);
	result : OUT std_logic_vector(15 DOWNTO 0);
	accZ : OUT std_logic
	);
END alu;

-- Design Ports Information
-- result[0]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[8]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[9]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[10]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[11]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[12]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[13]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[14]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[15]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accZ	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[0]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[1]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[0]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accD[0]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[2]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[3]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[1]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accD[1]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[2]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accD[2]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[3]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accD[3]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[4]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accD[4]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[5]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accD[5]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[6]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accD[6]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[7]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accD[7]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[8]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accD[8]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[9]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accD[9]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[10]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accD[10]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[11]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accD[11]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[12]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accD[12]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[13]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accD[13]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[14]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accD[14]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[15]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accD[15]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_op : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_accD : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_dBus : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_accZ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \result[8]~output_o\ : std_logic;
SIGNAL \result[9]~output_o\ : std_logic;
SIGNAL \result[10]~output_o\ : std_logic;
SIGNAL \result[11]~output_o\ : std_logic;
SIGNAL \result[12]~output_o\ : std_logic;
SIGNAL \result[13]~output_o\ : std_logic;
SIGNAL \result[14]~output_o\ : std_logic;
SIGNAL \result[15]~output_o\ : std_logic;
SIGNAL \accZ~output_o\ : std_logic;
SIGNAL \op[1]~input_o\ : std_logic;
SIGNAL \op[0]~input_o\ : std_logic;
SIGNAL \op[2]~input_o\ : std_logic;
SIGNAL \op[3]~input_o\ : std_logic;
SIGNAL \result~9_combout\ : std_logic;
SIGNAL \result~0_combout\ : std_logic;
SIGNAL \dBus[0]~input_o\ : std_logic;
SIGNAL \accD[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \result~2_combout\ : std_logic;
SIGNAL \result~3_combout\ : std_logic;
SIGNAL \result~1_combout\ : std_logic;
SIGNAL \result~4_combout\ : std_logic;
SIGNAL \result~5_combout\ : std_logic;
SIGNAL \result~6_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \accD[1]~input_o\ : std_logic;
SIGNAL \accD[2]~input_o\ : std_logic;
SIGNAL \accD[3]~input_o\ : std_logic;
SIGNAL \accD[4]~input_o\ : std_logic;
SIGNAL \accD[5]~input_o\ : std_logic;
SIGNAL \accD[6]~input_o\ : std_logic;
SIGNAL \accD[7]~input_o\ : std_logic;
SIGNAL \dBus[1]~input_o\ : std_logic;
SIGNAL \dBus[2]~input_o\ : std_logic;
SIGNAL \dBus[3]~input_o\ : std_logic;
SIGNAL \dBus[4]~input_o\ : std_logic;
SIGNAL \dBus[5]~input_o\ : std_logic;
SIGNAL \dBus[6]~input_o\ : std_logic;
SIGNAL \dBus[7]~input_o\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \result~7_combout\ : std_logic;
SIGNAL \result~8_combout\ : std_logic;
SIGNAL \result~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \result~11_combout\ : std_logic;
SIGNAL \result~12_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \result~16_combout\ : std_logic;
SIGNAL \result~17_combout\ : std_logic;
SIGNAL \result~13_combout\ : std_logic;
SIGNAL \Add1~1_cout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \result~14_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add5~1_cout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \result~15_combout\ : std_logic;
SIGNAL \result~18_combout\ : std_logic;
SIGNAL \result~19_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \result~20_combout\ : std_logic;
SIGNAL \result~21_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \result~25_combout\ : std_logic;
SIGNAL \result~26_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \result~22_combout\ : std_logic;
SIGNAL \result~23_combout\ : std_logic;
SIGNAL \result~24_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \result~27_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \result~28_combout\ : std_logic;
SIGNAL \result~29_combout\ : std_logic;
SIGNAL \result~30_combout\ : std_logic;
SIGNAL \result~37_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \result~38_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \result~33_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \result~34_combout\ : std_logic;
SIGNAL \result~35_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \result~31_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \result~32_combout\ : std_logic;
SIGNAL \result~36_combout\ : std_logic;
SIGNAL \result~39_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \result~43_combout\ : std_logic;
SIGNAL \result~44_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \result~40_combout\ : std_logic;
SIGNAL \result~41_combout\ : std_logic;
SIGNAL \result~42_combout\ : std_logic;
SIGNAL \result~45_combout\ : std_logic;
SIGNAL \result~46_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \result~47_combout\ : std_logic;
SIGNAL \result~48_combout\ : std_logic;
SIGNAL \result~49_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \result~50_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \result~52_combout\ : std_logic;
SIGNAL \result~53_combout\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \result~51_combout\ : std_logic;
SIGNAL \result~54_combout\ : std_logic;
SIGNAL \result~55_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \result~56_combout\ : std_logic;
SIGNAL \result~57_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \result~58_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \result~59_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \result~60_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \result~61_combout\ : std_logic;
SIGNAL \result~62_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \result~63_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \result~64_combout\ : std_logic;
SIGNAL \result~65_combout\ : std_logic;
SIGNAL \result~66_combout\ : std_logic;
SIGNAL \result~73_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \result~74_combout\ : std_logic;
SIGNAL \result~67_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \result~68_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \result~70_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \result~71_combout\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \result~69_combout\ : std_logic;
SIGNAL \result~72_combout\ : std_logic;
SIGNAL \result~75_combout\ : std_logic;
SIGNAL \dBus[8]~input_o\ : std_logic;
SIGNAL \accD[8]~input_o\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \result~79_combout\ : std_logic;
SIGNAL \result~80_combout\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \result~76_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \result~77_combout\ : std_logic;
SIGNAL \result~78_combout\ : std_logic;
SIGNAL \result~81_combout\ : std_logic;
SIGNAL \result~82_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \result~83_combout\ : std_logic;
SIGNAL \result~84_combout\ : std_logic;
SIGNAL \accD[9]~input_o\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \dBus[9]~input_o\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \result~87_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \result~88_combout\ : std_logic;
SIGNAL \result~89_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \result~85_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \result~86_combout\ : std_logic;
SIGNAL \result~90_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \result~91_combout\ : std_logic;
SIGNAL \result~92_combout\ : std_logic;
SIGNAL \result~93_combout\ : std_logic;
SIGNAL \accD[10]~input_o\ : std_logic;
SIGNAL \dBus[10]~input_o\ : std_logic;
SIGNAL \result~100_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \result~101_combout\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \result~94_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \result~95_combout\ : std_logic;
SIGNAL \Add5~19\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \result~96_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \result~97_combout\ : std_logic;
SIGNAL \result~98_combout\ : std_logic;
SIGNAL \result~99_combout\ : std_logic;
SIGNAL \result~102_combout\ : std_logic;
SIGNAL \dBus[11]~input_o\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \accD[11]~input_o\ : std_logic;
SIGNAL \result~109_combout\ : std_logic;
SIGNAL \result~110_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \result~106_combout\ : std_logic;
SIGNAL \result~107_combout\ : std_logic;
SIGNAL \result~103_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \result~104_combout\ : std_logic;
SIGNAL \Add5~21\ : std_logic;
SIGNAL \Add5~22_combout\ : std_logic;
SIGNAL \Add4~21\ : std_logic;
SIGNAL \Add4~22_combout\ : std_logic;
SIGNAL \result~105_combout\ : std_logic;
SIGNAL \result~108_combout\ : std_logic;
SIGNAL \result~111_combout\ : std_logic;
SIGNAL \dBus[12]~input_o\ : std_logic;
SIGNAL \accD[12]~input_o\ : std_logic;
SIGNAL \Add4~23\ : std_logic;
SIGNAL \Add4~24_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \result~115_combout\ : std_logic;
SIGNAL \result~116_combout\ : std_logic;
SIGNAL \Add5~23\ : std_logic;
SIGNAL \Add5~24_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \result~112_combout\ : std_logic;
SIGNAL \result~113_combout\ : std_logic;
SIGNAL \result~114_combout\ : std_logic;
SIGNAL \result~117_combout\ : std_logic;
SIGNAL \result~118_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \result~119_combout\ : std_logic;
SIGNAL \result~120_combout\ : std_logic;
SIGNAL \accD[13]~input_o\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \result~124_combout\ : std_logic;
SIGNAL \dBus[13]~input_o\ : std_logic;
SIGNAL \result~125_combout\ : std_logic;
SIGNAL \Add5~25\ : std_logic;
SIGNAL \Add5~26_combout\ : std_logic;
SIGNAL \Add4~25\ : std_logic;
SIGNAL \Add4~26_combout\ : std_logic;
SIGNAL \result~123_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \result~121_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \result~122_combout\ : std_logic;
SIGNAL \result~126_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \result~127_combout\ : std_logic;
SIGNAL \result~128_combout\ : std_logic;
SIGNAL \result~129_combout\ : std_logic;
SIGNAL \accD[14]~input_o\ : std_logic;
SIGNAL \Add5~27\ : std_logic;
SIGNAL \Add5~28_combout\ : std_logic;
SIGNAL \dBus[14]~input_o\ : std_logic;
SIGNAL \result~130_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \result~131_combout\ : std_logic;
SIGNAL \result~132_combout\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~28_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \result~133_combout\ : std_logic;
SIGNAL \result~134_combout\ : std_logic;
SIGNAL \result~135_combout\ : std_logic;
SIGNAL \result~136_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \result~137_combout\ : std_logic;
SIGNAL \result~138_combout\ : std_logic;
SIGNAL \accD[15]~input_o\ : std_logic;
SIGNAL \dBus[15]~input_o\ : std_logic;
SIGNAL \result~145_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \result~146_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \result~142_combout\ : std_logic;
SIGNAL \result~143_combout\ : std_logic;
SIGNAL \Add5~29\ : std_logic;
SIGNAL \Add5~30_combout\ : std_logic;
SIGNAL \Add4~29\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \result~141_combout\ : std_logic;
SIGNAL \result~139_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \result~140_combout\ : std_logic;
SIGNAL \result~144_combout\ : std_logic;
SIGNAL \result~147_combout\ : std_logic;
SIGNAL \accZ~1_combout\ : std_logic;
SIGNAL \accZ~0_combout\ : std_logic;
SIGNAL \accZ~2_combout\ : std_logic;
SIGNAL \ALT_INV_dBus[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_dBus[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_dBus[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_dBus[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_dBus[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_dBus[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_dBus[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_dBus[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_accZ~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_op <= op;
ww_accD <= accD;
ww_dBus <= dBus;
result <= ww_result;
accZ <= ww_accZ;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\Mult1|auto_generated|mac_mult1~DATAOUT15\ & \Mult1|auto_generated|mac_mult1~DATAOUT14\ & \Mult1|auto_generated|mac_mult1~DATAOUT13\ & \Mult1|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT11\ & \Mult1|auto_generated|mac_mult1~DATAOUT10\ & \Mult1|auto_generated|mac_mult1~DATAOUT9\ & \Mult1|auto_generated|mac_mult1~DATAOUT8\ & \Mult1|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT6\ & \Mult1|auto_generated|mac_mult1~DATAOUT5\ & \Mult1|auto_generated|mac_mult1~DATAOUT4\ & \Mult1|auto_generated|mac_mult1~DATAOUT3\ & \Mult1|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT1\ & \Mult1|auto_generated|mac_mult1~dataout\ & \Mult1|auto_generated|mac_mult1~1\ & \Mult1|auto_generated|mac_mult1~0\);

\Mult1|auto_generated|mac_out2~0\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_out2~1\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_out2~dataout\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_out2~DATAOUT1\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_out2~DATAOUT2\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_out2~DATAOUT3\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_out2~DATAOUT4\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_out2~DATAOUT5\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_out2~DATAOUT6\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_out2~DATAOUT7\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_out2~DATAOUT8\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_out2~DATAOUT9\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_out2~DATAOUT10\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_out2~DATAOUT11\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_out2~DATAOUT12\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_out2~DATAOUT13\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_out2~DATAOUT14\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_out2~DATAOUT15\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult1~DATAOUT15\ & \Mult0|auto_generated|mac_mult1~DATAOUT14\ & \Mult0|auto_generated|mac_mult1~DATAOUT13\ & \Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT11\ & \Mult0|auto_generated|mac_mult1~DATAOUT10\ & \Mult0|auto_generated|mac_mult1~DATAOUT9\ & \Mult0|auto_generated|mac_mult1~DATAOUT8\ & \Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT6\ & \Mult0|auto_generated|mac_mult1~DATAOUT5\ & \Mult0|auto_generated|mac_mult1~DATAOUT4\ & \Mult0|auto_generated|mac_mult1~DATAOUT3\ & \Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT1\ & \Mult0|auto_generated|mac_mult1~dataout\ & \Mult0|auto_generated|mac_mult1~1\ & \Mult0|auto_generated|mac_mult1~0\);

\Mult0|auto_generated|mac_out2~0\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out2~1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out2~dataout\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out2~DATAOUT1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out2~DATAOUT2\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out2~DATAOUT3\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out2~DATAOUT4\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out2~DATAOUT5\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out2~DATAOUT6\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out2~DATAOUT7\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out2~DATAOUT8\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_out2~DATAOUT9\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out2~DATAOUT10\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out2~DATAOUT11\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out2~DATAOUT12\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out2~DATAOUT13\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_out2~DATAOUT14\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_out2~DATAOUT15\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (\accD[7]~input_o\ & \accD[6]~input_o\ & \accD[5]~input_o\ & \accD[4]~input_o\ & \accD[3]~input_o\ & \accD[2]~input_o\ & \accD[1]~input_o\ & \accD[0]~input_o\ & gnd);

\Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (\dBus[7]~input_o\ & \dBus[6]~input_o\ & \dBus[5]~input_o\ & \dBus[4]~input_o\ & \dBus[3]~input_o\ & \dBus[2]~input_o\ & \dBus[1]~input_o\ & \dBus[0]~input_o\ & gnd);

\Mult1|auto_generated|mac_mult1~0\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_mult1~1\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_mult1~dataout\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\accD[7]~input_o\ & \accD[6]~input_o\ & \accD[5]~input_o\ & \accD[4]~input_o\ & \accD[3]~input_o\ & \accD[2]~input_o\ & \accD[1]~input_o\ & \accD[0]~input_o\ & gnd);

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (NOT \dBus[7]~input_o\ & NOT \dBus[6]~input_o\ & NOT \dBus[5]~input_o\ & NOT \dBus[4]~input_o\ & NOT \dBus[3]~input_o\ & NOT \dBus[2]~input_o\ & NOT \dBus[1]~input_o\ & NOT \dBus[0]~input_o\ & gnd);

\Mult0|auto_generated|mac_mult1~0\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult1~1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult1~dataout\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\ALT_INV_dBus[7]~input_o\ <= NOT \dBus[7]~input_o\;
\ALT_INV_dBus[6]~input_o\ <= NOT \dBus[6]~input_o\;
\ALT_INV_dBus[5]~input_o\ <= NOT \dBus[5]~input_o\;
\ALT_INV_dBus[4]~input_o\ <= NOT \dBus[4]~input_o\;
\ALT_INV_dBus[3]~input_o\ <= NOT \dBus[3]~input_o\;
\ALT_INV_dBus[2]~input_o\ <= NOT \dBus[2]~input_o\;
\ALT_INV_dBus[1]~input_o\ <= NOT \dBus[1]~input_o\;
\ALT_INV_dBus[0]~input_o\ <= NOT \dBus[0]~input_o\;
\ALT_INV_accZ~2_combout\ <= NOT \accZ~2_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X1_Y24_N9
\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result~12_combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result~21_combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result~30_combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result~39_combout\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result~48_combout\,
	devoe => ww_devoe,
	o => \result[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result~57_combout\,
	devoe => ww_devoe,
	o => \result[5]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result~66_combout\,
	devoe => ww_devoe,
	o => \result[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result~75_combout\,
	devoe => ww_devoe,
	o => \result[7]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\result[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result~84_combout\,
	devoe => ww_devoe,
	o => \result[8]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\result[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result~93_combout\,
	devoe => ww_devoe,
	o => \result[9]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\result[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result~102_combout\,
	devoe => ww_devoe,
	o => \result[10]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\result[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result~111_combout\,
	devoe => ww_devoe,
	o => \result[11]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\result[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result~120_combout\,
	devoe => ww_devoe,
	o => \result[12]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\result[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result~129_combout\,
	devoe => ww_devoe,
	o => \result[13]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\result[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result~138_combout\,
	devoe => ww_devoe,
	o => \result[14]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\result[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result~147_combout\,
	devoe => ww_devoe,
	o => \result[15]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\accZ~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_accZ~2_combout\,
	devoe => ww_devoe,
	o => \accZ~output_o\);

-- Location: IOIBUF_X0_Y8_N15
\op[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(1),
	o => \op[1]~input_o\);

-- Location: IOIBUF_X18_Y24_N22
\op[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(0),
	o => \op[0]~input_o\);

-- Location: IOIBUF_X34_Y7_N8
\op[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(2),
	o => \op[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\op[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(3),
	o => \op[3]~input_o\);

-- Location: LCCOMB_X13_Y12_N6
\result~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~9_combout\ = (\op[1]~input_o\ & (!\op[0]~input_o\)) # (!\op[1]~input_o\ & (((\op[2]~input_o\) # (!\op[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[0]~input_o\,
	datac => \op[2]~input_o\,
	datad => \op[3]~input_o\,
	combout => \result~9_combout\);

-- Location: LCCOMB_X13_Y12_N24
\result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~0_combout\ = (\op[0]~input_o\ & \op[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \result~0_combout\);

-- Location: IOIBUF_X34_Y17_N1
\dBus[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dBus(0),
	o => \dBus[0]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\accD[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accD(0),
	o => \accD[0]~input_o\);

-- Location: LCCOMB_X18_Y14_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\dBus[0]~input_o\ & (\accD[0]~input_o\ $ (VCC))) # (!\dBus[0]~input_o\ & ((\accD[0]~input_o\) # (GND)))
-- \Add0~1\ = CARRY((\accD[0]~input_o\) # (!\dBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[0]~input_o\,
	datab => \accD[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X13_Y15_N8
\result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~2_combout\ = (\accD[0]~input_o\) # ((\op[3]~input_o\ & \dBus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \accD[0]~input_o\,
	datab => \op[3]~input_o\,
	datac => \dBus[0]~input_o\,
	combout => \result~2_combout\);

-- Location: LCCOMB_X13_Y15_N10
\result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~3_combout\ = (\op[0]~input_o\ & ((\op[3]~input_o\ & ((!\result~2_combout\))) # (!\op[3]~input_o\ & (\Add0~0_combout\)))) # (!\op[0]~input_o\ & (((\result~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \op[3]~input_o\,
	datac => \result~2_combout\,
	datad => \op[0]~input_o\,
	combout => \result~3_combout\);

-- Location: LCCOMB_X13_Y12_N2
\result~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~1_combout\ = (\op[1]~input_o\) # ((\op[0]~input_o\ & !\op[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[0]~input_o\,
	datac => \op[2]~input_o\,
	datad => \op[1]~input_o\,
	combout => \result~1_combout\);

-- Location: LCCOMB_X13_Y12_N12
\result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~4_combout\ = (\op[2]~input_o\) # (\op[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op[2]~input_o\,
	datad => \op[1]~input_o\,
	combout => \result~4_combout\);

-- Location: LCCOMB_X13_Y15_N12
\result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~5_combout\ = (\result~1_combout\ & (((\result~4_combout\)))) # (!\result~1_combout\ & ((\result~4_combout\ & (\result~3_combout\)) # (!\result~4_combout\ & ((\accD[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~3_combout\,
	datab => \result~1_combout\,
	datac => \result~4_combout\,
	datad => \accD[0]~input_o\,
	combout => \result~5_combout\);

-- Location: LCCOMB_X13_Y15_N6
\result~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~6_combout\ = (\op[2]~input_o\ & (((\op[3]~input_o\)))) # (!\op[2]~input_o\ & (\accD[0]~input_o\ & ((\dBus[0]~input_o\) # (!\op[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \accD[0]~input_o\,
	datab => \op[3]~input_o\,
	datac => \dBus[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \result~6_combout\);

-- Location: LCCOMB_X16_Y14_N0
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (\dBus[0]~input_o\ & (\accD[0]~input_o\ $ (VCC))) # (!\dBus[0]~input_o\ & (\accD[0]~input_o\ & VCC))
-- \Add4~1\ = CARRY((\dBus[0]~input_o\ & \accD[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[0]~input_o\,
	datab => \accD[0]~input_o\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: IOIBUF_X34_Y20_N8
\accD[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accD(1),
	o => \accD[1]~input_o\);

-- Location: IOIBUF_X23_Y24_N15
\accD[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accD(2),
	o => \accD[2]~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\accD[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accD(3),
	o => \accD[3]~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\accD[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accD(4),
	o => \accD[4]~input_o\);

-- Location: IOIBUF_X11_Y24_N15
\accD[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accD(5),
	o => \accD[5]~input_o\);

-- Location: IOIBUF_X34_Y10_N8
\accD[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accD(6),
	o => \accD[6]~input_o\);

-- Location: IOIBUF_X34_Y17_N15
\accD[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accD(7),
	o => \accD[7]~input_o\);

-- Location: IOIBUF_X30_Y24_N22
\dBus[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dBus(1),
	o => \dBus[1]~input_o\);

-- Location: IOIBUF_X34_Y18_N15
\dBus[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dBus(2),
	o => \dBus[2]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\dBus[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dBus(3),
	o => \dBus[3]~input_o\);

-- Location: IOIBUF_X28_Y24_N22
\dBus[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dBus(4),
	o => \dBus[4]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\dBus[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dBus(5),
	o => \dBus[5]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\dBus[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dBus(6),
	o => \dBus[6]~input_o\);

-- Location: IOIBUF_X23_Y24_N8
\dBus[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dBus(7),
	o => \dBus[7]~input_o\);

-- Location: DSPMULT_X20_Y15_N0
\Mult1|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X20_Y15_N2
\Mult1|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X13_Y15_N24
\result~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~7_combout\ = (\result~6_combout\ & (((!\op[2]~input_o\)) # (!\Add4~0_combout\))) # (!\result~6_combout\ & (((\Mult1|auto_generated|mac_out2~dataout\ & \op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~6_combout\,
	datab => \Add4~0_combout\,
	datac => \Mult1|auto_generated|mac_out2~dataout\,
	datad => \op[2]~input_o\,
	combout => \result~7_combout\);

-- Location: LCCOMB_X13_Y15_N2
\result~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~8_combout\ = (\result~5_combout\ & ((\result~7_combout\) # ((!\result~1_combout\)))) # (!\result~5_combout\ & (((\result~1_combout\ & \Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~5_combout\,
	datab => \result~7_combout\,
	datac => \result~1_combout\,
	datad => \Add4~0_combout\,
	combout => \result~8_combout\);

-- Location: LCCOMB_X18_Y15_N0
\result~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~10_combout\ = (\op[3]~input_o\ & (((\op[2]~input_o\) # (!\dBus[0]~input_o\)) # (!\accD[0]~input_o\))) # (!\op[3]~input_o\ & (((\dBus[0]~input_o\ & !\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[3]~input_o\,
	datab => \accD[0]~input_o\,
	datac => \dBus[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \result~10_combout\);

-- Location: DSPMULT_X20_Y15_N1
\Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X20_Y15_N3
\Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X18_Y15_N10
\result~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~11_combout\ = (\result~10_combout\ & (((!\op[2]~input_o\)) # (!\accD[0]~input_o\))) # (!\result~10_combout\ & (((\Mult0|auto_generated|mac_out2~dataout\ & \op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~10_combout\,
	datab => \accD[0]~input_o\,
	datac => \Mult0|auto_generated|mac_out2~dataout\,
	datad => \op[2]~input_o\,
	combout => \result~11_combout\);

-- Location: LCCOMB_X17_Y16_N8
\result~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~12_combout\ = (\result~9_combout\ & ((\result~8_combout\) # ((\result~0_combout\ & \result~11_combout\)))) # (!\result~9_combout\ & (\result~0_combout\ & ((\result~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~9_combout\,
	datab => \result~0_combout\,
	datac => \result~8_combout\,
	datad => \result~11_combout\,
	combout => \result~12_combout\);

-- Location: LCCOMB_X17_Y16_N24
\result~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~16_combout\ = (\op[3]~input_o\ & ((\dBus[1]~input_o\))) # (!\op[3]~input_o\ & (\Mult1|auto_generated|mac_out2~DATAOUT1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|mac_out2~DATAOUT1\,
	datac => \op[3]~input_o\,
	datad => \dBus[1]~input_o\,
	combout => \result~16_combout\);

-- Location: LCCOMB_X17_Y16_N26
\result~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~17_combout\ = (\op[2]~input_o\ & (\result~16_combout\ $ (((\op[3]~input_o\ & !\accD[1]~input_o\))))) # (!\op[2]~input_o\ & (\accD[1]~input_o\ & ((\result~16_combout\) # (!\op[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \result~16_combout\,
	datac => \op[3]~input_o\,
	datad => \accD[1]~input_o\,
	combout => \result~17_combout\);

-- Location: LCCOMB_X17_Y16_N10
\result~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~13_combout\ = \op[0]~input_o\ $ (((\op[3]~input_o\ & ((\dBus[1]~input_o\) # (\accD[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[1]~input_o\,
	datab => \op[3]~input_o\,
	datac => \op[0]~input_o\,
	datad => \accD[1]~input_o\,
	combout => \result~13_combout\);

-- Location: LCCOMB_X17_Y13_N0
\Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~1_cout\ = CARRY(!\accD[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \accD[0]~input_o\,
	datad => VCC,
	cout => \Add1~1_cout\);

-- Location: LCCOMB_X17_Y13_N2
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\accD[1]~input_o\ & (!\Add1~1_cout\)) # (!\accD[1]~input_o\ & (\Add1~1_cout\ & VCC))
-- \Add1~3\ = CARRY((\accD[1]~input_o\ & !\Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \accD[1]~input_o\,
	datad => VCC,
	cin => \Add1~1_cout\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X18_Y14_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\dBus[1]~input_o\ & ((\accD[1]~input_o\ & (!\Add0~1\)) # (!\accD[1]~input_o\ & ((\Add0~1\) # (GND))))) # (!\dBus[1]~input_o\ & ((\accD[1]~input_o\ & (\Add0~1\ & VCC)) # (!\accD[1]~input_o\ & (!\Add0~1\))))
-- \Add0~3\ = CARRY((\dBus[1]~input_o\ & ((!\Add0~1\) # (!\accD[1]~input_o\))) # (!\dBus[1]~input_o\ & (!\accD[1]~input_o\ & !\Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[1]~input_o\,
	datab => \accD[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X17_Y16_N20
\result~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~14_combout\ = (\result~13_combout\ & (((\op[3]~input_o\) # (\Add0~2_combout\)))) # (!\result~13_combout\ & (\Add1~2_combout\ & (!\op[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~13_combout\,
	datab => \Add1~2_combout\,
	datac => \op[3]~input_o\,
	datad => \Add0~2_combout\,
	combout => \result~14_combout\);

-- Location: LCCOMB_X16_Y14_N2
\Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\dBus[1]~input_o\ & ((\accD[1]~input_o\ & (\Add4~1\ & VCC)) # (!\accD[1]~input_o\ & (!\Add4~1\)))) # (!\dBus[1]~input_o\ & ((\accD[1]~input_o\ & (!\Add4~1\)) # (!\accD[1]~input_o\ & ((\Add4~1\) # (GND)))))
-- \Add4~3\ = CARRY((\dBus[1]~input_o\ & (!\accD[1]~input_o\ & !\Add4~1\)) # (!\dBus[1]~input_o\ & ((!\Add4~1\) # (!\accD[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[1]~input_o\,
	datab => \accD[1]~input_o\,
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X13_Y14_N0
\Add5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~1_cout\ = CARRY(!\accD[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \accD[0]~input_o\,
	datad => VCC,
	cout => \Add5~1_cout\);

-- Location: LCCOMB_X13_Y14_N2
\Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\accD[1]~input_o\ & ((\Add5~1_cout\) # (GND))) # (!\accD[1]~input_o\ & (!\Add5~1_cout\))
-- \Add5~3\ = CARRY((\accD[1]~input_o\) # (!\Add5~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \accD[1]~input_o\,
	datad => VCC,
	cin => \Add5~1_cout\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X17_Y16_N6
\result~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~15_combout\ = (\result~1_combout\ & ((\Add4~2_combout\) # ((\result~4_combout\)))) # (!\result~1_combout\ & (((\Add5~2_combout\ & !\result~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~2_combout\,
	datab => \result~1_combout\,
	datac => \Add5~2_combout\,
	datad => \result~4_combout\,
	combout => \result~15_combout\);

-- Location: LCCOMB_X17_Y16_N4
\result~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~18_combout\ = (\result~4_combout\ & ((\result~15_combout\ & (\result~17_combout\)) # (!\result~15_combout\ & ((\result~14_combout\))))) # (!\result~4_combout\ & (((\result~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~17_combout\,
	datab => \result~14_combout\,
	datac => \result~4_combout\,
	datad => \result~15_combout\,
	combout => \result~18_combout\);

-- Location: LCCOMB_X17_Y16_N30
\result~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~19_combout\ = (\op[2]~input_o\ & (((\op[3]~input_o\)))) # (!\op[2]~input_o\ & ((\op[3]~input_o\ & ((!\dBus[1]~input_o\) # (!\accD[1]~input_o\))) # (!\op[3]~input_o\ & ((\dBus[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \accD[1]~input_o\,
	datac => \op[3]~input_o\,
	datad => \dBus[1]~input_o\,
	combout => \result~19_combout\);

-- Location: LCCOMB_X17_Y16_N16
\result~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~20_combout\ = (\result~19_combout\ & (((!\op[2]~input_o\)) # (!\accD[1]~input_o\))) # (!\result~19_combout\ & (((\Mult0|auto_generated|mac_out2~DATAOUT1\ & \op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~19_combout\,
	datab => \accD[1]~input_o\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	datad => \op[2]~input_o\,
	combout => \result~20_combout\);

-- Location: LCCOMB_X17_Y16_N2
\result~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~21_combout\ = (\result~9_combout\ & ((\result~18_combout\) # ((\result~0_combout\ & \result~20_combout\)))) # (!\result~9_combout\ & (\result~0_combout\ & ((\result~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~9_combout\,
	datab => \result~0_combout\,
	datac => \result~18_combout\,
	datad => \result~20_combout\,
	combout => \result~21_combout\);

-- Location: LCCOMB_X17_Y15_N2
\result~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~25_combout\ = (\op[3]~input_o\ & ((\dBus[2]~input_o\))) # (!\op[3]~input_o\ & (\Mult1|auto_generated|mac_out2~DATAOUT2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[3]~input_o\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT2\,
	datad => \dBus[2]~input_o\,
	combout => \result~25_combout\);

-- Location: LCCOMB_X17_Y15_N4
\result~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~26_combout\ = (\accD[2]~input_o\ & ((\result~25_combout\) # ((!\op[3]~input_o\ & !\op[2]~input_o\)))) # (!\accD[2]~input_o\ & (\op[2]~input_o\ & (\op[3]~input_o\ $ (\result~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[3]~input_o\,
	datab => \result~25_combout\,
	datac => \accD[2]~input_o\,
	datad => \op[2]~input_o\,
	combout => \result~26_combout\);

-- Location: LCCOMB_X13_Y14_N4
\Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (\accD[2]~input_o\ & (!\Add5~3\ & VCC)) # (!\accD[2]~input_o\ & (\Add5~3\ $ (GND)))
-- \Add5~5\ = CARRY((!\accD[2]~input_o\ & !\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accD[2]~input_o\,
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X17_Y13_N4
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\accD[2]~input_o\ & (\Add1~3\ $ (GND))) # (!\accD[2]~input_o\ & ((GND) # (!\Add1~3\)))
-- \Add1~5\ = CARRY((!\Add1~3\) # (!\accD[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accD[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X18_Y14_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\accD[2]~input_o\ $ (\dBus[2]~input_o\ $ (\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\accD[2]~input_o\ & ((!\Add0~3\) # (!\dBus[2]~input_o\))) # (!\accD[2]~input_o\ & (!\dBus[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accD[2]~input_o\,
	datab => \dBus[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X18_Y15_N12
\result~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~22_combout\ = \op[0]~input_o\ $ (((\op[3]~input_o\ & ((\accD[2]~input_o\) # (\dBus[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[3]~input_o\,
	datab => \accD[2]~input_o\,
	datac => \dBus[2]~input_o\,
	datad => \op[0]~input_o\,
	combout => \result~22_combout\);

-- Location: LCCOMB_X18_Y15_N6
\result~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~23_combout\ = (\op[3]~input_o\ & (((\result~22_combout\)))) # (!\op[3]~input_o\ & ((\result~22_combout\ & ((\Add0~4_combout\))) # (!\result~22_combout\ & (\Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[3]~input_o\,
	datab => \Add1~4_combout\,
	datac => \Add0~4_combout\,
	datad => \result~22_combout\,
	combout => \result~23_combout\);

-- Location: LCCOMB_X17_Y15_N8
\result~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~24_combout\ = (\result~1_combout\ & (((\result~4_combout\)))) # (!\result~1_combout\ & ((\result~4_combout\ & ((\result~23_combout\))) # (!\result~4_combout\ & (\Add5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~1_combout\,
	datab => \Add5~4_combout\,
	datac => \result~4_combout\,
	datad => \result~23_combout\,
	combout => \result~24_combout\);

-- Location: LCCOMB_X16_Y14_N4
\Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = ((\accD[2]~input_o\ $ (\dBus[2]~input_o\ $ (!\Add4~3\)))) # (GND)
-- \Add4~5\ = CARRY((\accD[2]~input_o\ & ((\dBus[2]~input_o\) # (!\Add4~3\))) # (!\accD[2]~input_o\ & (\dBus[2]~input_o\ & !\Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accD[2]~input_o\,
	datab => \dBus[2]~input_o\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X17_Y15_N6
\result~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~27_combout\ = (\result~1_combout\ & ((\result~24_combout\ & (\result~26_combout\)) # (!\result~24_combout\ & ((\Add4~4_combout\))))) # (!\result~1_combout\ & (((\result~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~1_combout\,
	datab => \result~26_combout\,
	datac => \result~24_combout\,
	datad => \Add4~4_combout\,
	combout => \result~27_combout\);

-- Location: LCCOMB_X18_Y15_N8
\result~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~28_combout\ = (\op[3]~input_o\ & (((\op[2]~input_o\) # (!\dBus[2]~input_o\)) # (!\accD[2]~input_o\))) # (!\op[3]~input_o\ & (((\dBus[2]~input_o\ & !\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[3]~input_o\,
	datab => \accD[2]~input_o\,
	datac => \dBus[2]~input_o\,
	datad => \op[2]~input_o\,
	combout => \result~28_combout\);

-- Location: LCCOMB_X18_Y15_N18
\result~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~29_combout\ = (\result~28_combout\ & (((!\op[2]~input_o\) # (!\accD[2]~input_o\)))) # (!\result~28_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT2\ & ((\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	datab => \accD[2]~input_o\,
	datac => \result~28_combout\,
	datad => \op[2]~input_o\,
	combout => \result~29_combout\);

-- Location: LCCOMB_X17_Y15_N0
\result~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~30_combout\ = (\result~27_combout\ & ((\result~9_combout\) # ((\result~0_combout\ & \result~29_combout\)))) # (!\result~27_combout\ & (\result~0_combout\ & ((\result~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~27_combout\,
	datab => \result~0_combout\,
	datac => \result~9_combout\,
	datad => \result~29_combout\,
	combout => \result~30_combout\);

-- Location: LCCOMB_X14_Y14_N12
\result~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~37_combout\ = (\op[2]~input_o\ & (\op[3]~input_o\)) # (!\op[2]~input_o\ & ((\op[3]~input_o\ & ((!\accD[3]~input_o\) # (!\dBus[3]~input_o\))) # (!\op[3]~input_o\ & (\dBus[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \op[3]~input_o\,
	datac => \dBus[3]~input_o\,
	datad => \accD[3]~input_o\,
	combout => \result~37_combout\);

-- Location: LCCOMB_X14_Y14_N22
\result~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~38_combout\ = (\result~37_combout\ & (((!\accD[3]~input_o\) # (!\op[2]~input_o\)))) # (!\result~37_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT3\ & (\op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~37_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	datac => \op[2]~input_o\,
	datad => \accD[3]~input_o\,
	combout => \result~38_combout\);

-- Location: LCCOMB_X13_Y14_N6
\Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (\accD[3]~input_o\ & ((\Add5~5\) # (GND))) # (!\accD[3]~input_o\ & (!\Add5~5\))
-- \Add5~7\ = CARRY((\accD[3]~input_o\) # (!\Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accD[3]~input_o\,
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X16_Y14_N6
\Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (\dBus[3]~input_o\ & ((\accD[3]~input_o\ & (\Add4~5\ & VCC)) # (!\accD[3]~input_o\ & (!\Add4~5\)))) # (!\dBus[3]~input_o\ & ((\accD[3]~input_o\ & (!\Add4~5\)) # (!\accD[3]~input_o\ & ((\Add4~5\) # (GND)))))
-- \Add4~7\ = CARRY((\dBus[3]~input_o\ & (!\accD[3]~input_o\ & !\Add4~5\)) # (!\dBus[3]~input_o\ & ((!\Add4~5\) # (!\accD[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[3]~input_o\,
	datab => \accD[3]~input_o\,
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X14_Y14_N4
\result~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~33_combout\ = (\result~4_combout\ & (\result~1_combout\)) # (!\result~4_combout\ & ((\result~1_combout\ & ((\Add4~6_combout\))) # (!\result~1_combout\ & (\Add5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~4_combout\,
	datab => \result~1_combout\,
	datac => \Add5~6_combout\,
	datad => \Add4~6_combout\,
	combout => \result~33_combout\);

-- Location: LCCOMB_X14_Y14_N30
\result~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~34_combout\ = (\op[3]~input_o\ & (\dBus[3]~input_o\)) # (!\op[3]~input_o\ & ((\Mult1|auto_generated|mac_out2~DATAOUT3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dBus[3]~input_o\,
	datac => \Mult1|auto_generated|mac_out2~DATAOUT3\,
	datad => \op[3]~input_o\,
	combout => \result~34_combout\);

-- Location: LCCOMB_X14_Y14_N8
\result~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~35_combout\ = (\op[2]~input_o\ & (\result~34_combout\ $ (((\op[3]~input_o\ & !\accD[3]~input_o\))))) # (!\op[2]~input_o\ & (\accD[3]~input_o\ & ((\result~34_combout\) # (!\op[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~34_combout\,
	datab => \op[3]~input_o\,
	datac => \op[2]~input_o\,
	datad => \accD[3]~input_o\,
	combout => \result~35_combout\);

-- Location: LCCOMB_X17_Y13_N6
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\accD[3]~input_o\ & (!\Add1~5\)) # (!\accD[3]~input_o\ & (\Add1~5\ & VCC))
-- \Add1~7\ = CARRY((\accD[3]~input_o\ & !\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \accD[3]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X14_Y14_N24
\result~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~31_combout\ = \op[0]~input_o\ $ (((\op[3]~input_o\ & ((\dBus[3]~input_o\) # (\accD[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \op[3]~input_o\,
	datac => \dBus[3]~input_o\,
	datad => \accD[3]~input_o\,
	combout => \result~31_combout\);

-- Location: LCCOMB_X18_Y14_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\dBus[3]~input_o\ & ((\accD[3]~input_o\ & (!\Add0~5\)) # (!\accD[3]~input_o\ & ((\Add0~5\) # (GND))))) # (!\dBus[3]~input_o\ & ((\accD[3]~input_o\ & (\Add0~5\ & VCC)) # (!\accD[3]~input_o\ & (!\Add0~5\))))
-- \Add0~7\ = CARRY((\dBus[3]~input_o\ & ((!\Add0~5\) # (!\accD[3]~input_o\))) # (!\dBus[3]~input_o\ & (!\accD[3]~input_o\ & !\Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[3]~input_o\,
	datab => \accD[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X14_Y14_N2
\result~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~32_combout\ = (\op[3]~input_o\ & (((\result~31_combout\)))) # (!\op[3]~input_o\ & ((\result~31_combout\ & ((\Add0~6_combout\))) # (!\result~31_combout\ & (\Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \op[3]~input_o\,
	datac => \result~31_combout\,
	datad => \Add0~6_combout\,
	combout => \result~32_combout\);

-- Location: LCCOMB_X14_Y14_N26
\result~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~36_combout\ = (\result~4_combout\ & ((\result~33_combout\ & (\result~35_combout\)) # (!\result~33_combout\ & ((\result~32_combout\))))) # (!\result~4_combout\ & (\result~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~4_combout\,
	datab => \result~33_combout\,
	datac => \result~35_combout\,
	datad => \result~32_combout\,
	combout => \result~36_combout\);

-- Location: LCCOMB_X14_Y14_N16
\result~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~39_combout\ = (\result~38_combout\ & ((\result~0_combout\) # ((\result~9_combout\ & \result~36_combout\)))) # (!\result~38_combout\ & (\result~9_combout\ & (\result~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~38_combout\,
	datab => \result~9_combout\,
	datac => \result~36_combout\,
	datad => \result~0_combout\,
	combout => \result~39_combout\);

-- Location: LCCOMB_X16_Y14_N8
\Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = ((\accD[4]~input_o\ $ (\dBus[4]~input_o\ $ (!\Add4~7\)))) # (GND)
-- \Add4~9\ = CARRY((\accD[4]~input_o\ & ((\dBus[4]~input_o\) # (!\Add4~7\))) # (!\accD[4]~input_o\ & (\dBus[4]~input_o\ & !\Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accD[4]~input_o\,
	datab => \dBus[4]~input_o\,
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X17_Y11_N30
\result~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~43_combout\ = (\op[3]~input_o\ & ((\dBus[4]~input_o\))) # (!\op[3]~input_o\ & (\Mult1|auto_generated|mac_out2~DATAOUT4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[3]~input_o\,
	datac => \Mult1|auto_generated|mac_out2~DATAOUT4\,
	datad => \dBus[4]~input_o\,
	combout => \result~43_combout\);

-- Location: LCCOMB_X17_Y11_N8
\result~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~44_combout\ = (\accD[4]~input_o\ & ((\result~43_combout\) # ((!\op[3]~input_o\ & !\op[2]~input_o\)))) # (!\accD[4]~input_o\ & (\op[2]~input_o\ & (\op[3]~input_o\ $ (\result~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \accD[4]~input_o\,
	datab => \op[3]~input_o\,
	datac => \result~43_combout\,
	datad => \op[2]~input_o\,
	combout => \result~44_combout\);

-- Location: LCCOMB_X13_Y14_N8
\Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (\accD[4]~input_o\ & (!\Add5~7\ & VCC)) # (!\accD[4]~input_o\ & (\Add5~7\ $ (GND)))
-- \Add5~9\ = CARRY((!\accD[4]~input_o\ & !\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \accD[4]~input_o\,
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X17_Y13_N8
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\accD[4]~input_o\ & (\Add1~7\ $ (GND))) # (!\accD[4]~input_o\ & ((GND) # (!\Add1~7\)))
-- \Add1~9\ = CARRY((!\Add1~7\) # (!\accD[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accD[4]~input_o\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X18_Y14_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\accD[4]~input_o\ $ (\dBus[4]~input_o\ $ (\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\accD[4]~input_o\ & ((!\Add0~7\) # (!\dBus[4]~input_o\))) # (!\accD[4]~input_o\ & (!\dBus[4]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accD[4]~input_o\,
	datab => \dBus[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X17_Y11_N16
\result~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~40_combout\ = \op[0]~input_o\ $ (((\op[3]~input_o\ & ((\accD[4]~input_o\) # (\dBus[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \accD[4]~input_o\,
	datab => \op[3]~input_o\,
	datac => \op[0]~input_o\,
	datad => \dBus[4]~input_o\,
	combout => \result~40_combout\);

-- Location: LCCOMB_X17_Y11_N10
\result~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~41_combout\ = (\op[3]~input_o\ & (((\result~40_combout\)))) # (!\op[3]~input_o\ & ((\result~40_combout\ & ((\Add0~8_combout\))) # (!\result~40_combout\ & (\Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \op[3]~input_o\,
	datac => \Add0~8_combout\,
	datad => \result~40_combout\,
	combout => \result~41_combout\);

-- Location: LCCOMB_X17_Y11_N12
\result~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~42_combout\ = (\result~1_combout\ & (((\result~4_combout\)))) # (!\result~1_combout\ & ((\result~4_combout\ & ((\result~41_combout\))) # (!\result~4_combout\ & (\Add5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~8_combout\,
	datab => \result~1_combout\,
	datac => \result~4_combout\,
	datad => \result~41_combout\,
	combout => \result~42_combout\);

-- Location: LCCOMB_X17_Y11_N18
\result~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~45_combout\ = (\result~1_combout\ & ((\result~42_combout\ & ((\result~44_combout\))) # (!\result~42_combout\ & (\Add4~8_combout\)))) # (!\result~1_combout\ & (((\result~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~8_combout\,
	datab => \result~1_combout\,
	datac => \result~44_combout\,
	datad => \result~42_combout\,
	combout => \result~45_combout\);

-- Location: LCCOMB_X17_Y11_N20
\result~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~46_combout\ = (\dBus[4]~input_o\ & ((\op[3]~input_o\ & ((\op[2]~input_o\) # (!\accD[4]~input_o\))) # (!\op[3]~input_o\ & ((!\op[2]~input_o\))))) # (!\dBus[4]~input_o\ & (\op[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[4]~input_o\,
	datab => \op[3]~input_o\,
	datac => \accD[4]~input_o\,
	datad => \op[2]~input_o\,
	combout => \result~46_combout\);

-- Location: LCCOMB_X17_Y11_N14
\result~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~47_combout\ = (\result~46_combout\ & (((!\op[2]~input_o\)) # (!\accD[4]~input_o\))) # (!\result~46_combout\ & (((\Mult0|auto_generated|mac_out2~DATAOUT4\ & \op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \accD[4]~input_o\,
	datab => \result~46_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT4\,
	datad => \op[2]~input_o\,
	combout => \result~47_combout\);

-- Location: LCCOMB_X17_Y11_N24
\result~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~48_combout\ = (\result~45_combout\ & ((\result~9_combout\) # ((\result~0_combout\ & \result~47_combout\)))) # (!\result~45_combout\ & (\result~0_combout\ & (\result~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~45_combout\,
	datab => \result~0_combout\,
	datac => \result~47_combout\,
	datad => \result~9_combout\,
	combout => \result~48_combout\);

-- Location: LCCOMB_X13_Y12_N16
\result~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~49_combout\ = \op[0]~input_o\ $ (((\op[3]~input_o\ & ((\dBus[5]~input_o\) # (\accD[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[5]~input_o\,
	datab => \accD[5]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[3]~input_o\,
	combout => \result~49_combout\);

-- Location: LCCOMB_X18_Y14_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\accD[5]~input_o\ & ((\dBus[5]~input_o\ & (!\Add0~9\)) # (!\dBus[5]~input_o\ & (\Add0~9\ & VCC)))) # (!\accD[5]~input_o\ & ((\dBus[5]~input_o\ & ((\Add0~9\) # (GND))) # (!\dBus[5]~input_o\ & (!\Add0~9\))))
-- \Add0~11\ = CARRY((\accD[5]~input_o\ & (\dBus[5]~input_o\ & !\Add0~9\)) # (!\accD[5]~input_o\ & ((\dBus[5]~input_o\) # (!\Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accD[5]~input_o\,
	datab => \dBus[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X17_Y13_N10
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\accD[5]~input_o\ & (!\Add1~9\)) # (!\accD[5]~input_o\ & (\Add1~9\ & VCC))
-- \Add1~11\ = CARRY((\accD[5]~input_o\ & !\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \accD[5]~input_o\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X13_Y12_N18
\result~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~50_combout\ = (\result~49_combout\ & ((\op[3]~input_o\) # ((\Add0~10_combout\)))) # (!\result~49_combout\ & (!\op[3]~input_o\ & ((\Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~49_combout\,
	datab => \op[3]~input_o\,
	datac => \Add0~10_combout\,
	datad => \Add1~10_combout\,
	combout => \result~50_combout\);

-- Location: LCCOMB_X17_Y16_N28
\result~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~52_combout\ = (\op[3]~input_o\ & (\dBus[5]~input_o\)) # (!\op[3]~input_o\ & ((\Mult1|auto_generated|mac_out2~DATAOUT5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dBus[5]~input_o\,
	datac => \op[3]~input_o\,
	datad => \Mult1|auto_generated|mac_out2~DATAOUT5\,
	combout => \result~52_combout\);

-- Location: LCCOMB_X13_Y12_N14
\result~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~53_combout\ = (\accD[5]~input_o\ & ((\result~52_combout\) # ((!\op[2]~input_o\ & !\op[3]~input_o\)))) # (!\accD[5]~input_o\ & (\op[2]~input_o\ & (\result~52_combout\ $ (\op[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~52_combout\,
	datab => \accD[5]~input_o\,
	datac => \op[2]~input_o\,
	datad => \op[3]~input_o\,
	combout => \result~53_combout\);

-- Location: LCCOMB_X13_Y14_N10
\Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (\accD[5]~input_o\ & ((\Add5~9\) # (GND))) # (!\accD[5]~input_o\ & (!\Add5~9\))
-- \Add5~11\ = CARRY((\accD[5]~input_o\) # (!\Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accD[5]~input_o\,
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X16_Y14_N10
\Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (\dBus[5]~input_o\ & ((\accD[5]~input_o\ & (\Add4~9\ & VCC)) # (!\accD[5]~input_o\ & (!\Add4~9\)))) # (!\dBus[5]~input_o\ & ((\accD[5]~input_o\ & (!\Add4~9\)) # (!\accD[5]~input_o\ & ((\Add4~9\) # (GND)))))
-- \Add4~11\ = CARRY((\dBus[5]~input_o\ & (!\accD[5]~input_o\ & !\Add4~9\)) # (!\dBus[5]~input_o\ & ((!\Add4~9\) # (!\accD[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[5]~input_o\,
	datab => \accD[5]~input_o\,
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X13_Y12_N28
\result~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~51_combout\ = (\result~4_combout\ & (\result~1_combout\)) # (!\result~4_combout\ & ((\result~1_combout\ & ((\Add4~10_combout\))) # (!\result~1_combout\ & (\Add5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~4_combout\,
	datab => \result~1_combout\,
	datac => \Add5~10_combout\,
	datad => \Add4~10_combout\,
	combout => \result~51_combout\);

-- Location: LCCOMB_X13_Y12_N0
\result~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~54_combout\ = (\result~4_combout\ & ((\result~51_combout\ & ((\result~53_combout\))) # (!\result~51_combout\ & (\result~50_combout\)))) # (!\result~4_combout\ & (((\result~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~4_combout\,
	datab => \result~50_combout\,
	datac => \result~53_combout\,
	datad => \result~51_combout\,
	combout => \result~54_combout\);

-- Location: LCCOMB_X13_Y12_N10
\result~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~55_combout\ = (\dBus[5]~input_o\ & ((\op[2]~input_o\ & ((\op[3]~input_o\))) # (!\op[2]~input_o\ & ((!\op[3]~input_o\) # (!\accD[5]~input_o\))))) # (!\dBus[5]~input_o\ & (((\op[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[5]~input_o\,
	datab => \accD[5]~input_o\,
	datac => \op[2]~input_o\,
	datad => \op[3]~input_o\,
	combout => \result~55_combout\);

-- Location: LCCOMB_X13_Y12_N4
\result~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~56_combout\ = (\result~55_combout\ & (((!\op[2]~input_o\)) # (!\accD[5]~input_o\))) # (!\result~55_combout\ & (((\op[2]~input_o\ & \Mult0|auto_generated|mac_out2~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~55_combout\,
	datab => \accD[5]~input_o\,
	datac => \op[2]~input_o\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT5\,
	combout => \result~56_combout\);

-- Location: LCCOMB_X13_Y12_N30
\result~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~57_combout\ = (\result~9_combout\ & ((\result~54_combout\) # ((\result~56_combout\ & \result~0_combout\)))) # (!\result~9_combout\ & (((\result~56_combout\ & \result~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~9_combout\,
	datab => \result~54_combout\,
	datac => \result~56_combout\,
	datad => \result~0_combout\,
	combout => \result~57_combout\);

-- Location: LCCOMB_X17_Y13_N12
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\accD[6]~input_o\ & (\Add1~11\ $ (GND))) # (!\accD[6]~input_o\ & ((GND) # (!\Add1~11\)))
-- \Add1~13\ = CARRY((!\Add1~11\) # (!\accD[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \accD[6]~input_o\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X13_Y15_N20
\result~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~58_combout\ = \op[0]~input_o\ $ (((\op[3]~input_o\ & ((\dBus[6]~input_o\) # (\accD[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[6]~input_o\,
	datab => \op[3]~input_o\,
	datac => \accD[6]~input_o\,
	datad => \op[0]~input_o\,
	combout => \result~58_combout\);

-- Location: LCCOMB_X18_Y14_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\dBus[6]~input_o\ $ (\accD[6]~input_o\ $ (\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\dBus[6]~input_o\ & (\accD[6]~input_o\ & !\Add0~11\)) # (!\dBus[6]~input_o\ & ((\accD[6]~input_o\) # (!\Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[6]~input_o\,
	datab => \accD[6]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X13_Y15_N22
\result~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~59_combout\ = (\result~58_combout\ & (((\Add0~12_combout\) # (\op[3]~input_o\)))) # (!\result~58_combout\ & (\Add1~12_combout\ & ((!\op[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \result~58_combout\,
	datac => \Add0~12_combout\,
	datad => \op[3]~input_o\,
	combout => \result~59_combout\);

-- Location: LCCOMB_X13_Y14_N12
\Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (\accD[6]~input_o\ & (!\Add5~11\ & VCC)) # (!\accD[6]~input_o\ & (\Add5~11\ $ (GND)))
-- \Add5~13\ = CARRY((!\accD[6]~input_o\ & !\Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \accD[6]~input_o\,
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X13_Y15_N16
\result~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~60_combout\ = (\result~1_combout\ & (\result~4_combout\)) # (!\result~1_combout\ & ((\result~4_combout\ & (\result~59_combout\)) # (!\result~4_combout\ & ((\Add5~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~1_combout\,
	datab => \result~4_combout\,
	datac => \result~59_combout\,
	datad => \Add5~12_combout\,
	combout => \result~60_combout\);

-- Location: LCCOMB_X13_Y15_N18
\result~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~61_combout\ = (\op[3]~input_o\ & (\dBus[6]~input_o\)) # (!\op[3]~input_o\ & ((\Mult1|auto_generated|mac_out2~DATAOUT6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[3]~input_o\,
	datac => \dBus[6]~input_o\,
	datad => \Mult1|auto_generated|mac_out2~DATAOUT6\,
	combout => \result~61_combout\);

-- Location: LCCOMB_X13_Y15_N4
\result~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~62_combout\ = (\accD[6]~input_o\ & ((\result~61_combout\) # ((!\op[3]~input_o\ & !\op[2]~input_o\)))) # (!\accD[6]~input_o\ & (\op[2]~input_o\ & (\result~61_combout\ $ (\op[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~61_combout\,
	datab => \op[3]~input_o\,
	datac => \accD[6]~input_o\,
	datad => \op[2]~input_o\,
	combout => \result~62_combout\);

-- Location: LCCOMB_X16_Y14_N12
\Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = ((\dBus[6]~input_o\ $ (\accD[6]~input_o\ $ (!\Add4~11\)))) # (GND)
-- \Add4~13\ = CARRY((\dBus[6]~input_o\ & ((\accD[6]~input_o\) # (!\Add4~11\))) # (!\dBus[6]~input_o\ & (\accD[6]~input_o\ & !\Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[6]~input_o\,
	datab => \accD[6]~input_o\,
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X13_Y15_N30
\result~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~63_combout\ = (\result~1_combout\ & ((\result~60_combout\ & (\result~62_combout\)) # (!\result~60_combout\ & ((\Add4~12_combout\))))) # (!\result~1_combout\ & (\result~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~1_combout\,
	datab => \result~60_combout\,
	datac => \result~62_combout\,
	datad => \Add4~12_combout\,
	combout => \result~63_combout\);

-- Location: LCCOMB_X13_Y15_N0
\result~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~64_combout\ = (\dBus[6]~input_o\ & ((\op[3]~input_o\ & ((\op[2]~input_o\) # (!\accD[6]~input_o\))) # (!\op[3]~input_o\ & ((!\op[2]~input_o\))))) # (!\dBus[6]~input_o\ & (\op[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[6]~input_o\,
	datab => \op[3]~input_o\,
	datac => \accD[6]~input_o\,
	datad => \op[2]~input_o\,
	combout => \result~64_combout\);

-- Location: LCCOMB_X13_Y15_N26
\result~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~65_combout\ = (\result~64_combout\ & (((!\op[2]~input_o\) # (!\accD[6]~input_o\)))) # (!\result~64_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT6\ & ((\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT6\,
	datab => \result~64_combout\,
	datac => \accD[6]~input_o\,
	datad => \op[2]~input_o\,
	combout => \result~65_combout\);

-- Location: LCCOMB_X13_Y15_N28
\result~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~66_combout\ = (\result~63_combout\ & ((\result~9_combout\) # ((\result~0_combout\ & \result~65_combout\)))) # (!\result~63_combout\ & (\result~0_combout\ & (\result~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~63_combout\,
	datab => \result~0_combout\,
	datac => \result~65_combout\,
	datad => \result~9_combout\,
	combout => \result~66_combout\);

-- Location: LCCOMB_X14_Y14_N18
\result~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~73_combout\ = (\op[3]~input_o\ & (\accD[7]~input_o\ & ((\dBus[7]~input_o\) # (\op[2]~input_o\)))) # (!\op[3]~input_o\ & (((\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[7]~input_o\,
	datab => \op[3]~input_o\,
	datac => \op[2]~input_o\,
	datad => \accD[7]~input_o\,
	combout => \result~73_combout\);

-- Location: LCCOMB_X19_Y15_N0
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \dBus[7]~input_o\ $ (VCC)
-- \Add2~1\ = CARRY(\dBus[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[7]~input_o\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X19_Y15_N26
\result~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~74_combout\ = (\result~73_combout\ & (!\op[3]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT7\))) # (!\result~73_combout\ & ((\op[3]~input_o\) # ((\Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~73_combout\,
	datab => \op[3]~input_o\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT7\,
	datad => \Add2~0_combout\,
	combout => \result~74_combout\);

-- Location: LCCOMB_X14_Y14_N10
\result~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~67_combout\ = \op[0]~input_o\ $ (((\op[3]~input_o\ & ((\dBus[7]~input_o\) # (\accD[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \op[3]~input_o\,
	datac => \dBus[7]~input_o\,
	datad => \accD[7]~input_o\,
	combout => \result~67_combout\);

-- Location: LCCOMB_X17_Y13_N14
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\accD[7]~input_o\ & (!\Add1~13\)) # (!\accD[7]~input_o\ & (\Add1~13\ & VCC))
-- \Add1~15\ = CARRY((\accD[7]~input_o\ & !\Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accD[7]~input_o\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X18_Y14_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\accD[7]~input_o\ & ((\dBus[7]~input_o\ & (!\Add0~13\)) # (!\dBus[7]~input_o\ & (\Add0~13\ & VCC)))) # (!\accD[7]~input_o\ & ((\dBus[7]~input_o\ & ((\Add0~13\) # (GND))) # (!\dBus[7]~input_o\ & (!\Add0~13\))))
-- \Add0~15\ = CARRY((\accD[7]~input_o\ & (\dBus[7]~input_o\ & !\Add0~13\)) # (!\accD[7]~input_o\ & ((\dBus[7]~input_o\) # (!\Add0~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accD[7]~input_o\,
	datab => \dBus[7]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X14_Y14_N28
\result~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~68_combout\ = (\result~67_combout\ & ((\op[3]~input_o\) # ((\Add0~14_combout\)))) # (!\result~67_combout\ & (!\op[3]~input_o\ & (\Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~67_combout\,
	datab => \op[3]~input_o\,
	datac => \Add1~14_combout\,
	datad => \Add0~14_combout\,
	combout => \result~68_combout\);

-- Location: LCCOMB_X16_Y15_N10
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = \accD[7]~input_o\ $ (VCC)
-- \Add3~1\ = CARRY(\accD[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \accD[7]~input_o\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X16_Y15_N0
\result~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~70_combout\ = (\op[3]~input_o\ & ((\accD[7]~input_o\ & ((\dBus[7]~input_o\))) # (!\accD[7]~input_o\ & (\op[2]~input_o\ & !\dBus[7]~input_o\)))) # (!\op[3]~input_o\ & (\op[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \op[3]~input_o\,
	datac => \accD[7]~input_o\,
	datad => \dBus[7]~input_o\,
	combout => \result~70_combout\);

-- Location: LCCOMB_X16_Y15_N2
\result~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~71_combout\ = (\result~70_combout\ & (((\op[3]~input_o\) # (\Mult1|auto_generated|mac_out2~DATAOUT7\)))) # (!\result~70_combout\ & (\Add3~0_combout\ & (!\op[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \result~70_combout\,
	datac => \op[3]~input_o\,
	datad => \Mult1|auto_generated|mac_out2~DATAOUT7\,
	combout => \result~71_combout\);

-- Location: LCCOMB_X13_Y14_N14
\Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (\accD[7]~input_o\ & ((\Add5~13\) # (GND))) # (!\accD[7]~input_o\ & (!\Add5~13\))
-- \Add5~15\ = CARRY((\accD[7]~input_o\) # (!\Add5~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accD[7]~input_o\,
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: LCCOMB_X16_Y14_N14
\Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (\accD[7]~input_o\ & ((\dBus[7]~input_o\ & (\Add4~13\ & VCC)) # (!\dBus[7]~input_o\ & (!\Add4~13\)))) # (!\accD[7]~input_o\ & ((\dBus[7]~input_o\ & (!\Add4~13\)) # (!\dBus[7]~input_o\ & ((\Add4~13\) # (GND)))))
-- \Add4~15\ = CARRY((\accD[7]~input_o\ & (!\dBus[7]~input_o\ & !\Add4~13\)) # (!\accD[7]~input_o\ & ((!\Add4~13\) # (!\dBus[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accD[7]~input_o\,
	datab => \dBus[7]~input_o\,
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: LCCOMB_X14_Y14_N6
\result~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~69_combout\ = (\result~1_combout\ & (((\result~4_combout\) # (\Add4~14_combout\)))) # (!\result~1_combout\ & (\Add5~14_combout\ & (!\result~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~14_combout\,
	datab => \result~1_combout\,
	datac => \result~4_combout\,
	datad => \Add4~14_combout\,
	combout => \result~69_combout\);

-- Location: LCCOMB_X14_Y14_N0
\result~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~72_combout\ = (\result~4_combout\ & ((\result~69_combout\ & ((\result~71_combout\))) # (!\result~69_combout\ & (\result~68_combout\)))) # (!\result~4_combout\ & (((\result~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~4_combout\,
	datab => \result~68_combout\,
	datac => \result~71_combout\,
	datad => \result~69_combout\,
	combout => \result~72_combout\);

-- Location: LCCOMB_X14_Y14_N20
\result~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~75_combout\ = (\result~74_combout\ & ((\result~0_combout\) # ((\result~72_combout\ & \result~9_combout\)))) # (!\result~74_combout\ & (\result~72_combout\ & ((\result~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~74_combout\,
	datab => \result~72_combout\,
	datac => \result~0_combout\,
	datad => \result~9_combout\,
	combout => \result~75_combout\);

-- Location: IOIBUF_X30_Y0_N1
\dBus[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dBus(8),
	o => \dBus[8]~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\accD[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accD(8),
	o => \accD[8]~input_o\);

-- Location: LCCOMB_X16_Y14_N16
\Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = ((\dBus[8]~input_o\ $ (\accD[8]~input_o\ $ (!\Add4~15\)))) # (GND)
-- \Add4~17\ = CARRY((\dBus[8]~input_o\ & ((\accD[8]~input_o\) # (!\Add4~15\))) # (!\dBus[8]~input_o\ & (\accD[8]~input_o\ & !\Add4~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[8]~input_o\,
	datab => \accD[8]~input_o\,
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~16_combout\,
	cout => \Add4~17\);

-- Location: LCCOMB_X16_Y15_N12
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\accD[8]~input_o\ & (!\Add3~1\)) # (!\accD[8]~input_o\ & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!\accD[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \accD[8]~input_o\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X16_Y12_N22
\result~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~79_combout\ = (\op[3]~input_o\ & (((\op[2]~input_o\)))) # (!\op[3]~input_o\ & ((\op[2]~input_o\ & (\Mult1|auto_generated|mac_out2~DATAOUT8\)) # (!\op[2]~input_o\ & ((\Add3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT8\,
	datab => \op[3]~input_o\,
	datac => \op[2]~input_o\,
	datad => \Add3~2_combout\,
	combout => \result~79_combout\);

-- Location: LCCOMB_X16_Y12_N16
\result~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~80_combout\ = (\op[3]~input_o\ & ((\accD[8]~input_o\ & ((\dBus[8]~input_o\))) # (!\accD[8]~input_o\ & (\result~79_combout\ & !\dBus[8]~input_o\)))) # (!\op[3]~input_o\ & (\result~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~79_combout\,
	datab => \op[3]~input_o\,
	datac => \accD[8]~input_o\,
	datad => \dBus[8]~input_o\,
	combout => \result~80_combout\);

-- Location: LCCOMB_X13_Y14_N16
\Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = (\accD[8]~input_o\ & (!\Add5~15\ & VCC)) # (!\accD[8]~input_o\ & (\Add5~15\ $ (GND)))
-- \Add5~17\ = CARRY((!\accD[8]~input_o\ & !\Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accD[8]~input_o\,
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

-- Location: LCCOMB_X18_Y14_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((\dBus[8]~input_o\ $ (\accD[8]~input_o\ $ (\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((\dBus[8]~input_o\ & (\accD[8]~input_o\ & !\Add0~15\)) # (!\dBus[8]~input_o\ & ((\accD[8]~input_o\) # (!\Add0~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[8]~input_o\,
	datab => \accD[8]~input_o\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X16_Y12_N24
\result~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~76_combout\ = \op[0]~input_o\ $ (((\op[3]~input_o\ & ((\accD[8]~input_o\) # (\dBus[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \op[3]~input_o\,
	datac => \accD[8]~input_o\,
	datad => \dBus[8]~input_o\,
	combout => \result~76_combout\);

-- Location: LCCOMB_X17_Y13_N16
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (\accD[8]~input_o\ & (\Add1~15\ $ (GND))) # (!\accD[8]~input_o\ & ((GND) # (!\Add1~15\)))
-- \Add1~17\ = CARRY((!\Add1~15\) # (!\accD[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \accD[8]~input_o\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X16_Y12_N18
\result~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~77_combout\ = (\result~76_combout\ & ((\Add0~16_combout\) # ((\op[3]~input_o\)))) # (!\result~76_combout\ & (((\Add1~16_combout\ & !\op[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \result~76_combout\,
	datac => \Add1~16_combout\,
	datad => \op[3]~input_o\,
	combout => \result~77_combout\);

-- Location: LCCOMB_X16_Y12_N28
\result~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~78_combout\ = (\result~1_combout\ & (((\result~4_combout\)))) # (!\result~1_combout\ & ((\result~4_combout\ & ((\result~77_combout\))) # (!\result~4_combout\ & (\Add5~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~16_combout\,
	datab => \result~1_combout\,
	datac => \result~4_combout\,
	datad => \result~77_combout\,
	combout => \result~78_combout\);

-- Location: LCCOMB_X16_Y12_N10
\result~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~81_combout\ = (\result~1_combout\ & ((\result~78_combout\ & ((\result~80_combout\))) # (!\result~78_combout\ & (\Add4~16_combout\)))) # (!\result~1_combout\ & (((\result~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~16_combout\,
	datab => \result~80_combout\,
	datac => \result~1_combout\,
	datad => \result~78_combout\,
	combout => \result~81_combout\);

-- Location: LCCOMB_X16_Y12_N4
\result~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~82_combout\ = (\op[3]~input_o\ & (\accD[8]~input_o\ & ((\dBus[8]~input_o\) # (\op[2]~input_o\)))) # (!\op[3]~input_o\ & (((\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[8]~input_o\,
	datab => \accD[8]~input_o\,
	datac => \op[2]~input_o\,
	datad => \op[3]~input_o\,
	combout => \result~82_combout\);

-- Location: LCCOMB_X19_Y15_N2
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\dBus[8]~input_o\ & (!\Add2~1\)) # (!\dBus[8]~input_o\ & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!\dBus[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[8]~input_o\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X19_Y15_N28
\result~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~83_combout\ = (\result~82_combout\ & (((!\op[3]~input_o\ & \Mult0|auto_generated|mac_out2~DATAOUT8\)))) # (!\result~82_combout\ & ((\Add2~2_combout\) # ((\op[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~82_combout\,
	datab => \Add2~2_combout\,
	datac => \op[3]~input_o\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT8\,
	combout => \result~83_combout\);

-- Location: LCCOMB_X16_Y12_N14
\result~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~84_combout\ = (\result~81_combout\ & ((\result~9_combout\) # ((\result~0_combout\ & \result~83_combout\)))) # (!\result~81_combout\ & (\result~0_combout\ & ((\result~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~81_combout\,
	datab => \result~0_combout\,
	datac => \result~9_combout\,
	datad => \result~83_combout\,
	combout => \result~84_combout\);

-- Location: IOIBUF_X5_Y24_N8
\accD[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accD(9),
	o => \accD[9]~input_o\);

-- Location: LCCOMB_X13_Y14_N18
\Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = (\accD[9]~input_o\ & ((\Add5~17\) # (GND))) # (!\accD[9]~input_o\ & (!\Add5~17\))
-- \Add5~19\ = CARRY((\accD[9]~input_o\) # (!\Add5~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \accD[9]~input_o\,
	datad => VCC,
	cin => \Add5~17\,
	combout => \Add5~18_combout\,
	cout => \Add5~19\);

-- Location: IOIBUF_X28_Y24_N8
\dBus[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dBus(9),
	o => \dBus[9]~input_o\);

-- Location: LCCOMB_X16_Y14_N18
\Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = (\accD[9]~input_o\ & ((\dBus[9]~input_o\ & (\Add4~17\ & VCC)) # (!\dBus[9]~input_o\ & (!\Add4~17\)))) # (!\accD[9]~input_o\ & ((\dBus[9]~input_o\ & (!\Add4~17\)) # (!\dBus[9]~input_o\ & ((\Add4~17\) # (GND)))))
-- \Add4~19\ = CARRY((\accD[9]~input_o\ & (!\dBus[9]~input_o\ & !\Add4~17\)) # (!\accD[9]~input_o\ & ((!\Add4~17\) # (!\dBus[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accD[9]~input_o\,
	datab => \dBus[9]~input_o\,
	datad => VCC,
	cin => \Add4~17\,
	combout => \Add4~18_combout\,
	cout => \Add4~19\);

-- Location: LCCOMB_X17_Y14_N20
\result~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~87_combout\ = (\result~4_combout\ & (\result~1_combout\)) # (!\result~4_combout\ & ((\result~1_combout\ & ((\Add4~18_combout\))) # (!\result~1_combout\ & (\Add5~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~4_combout\,
	datab => \result~1_combout\,
	datac => \Add5~18_combout\,
	datad => \Add4~18_combout\,
	combout => \result~87_combout\);

-- Location: LCCOMB_X16_Y15_N14
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (\accD[9]~input_o\ & (\Add3~3\ $ (GND))) # (!\accD[9]~input_o\ & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((\accD[9]~input_o\ & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accD[9]~input_o\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X16_Y15_N28
\result~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~88_combout\ = (\op[2]~input_o\ & (((\op[3]~input_o\) # (\Mult1|auto_generated|mac_out2~DATAOUT9\)))) # (!\op[2]~input_o\ & (\Add3~4_combout\ & (!\op[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \Add3~4_combout\,
	datac => \op[3]~input_o\,
	datad => \Mult1|auto_generated|mac_out2~DATAOUT9\,
	combout => \result~88_combout\);

-- Location: LCCOMB_X17_Y14_N30
\result~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~89_combout\ = (\op[3]~input_o\ & ((\dBus[9]~input_o\ & ((\accD[9]~input_o\))) # (!\dBus[9]~input_o\ & (\result~88_combout\ & !\accD[9]~input_o\)))) # (!\op[3]~input_o\ & (\result~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~88_combout\,
	datab => \op[3]~input_o\,
	datac => \dBus[9]~input_o\,
	datad => \accD[9]~input_o\,
	combout => \result~89_combout\);

-- Location: LCCOMB_X17_Y13_N18
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\accD[9]~input_o\ & (!\Add1~17\)) # (!\accD[9]~input_o\ & (\Add1~17\ & VCC))
-- \Add1~19\ = CARRY((\accD[9]~input_o\ & !\Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accD[9]~input_o\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X17_Y14_N8
\result~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~85_combout\ = \op[0]~input_o\ $ (((\op[3]~input_o\ & ((\dBus[9]~input_o\) # (\accD[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[9]~input_o\,
	datab => \accD[9]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[3]~input_o\,
	combout => \result~85_combout\);

-- Location: LCCOMB_X18_Y14_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\accD[9]~input_o\ & ((\dBus[9]~input_o\ & (!\Add0~17\)) # (!\dBus[9]~input_o\ & (\Add0~17\ & VCC)))) # (!\accD[9]~input_o\ & ((\dBus[9]~input_o\ & ((\Add0~17\) # (GND))) # (!\dBus[9]~input_o\ & (!\Add0~17\))))
-- \Add0~19\ = CARRY((\accD[9]~input_o\ & (\dBus[9]~input_o\ & !\Add0~17\)) # (!\accD[9]~input_o\ & ((\dBus[9]~input_o\) # (!\Add0~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accD[9]~input_o\,
	datab => \dBus[9]~input_o\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X17_Y14_N18
\result~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~86_combout\ = (\op[3]~input_o\ & (((\result~85_combout\)))) # (!\op[3]~input_o\ & ((\result~85_combout\ & ((\Add0~18_combout\))) # (!\result~85_combout\ & (\Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~18_combout\,
	datab => \op[3]~input_o\,
	datac => \result~85_combout\,
	datad => \Add0~18_combout\,
	combout => \result~86_combout\);

-- Location: LCCOMB_X17_Y14_N0
\result~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~90_combout\ = (\result~4_combout\ & ((\result~87_combout\ & (\result~89_combout\)) # (!\result~87_combout\ & ((\result~86_combout\))))) # (!\result~4_combout\ & (\result~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~4_combout\,
	datab => \result~87_combout\,
	datac => \result~89_combout\,
	datad => \result~86_combout\,
	combout => \result~90_combout\);

-- Location: LCCOMB_X19_Y15_N4
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\dBus[9]~input_o\ & (\Add2~3\ $ (GND))) # (!\dBus[9]~input_o\ & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((\dBus[9]~input_o\ & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[9]~input_o\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X17_Y14_N10
\result~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~91_combout\ = (\op[3]~input_o\ & (\accD[9]~input_o\ & ((\op[2]~input_o\) # (\dBus[9]~input_o\)))) # (!\op[3]~input_o\ & (\op[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \accD[9]~input_o\,
	datac => \dBus[9]~input_o\,
	datad => \op[3]~input_o\,
	combout => \result~91_combout\);

-- Location: LCCOMB_X19_Y15_N30
\result~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~92_combout\ = (\op[3]~input_o\ & (((!\result~91_combout\)))) # (!\op[3]~input_o\ & ((\result~91_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT9\))) # (!\result~91_combout\ & (\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[3]~input_o\,
	datab => \Add2~4_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT9\,
	datad => \result~91_combout\,
	combout => \result~92_combout\);

-- Location: LCCOMB_X14_Y14_N14
\result~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~93_combout\ = (\result~90_combout\ & ((\result~9_combout\) # ((\result~0_combout\ & \result~92_combout\)))) # (!\result~90_combout\ & (((\result~0_combout\ & \result~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~90_combout\,
	datab => \result~9_combout\,
	datac => \result~0_combout\,
	datad => \result~92_combout\,
	combout => \result~93_combout\);

-- Location: IOIBUF_X0_Y11_N15
\accD[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accD(10),
	o => \accD[10]~input_o\);

-- Location: IOIBUF_X34_Y9_N15
\dBus[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dBus(10),
	o => \dBus[10]~input_o\);

-- Location: LCCOMB_X18_Y15_N20
\result~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~100_combout\ = (\op[3]~input_o\ & (\accD[10]~input_o\ & ((\dBus[10]~input_o\) # (\op[2]~input_o\)))) # (!\op[3]~input_o\ & (((\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[3]~input_o\,
	datab => \accD[10]~input_o\,
	datac => \dBus[10]~input_o\,
	datad => \op[2]~input_o\,
	combout => \result~100_combout\);

-- Location: LCCOMB_X19_Y15_N6
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\dBus[10]~input_o\ & (!\Add2~5\)) # (!\dBus[10]~input_o\ & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!\dBus[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dBus[10]~input_o\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X18_Y15_N30
\result~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~101_combout\ = (\op[3]~input_o\ & (!\result~100_combout\)) # (!\op[3]~input_o\ & ((\result~100_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT10\)) # (!\result~100_combout\ & ((\Add2~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[3]~input_o\,
	datab => \result~100_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT10\,
	datad => \Add2~6_combout\,
	combout => \result~101_combout\);

-- Location: LCCOMB_X16_Y14_N20
\Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~20_combout\ = ((\dBus[10]~input_o\ $ (\accD[10]~input_o\ $ (!\Add4~19\)))) # (GND)
-- \Add4~21\ = CARRY((\dBus[10]~input_o\ & ((\accD[10]~input_o\) # (!\Add4~19\))) # (!\dBus[10]~input_o\ & (\accD[10]~input_o\ & !\Add4~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[10]~input_o\,
	datab => \accD[10]~input_o\,
	datad => VCC,
	cin => \Add4~19\,
	combout => \Add4~20_combout\,
	cout => \Add4~21\);

-- Location: LCCOMB_X17_Y13_N20
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (\accD[10]~input_o\ & (\Add1~19\ $ (GND))) # (!\accD[10]~input_o\ & ((GND) # (!\Add1~19\)))
-- \Add1~21\ = CARRY((!\Add1~19\) # (!\accD[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accD[10]~input_o\,
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X18_Y15_N4
\result~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~94_combout\ = \op[0]~input_o\ $ (((\op[3]~input_o\ & ((\accD[10]~input_o\) # (\dBus[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[3]~input_o\,
	datab => \accD[10]~input_o\,
	datac => \dBus[10]~input_o\,
	datad => \op[0]~input_o\,
	combout => \result~94_combout\);

-- Location: LCCOMB_X18_Y14_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((\accD[10]~input_o\ $ (\dBus[10]~input_o\ $ (\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((\accD[10]~input_o\ & ((!\Add0~19\) # (!\dBus[10]~input_o\))) # (!\accD[10]~input_o\ & (!\dBus[10]~input_o\ & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accD[10]~input_o\,
	datab => \dBus[10]~input_o\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X18_Y15_N22
\result~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~95_combout\ = (\op[3]~input_o\ & (((\result~94_combout\)))) # (!\op[3]~input_o\ & ((\result~94_combout\ & ((\Add0~20_combout\))) # (!\result~94_combout\ & (\Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[3]~input_o\,
	datab => \Add1~20_combout\,
	datac => \result~94_combout\,
	datad => \Add0~20_combout\,
	combout => \result~95_combout\);

-- Location: LCCOMB_X13_Y14_N20
\Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = (\accD[10]~input_o\ & (!\Add5~19\ & VCC)) # (!\accD[10]~input_o\ & (\Add5~19\ $ (GND)))
-- \Add5~21\ = CARRY((!\accD[10]~input_o\ & !\Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \accD[10]~input_o\,
	datad => VCC,
	cin => \Add5~19\,
	combout => \Add5~20_combout\,
	cout => \Add5~21\);

-- Location: LCCOMB_X17_Y15_N26
\result~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~96_combout\ = (\result~1_combout\ & (((\result~4_combout\)))) # (!\result~1_combout\ & ((\result~4_combout\ & (\result~95_combout\)) # (!\result~4_combout\ & ((\Add5~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~1_combout\,
	datab => \result~95_combout\,
	datac => \Add5~20_combout\,
	datad => \result~4_combout\,
	combout => \result~96_combout\);

-- Location: LCCOMB_X16_Y15_N16
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\accD[10]~input_o\ & (!\Add3~5\)) # (!\accD[10]~input_o\ & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!\accD[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \accD[10]~input_o\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X18_Y15_N16
\result~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~97_combout\ = (\op[3]~input_o\ & (((\op[2]~input_o\)))) # (!\op[3]~input_o\ & ((\op[2]~input_o\ & (\Mult1|auto_generated|mac_out2~DATAOUT10\)) # (!\op[2]~input_o\ & ((\Add3~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[3]~input_o\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT10\,
	datac => \Add3~6_combout\,
	datad => \op[2]~input_o\,
	combout => \result~97_combout\);

-- Location: LCCOMB_X18_Y15_N26
\result~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~98_combout\ = (\op[3]~input_o\ & ((\accD[10]~input_o\ & (\dBus[10]~input_o\)) # (!\accD[10]~input_o\ & (!\dBus[10]~input_o\ & \result~97_combout\)))) # (!\op[3]~input_o\ & (((\result~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[3]~input_o\,
	datab => \accD[10]~input_o\,
	datac => \dBus[10]~input_o\,
	datad => \result~97_combout\,
	combout => \result~98_combout\);

-- Location: LCCOMB_X17_Y15_N28
\result~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~99_combout\ = (\result~1_combout\ & ((\result~96_combout\ & ((\result~98_combout\))) # (!\result~96_combout\ & (\Add4~20_combout\)))) # (!\result~1_combout\ & (((\result~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~1_combout\,
	datab => \Add4~20_combout\,
	datac => \result~96_combout\,
	datad => \result~98_combout\,
	combout => \result~99_combout\);

-- Location: LCCOMB_X17_Y15_N14
\result~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~102_combout\ = (\result~101_combout\ & ((\result~0_combout\) # ((\result~9_combout\ & \result~99_combout\)))) # (!\result~101_combout\ & (((\result~9_combout\ & \result~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~101_combout\,
	datab => \result~0_combout\,
	datac => \result~9_combout\,
	datad => \result~99_combout\,
	combout => \result~102_combout\);

-- Location: IOIBUF_X0_Y11_N22
\dBus[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dBus(11),
	o => \dBus[11]~input_o\);

-- Location: LCCOMB_X19_Y15_N8
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\dBus[11]~input_o\ & (\Add2~7\ $ (GND))) # (!\dBus[11]~input_o\ & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((\dBus[11]~input_o\ & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dBus[11]~input_o\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: IOIBUF_X7_Y24_N8
\accD[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accD(11),
	o => \accD[11]~input_o\);

-- Location: LCCOMB_X19_Y15_N24
\result~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~109_combout\ = (\op[3]~input_o\ & (\accD[11]~input_o\ & ((\op[2]~input_o\) # (\dBus[11]~input_o\)))) # (!\op[3]~input_o\ & (\op[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \dBus[11]~input_o\,
	datac => \op[3]~input_o\,
	datad => \accD[11]~input_o\,
	combout => \result~109_combout\);

-- Location: LCCOMB_X19_Y15_N18
\result~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~110_combout\ = (\op[3]~input_o\ & (((!\result~109_combout\)))) # (!\op[3]~input_o\ & ((\result~109_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT11\))) # (!\result~109_combout\ & (\Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[3]~input_o\,
	datab => \Add2~8_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT11\,
	datad => \result~109_combout\,
	combout => \result~110_combout\);

-- Location: LCCOMB_X16_Y15_N18
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (\accD[11]~input_o\ & (\Add3~7\ $ (GND))) # (!\accD[11]~input_o\ & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((\accD[11]~input_o\ & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accD[11]~input_o\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X16_Y15_N30
\result~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~106_combout\ = (\op[2]~input_o\ & ((\Mult1|auto_generated|mac_out2~DATAOUT11\) # ((\op[3]~input_o\)))) # (!\op[2]~input_o\ & (((\Add3~8_combout\ & !\op[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT11\,
	datab => \Add3~8_combout\,
	datac => \op[2]~input_o\,
	datad => \op[3]~input_o\,
	combout => \result~106_combout\);

-- Location: LCCOMB_X17_Y14_N2
\result~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~107_combout\ = (\op[3]~input_o\ & ((\dBus[11]~input_o\ & ((\accD[11]~input_o\))) # (!\dBus[11]~input_o\ & (\result~106_combout\ & !\accD[11]~input_o\)))) # (!\op[3]~input_o\ & (\result~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~106_combout\,
	datab => \dBus[11]~input_o\,
	datac => \op[3]~input_o\,
	datad => \accD[11]~input_o\,
	combout => \result~107_combout\);

-- Location: LCCOMB_X17_Y14_N12
\result~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~103_combout\ = \op[0]~input_o\ $ (((\op[3]~input_o\ & ((\dBus[11]~input_o\) # (\accD[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[3]~input_o\,
	datab => \dBus[11]~input_o\,
	datac => \op[0]~input_o\,
	datad => \accD[11]~input_o\,
	combout => \result~103_combout\);

-- Location: LCCOMB_X17_Y13_N22
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (\accD[11]~input_o\ & (!\Add1~21\)) # (!\accD[11]~input_o\ & (\Add1~21\ & VCC))
-- \Add1~23\ = CARRY((\accD[11]~input_o\ & !\Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \accD[11]~input_o\,
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X18_Y14_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\accD[11]~input_o\ & ((\dBus[11]~input_o\ & (!\Add0~21\)) # (!\dBus[11]~input_o\ & (\Add0~21\ & VCC)))) # (!\accD[11]~input_o\ & ((\dBus[11]~input_o\ & ((\Add0~21\) # (GND))) # (!\dBus[11]~input_o\ & (!\Add0~21\))))
-- \Add0~23\ = CARRY((\accD[11]~input_o\ & (\dBus[11]~input_o\ & !\Add0~21\)) # (!\accD[11]~input_o\ & ((\dBus[11]~input_o\) # (!\Add0~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accD[11]~input_o\,
	datab => \dBus[11]~input_o\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X17_Y14_N22
\result~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~104_combout\ = (\result~103_combout\ & (((\op[3]~input_o\) # (\Add0~22_combout\)))) # (!\result~103_combout\ & (\Add1~22_combout\ & (!\op[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~103_combout\,
	datab => \Add1~22_combout\,
	datac => \op[3]~input_o\,
	datad => \Add0~22_combout\,
	combout => \result~104_combout\);

-- Location: LCCOMB_X13_Y14_N22
\Add5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~22_combout\ = (\accD[11]~input_o\ & ((\Add5~21\) # (GND))) # (!\accD[11]~input_o\ & (!\Add5~21\))
-- \Add5~23\ = CARRY((\accD[11]~input_o\) # (!\Add5~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \accD[11]~input_o\,
	datad => VCC,
	cin => \Add5~21\,
	combout => \Add5~22_combout\,
	cout => \Add5~23\);

-- Location: LCCOMB_X16_Y14_N22
\Add4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~22_combout\ = (\accD[11]~input_o\ & ((\dBus[11]~input_o\ & (\Add4~21\ & VCC)) # (!\dBus[11]~input_o\ & (!\Add4~21\)))) # (!\accD[11]~input_o\ & ((\dBus[11]~input_o\ & (!\Add4~21\)) # (!\dBus[11]~input_o\ & ((\Add4~21\) # (GND)))))
-- \Add4~23\ = CARRY((\accD[11]~input_o\ & (!\dBus[11]~input_o\ & !\Add4~21\)) # (!\accD[11]~input_o\ & ((!\Add4~21\) # (!\dBus[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accD[11]~input_o\,
	datab => \dBus[11]~input_o\,
	datad => VCC,
	cin => \Add4~21\,
	combout => \Add4~22_combout\,
	cout => \Add4~23\);

-- Location: LCCOMB_X17_Y14_N16
\result~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~105_combout\ = (\result~4_combout\ & (\result~1_combout\)) # (!\result~4_combout\ & ((\result~1_combout\ & ((\Add4~22_combout\))) # (!\result~1_combout\ & (\Add5~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~4_combout\,
	datab => \result~1_combout\,
	datac => \Add5~22_combout\,
	datad => \Add4~22_combout\,
	combout => \result~105_combout\);

-- Location: LCCOMB_X17_Y14_N4
\result~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~108_combout\ = (\result~4_combout\ & ((\result~105_combout\ & (\result~107_combout\)) # (!\result~105_combout\ & ((\result~104_combout\))))) # (!\result~4_combout\ & (((\result~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~4_combout\,
	datab => \result~107_combout\,
	datac => \result~104_combout\,
	datad => \result~105_combout\,
	combout => \result~108_combout\);

-- Location: LCCOMB_X17_Y16_N14
\result~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~111_combout\ = (\result~9_combout\ & ((\result~108_combout\) # ((\result~0_combout\ & \result~110_combout\)))) # (!\result~9_combout\ & (\result~0_combout\ & (\result~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~9_combout\,
	datab => \result~0_combout\,
	datac => \result~110_combout\,
	datad => \result~108_combout\,
	combout => \result~111_combout\);

-- Location: IOIBUF_X0_Y21_N8
\dBus[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dBus(12),
	o => \dBus[12]~input_o\);

-- Location: IOIBUF_X34_Y18_N1
\accD[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accD(12),
	o => \accD[12]~input_o\);

-- Location: LCCOMB_X16_Y14_N24
\Add4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~24_combout\ = ((\dBus[12]~input_o\ $ (\accD[12]~input_o\ $ (!\Add4~23\)))) # (GND)
-- \Add4~25\ = CARRY((\dBus[12]~input_o\ & ((\accD[12]~input_o\) # (!\Add4~23\))) # (!\dBus[12]~input_o\ & (\accD[12]~input_o\ & !\Add4~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[12]~input_o\,
	datab => \accD[12]~input_o\,
	datad => VCC,
	cin => \Add4~23\,
	combout => \Add4~24_combout\,
	cout => \Add4~25\);

-- Location: LCCOMB_X16_Y15_N20
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\accD[12]~input_o\ & (!\Add3~9\)) # (!\accD[12]~input_o\ & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!\accD[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \accD[12]~input_o\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X16_Y12_N30
\result~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~115_combout\ = (\op[3]~input_o\ & (((\op[2]~input_o\)))) # (!\op[3]~input_o\ & ((\op[2]~input_o\ & ((\Mult1|auto_generated|mac_out2~DATAOUT12\))) # (!\op[2]~input_o\ & (\Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[3]~input_o\,
	datab => \Add3~10_combout\,
	datac => \op[2]~input_o\,
	datad => \Mult1|auto_generated|mac_out2~DATAOUT12\,
	combout => \result~115_combout\);

-- Location: LCCOMB_X16_Y12_N8
\result~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~116_combout\ = (\op[3]~input_o\ & ((\accD[12]~input_o\ & ((\dBus[12]~input_o\))) # (!\accD[12]~input_o\ & (\result~115_combout\ & !\dBus[12]~input_o\)))) # (!\op[3]~input_o\ & (\result~115_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~115_combout\,
	datab => \op[3]~input_o\,
	datac => \accD[12]~input_o\,
	datad => \dBus[12]~input_o\,
	combout => \result~116_combout\);

-- Location: LCCOMB_X13_Y14_N24
\Add5~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~24_combout\ = (\accD[12]~input_o\ & (!\Add5~23\ & VCC)) # (!\accD[12]~input_o\ & (\Add5~23\ $ (GND)))
-- \Add5~25\ = CARRY((!\accD[12]~input_o\ & !\Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \accD[12]~input_o\,
	datad => VCC,
	cin => \Add5~23\,
	combout => \Add5~24_combout\,
	cout => \Add5~25\);

-- Location: LCCOMB_X17_Y13_N24
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (\accD[12]~input_o\ & (\Add1~23\ $ (GND))) # (!\accD[12]~input_o\ & ((GND) # (!\Add1~23\)))
-- \Add1~25\ = CARRY((!\Add1~23\) # (!\accD[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \accD[12]~input_o\,
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X18_Y14_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((\dBus[12]~input_o\ $ (\accD[12]~input_o\ $ (\Add0~23\)))) # (GND)
-- \Add0~25\ = CARRY((\dBus[12]~input_o\ & (\accD[12]~input_o\ & !\Add0~23\)) # (!\dBus[12]~input_o\ & ((\accD[12]~input_o\) # (!\Add0~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[12]~input_o\,
	datab => \accD[12]~input_o\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X16_Y12_N0
\result~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~112_combout\ = \op[0]~input_o\ $ (((\op[3]~input_o\ & ((\accD[12]~input_o\) # (\dBus[12]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \op[3]~input_o\,
	datac => \accD[12]~input_o\,
	datad => \dBus[12]~input_o\,
	combout => \result~112_combout\);

-- Location: LCCOMB_X16_Y12_N2
\result~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~113_combout\ = (\op[3]~input_o\ & (((\result~112_combout\)))) # (!\op[3]~input_o\ & ((\result~112_combout\ & ((\Add0~24_combout\))) # (!\result~112_combout\ & (\Add1~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~24_combout\,
	datab => \op[3]~input_o\,
	datac => \Add0~24_combout\,
	datad => \result~112_combout\,
	combout => \result~113_combout\);

-- Location: LCCOMB_X16_Y12_N20
\result~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~114_combout\ = (\result~1_combout\ & (((\result~4_combout\)))) # (!\result~1_combout\ & ((\result~4_combout\ & ((\result~113_combout\))) # (!\result~4_combout\ & (\Add5~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~24_combout\,
	datab => \result~1_combout\,
	datac => \result~4_combout\,
	datad => \result~113_combout\,
	combout => \result~114_combout\);

-- Location: LCCOMB_X16_Y12_N26
\result~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~117_combout\ = (\result~1_combout\ & ((\result~114_combout\ & ((\result~116_combout\))) # (!\result~114_combout\ & (\Add4~24_combout\)))) # (!\result~1_combout\ & (((\result~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~24_combout\,
	datab => \result~1_combout\,
	datac => \result~116_combout\,
	datad => \result~114_combout\,
	combout => \result~117_combout\);

-- Location: LCCOMB_X16_Y12_N12
\result~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~118_combout\ = (\op[3]~input_o\ & (\accD[12]~input_o\ & ((\op[2]~input_o\) # (\dBus[12]~input_o\)))) # (!\op[3]~input_o\ & (\op[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \op[3]~input_o\,
	datac => \accD[12]~input_o\,
	datad => \dBus[12]~input_o\,
	combout => \result~118_combout\);

-- Location: LCCOMB_X19_Y15_N10
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\dBus[12]~input_o\ & (!\Add2~9\)) # (!\dBus[12]~input_o\ & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!\dBus[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[12]~input_o\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X19_Y15_N20
\result~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~119_combout\ = (\result~118_combout\ & (!\op[3]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT12\))) # (!\result~118_combout\ & ((\op[3]~input_o\) # ((\Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~118_combout\,
	datab => \op[3]~input_o\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT12\,
	datad => \Add2~10_combout\,
	combout => \result~119_combout\);

-- Location: LCCOMB_X16_Y12_N6
\result~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~120_combout\ = (\result~117_combout\ & ((\result~9_combout\) # ((\result~0_combout\ & \result~119_combout\)))) # (!\result~117_combout\ & (\result~0_combout\ & ((\result~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~117_combout\,
	datab => \result~0_combout\,
	datac => \result~9_combout\,
	datad => \result~119_combout\,
	combout => \result~120_combout\);

-- Location: IOIBUF_X13_Y24_N22
\accD[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accD(13),
	o => \accD[13]~input_o\);

-- Location: LCCOMB_X16_Y15_N22
\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (\accD[13]~input_o\ & (\Add3~11\ $ (GND))) # (!\accD[13]~input_o\ & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((\accD[13]~input_o\ & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accD[13]~input_o\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X16_Y15_N8
\result~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~124_combout\ = (\op[3]~input_o\ & (((\op[2]~input_o\)))) # (!\op[3]~input_o\ & ((\op[2]~input_o\ & ((\Mult1|auto_generated|mac_out2~DATAOUT13\))) # (!\op[2]~input_o\ & (\Add3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datab => \op[3]~input_o\,
	datac => \op[2]~input_o\,
	datad => \Mult1|auto_generated|mac_out2~DATAOUT13\,
	combout => \result~124_combout\);

-- Location: IOIBUF_X34_Y17_N22
\dBus[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dBus(13),
	o => \dBus[13]~input_o\);

-- Location: LCCOMB_X17_Y14_N28
\result~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~125_combout\ = (\op[3]~input_o\ & ((\accD[13]~input_o\ & ((\dBus[13]~input_o\))) # (!\accD[13]~input_o\ & (\result~124_combout\ & !\dBus[13]~input_o\)))) # (!\op[3]~input_o\ & (((\result~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \accD[13]~input_o\,
	datab => \op[3]~input_o\,
	datac => \result~124_combout\,
	datad => \dBus[13]~input_o\,
	combout => \result~125_combout\);

-- Location: LCCOMB_X13_Y14_N26
\Add5~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~26_combout\ = (\accD[13]~input_o\ & ((\Add5~25\) # (GND))) # (!\accD[13]~input_o\ & (!\Add5~25\))
-- \Add5~27\ = CARRY((\accD[13]~input_o\) # (!\Add5~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accD[13]~input_o\,
	datad => VCC,
	cin => \Add5~25\,
	combout => \Add5~26_combout\,
	cout => \Add5~27\);

-- Location: LCCOMB_X16_Y14_N26
\Add4~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~26_combout\ = (\dBus[13]~input_o\ & ((\accD[13]~input_o\ & (\Add4~25\ & VCC)) # (!\accD[13]~input_o\ & (!\Add4~25\)))) # (!\dBus[13]~input_o\ & ((\accD[13]~input_o\ & (!\Add4~25\)) # (!\accD[13]~input_o\ & ((\Add4~25\) # (GND)))))
-- \Add4~27\ = CARRY((\dBus[13]~input_o\ & (!\accD[13]~input_o\ & !\Add4~25\)) # (!\dBus[13]~input_o\ & ((!\Add4~25\) # (!\accD[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[13]~input_o\,
	datab => \accD[13]~input_o\,
	datad => VCC,
	cin => \Add4~25\,
	combout => \Add4~26_combout\,
	cout => \Add4~27\);

-- Location: LCCOMB_X17_Y14_N26
\result~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~123_combout\ = (\result~1_combout\ & (((\Add4~26_combout\) # (\result~4_combout\)))) # (!\result~1_combout\ & (\Add5~26_combout\ & ((!\result~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~26_combout\,
	datab => \result~1_combout\,
	datac => \Add4~26_combout\,
	datad => \result~4_combout\,
	combout => \result~123_combout\);

-- Location: LCCOMB_X17_Y13_N26
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\accD[13]~input_o\ & (!\Add1~25\)) # (!\accD[13]~input_o\ & (\Add1~25\ & VCC))
-- \Add1~27\ = CARRY((\accD[13]~input_o\ & !\Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accD[13]~input_o\,
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X17_Y14_N14
\result~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~121_combout\ = \op[0]~input_o\ $ (((\op[3]~input_o\ & ((\accD[13]~input_o\) # (\dBus[13]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \accD[13]~input_o\,
	datab => \op[3]~input_o\,
	datac => \op[0]~input_o\,
	datad => \dBus[13]~input_o\,
	combout => \result~121_combout\);

-- Location: LCCOMB_X18_Y14_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\accD[13]~input_o\ & ((\dBus[13]~input_o\ & (!\Add0~25\)) # (!\dBus[13]~input_o\ & (\Add0~25\ & VCC)))) # (!\accD[13]~input_o\ & ((\dBus[13]~input_o\ & ((\Add0~25\) # (GND))) # (!\dBus[13]~input_o\ & (!\Add0~25\))))
-- \Add0~27\ = CARRY((\accD[13]~input_o\ & (\dBus[13]~input_o\ & !\Add0~25\)) # (!\accD[13]~input_o\ & ((\dBus[13]~input_o\) # (!\Add0~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accD[13]~input_o\,
	datab => \dBus[13]~input_o\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X17_Y14_N24
\result~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~122_combout\ = (\op[3]~input_o\ & (((\result~121_combout\)))) # (!\op[3]~input_o\ & ((\result~121_combout\ & ((\Add0~26_combout\))) # (!\result~121_combout\ & (\Add1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~26_combout\,
	datab => \op[3]~input_o\,
	datac => \result~121_combout\,
	datad => \Add0~26_combout\,
	combout => \result~122_combout\);

-- Location: LCCOMB_X17_Y14_N6
\result~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~126_combout\ = (\result~4_combout\ & ((\result~123_combout\ & (\result~125_combout\)) # (!\result~123_combout\ & ((\result~122_combout\))))) # (!\result~4_combout\ & (((\result~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~4_combout\,
	datab => \result~125_combout\,
	datac => \result~123_combout\,
	datad => \result~122_combout\,
	combout => \result~126_combout\);

-- Location: LCCOMB_X19_Y15_N12
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\dBus[13]~input_o\ & (\Add2~11\ $ (GND))) # (!\dBus[13]~input_o\ & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((\dBus[13]~input_o\ & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dBus[13]~input_o\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X17_Y16_N0
\result~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~127_combout\ = (\op[3]~input_o\ & (\accD[13]~input_o\ & ((\op[2]~input_o\) # (\dBus[13]~input_o\)))) # (!\op[3]~input_o\ & (\op[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \op[3]~input_o\,
	datac => \dBus[13]~input_o\,
	datad => \accD[13]~input_o\,
	combout => \result~127_combout\);

-- Location: LCCOMB_X17_Y16_N18
\result~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~128_combout\ = (\op[3]~input_o\ & (((!\result~127_combout\)))) # (!\op[3]~input_o\ & ((\result~127_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT13\))) # (!\result~127_combout\ & (\Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \op[3]~input_o\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => \result~127_combout\,
	combout => \result~128_combout\);

-- Location: LCCOMB_X17_Y16_N12
\result~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~129_combout\ = (\result~9_combout\ & ((\result~126_combout\) # ((\result~0_combout\ & \result~128_combout\)))) # (!\result~9_combout\ & (\result~0_combout\ & ((\result~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~9_combout\,
	datab => \result~0_combout\,
	datac => \result~126_combout\,
	datad => \result~128_combout\,
	combout => \result~129_combout\);

-- Location: IOIBUF_X16_Y0_N8
\accD[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accD(14),
	o => \accD[14]~input_o\);

-- Location: LCCOMB_X13_Y14_N28
\Add5~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~28_combout\ = (\accD[14]~input_o\ & (!\Add5~27\ & VCC)) # (!\accD[14]~input_o\ & (\Add5~27\ $ (GND)))
-- \Add5~29\ = CARRY((!\accD[14]~input_o\ & !\Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \accD[14]~input_o\,
	datad => VCC,
	cin => \Add5~27\,
	combout => \Add5~28_combout\,
	cout => \Add5~29\);

-- Location: IOIBUF_X5_Y0_N22
\dBus[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dBus(14),
	o => \dBus[14]~input_o\);

-- Location: LCCOMB_X17_Y11_N2
\result~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~130_combout\ = \op[0]~input_o\ $ (((\op[3]~input_o\ & ((\dBus[14]~input_o\) # (\accD[14]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[14]~input_o\,
	datab => \accD[14]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[3]~input_o\,
	combout => \result~130_combout\);

-- Location: LCCOMB_X17_Y13_N28
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (\accD[14]~input_o\ & (\Add1~27\ $ (GND))) # (!\accD[14]~input_o\ & ((GND) # (!\Add1~27\)))
-- \Add1~29\ = CARRY((!\Add1~27\) # (!\accD[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accD[14]~input_o\,
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X18_Y14_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = ((\dBus[14]~input_o\ $ (\accD[14]~input_o\ $ (\Add0~27\)))) # (GND)
-- \Add0~29\ = CARRY((\dBus[14]~input_o\ & (\accD[14]~input_o\ & !\Add0~27\)) # (!\dBus[14]~input_o\ & ((\accD[14]~input_o\) # (!\Add0~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[14]~input_o\,
	datab => \accD[14]~input_o\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X17_Y11_N28
\result~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~131_combout\ = (\op[3]~input_o\ & (\result~130_combout\)) # (!\op[3]~input_o\ & ((\result~130_combout\ & ((\Add0~28_combout\))) # (!\result~130_combout\ & (\Add1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[3]~input_o\,
	datab => \result~130_combout\,
	datac => \Add1~28_combout\,
	datad => \Add0~28_combout\,
	combout => \result~131_combout\);

-- Location: LCCOMB_X17_Y11_N6
\result~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~132_combout\ = (\result~1_combout\ & (((\result~4_combout\)))) # (!\result~1_combout\ & ((\result~4_combout\ & ((\result~131_combout\))) # (!\result~4_combout\ & (\Add5~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~28_combout\,
	datab => \result~1_combout\,
	datac => \result~4_combout\,
	datad => \result~131_combout\,
	combout => \result~132_combout\);

-- Location: LCCOMB_X16_Y14_N28
\Add4~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~28_combout\ = ((\dBus[14]~input_o\ $ (\accD[14]~input_o\ $ (!\Add4~27\)))) # (GND)
-- \Add4~29\ = CARRY((\dBus[14]~input_o\ & ((\accD[14]~input_o\) # (!\Add4~27\))) # (!\dBus[14]~input_o\ & (\accD[14]~input_o\ & !\Add4~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[14]~input_o\,
	datab => \accD[14]~input_o\,
	datad => VCC,
	cin => \Add4~27\,
	combout => \Add4~28_combout\,
	cout => \Add4~29\);

-- Location: LCCOMB_X16_Y15_N24
\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (\accD[14]~input_o\ & (!\Add3~13\)) # (!\accD[14]~input_o\ & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!\accD[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \accD[14]~input_o\,
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X16_Y15_N4
\result~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~133_combout\ = (\op[3]~input_o\ & (((\op[2]~input_o\)))) # (!\op[3]~input_o\ & ((\op[2]~input_o\ & (\Mult1|auto_generated|mac_out2~DATAOUT14\)) # (!\op[2]~input_o\ & ((\Add3~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT14\,
	datab => \op[3]~input_o\,
	datac => \op[2]~input_o\,
	datad => \Add3~14_combout\,
	combout => \result~133_combout\);

-- Location: LCCOMB_X17_Y11_N0
\result~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~134_combout\ = (\op[3]~input_o\ & ((\dBus[14]~input_o\ & (\accD[14]~input_o\)) # (!\dBus[14]~input_o\ & (!\accD[14]~input_o\ & \result~133_combout\)))) # (!\op[3]~input_o\ & (((\result~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[14]~input_o\,
	datab => \accD[14]~input_o\,
	datac => \result~133_combout\,
	datad => \op[3]~input_o\,
	combout => \result~134_combout\);

-- Location: LCCOMB_X17_Y11_N26
\result~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~135_combout\ = (\result~132_combout\ & (((\result~134_combout\)) # (!\result~1_combout\))) # (!\result~132_combout\ & (\result~1_combout\ & (\Add4~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~132_combout\,
	datab => \result~1_combout\,
	datac => \Add4~28_combout\,
	datad => \result~134_combout\,
	combout => \result~135_combout\);

-- Location: LCCOMB_X17_Y11_N4
\result~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~136_combout\ = (\op[3]~input_o\ & (\accD[14]~input_o\ & ((\dBus[14]~input_o\) # (\op[2]~input_o\)))) # (!\op[3]~input_o\ & (((\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \accD[14]~input_o\,
	datab => \op[3]~input_o\,
	datac => \dBus[14]~input_o\,
	datad => \op[2]~input_o\,
	combout => \result~136_combout\);

-- Location: LCCOMB_X19_Y15_N14
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\dBus[14]~input_o\ & (!\Add2~13\)) # (!\dBus[14]~input_o\ & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!\dBus[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dBus[14]~input_o\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X19_Y15_N22
\result~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~137_combout\ = (\result~136_combout\ & (!\op[3]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT14\)))) # (!\result~136_combout\ & ((\op[3]~input_o\) # ((\Add2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~136_combout\,
	datab => \op[3]~input_o\,
	datac => \Add2~14_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT14\,
	combout => \result~137_combout\);

-- Location: LCCOMB_X17_Y11_N22
\result~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~138_combout\ = (\result~135_combout\ & ((\result~9_combout\) # ((\result~0_combout\ & \result~137_combout\)))) # (!\result~135_combout\ & (((\result~0_combout\ & \result~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~135_combout\,
	datab => \result~9_combout\,
	datac => \result~0_combout\,
	datad => \result~137_combout\,
	combout => \result~138_combout\);

-- Location: IOIBUF_X0_Y23_N15
\accD[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accD(15),
	o => \accD[15]~input_o\);

-- Location: IOIBUF_X3_Y24_N22
\dBus[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dBus(15),
	o => \dBus[15]~input_o\);

-- Location: LCCOMB_X17_Y15_N18
\result~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~145_combout\ = (\op[3]~input_o\ & (\accD[15]~input_o\ & ((\dBus[15]~input_o\) # (\op[2]~input_o\)))) # (!\op[3]~input_o\ & (((\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \accD[15]~input_o\,
	datab => \dBus[15]~input_o\,
	datac => \op[3]~input_o\,
	datad => \op[2]~input_o\,
	combout => \result~145_combout\);

-- Location: LCCOMB_X19_Y15_N16
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = \Add2~15\ $ (!\dBus[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dBus[15]~input_o\,
	cin => \Add2~15\,
	combout => \Add2~16_combout\);

-- Location: LCCOMB_X17_Y15_N12
\result~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~146_combout\ = (\op[3]~input_o\ & (!\result~145_combout\)) # (!\op[3]~input_o\ & ((\result~145_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT15\)) # (!\result~145_combout\ & ((\Add2~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[3]~input_o\,
	datab => \result~145_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => \Add2~16_combout\,
	combout => \result~146_combout\);

-- Location: LCCOMB_X16_Y15_N26
\Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = \accD[15]~input_o\ $ (!\Add3~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \accD[15]~input_o\,
	cin => \Add3~15\,
	combout => \Add3~16_combout\);

-- Location: LCCOMB_X16_Y15_N6
\result~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~142_combout\ = (\op[2]~input_o\ & (((\Mult1|auto_generated|mac_out2~DATAOUT15\) # (\op[3]~input_o\)))) # (!\op[2]~input_o\ & (\Add3~16_combout\ & ((!\op[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~16_combout\,
	datab => \Mult1|auto_generated|mac_out2~DATAOUT15\,
	datac => \op[2]~input_o\,
	datad => \op[3]~input_o\,
	combout => \result~142_combout\);

-- Location: LCCOMB_X17_Y15_N22
\result~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~143_combout\ = (\op[3]~input_o\ & ((\dBus[15]~input_o\ & ((\accD[15]~input_o\))) # (!\dBus[15]~input_o\ & (\result~142_combout\ & !\accD[15]~input_o\)))) # (!\op[3]~input_o\ & (((\result~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[3]~input_o\,
	datab => \dBus[15]~input_o\,
	datac => \result~142_combout\,
	datad => \accD[15]~input_o\,
	combout => \result~143_combout\);

-- Location: LCCOMB_X13_Y14_N30
\Add5~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~30_combout\ = \accD[15]~input_o\ $ (!\Add5~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \accD[15]~input_o\,
	cin => \Add5~29\,
	combout => \Add5~30_combout\);

-- Location: LCCOMB_X16_Y14_N30
\Add4~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~30_combout\ = \dBus[15]~input_o\ $ (\accD[15]~input_o\ $ (\Add4~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[15]~input_o\,
	datab => \accD[15]~input_o\,
	cin => \Add4~29\,
	combout => \Add4~30_combout\);

-- Location: LCCOMB_X17_Y15_N20
\result~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~141_combout\ = (\result~4_combout\ & (((\result~1_combout\)))) # (!\result~4_combout\ & ((\result~1_combout\ & ((\Add4~30_combout\))) # (!\result~1_combout\ & (\Add5~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~4_combout\,
	datab => \Add5~30_combout\,
	datac => \Add4~30_combout\,
	datad => \result~1_combout\,
	combout => \result~141_combout\);

-- Location: LCCOMB_X17_Y15_N16
\result~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~139_combout\ = \op[0]~input_o\ $ (((\op[3]~input_o\ & ((\accD[15]~input_o\) # (\dBus[15]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \accD[15]~input_o\,
	datab => \dBus[15]~input_o\,
	datac => \op[3]~input_o\,
	datad => \op[0]~input_o\,
	combout => \result~139_combout\);

-- Location: LCCOMB_X18_Y14_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = \accD[15]~input_o\ $ (\Add0~29\ $ (!\dBus[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \accD[15]~input_o\,
	datad => \dBus[15]~input_o\,
	cin => \Add0~29\,
	combout => \Add0~30_combout\);

-- Location: LCCOMB_X17_Y13_N30
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = \Add1~29\ $ (\accD[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \accD[15]~input_o\,
	cin => \Add1~29\,
	combout => \Add1~30_combout\);

-- Location: LCCOMB_X17_Y15_N10
\result~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~140_combout\ = (\op[3]~input_o\ & (\result~139_combout\)) # (!\op[3]~input_o\ & ((\result~139_combout\ & (\Add0~30_combout\)) # (!\result~139_combout\ & ((\Add1~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[3]~input_o\,
	datab => \result~139_combout\,
	datac => \Add0~30_combout\,
	datad => \Add1~30_combout\,
	combout => \result~140_combout\);

-- Location: LCCOMB_X17_Y15_N24
\result~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~144_combout\ = (\result~141_combout\ & ((\result~143_combout\) # ((!\result~4_combout\)))) # (!\result~141_combout\ & (((\result~4_combout\ & \result~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~143_combout\,
	datab => \result~141_combout\,
	datac => \result~4_combout\,
	datad => \result~140_combout\,
	combout => \result~144_combout\);

-- Location: LCCOMB_X17_Y15_N30
\result~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~147_combout\ = (\result~146_combout\ & ((\result~0_combout\) # ((\result~9_combout\ & \result~144_combout\)))) # (!\result~146_combout\ & (((\result~9_combout\ & \result~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~146_combout\,
	datab => \result~0_combout\,
	datac => \result~9_combout\,
	datad => \result~144_combout\,
	combout => \result~147_combout\);

-- Location: LCCOMB_X18_Y15_N2
\accZ~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \accZ~1_combout\ = (\accD[5]~input_o\) # ((\accD[7]~input_o\) # ((\accD[6]~input_o\) # (\accD[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \accD[5]~input_o\,
	datab => \accD[7]~input_o\,
	datac => \accD[6]~input_o\,
	datad => \accD[4]~input_o\,
	combout => \accZ~1_combout\);

-- Location: LCCOMB_X18_Y15_N24
\accZ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \accZ~0_combout\ = (\accD[0]~input_o\) # ((\accD[3]~input_o\) # ((\accD[1]~input_o\) # (\accD[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \accD[0]~input_o\,
	datab => \accD[3]~input_o\,
	datac => \accD[1]~input_o\,
	datad => \accD[2]~input_o\,
	combout => \accZ~0_combout\);

-- Location: LCCOMB_X18_Y15_N28
\accZ~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \accZ~2_combout\ = (\accZ~1_combout\) # (\accZ~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \accZ~1_combout\,
	datad => \accZ~0_combout\,
	combout => \accZ~2_combout\);

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(7) <= \result[7]~output_o\;

ww_result(8) <= \result[8]~output_o\;

ww_result(9) <= \result[9]~output_o\;

ww_result(10) <= \result[10]~output_o\;

ww_result(11) <= \result[11]~output_o\;

ww_result(12) <= \result[12]~output_o\;

ww_result(13) <= \result[13]~output_o\;

ww_result(14) <= \result[14]~output_o\;

ww_result(15) <= \result[15]~output_o\;

ww_accZ <= \accZ~output_o\;
END structure;


