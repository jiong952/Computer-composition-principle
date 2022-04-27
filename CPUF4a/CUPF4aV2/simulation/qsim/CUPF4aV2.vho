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

-- DATE "12/19/2020 18:06:38"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CUPF4aV2 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	abusX : BUFFER std_logic_vector(7 DOWNTO 0);
	dbusX : BUFFER std_logic_vector(7 DOWNTO 0);
	mem_enDX : BUFFER std_logic;
	mem_rwX : BUFFER std_logic;
	pc_enAX : BUFFER std_logic;
	pc_ldX : BUFFER std_logic;
	pc_incX : BUFFER std_logic;
	ir_enAX : BUFFER std_logic;
	ir_enDX : BUFFER std_logic;
	ir_ldX : BUFFER std_logic;
	acc_enDX : BUFFER std_logic;
	acc_ldX : BUFFER std_logic;
	acc_selAluX : BUFFER std_logic;
	acc_QX : BUFFER std_logic_vector(7 DOWNTO 0);
	alu_accZX : BUFFER std_logic;
	alu_opX : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END CUPF4aV2;

-- Design Ports Information
-- abusX[0]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abusX[1]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abusX[2]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abusX[3]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abusX[4]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abusX[5]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abusX[6]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- abusX[7]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbusX[0]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbusX[1]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbusX[2]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbusX[3]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbusX[4]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbusX[5]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbusX[6]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbusX[7]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_enDX	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_rwX	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_enAX	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_ldX	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_incX	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_enAX	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_enDX	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_ldX	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_enDX	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_ldX	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_selAluX	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_QX[0]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_QX[1]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_QX[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_QX[3]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_QX[4]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_QX[5]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_QX[6]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_QX[7]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_accZX	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_opX[0]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_opX[1]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_opX[2]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_opX[3]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CUPF4aV2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_abusX : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dbusX : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_mem_enDX : std_logic;
SIGNAL ww_mem_rwX : std_logic;
SIGNAL ww_pc_enAX : std_logic;
SIGNAL ww_pc_ldX : std_logic;
SIGNAL ww_pc_incX : std_logic;
SIGNAL ww_ir_enAX : std_logic;
SIGNAL ww_ir_enDX : std_logic;
SIGNAL ww_ir_ldX : std_logic;
SIGNAL ww_acc_enDX : std_logic;
SIGNAL ww_acc_ldX : std_logic;
SIGNAL ww_acc_selAluX : std_logic;
SIGNAL ww_acc_QX : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_alu_accZX : std_logic;
SIGNAL ww_alu_opX : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem|Decoder0~13clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem|Decoder0~10clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem|Decoder0~12clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem|Decoder0~11clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem|Decoder0~15clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem|Decoder0~14clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem|Decoder0~9clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem|Decoder0~8clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem|Decoder0~16clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \abusX[0]~output_o\ : std_logic;
SIGNAL \abusX[1]~output_o\ : std_logic;
SIGNAL \abusX[2]~output_o\ : std_logic;
SIGNAL \abusX[3]~output_o\ : std_logic;
SIGNAL \abusX[4]~output_o\ : std_logic;
SIGNAL \abusX[5]~output_o\ : std_logic;
SIGNAL \abusX[6]~output_o\ : std_logic;
SIGNAL \abusX[7]~output_o\ : std_logic;
SIGNAL \dbusX[0]~output_o\ : std_logic;
SIGNAL \dbusX[1]~output_o\ : std_logic;
SIGNAL \dbusX[2]~output_o\ : std_logic;
SIGNAL \dbusX[3]~output_o\ : std_logic;
SIGNAL \dbusX[4]~output_o\ : std_logic;
SIGNAL \dbusX[5]~output_o\ : std_logic;
SIGNAL \dbusX[6]~output_o\ : std_logic;
SIGNAL \dbusX[7]~output_o\ : std_logic;
SIGNAL \mem_enDX~output_o\ : std_logic;
SIGNAL \mem_rwX~output_o\ : std_logic;
SIGNAL \pc_enAX~output_o\ : std_logic;
SIGNAL \pc_ldX~output_o\ : std_logic;
SIGNAL \pc_incX~output_o\ : std_logic;
SIGNAL \ir_enAX~output_o\ : std_logic;
SIGNAL \ir_enDX~output_o\ : std_logic;
SIGNAL \ir_ldX~output_o\ : std_logic;
SIGNAL \acc_enDX~output_o\ : std_logic;
SIGNAL \acc_ldX~output_o\ : std_logic;
SIGNAL \acc_selAluX~output_o\ : std_logic;
SIGNAL \acc_QX[0]~output_o\ : std_logic;
SIGNAL \acc_QX[1]~output_o\ : std_logic;
SIGNAL \acc_QX[2]~output_o\ : std_logic;
SIGNAL \acc_QX[3]~output_o\ : std_logic;
SIGNAL \acc_QX[4]~output_o\ : std_logic;
SIGNAL \acc_QX[5]~output_o\ : std_logic;
SIGNAL \acc_QX[6]~output_o\ : std_logic;
SIGNAL \acc_QX[7]~output_o\ : std_logic;
SIGNAL \alu_accZX~output_o\ : std_logic;
SIGNAL \alu_opX[0]~output_o\ : std_logic;
SIGNAL \alu_opX[1]~output_o\ : std_logic;
SIGNAL \alu_opX[2]~output_o\ : std_logic;
SIGNAL \alu_opX[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ctl|state~56_combout\ : std_logic;
SIGNAL \ctl|state.store1~q\ : std_logic;
SIGNAL \ctl|mem_rw~0_combout\ : std_logic;
SIGNAL \ctl|mem_rw~q\ : std_logic;
SIGNAL \ctl|acc_enD~0_combout\ : std_logic;
SIGNAL \ctl|state~59_combout\ : std_logic;
SIGNAL \ctl|state.not1~q\ : std_logic;
SIGNAL \ctl|state~76_combout\ : std_logic;
SIGNAL \ctl|state.or0~q\ : std_logic;
SIGNAL \ctl|state~69_combout\ : std_logic;
SIGNAL \ctl|state.or1~q\ : std_logic;
SIGNAL \ctl|state~74_combout\ : std_logic;
SIGNAL \ctl|state.mul0~q\ : std_logic;
SIGNAL \ctl|state~67_combout\ : std_logic;
SIGNAL \ctl|state.mul1~q\ : std_logic;
SIGNAL \ctl|state~73_combout\ : std_logic;
SIGNAL \ctl|state.sub0~q\ : std_logic;
SIGNAL \ctl|state~66_combout\ : std_logic;
SIGNAL \ctl|state.sub1~q\ : std_logic;
SIGNAL \ctl|state~75_combout\ : std_logic;
SIGNAL \ctl|state.div0~q\ : std_logic;
SIGNAL \ctl|state~68_combout\ : std_logic;
SIGNAL \ctl|state.div1~q\ : std_logic;
SIGNAL \ctl|state~72_combout\ : std_logic;
SIGNAL \ctl|state.add0~q\ : std_logic;
SIGNAL \ctl|state~65_combout\ : std_logic;
SIGNAL \ctl|state.add1~q\ : std_logic;
SIGNAL \acc|accReg~0_combout\ : std_logic;
SIGNAL \ctl|acc_ld~0_combout\ : std_logic;
SIGNAL \pc|Add0~0_combout\ : std_logic;
SIGNAL \ir|irReg~2_combout\ : std_logic;
SIGNAL \ir|dBus[2]~14_combout\ : std_logic;
SIGNAL \ir|irReg~0_combout\ : std_logic;
SIGNAL \ir|Equal10~0_combout\ : std_logic;
SIGNAL \ir|Equal10~2_combout\ : std_logic;
SIGNAL \ctl|Selector12~0_combout\ : std_logic;
SIGNAL \ctl|state.halt~q\ : std_logic;
SIGNAL \ctl|ir_enA~1_combout\ : std_logic;
SIGNAL \pc|Add0~9\ : std_logic;
SIGNAL \pc|Add0~10_combout\ : std_logic;
SIGNAL \ir|aBus[5]~5_combout\ : std_logic;
SIGNAL \ir|irReg~1_combout\ : std_logic;
SIGNAL \ctl|ir_enA~2_combout\ : std_logic;
SIGNAL \pc|aBus[1]~7_combout\ : std_logic;
SIGNAL \pc|aBus[2]~8_combout\ : std_logic;
SIGNAL \mem|Decoder0~0_combout\ : std_logic;
SIGNAL \mem|ram[63][1]~43_combout\ : std_logic;
SIGNAL \pc|aBus[3]~9_combout\ : std_logic;
SIGNAL \mem|ram[57][0]~44_combout\ : std_logic;
SIGNAL \mem|ram[57][2]~combout\ : std_logic;
SIGNAL \mem|Decoder0~1_combout\ : std_logic;
SIGNAL \mem|ram[60][0]~58_combout\ : std_logic;
SIGNAL \mem|ram[60][2]~combout\ : std_logic;
SIGNAL \mem|Decoder0~2_combout\ : std_logic;
SIGNAL \mem|ram[56][0]~46_combout\ : std_logic;
SIGNAL \mem|ram[56][2]~combout\ : std_logic;
SIGNAL \mem|Mux5~31_combout\ : std_logic;
SIGNAL \mem|Decoder0~3_combout\ : std_logic;
SIGNAL \mem|ram[61][0]~57_combout\ : std_logic;
SIGNAL \mem|ram[61][2]~combout\ : std_logic;
SIGNAL \mem|Mux5~32_combout\ : std_logic;
SIGNAL \mem|Decoder0~7_combout\ : std_logic;
SIGNAL \mem|ram[63][1]~59_combout\ : std_logic;
SIGNAL \mem|ram[63][2]~combout\ : std_logic;
SIGNAL \mem|Decoder0~5_combout\ : std_logic;
SIGNAL \mem|ram[59][0]~47_combout\ : std_logic;
SIGNAL \mem|ram[59][2]~combout\ : std_logic;
SIGNAL \mem|Decoder0~6_combout\ : std_logic;
SIGNAL \mem|ram[58][0]~45_combout\ : std_logic;
SIGNAL \mem|ram[58][2]~combout\ : std_logic;
SIGNAL \mem|Decoder0~4_combout\ : std_logic;
SIGNAL \mem|ram[62][0]~56_combout\ : std_logic;
SIGNAL \mem|ram[62][2]~combout\ : std_logic;
SIGNAL \mem|Mux5~38_combout\ : std_logic;
SIGNAL \mem|Mux5~39_combout\ : std_logic;
SIGNAL \mem|ram[31][0]~18_combout\ : std_logic;
SIGNAL \mem|ram[27][0]~32_combout\ : std_logic;
SIGNAL \mem|ram[27][2]~combout\ : std_logic;
SIGNAL \mem|ram[31][0]~34_combout\ : std_logic;
SIGNAL \mem|ram[31][2]~combout\ : std_logic;
SIGNAL \mem|ram[26][0]~20_combout\ : std_logic;
SIGNAL \mem|ram[26][2]~combout\ : std_logic;
SIGNAL \mem|ram[30][0]~22_combout\ : std_logic;
SIGNAL \mem|ram[30][2]~combout\ : std_logic;
SIGNAL \mem|Mux5~33_combout\ : std_logic;
SIGNAL \mem|Mux5~34_combout\ : std_logic;
SIGNAL \mem|ram[25][0]~33_combout\ : std_logic;
SIGNAL \mem|ram[25][2]~combout\ : std_logic;
SIGNAL \mem|ram[29][0]~31_combout\ : std_logic;
SIGNAL \mem|ram[29][2]~combout\ : std_logic;
SIGNAL \mem|ram[24][0]~21_combout\ : std_logic;
SIGNAL \mem|ram[24][2]~combout\ : std_logic;
SIGNAL \mem|ram[28][0]~19_combout\ : std_logic;
SIGNAL \mem|ram[28][2]~combout\ : std_logic;
SIGNAL \mem|Mux5~35_combout\ : std_logic;
SIGNAL \mem|Mux5~36_combout\ : std_logic;
SIGNAL \mem|Mux5~37_combout\ : std_logic;
SIGNAL \mem|Mux5~40_combout\ : std_logic;
SIGNAL \mem|ram[47][0]~0_combout\ : std_logic;
SIGNAL \mem|ram[45][0]~4_combout\ : std_logic;
SIGNAL \mem|ram[45][2]~combout\ : std_logic;
SIGNAL \mem|ram[41][0]~1_combout\ : std_logic;
SIGNAL \mem|ram[41][2]~combout\ : std_logic;
SIGNAL \mem|ram[43][0]~15_combout\ : std_logic;
SIGNAL \mem|ram[43][2]~combout\ : std_logic;
SIGNAL \mem|Mux5~7_combout\ : std_logic;
SIGNAL \mem|ram[47][0]~17_combout\ : std_logic;
SIGNAL \mem|ram[47][2]~combout\ : std_logic;
SIGNAL \mem|Mux5~8_combout\ : std_logic;
SIGNAL \mem|ram[44][0]~2_combout\ : std_logic;
SIGNAL \mem|ram[44][2]~combout\ : std_logic;
SIGNAL \mem|ram[40][0]~3_combout\ : std_logic;
SIGNAL \mem|ram[40][2]~combout\ : std_logic;
SIGNAL \mem|ram[42][0]~16_combout\ : std_logic;
SIGNAL \mem|ram[42][2]~combout\ : std_logic;
SIGNAL \mem|Mux5~0_combout\ : std_logic;
SIGNAL \mem|ram[46][0]~14_combout\ : std_logic;
SIGNAL \mem|ram[46][2]~combout\ : std_logic;
SIGNAL \mem|Mux5~1_combout\ : std_logic;
SIGNAL \mem|ram[15][0]~35_combout\ : std_logic;
SIGNAL \mem|ram[15][0]~42_combout\ : std_logic;
SIGNAL \mem|ram[15][2]~combout\ : std_logic;
SIGNAL \mem|ram[13][0]~40_combout\ : std_logic;
SIGNAL \mem|ram[13][2]~combout\ : std_logic;
SIGNAL \mem|ram[9][0]~36_combout\ : std_logic;
SIGNAL \mem|ram[9][2]~combout\ : std_logic;
SIGNAL \mem|ram[11][0]~38_combout\ : std_logic;
SIGNAL \mem|ram[11][2]~combout\ : std_logic;
SIGNAL \mem|Mux5~2_combout\ : std_logic;
SIGNAL \mem|Mux5~3_combout\ : std_logic;
SIGNAL \mem|ram[14][0]~39_combout\ : std_logic;
SIGNAL \mem|ram[14][2]~combout\ : std_logic;
SIGNAL \mem|ram[12][0]~41_combout\ : std_logic;
SIGNAL \mem|ram[12][2]~combout\ : std_logic;
SIGNAL \mem|dBus~1_combout\ : std_logic;
SIGNAL \ir|dBus[0]~34_combout\ : std_logic;
SIGNAL \ir|dBus[2]~37_combout\ : std_logic;
SIGNAL \mem|Decoder0~8_combout\ : std_logic;
SIGNAL \mem|Decoder0~8clkctrl_outclk\ : std_logic;
SIGNAL \mem|ram[8][2]~combout\ : std_logic;
SIGNAL \mem|ram[10][0]~37_combout\ : std_logic;
SIGNAL \mem|ram[10][2]~combout\ : std_logic;
SIGNAL \mem|Mux5~4_combout\ : std_logic;
SIGNAL \mem|Mux5~5_combout\ : std_logic;
SIGNAL \mem|Mux5~6_combout\ : std_logic;
SIGNAL \mem|Mux5~9_combout\ : std_logic;
SIGNAL \mem|ram[37][0]~5_combout\ : std_logic;
SIGNAL \mem|ram[38][0]~6_combout\ : std_logic;
SIGNAL \mem|ram[38][2]~combout\ : std_logic;
SIGNAL \mem|ram[34][0]~8_combout\ : std_logic;
SIGNAL \mem|ram[34][2]~combout\ : std_logic;
SIGNAL \mem|Mux5~27_combout\ : std_logic;
SIGNAL \mem|ram[39][0]~9_combout\ : std_logic;
SIGNAL \mem|ram[39][2]~combout\ : std_logic;
SIGNAL \mem|ram[35][0]~7_combout\ : std_logic;
SIGNAL \mem|ram[35][2]~combout\ : std_logic;
SIGNAL \mem|Mux5~28_combout\ : std_logic;
SIGNAL \mem|ram[32][0]~12_combout\ : std_logic;
SIGNAL \mem|ram[32][2]~combout\ : std_logic;
SIGNAL \mem|ram[33][0]~10_combout\ : std_logic;
SIGNAL \mem|ram[33][2]~combout\ : std_logic;
SIGNAL \mem|ram[36][0]~11_combout\ : std_logic;
SIGNAL \mem|ram[36][2]~combout\ : std_logic;
SIGNAL \mem|ram[37][0]~13_combout\ : std_logic;
SIGNAL \mem|ram[37][2]~combout\ : std_logic;
SIGNAL \mem|Mux5~20_combout\ : std_logic;
SIGNAL \mem|Mux5~21_combout\ : std_logic;
SIGNAL \mem|Decoder0~16_combout\ : std_logic;
SIGNAL \mem|Decoder0~16clkctrl_outclk\ : std_logic;
SIGNAL \mem|ram[3][2]~combout\ : std_logic;
SIGNAL \mem|Decoder0~12_combout\ : std_logic;
SIGNAL \mem|Decoder0~12clkctrl_outclk\ : std_logic;
SIGNAL \mem|ram[7][2]~combout\ : std_logic;
SIGNAL \mem|Decoder0~14_combout\ : std_logic;
SIGNAL \mem|Decoder0~14clkctrl_outclk\ : std_logic;
SIGNAL \mem|ram[2][2]~combout\ : std_logic;
SIGNAL \mem|Decoder0~10_combout\ : std_logic;
SIGNAL \mem|Decoder0~10clkctrl_outclk\ : std_logic;
SIGNAL \mem|ram[6][2]~combout\ : std_logic;
SIGNAL \mem|Mux5~22_combout\ : std_logic;
SIGNAL \mem|Mux5~23_combout\ : std_logic;
SIGNAL \mem|Decoder0~13_combout\ : std_logic;
SIGNAL \mem|Decoder0~13clkctrl_outclk\ : std_logic;
SIGNAL \mem|ram[1][2]~combout\ : std_logic;
SIGNAL \mem|Decoder0~9_combout\ : std_logic;
SIGNAL \mem|Decoder0~9clkctrl_outclk\ : std_logic;
SIGNAL \mem|ram[5][2]~combout\ : std_logic;
SIGNAL \mem|Decoder0~11_combout\ : std_logic;
SIGNAL \mem|Decoder0~11clkctrl_outclk\ : std_logic;
SIGNAL \mem|ram[4][2]~combout\ : std_logic;
SIGNAL \mem|Decoder0~15_combout\ : std_logic;
SIGNAL \mem|Decoder0~15clkctrl_outclk\ : std_logic;
SIGNAL \mem|ram[0][2]~combout\ : std_logic;
SIGNAL \mem|Mux5~24_combout\ : std_logic;
SIGNAL \mem|Mux5~25_combout\ : std_logic;
SIGNAL \mem|Mux5~26_combout\ : std_logic;
SIGNAL \mem|Mux5~29_combout\ : std_logic;
SIGNAL \mem|ram[50][0]~52_combout\ : std_logic;
SIGNAL \mem|ram[50][2]~combout\ : std_logic;
SIGNAL \mem|ram[51][0]~55_combout\ : std_logic;
SIGNAL \mem|ram[51][2]~combout\ : std_logic;
SIGNAL \mem|ram[48][0]~54_combout\ : std_logic;
SIGNAL \mem|ram[48][2]~combout\ : std_logic;
SIGNAL \mem|ram[49][0]~53_combout\ : std_logic;
SIGNAL \mem|ram[49][2]~combout\ : std_logic;
SIGNAL \mem|Mux5~10_combout\ : std_logic;
SIGNAL \mem|Mux5~11_combout\ : std_logic;
SIGNAL \mem|ram[55][0]~51_combout\ : std_logic;
SIGNAL \mem|ram[55][2]~combout\ : std_logic;
SIGNAL \mem|ram[54][0]~48_combout\ : std_logic;
SIGNAL \mem|ram[54][2]~combout\ : std_logic;
SIGNAL \mem|ram[52][0]~50_combout\ : std_logic;
SIGNAL \mem|ram[52][2]~combout\ : std_logic;
SIGNAL \mem|ram[53][0]~49_combout\ : std_logic;
SIGNAL \mem|ram[53][2]~combout\ : std_logic;
SIGNAL \mem|Mux5~17_combout\ : std_logic;
SIGNAL \mem|Mux5~18_combout\ : std_logic;
SIGNAL \mem|ram[18][0]~28_combout\ : std_logic;
SIGNAL \mem|ram[18][2]~combout\ : std_logic;
SIGNAL \mem|ram[19][0]~24_combout\ : std_logic;
SIGNAL \mem|ram[19][2]~combout\ : std_logic;
SIGNAL \mem|ram[16][0]~29_combout\ : std_logic;
SIGNAL \mem|ram[16][2]~combout\ : std_logic;
SIGNAL \mem|ram[17][0]~25_combout\ : std_logic;
SIGNAL \mem|ram[17][2]~combout\ : std_logic;
SIGNAL \mem|Mux5~14_combout\ : std_logic;
SIGNAL \mem|Mux5~15_combout\ : std_logic;
SIGNAL \mem|ram[23][0]~26_combout\ : std_logic;
SIGNAL \mem|ram[23][2]~combout\ : std_logic;
SIGNAL \mem|ram[22][0]~30_combout\ : std_logic;
SIGNAL \mem|ram[22][2]~combout\ : std_logic;
SIGNAL \mem|ram[20][0]~27_combout\ : std_logic;
SIGNAL \mem|ram[20][2]~combout\ : std_logic;
SIGNAL \mem|ram[21][0]~23_combout\ : std_logic;
SIGNAL \mem|ram[21][2]~combout\ : std_logic;
SIGNAL \mem|Mux5~12_combout\ : std_logic;
SIGNAL \mem|Mux5~13_combout\ : std_logic;
SIGNAL \mem|Mux5~16_combout\ : std_logic;
SIGNAL \mem|Mux5~19_combout\ : std_logic;
SIGNAL \mem|Mux5~30_combout\ : std_logic;
SIGNAL \mem|Mux5~41_combout\ : std_logic;
SIGNAL \ir|dBus[2]~28_combout\ : std_logic;
SIGNAL \aluu|Mult1|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \aluu|Mult0|auto_generated|le3a[5]~_wirecell_combout\ : std_logic;
SIGNAL \aluu|Mult1|auto_generated|op_3~1\ : std_logic;
SIGNAL \aluu|Mult1|auto_generated|op_3~3\ : std_logic;
SIGNAL \aluu|Mult1|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \aluu|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \aluu|Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \aluu|Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \aluu|Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \ctl|alu_op[0]~6_combout\ : std_logic;
SIGNAL \ctl|alu_op[0]~4_combout\ : std_logic;
SIGNAL \ctl|state~70_combout\ : std_logic;
SIGNAL \ctl|state.and1~q\ : std_logic;
SIGNAL \ctl|alu_op[0]~3_combout\ : std_logic;
SIGNAL \ctl|alu_op[0]~5_combout\ : std_logic;
SIGNAL \ctl|alu_op[0]~7_combout\ : std_logic;
SIGNAL \ctl|comb~1_combout\ : std_logic;
SIGNAL \ctl|comb~0_combout\ : std_logic;
SIGNAL \ctl|alu_op[1]~8_combout\ : std_logic;
SIGNAL \ctl|comb~4_combout\ : std_logic;
SIGNAL \ctl|comb~5_combout\ : std_logic;
SIGNAL \acc|accReg[6]~2_combout\ : std_logic;
SIGNAL \acc|accReg[6]~3_combout\ : std_logic;
SIGNAL \aluu|Add0~12_combout\ : std_logic;
SIGNAL \aluu|Add0~11_combout\ : std_logic;
SIGNAL \aluu|Add0~8_combout\ : std_logic;
SIGNAL \aluu|Add0~7_combout\ : std_logic;
SIGNAL \aluu|Add0~0_combout\ : std_logic;
SIGNAL \aluu|Add0~1_combout\ : std_logic;
SIGNAL \aluu|Equal13~1_combout\ : std_logic;
SIGNAL \aluu|Add0~2_combout\ : std_logic;
SIGNAL \aluu|Add0~4_cout\ : std_logic;
SIGNAL \aluu|Add0~6\ : std_logic;
SIGNAL \aluu|Add0~10\ : std_logic;
SIGNAL \aluu|Add0~13_combout\ : std_logic;
SIGNAL \acc|accReg~12_combout\ : std_logic;
SIGNAL \acc|accReg~13_combout\ : std_logic;
SIGNAL \acc|accReg~14_combout\ : std_logic;
SIGNAL \ctl|state~71_combout\ : std_logic;
SIGNAL \ctl|state.load0~q\ : std_logic;
SIGNAL \ctl|state~64_combout\ : std_logic;
SIGNAL \ctl|state.load1~feeder_combout\ : std_logic;
SIGNAL \ctl|state.load1~q\ : std_logic;
SIGNAL \aluu|Equal13~2_combout\ : std_logic;
SIGNAL \acc|accReg~7_combout\ : std_logic;
SIGNAL \acc|accReg~8_combout\ : std_logic;
SIGNAL \aluu|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \aluu|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \aluu|Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \aluu|Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \aluu|Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \aluu|Add0~15_combout\ : std_logic;
SIGNAL \aluu|Add0~16_combout\ : std_logic;
SIGNAL \aluu|Add0~14\ : std_logic;
SIGNAL \aluu|Add0~17_combout\ : std_logic;
SIGNAL \acc|accReg~15_combout\ : std_logic;
SIGNAL \aluu|Mult1|auto_generated|op_1~1\ : std_logic;
SIGNAL \aluu|Mult1|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \aluu|Mult1|auto_generated|op_3~5\ : std_logic;
SIGNAL \aluu|Mult1|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \acc|accReg~16_combout\ : std_logic;
SIGNAL \acc|accReg~17_combout\ : std_logic;
SIGNAL \ir|dBus[3]~16_combout\ : std_logic;
SIGNAL \mem|ram[63][3]~combout\ : std_logic;
SIGNAL \mem|ram[62][3]~combout\ : std_logic;
SIGNAL \mem|ram[61][3]~combout\ : std_logic;
SIGNAL \mem|ram[60][3]~combout\ : std_logic;
SIGNAL \mem|Mux4~38_combout\ : std_logic;
SIGNAL \mem|Mux4~39_combout\ : std_logic;
SIGNAL \mem|ram[59][3]~combout\ : std_logic;
SIGNAL \mem|ram[56][3]~combout\ : std_logic;
SIGNAL \mem|ram[57][3]~combout\ : std_logic;
SIGNAL \mem|Mux4~31_combout\ : std_logic;
SIGNAL \mem|ram[58][3]~combout\ : std_logic;
SIGNAL \mem|Mux4~32_combout\ : std_logic;
SIGNAL \mem|ram[51][3]~combout\ : std_logic;
SIGNAL \mem|ram[50][3]~combout\ : std_logic;
SIGNAL \mem|ram[49][3]~combout\ : std_logic;
SIGNAL \mem|ram[48][3]~combout\ : std_logic;
SIGNAL \mem|Mux4~35_combout\ : std_logic;
SIGNAL \mem|Mux4~36_combout\ : std_logic;
SIGNAL \mem|ram[55][3]~combout\ : std_logic;
SIGNAL \mem|ram[54][3]~combout\ : std_logic;
SIGNAL \mem|ram[52][3]~combout\ : std_logic;
SIGNAL \mem|ram[53][3]~combout\ : std_logic;
SIGNAL \mem|Mux4~33_combout\ : std_logic;
SIGNAL \mem|Mux4~34_combout\ : std_logic;
SIGNAL \mem|Mux4~37_combout\ : std_logic;
SIGNAL \mem|Mux4~40_combout\ : std_logic;
SIGNAL \mem|ram[41][3]~combout\ : std_logic;
SIGNAL \mem|ram[45][3]~combout\ : std_logic;
SIGNAL \mem|ram[44][3]~combout\ : std_logic;
SIGNAL \mem|ram[40][3]~combout\ : std_logic;
SIGNAL \mem|Mux4~0_combout\ : std_logic;
SIGNAL \mem|Mux4~1_combout\ : std_logic;
SIGNAL \mem|ram[38][3]~combout\ : std_logic;
SIGNAL \mem|ram[34][3]~combout\ : std_logic;
SIGNAL \mem|Mux4~2_combout\ : std_logic;
SIGNAL \mem|ram[35][3]~combout\ : std_logic;
SIGNAL \mem|ram[39][3]~combout\ : std_logic;
SIGNAL \mem|Mux4~3_combout\ : std_logic;
SIGNAL \mem|ram[33][3]~combout\ : std_logic;
SIGNAL \mem|ram[37][3]~combout\ : std_logic;
SIGNAL \mem|ram[36][3]~combout\ : std_logic;
SIGNAL \mem|ram[32][3]~combout\ : std_logic;
SIGNAL \mem|Mux4~4_combout\ : std_logic;
SIGNAL \mem|Mux4~5_combout\ : std_logic;
SIGNAL \mem|Mux4~6_combout\ : std_logic;
SIGNAL \mem|ram[43][3]~combout\ : std_logic;
SIGNAL \mem|ram[46][3]~combout\ : std_logic;
SIGNAL \mem|ram[42][3]~combout\ : std_logic;
SIGNAL \mem|Mux4~7_combout\ : std_logic;
SIGNAL \mem|ram[47][3]~combout\ : std_logic;
SIGNAL \mem|Mux4~8_combout\ : std_logic;
SIGNAL \mem|Mux4~9_combout\ : std_logic;
SIGNAL \mem|ram[29][3]~combout\ : std_logic;
SIGNAL \mem|ram[31][3]~combout\ : std_logic;
SIGNAL \mem|ram[25][3]~combout\ : std_logic;
SIGNAL \mem|ram[27][3]~combout\ : std_logic;
SIGNAL \mem|Mux4~17_combout\ : std_logic;
SIGNAL \mem|Mux4~18_combout\ : std_logic;
SIGNAL \mem|ram[30][3]~combout\ : std_logic;
SIGNAL \mem|ram[28][3]~combout\ : std_logic;
SIGNAL \mem|ram[24][3]~combout\ : std_logic;
SIGNAL \mem|ram[26][3]~combout\ : std_logic;
SIGNAL \mem|Mux4~10_combout\ : std_logic;
SIGNAL \mem|Mux4~11_combout\ : std_logic;
SIGNAL \mem|ram[22][3]~combout\ : std_logic;
SIGNAL \mem|ram[20][3]~combout\ : std_logic;
SIGNAL \mem|ram[18][3]~combout\ : std_logic;
SIGNAL \mem|ram[16][3]~combout\ : std_logic;
SIGNAL \mem|Mux4~14_combout\ : std_logic;
SIGNAL \mem|Mux4~15_combout\ : std_logic;
SIGNAL \mem|ram[23][3]~combout\ : std_logic;
SIGNAL \mem|ram[21][3]~combout\ : std_logic;
SIGNAL \mem|ram[19][3]~combout\ : std_logic;
SIGNAL \mem|ram[17][3]~combout\ : std_logic;
SIGNAL \mem|Mux4~12_combout\ : std_logic;
SIGNAL \mem|Mux4~13_combout\ : std_logic;
SIGNAL \mem|Mux4~16_combout\ : std_logic;
SIGNAL \mem|Mux4~19_combout\ : std_logic;
SIGNAL \mem|ram[14][3]~combout\ : std_logic;
SIGNAL \mem|ram[15][3]~combout\ : std_logic;
SIGNAL \mem|ram[12][3]~combout\ : std_logic;
SIGNAL \mem|ram[13][3]~combout\ : std_logic;
SIGNAL \mem|Mux4~27_combout\ : std_logic;
SIGNAL \mem|Mux4~28_combout\ : std_logic;
SIGNAL \mem|ram[11][3]~combout\ : std_logic;
SIGNAL \ir|dBus[3]~38_combout\ : std_logic;
SIGNAL \mem|ram[8][3]~combout\ : std_logic;
SIGNAL \mem|ram[9][3]~combout\ : std_logic;
SIGNAL \mem|Mux4~20_combout\ : std_logic;
SIGNAL \mem|ram[10][3]~combout\ : std_logic;
SIGNAL \mem|Mux4~21_combout\ : std_logic;
SIGNAL \mem|ram[6][3]~combout\ : std_logic;
SIGNAL \mem|ram[7][3]~combout\ : std_logic;
SIGNAL \mem|ram[5][3]~combout\ : std_logic;
SIGNAL \mem|ram[4][3]~combout\ : std_logic;
SIGNAL \mem|Mux4~22_combout\ : std_logic;
SIGNAL \mem|Mux4~23_combout\ : std_logic;
SIGNAL \mem|ram[3][3]~combout\ : std_logic;
SIGNAL \mem|ram[2][3]~combout\ : std_logic;
SIGNAL \mem|ram[1][3]~combout\ : std_logic;
SIGNAL \mem|ram[0][3]~combout\ : std_logic;
SIGNAL \mem|Mux4~24_combout\ : std_logic;
SIGNAL \mem|Mux4~25_combout\ : std_logic;
SIGNAL \mem|Mux4~26_combout\ : std_logic;
SIGNAL \mem|Mux4~29_combout\ : std_logic;
SIGNAL \mem|Mux4~30_combout\ : std_logic;
SIGNAL \mem|Mux4~41_combout\ : std_logic;
SIGNAL \ir|dBus[3]~29_combout\ : std_logic;
SIGNAL \ir|irReg~3_combout\ : std_logic;
SIGNAL \ir|Equal10~1_combout\ : std_logic;
SIGNAL \ctl|Selector1~3_combout\ : std_logic;
SIGNAL \ctl|state~77_combout\ : std_logic;
SIGNAL \ctl|state.and0~q\ : std_logic;
SIGNAL \ctl|alu_op[3]~0_combout\ : std_logic;
SIGNAL \ctl|alu_op[3]~1_combout\ : std_logic;
SIGNAL \ctl|alu_op[3]~2_combout\ : std_logic;
SIGNAL \ctl|alu_op~9_combout\ : std_logic;
SIGNAL \ctl|alu_op[1]~10_combout\ : std_logic;
SIGNAL \ctl|comb~2_combout\ : std_logic;
SIGNAL \ctl|comb~3_combout\ : std_logic;
SIGNAL \aluu|Equal13~0_combout\ : std_logic;
SIGNAL \aluu|Add0~5_combout\ : std_logic;
SIGNAL \acc|accReg~4_combout\ : std_logic;
SIGNAL \aluu|Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \aluu|Mult1|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \acc|accReg~5_combout\ : std_logic;
SIGNAL \acc|accReg~6_combout\ : std_logic;
SIGNAL \ir|dBus[0]~8_combout\ : std_logic;
SIGNAL \mem|ram[15][0]~combout\ : std_logic;
SIGNAL \mem|ram[14][0]~combout\ : std_logic;
SIGNAL \mem|ram[12][0]~combout\ : std_logic;
SIGNAL \mem|ram[13][0]~combout\ : std_logic;
SIGNAL \mem|Mux7~27_combout\ : std_logic;
SIGNAL \mem|Mux7~28_combout\ : std_logic;
SIGNAL \ir|dBus[0]~35_combout\ : std_logic;
SIGNAL \mem|ram[5][0]~combout\ : std_logic;
SIGNAL \mem|ram[6][0]~combout\ : std_logic;
SIGNAL \mem|ram[4][0]~combout\ : std_logic;
SIGNAL \mem|Mux7~22_combout\ : std_logic;
SIGNAL \mem|ram[7][0]~combout\ : std_logic;
SIGNAL \mem|Mux7~23_combout\ : std_logic;
SIGNAL \mem|ram[3][0]~combout\ : std_logic;
SIGNAL \mem|ram[1][0]~combout\ : std_logic;
SIGNAL \mem|ram[2][0]~combout\ : std_logic;
SIGNAL \mem|ram[0][0]~combout\ : std_logic;
SIGNAL \mem|Mux7~24_combout\ : std_logic;
SIGNAL \mem|Mux7~25_combout\ : std_logic;
SIGNAL \mem|Mux7~26_combout\ : std_logic;
SIGNAL \mem|ram[11][0]~combout\ : std_logic;
SIGNAL \mem|ram[9][0]~combout\ : std_logic;
SIGNAL \mem|ram[8][0]~combout\ : std_logic;
SIGNAL \mem|ram[10][0]~combout\ : std_logic;
SIGNAL \mem|Mux7~20_combout\ : std_logic;
SIGNAL \mem|Mux7~21_combout\ : std_logic;
SIGNAL \mem|Mux7~29_combout\ : std_logic;
SIGNAL \mem|ram[30][0]~combout\ : std_logic;
SIGNAL \mem|ram[28][0]~combout\ : std_logic;
SIGNAL \mem|ram[24][0]~combout\ : std_logic;
SIGNAL \mem|ram[26][0]~combout\ : std_logic;
SIGNAL \mem|Mux7~10_combout\ : std_logic;
SIGNAL \mem|Mux7~11_combout\ : std_logic;
SIGNAL \mem|ram[31][0]~combout\ : std_logic;
SIGNAL \mem|ram[29][0]~combout\ : std_logic;
SIGNAL \mem|ram[25][0]~combout\ : std_logic;
SIGNAL \mem|ram[27][0]~combout\ : std_logic;
SIGNAL \mem|Mux7~17_combout\ : std_logic;
SIGNAL \mem|Mux7~18_combout\ : std_logic;
SIGNAL \mem|ram[23][0]~combout\ : std_logic;
SIGNAL \mem|ram[21][0]~combout\ : std_logic;
SIGNAL \mem|ram[19][0]~combout\ : std_logic;
SIGNAL \mem|ram[17][0]~combout\ : std_logic;
SIGNAL \mem|Mux7~12_combout\ : std_logic;
SIGNAL \mem|Mux7~13_combout\ : std_logic;
SIGNAL \mem|ram[20][0]~combout\ : std_logic;
SIGNAL \mem|ram[22][0]~combout\ : std_logic;
SIGNAL \mem|ram[18][0]~combout\ : std_logic;
SIGNAL \mem|ram[16][0]~combout\ : std_logic;
SIGNAL \mem|Mux7~14_combout\ : std_logic;
SIGNAL \mem|Mux7~15_combout\ : std_logic;
SIGNAL \mem|Mux7~16_combout\ : std_logic;
SIGNAL \mem|Mux7~19_combout\ : std_logic;
SIGNAL \mem|Mux7~30_combout\ : std_logic;
SIGNAL \mem|ram[57][0]~combout\ : std_logic;
SIGNAL \mem|ram[59][0]~combout\ : std_logic;
SIGNAL \mem|ram[56][0]~combout\ : std_logic;
SIGNAL \mem|ram[58][0]~combout\ : std_logic;
SIGNAL \mem|Mux7~31_combout\ : std_logic;
SIGNAL \mem|Mux7~32_combout\ : std_logic;
SIGNAL \mem|ram[60][0]~combout\ : std_logic;
SIGNAL \mem|ram[61][0]~combout\ : std_logic;
SIGNAL \mem|Mux7~38_combout\ : std_logic;
SIGNAL \mem|ram[63][0]~combout\ : std_logic;
SIGNAL \mem|ram[62][0]~combout\ : std_logic;
SIGNAL \mem|Mux7~39_combout\ : std_logic;
SIGNAL \mem|ram[51][0]~combout\ : std_logic;
SIGNAL \mem|ram[50][0]~combout\ : std_logic;
SIGNAL \mem|ram[48][0]~combout\ : std_logic;
SIGNAL \mem|ram[49][0]~combout\ : std_logic;
SIGNAL \mem|Mux7~35_combout\ : std_logic;
SIGNAL \mem|Mux7~36_combout\ : std_logic;
SIGNAL \mem|ram[55][0]~combout\ : std_logic;
SIGNAL \mem|ram[54][0]~combout\ : std_logic;
SIGNAL \mem|ram[53][0]~combout\ : std_logic;
SIGNAL \mem|ram[52][0]~combout\ : std_logic;
SIGNAL \mem|Mux7~33_combout\ : std_logic;
SIGNAL \mem|Mux7~34_combout\ : std_logic;
SIGNAL \mem|Mux7~37_combout\ : std_logic;
SIGNAL \mem|Mux7~40_combout\ : std_logic;
SIGNAL \mem|ram[45][0]~combout\ : std_logic;
SIGNAL \mem|ram[41][0]~combout\ : std_logic;
SIGNAL \mem|ram[44][0]~combout\ : std_logic;
SIGNAL \mem|ram[40][0]~combout\ : std_logic;
SIGNAL \mem|Mux7~0_combout\ : std_logic;
SIGNAL \mem|Mux7~1_combout\ : std_logic;
SIGNAL \mem|ram[46][0]~combout\ : std_logic;
SIGNAL \mem|ram[47][0]~combout\ : std_logic;
SIGNAL \mem|ram[42][0]~combout\ : std_logic;
SIGNAL \mem|ram[43][0]~combout\ : std_logic;
SIGNAL \mem|Mux7~7_combout\ : std_logic;
SIGNAL \mem|Mux7~8_combout\ : std_logic;
SIGNAL \mem|ram[38][0]~combout\ : std_logic;
SIGNAL \mem|ram[34][0]~combout\ : std_logic;
SIGNAL \mem|ram[35][0]~combout\ : std_logic;
SIGNAL \mem|Mux7~2_combout\ : std_logic;
SIGNAL \mem|ram[39][0]~combout\ : std_logic;
SIGNAL \mem|Mux7~3_combout\ : std_logic;
SIGNAL \mem|ram[37][0]~combout\ : std_logic;
SIGNAL \mem|ram[33][0]~combout\ : std_logic;
SIGNAL \mem|ram[36][0]~combout\ : std_logic;
SIGNAL \mem|ram[32][0]~combout\ : std_logic;
SIGNAL \mem|Mux7~4_combout\ : std_logic;
SIGNAL \mem|Mux7~5_combout\ : std_logic;
SIGNAL \mem|Mux7~6_combout\ : std_logic;
SIGNAL \mem|Mux7~9_combout\ : std_logic;
SIGNAL \mem|Mux7~41_combout\ : std_logic;
SIGNAL \ir|dBus[0]~26_combout\ : std_logic;
SIGNAL \pc|Add0~1\ : std_logic;
SIGNAL \pc|Add0~2_combout\ : std_logic;
SIGNAL \pc|Add0~3\ : std_logic;
SIGNAL \pc|Add0~4_combout\ : std_logic;
SIGNAL \pc|Add0~5\ : std_logic;
SIGNAL \pc|Add0~6_combout\ : std_logic;
SIGNAL \pc|Add0~7\ : std_logic;
SIGNAL \pc|Add0~8_combout\ : std_logic;
SIGNAL \ir|aBus[4]~4_combout\ : std_logic;
SIGNAL \mem|ram[62][1]~combout\ : std_logic;
SIGNAL \mem|ram[56][1]~combout\ : std_logic;
SIGNAL \mem|ram[58][1]~combout\ : std_logic;
SIGNAL \mem|Mux6~31_combout\ : std_logic;
SIGNAL \mem|ram[60][1]~combout\ : std_logic;
SIGNAL \mem|Mux6~32_combout\ : std_logic;
SIGNAL \mem|ram[41][1]~combout\ : std_logic;
SIGNAL \mem|ram[43][1]~combout\ : std_logic;
SIGNAL \mem|Mux6~33_combout\ : std_logic;
SIGNAL \mem|ram[45][1]~combout\ : std_logic;
SIGNAL \mem|ram[47][1]~combout\ : std_logic;
SIGNAL \mem|Mux6~34_combout\ : std_logic;
SIGNAL \mem|ram[46][1]~combout\ : std_logic;
SIGNAL \mem|ram[44][1]~combout\ : std_logic;
SIGNAL \mem|ram[40][1]~combout\ : std_logic;
SIGNAL \mem|ram[42][1]~combout\ : std_logic;
SIGNAL \mem|Mux6~35_combout\ : std_logic;
SIGNAL \mem|Mux6~36_combout\ : std_logic;
SIGNAL \mem|Mux6~37_combout\ : std_logic;
SIGNAL \mem|ram[63][1]~combout\ : std_logic;
SIGNAL \mem|ram[61][1]~combout\ : std_logic;
SIGNAL \mem|ram[59][1]~combout\ : std_logic;
SIGNAL \mem|ram[57][1]~combout\ : std_logic;
SIGNAL \mem|Mux6~38_combout\ : std_logic;
SIGNAL \mem|Mux6~39_combout\ : std_logic;
SIGNAL \mem|Mux6~40_combout\ : std_logic;
SIGNAL \mem|ram[53][1]~combout\ : std_logic;
SIGNAL \mem|ram[49][1]~combout\ : std_logic;
SIGNAL \mem|ram[48][1]~combout\ : std_logic;
SIGNAL \mem|ram[52][1]~combout\ : std_logic;
SIGNAL \mem|Mux6~0_combout\ : std_logic;
SIGNAL \mem|Mux6~1_combout\ : std_logic;
SIGNAL \mem|ram[55][1]~combout\ : std_logic;
SIGNAL \mem|ram[51][1]~combout\ : std_logic;
SIGNAL \mem|ram[50][1]~combout\ : std_logic;
SIGNAL \mem|ram[54][1]~combout\ : std_logic;
SIGNAL \mem|Mux6~7_combout\ : std_logic;
SIGNAL \mem|Mux6~8_combout\ : std_logic;
SIGNAL \mem|ram[39][1]~combout\ : std_logic;
SIGNAL \mem|ram[35][1]~combout\ : std_logic;
SIGNAL \mem|ram[38][1]~combout\ : std_logic;
SIGNAL \mem|ram[34][1]~combout\ : std_logic;
SIGNAL \mem|Mux6~2_combout\ : std_logic;
SIGNAL \mem|Mux6~3_combout\ : std_logic;
SIGNAL \mem|ram[37][1]~combout\ : std_logic;
SIGNAL \mem|ram[33][1]~combout\ : std_logic;
SIGNAL \mem|ram[32][1]~combout\ : std_logic;
SIGNAL \mem|ram[36][1]~combout\ : std_logic;
SIGNAL \mem|Mux6~4_combout\ : std_logic;
SIGNAL \mem|Mux6~5_combout\ : std_logic;
SIGNAL \mem|Mux6~6_combout\ : std_logic;
SIGNAL \mem|Mux6~9_combout\ : std_logic;
SIGNAL \mem|ram[22][1]~combout\ : std_logic;
SIGNAL \mem|ram[16][1]~combout\ : std_logic;
SIGNAL \mem|ram[18][1]~combout\ : std_logic;
SIGNAL \mem|Mux6~20_combout\ : std_logic;
SIGNAL \mem|ram[20][1]~combout\ : std_logic;
SIGNAL \mem|Mux6~21_combout\ : std_logic;
SIGNAL \mem|ram[21][1]~combout\ : std_logic;
SIGNAL \mem|ram[19][1]~combout\ : std_logic;
SIGNAL \mem|ram[17][1]~combout\ : std_logic;
SIGNAL \mem|Mux6~27_combout\ : std_logic;
SIGNAL \mem|ram[23][1]~combout\ : std_logic;
SIGNAL \mem|Mux6~28_combout\ : std_logic;
SIGNAL \ir|dBus[1]~36_combout\ : std_logic;
SIGNAL \mem|ram[5][1]~combout\ : std_logic;
SIGNAL \mem|ram[7][1]~combout\ : std_logic;
SIGNAL \mem|ram[3][1]~combout\ : std_logic;
SIGNAL \mem|ram[1][1]~combout\ : std_logic;
SIGNAL \mem|Mux6~22_combout\ : std_logic;
SIGNAL \mem|Mux6~23_combout\ : std_logic;
SIGNAL \mem|ram[4][1]~combout\ : std_logic;
SIGNAL \mem|ram[6][1]~combout\ : std_logic;
SIGNAL \mem|ram[2][1]~combout\ : std_logic;
SIGNAL \mem|ram[0][1]~combout\ : std_logic;
SIGNAL \mem|Mux6~24_combout\ : std_logic;
SIGNAL \mem|Mux6~25_combout\ : std_logic;
SIGNAL \mem|Mux6~26_combout\ : std_logic;
SIGNAL \mem|Mux6~29_combout\ : std_logic;
SIGNAL \mem|ram[30][1]~combout\ : std_logic;
SIGNAL \mem|ram[28][1]~combout\ : std_logic;
SIGNAL \mem|ram[29][1]~combout\ : std_logic;
SIGNAL \mem|Mux6~17_combout\ : std_logic;
SIGNAL \mem|ram[31][1]~combout\ : std_logic;
SIGNAL \mem|Mux6~18_combout\ : std_logic;
SIGNAL \mem|ram[27][1]~combout\ : std_logic;
SIGNAL \mem|ram[26][1]~combout\ : std_logic;
SIGNAL \mem|ram[24][1]~combout\ : std_logic;
SIGNAL \mem|ram[25][1]~combout\ : std_logic;
SIGNAL \mem|Mux6~10_combout\ : std_logic;
SIGNAL \mem|Mux6~11_combout\ : std_logic;
SIGNAL \mem|ram[11][1]~combout\ : std_logic;
SIGNAL \mem|ram[8][1]~combout\ : std_logic;
SIGNAL \mem|ram[9][1]~combout\ : std_logic;
SIGNAL \mem|Mux6~14_combout\ : std_logic;
SIGNAL \mem|ram[10][1]~combout\ : std_logic;
SIGNAL \mem|Mux6~15_combout\ : std_logic;
SIGNAL \mem|ram[15][1]~combout\ : std_logic;
SIGNAL \mem|ram[14][1]~combout\ : std_logic;
SIGNAL \mem|ram[13][1]~combout\ : std_logic;
SIGNAL \mem|ram[12][1]~combout\ : std_logic;
SIGNAL \mem|Mux6~12_combout\ : std_logic;
SIGNAL \mem|Mux6~13_combout\ : std_logic;
SIGNAL \mem|Mux6~16_combout\ : std_logic;
SIGNAL \mem|Mux6~19_combout\ : std_logic;
SIGNAL \mem|Mux6~30_combout\ : std_logic;
SIGNAL \mem|Mux6~41_combout\ : std_logic;
SIGNAL \aluu|Add0~9_combout\ : std_logic;
SIGNAL \acc|accReg~9_combout\ : std_logic;
SIGNAL \aluu|Mult1|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \aluu|Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \acc|accReg~10_combout\ : std_logic;
SIGNAL \acc|accReg~11_combout\ : std_logic;
SIGNAL \ir|dBus[1]~12_combout\ : std_logic;
SIGNAL \aluu|Mult1|auto_generated|op_1~3\ : std_logic;
SIGNAL \aluu|Mult1|auto_generated|op_1~5\ : std_logic;
SIGNAL \aluu|Mult1|auto_generated|op_1~7\ : std_logic;
SIGNAL \aluu|Mult1|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \aluu|Mult1|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \aluu|Mult1|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \aluu|Mult1|auto_generated|op_3~7\ : std_logic;
SIGNAL \aluu|Mult1|auto_generated|op_3~9\ : std_logic;
SIGNAL \aluu|Mult1|auto_generated|op_3~11\ : std_logic;
SIGNAL \aluu|Mult1|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \aluu|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \aluu|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \aluu|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \aluu|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \aluu|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \aluu|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \aluu|Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \aluu|Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \aluu|Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \aluu|Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \aluu|Add0~28_combout\ : std_logic;
SIGNAL \aluu|Add0~27_combout\ : std_logic;
SIGNAL \aluu|Add0~23_combout\ : std_logic;
SIGNAL \aluu|Add0~20_combout\ : std_logic;
SIGNAL \aluu|Add0~19_combout\ : std_logic;
SIGNAL \aluu|Add0~18\ : std_logic;
SIGNAL \aluu|Add0~22\ : std_logic;
SIGNAL \aluu|Add0~25_combout\ : std_logic;
SIGNAL \acc|accReg~21_combout\ : std_logic;
SIGNAL \aluu|Mult1|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \aluu|Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \acc|accReg~22_combout\ : std_logic;
SIGNAL \acc|accReg~23_combout\ : std_logic;
SIGNAL \aluu|Add0~24_combout\ : std_logic;
SIGNAL \aluu|Add0~26\ : std_logic;
SIGNAL \aluu|Add0~29_combout\ : std_logic;
SIGNAL \acc|accReg~24_combout\ : std_logic;
SIGNAL \acc|accReg~25_combout\ : std_logic;
SIGNAL \acc|accReg~26_combout\ : std_logic;
SIGNAL \ir|dBus[6]~22_combout\ : std_logic;
SIGNAL \mem|ram[59][6]~combout\ : std_logic;
SIGNAL \mem|ram[58][6]~combout\ : std_logic;
SIGNAL \mem|ram[51][6]~combout\ : std_logic;
SIGNAL \mem|ram[50][6]~combout\ : std_logic;
SIGNAL \mem|Mux1~31_combout\ : std_logic;
SIGNAL \mem|Mux1~32_combout\ : std_logic;
SIGNAL \mem|ram[56][6]~combout\ : std_logic;
SIGNAL \mem|ram[57][6]~combout\ : std_logic;
SIGNAL \mem|ram[49][6]~combout\ : std_logic;
SIGNAL \mem|ram[48][6]~combout\ : std_logic;
SIGNAL \mem|Mux1~35_combout\ : std_logic;
SIGNAL \mem|Mux1~36_combout\ : std_logic;
SIGNAL \mem|ram[60][6]~combout\ : std_logic;
SIGNAL \mem|ram[61][6]~combout\ : std_logic;
SIGNAL \mem|ram[53][6]~combout\ : std_logic;
SIGNAL \mem|ram[52][6]~combout\ : std_logic;
SIGNAL \mem|Mux1~33_combout\ : std_logic;
SIGNAL \mem|Mux1~34_combout\ : std_logic;
SIGNAL \mem|Mux1~37_combout\ : std_logic;
SIGNAL \mem|ram[63][6]~combout\ : std_logic;
SIGNAL \mem|ram[62][6]~combout\ : std_logic;
SIGNAL \mem|ram[54][6]~combout\ : std_logic;
SIGNAL \mem|ram[55][6]~combout\ : std_logic;
SIGNAL \mem|Mux1~38_combout\ : std_logic;
SIGNAL \mem|Mux1~39_combout\ : std_logic;
SIGNAL \mem|Mux1~40_combout\ : std_logic;
SIGNAL \mem|ram[47][6]~combout\ : std_logic;
SIGNAL \mem|ram[43][6]~combout\ : std_logic;
SIGNAL \mem|ram[39][6]~combout\ : std_logic;
SIGNAL \mem|ram[35][6]~combout\ : std_logic;
SIGNAL \mem|Mux1~7_combout\ : std_logic;
SIGNAL \mem|Mux1~8_combout\ : std_logic;
SIGNAL \mem|ram[45][6]~combout\ : std_logic;
SIGNAL \mem|ram[41][6]~combout\ : std_logic;
SIGNAL \mem|ram[33][6]~combout\ : std_logic;
SIGNAL \mem|ram[37][6]~combout\ : std_logic;
SIGNAL \mem|Mux1~0_combout\ : std_logic;
SIGNAL \mem|Mux1~1_combout\ : std_logic;
SIGNAL \mem|ram[42][6]~combout\ : std_logic;
SIGNAL \mem|ram[46][6]~combout\ : std_logic;
SIGNAL \mem|ram[34][6]~combout\ : std_logic;
SIGNAL \mem|ram[38][6]~combout\ : std_logic;
SIGNAL \mem|Mux1~2_combout\ : std_logic;
SIGNAL \mem|Mux1~3_combout\ : std_logic;
SIGNAL \mem|ram[40][6]~combout\ : std_logic;
SIGNAL \mem|ram[44][6]~combout\ : std_logic;
SIGNAL \mem|ram[36][6]~combout\ : std_logic;
SIGNAL \mem|ram[32][6]~combout\ : std_logic;
SIGNAL \mem|Mux1~4_combout\ : std_logic;
SIGNAL \mem|Mux1~5_combout\ : std_logic;
SIGNAL \mem|Mux1~6_combout\ : std_logic;
SIGNAL \mem|Mux1~9_combout\ : std_logic;
SIGNAL \mem|ram[28][6]~combout\ : std_logic;
SIGNAL \mem|ram[30][6]~combout\ : std_logic;
SIGNAL \mem|ram[20][6]~combout\ : std_logic;
SIGNAL \mem|ram[22][6]~combout\ : std_logic;
SIGNAL \mem|Mux1~10_combout\ : std_logic;
SIGNAL \mem|Mux1~11_combout\ : std_logic;
SIGNAL \mem|ram[31][6]~combout\ : std_logic;
SIGNAL \mem|ram[29][6]~combout\ : std_logic;
SIGNAL \mem|ram[21][6]~combout\ : std_logic;
SIGNAL \mem|ram[23][6]~combout\ : std_logic;
SIGNAL \mem|Mux1~17_combout\ : std_logic;
SIGNAL \mem|Mux1~18_combout\ : std_logic;
SIGNAL \mem|ram[24][6]~combout\ : std_logic;
SIGNAL \mem|ram[26][6]~combout\ : std_logic;
SIGNAL \mem|ram[18][6]~combout\ : std_logic;
SIGNAL \mem|ram[16][6]~combout\ : std_logic;
SIGNAL \mem|Mux1~14_combout\ : std_logic;
SIGNAL \mem|Mux1~15_combout\ : std_logic;
SIGNAL \mem|ram[25][6]~combout\ : std_logic;
SIGNAL \mem|ram[27][6]~combout\ : std_logic;
SIGNAL \mem|ram[19][6]~combout\ : std_logic;
SIGNAL \mem|ram[17][6]~combout\ : std_logic;
SIGNAL \mem|Mux1~12_combout\ : std_logic;
SIGNAL \mem|Mux1~13_combout\ : std_logic;
SIGNAL \mem|Mux1~16_combout\ : std_logic;
SIGNAL \mem|Mux1~19_combout\ : std_logic;
SIGNAL \mem|ram[14][6]~combout\ : std_logic;
SIGNAL \mem|ram[15][6]~combout\ : std_logic;
SIGNAL \ir|dBus[6]~41_combout\ : std_logic;
SIGNAL \mem|ram[6][6]~combout\ : std_logic;
SIGNAL \mem|ram[7][6]~combout\ : std_logic;
SIGNAL \mem|Mux1~27_combout\ : std_logic;
SIGNAL \mem|Mux1~28_combout\ : std_logic;
SIGNAL \mem|ram[12][6]~combout\ : std_logic;
SIGNAL \mem|ram[13][6]~combout\ : std_logic;
SIGNAL \mem|ram[4][6]~combout\ : std_logic;
SIGNAL \mem|ram[5][6]~combout\ : std_logic;
SIGNAL \mem|Mux1~22_combout\ : std_logic;
SIGNAL \mem|Mux1~23_combout\ : std_logic;
SIGNAL \mem|ram[9][6]~combout\ : std_logic;
SIGNAL \mem|ram[8][6]~combout\ : std_logic;
SIGNAL \mem|ram[0][6]~combout\ : std_logic;
SIGNAL \mem|ram[1][6]~combout\ : std_logic;
SIGNAL \mem|Mux1~24_combout\ : std_logic;
SIGNAL \mem|Mux1~25_combout\ : std_logic;
SIGNAL \mem|Mux1~26_combout\ : std_logic;
SIGNAL \mem|ram[11][6]~combout\ : std_logic;
SIGNAL \mem|ram[3][6]~combout\ : std_logic;
SIGNAL \mem|ram[2][6]~combout\ : std_logic;
SIGNAL \mem|Mux1~20_combout\ : std_logic;
SIGNAL \mem|ram[10][6]~combout\ : std_logic;
SIGNAL \mem|Mux1~21_combout\ : std_logic;
SIGNAL \mem|Mux1~29_combout\ : std_logic;
SIGNAL \mem|Mux1~30_combout\ : std_logic;
SIGNAL \mem|Mux1~41_combout\ : std_logic;
SIGNAL \ir|dBus[6]~32_combout\ : std_logic;
SIGNAL \ir|irReg~9_combout\ : std_logic;
SIGNAL \ir|irReg[7]~5_combout\ : std_logic;
SIGNAL \ctl|state~57_combout\ : std_logic;
SIGNAL \ctl|state~58_combout\ : std_logic;
SIGNAL \ctl|state.not0~q\ : std_logic;
SIGNAL \ctl|state~60_combout\ : std_logic;
SIGNAL \ctl|state.branch1~q\ : std_logic;
SIGNAL \ctl|state.reset_state~0_combout\ : std_logic;
SIGNAL \ctl|state.reset_state~q\ : std_logic;
SIGNAL \ctl|ir_enA~0_combout\ : std_logic;
SIGNAL \ctl|mem_enD~combout\ : std_logic;
SIGNAL \mem|dBus~0_combout\ : std_logic;
SIGNAL \mem|ram[63][4]~combout\ : std_logic;
SIGNAL \mem|ram[61][4]~combout\ : std_logic;
SIGNAL \mem|ram[45][4]~combout\ : std_logic;
SIGNAL \mem|ram[47][4]~combout\ : std_logic;
SIGNAL \mem|Mux3~38_combout\ : std_logic;
SIGNAL \mem|Mux3~39_combout\ : std_logic;
SIGNAL \mem|ram[59][4]~combout\ : std_logic;
SIGNAL \mem|ram[57][4]~combout\ : std_logic;
SIGNAL \mem|ram[43][4]~combout\ : std_logic;
SIGNAL \mem|ram[41][4]~combout\ : std_logic;
SIGNAL \mem|Mux3~31_combout\ : std_logic;
SIGNAL \mem|Mux3~32_combout\ : std_logic;
SIGNAL \mem|ram[60][4]~combout\ : std_logic;
SIGNAL \mem|ram[46][4]~combout\ : std_logic;
SIGNAL \mem|ram[44][4]~combout\ : std_logic;
SIGNAL \mem|Mux3~33_combout\ : std_logic;
SIGNAL \mem|ram[62][4]~combout\ : std_logic;
SIGNAL \mem|Mux3~34_combout\ : std_logic;
SIGNAL \mem|ram[56][4]~combout\ : std_logic;
SIGNAL \mem|ram[58][4]~combout\ : std_logic;
SIGNAL \mem|ram[40][4]~combout\ : std_logic;
SIGNAL \mem|ram[42][4]~combout\ : std_logic;
SIGNAL \mem|Mux3~35_combout\ : std_logic;
SIGNAL \mem|Mux3~36_combout\ : std_logic;
SIGNAL \mem|Mux3~37_combout\ : std_logic;
SIGNAL \mem|Mux3~40_combout\ : std_logic;
SIGNAL \mem|ram[23][4]~combout\ : std_logic;
SIGNAL \mem|ram[19][4]~combout\ : std_logic;
SIGNAL \ir|dBus[4]~39_combout\ : std_logic;
SIGNAL \mem|ram[3][4]~combout\ : std_logic;
SIGNAL \mem|ram[7][4]~combout\ : std_logic;
SIGNAL \mem|Mux3~27_combout\ : std_logic;
SIGNAL \mem|Mux3~28_combout\ : std_logic;
SIGNAL \mem|ram[22][4]~combout\ : std_logic;
SIGNAL \mem|ram[18][4]~combout\ : std_logic;
SIGNAL \mem|ram[2][4]~combout\ : std_logic;
SIGNAL \mem|ram[6][4]~combout\ : std_logic;
SIGNAL \mem|Mux3~22_combout\ : std_logic;
SIGNAL \mem|Mux3~23_combout\ : std_logic;
SIGNAL \mem|ram[16][4]~combout\ : std_logic;
SIGNAL \mem|ram[20][4]~combout\ : std_logic;
SIGNAL \mem|ram[4][4]~combout\ : std_logic;
SIGNAL \mem|ram[0][4]~combout\ : std_logic;
SIGNAL \mem|Mux3~24_combout\ : std_logic;
SIGNAL \mem|Mux3~25_combout\ : std_logic;
SIGNAL \mem|Mux3~26_combout\ : std_logic;
SIGNAL \mem|ram[21][4]~combout\ : std_logic;
SIGNAL \mem|ram[17][4]~combout\ : std_logic;
SIGNAL \mem|ram[1][4]~combout\ : std_logic;
SIGNAL \mem|ram[5][4]~combout\ : std_logic;
SIGNAL \mem|Mux3~20_combout\ : std_logic;
SIGNAL \mem|Mux3~21_combout\ : std_logic;
SIGNAL \mem|Mux3~29_combout\ : std_logic;
SIGNAL \mem|ram[31][4]~combout\ : std_logic;
SIGNAL \mem|ram[27][4]~combout\ : std_logic;
SIGNAL \mem|ram[26][4]~combout\ : std_logic;
SIGNAL \mem|ram[30][4]~combout\ : std_logic;
SIGNAL \mem|Mux3~17_combout\ : std_logic;
SIGNAL \mem|Mux3~18_combout\ : std_logic;
SIGNAL \mem|ram[25][4]~combout\ : std_logic;
SIGNAL \mem|ram[29][4]~combout\ : std_logic;
SIGNAL \mem|ram[28][4]~combout\ : std_logic;
SIGNAL \mem|ram[24][4]~combout\ : std_logic;
SIGNAL \mem|Mux3~10_combout\ : std_logic;
SIGNAL \mem|Mux3~11_combout\ : std_logic;
SIGNAL \mem|ram[13][4]~combout\ : std_logic;
SIGNAL \mem|ram[9][4]~combout\ : std_logic;
SIGNAL \mem|ram[8][4]~combout\ : std_logic;
SIGNAL \mem|Mux3~14_combout\ : std_logic;
SIGNAL \mem|ram[12][4]~combout\ : std_logic;
SIGNAL \mem|Mux3~15_combout\ : std_logic;
SIGNAL \mem|ram[14][4]~combout\ : std_logic;
SIGNAL \mem|ram[15][4]~combout\ : std_logic;
SIGNAL \mem|ram[10][4]~combout\ : std_logic;
SIGNAL \mem|ram[11][4]~combout\ : std_logic;
SIGNAL \mem|Mux3~12_combout\ : std_logic;
SIGNAL \mem|Mux3~13_combout\ : std_logic;
SIGNAL \mem|Mux3~16_combout\ : std_logic;
SIGNAL \mem|Mux3~19_combout\ : std_logic;
SIGNAL \mem|Mux3~30_combout\ : std_logic;
SIGNAL \mem|ram[52][4]~combout\ : std_logic;
SIGNAL \mem|ram[54][4]~combout\ : std_logic;
SIGNAL \mem|ram[36][4]~combout\ : std_logic;
SIGNAL \mem|ram[38][4]~combout\ : std_logic;
SIGNAL \mem|Mux3~0_combout\ : std_logic;
SIGNAL \mem|Mux3~1_combout\ : std_logic;
SIGNAL \mem|ram[49][4]~combout\ : std_logic;
SIGNAL \mem|ram[51][4]~combout\ : std_logic;
SIGNAL \mem|ram[33][4]~combout\ : std_logic;
SIGNAL \mem|ram[35][4]~combout\ : std_logic;
SIGNAL \mem|Mux3~2_combout\ : std_logic;
SIGNAL \mem|Mux3~3_combout\ : std_logic;
SIGNAL \mem|ram[50][4]~combout\ : std_logic;
SIGNAL \mem|ram[48][4]~combout\ : std_logic;
SIGNAL \mem|ram[34][4]~combout\ : std_logic;
SIGNAL \mem|ram[32][4]~combout\ : std_logic;
SIGNAL \mem|Mux3~4_combout\ : std_logic;
SIGNAL \mem|Mux3~5_combout\ : std_logic;
SIGNAL \mem|Mux3~6_combout\ : std_logic;
SIGNAL \mem|ram[55][4]~combout\ : std_logic;
SIGNAL \mem|ram[53][4]~combout\ : std_logic;
SIGNAL \mem|ram[37][4]~combout\ : std_logic;
SIGNAL \mem|ram[39][4]~combout\ : std_logic;
SIGNAL \mem|Mux3~7_combout\ : std_logic;
SIGNAL \mem|Mux3~8_combout\ : std_logic;
SIGNAL \mem|Mux3~9_combout\ : std_logic;
SIGNAL \mem|Mux3~41_combout\ : std_logic;
SIGNAL \ir|dBus[4]~30_combout\ : std_logic;
SIGNAL \aluu|Add0~21_combout\ : std_logic;
SIGNAL \acc|accReg~18_combout\ : std_logic;
SIGNAL \aluu|Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \aluu|Mult1|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \acc|accReg~19_combout\ : std_logic;
SIGNAL \acc|accReg~20_combout\ : std_logic;
SIGNAL \ir|dBus[4]~18_combout\ : std_logic;
SIGNAL \ir|irReg~6_combout\ : std_logic;
SIGNAL \ir|irReg~7_combout\ : std_logic;
SIGNAL \ctl|state~63_combout\ : std_logic;
SIGNAL \ctl|state.branch0~q\ : std_logic;
SIGNAL \ir|dBus[0]~10_combout\ : std_logic;
SIGNAL \ir|dBus[0]~11_combout\ : std_logic;
SIGNAL \acc|accReg~27_combout\ : std_logic;
SIGNAL \acc|accReg~28_combout\ : std_logic;
SIGNAL \acc|accReg~29_combout\ : std_logic;
SIGNAL \acc|accReg~30_combout\ : std_logic;
SIGNAL \aluu|Add0~31_combout\ : std_logic;
SIGNAL \aluu|Add0~32_combout\ : std_logic;
SIGNAL \aluu|Add0~30\ : std_logic;
SIGNAL \aluu|Add0~33_combout\ : std_logic;
SIGNAL \aluu|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \aluu|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \aluu|Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \aluu|Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \aluu|Mult1|auto_generated|op_1~9\ : std_logic;
SIGNAL \aluu|Mult1|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \aluu|Mult1|auto_generated|op_3~13\ : std_logic;
SIGNAL \aluu|Mult1|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \acc|accReg~31_combout\ : std_logic;
SIGNAL \acc|accReg~32_combout\ : std_logic;
SIGNAL \acc|accReg~33_combout\ : std_logic;
SIGNAL \ir|dBus[7]~24_combout\ : std_logic;
SIGNAL \mem|ram[44][7]~combout\ : std_logic;
SIGNAL \mem|ram[46][7]~combout\ : std_logic;
SIGNAL \mem|Mux0~31_combout\ : std_logic;
SIGNAL \mem|ram[62][7]~combout\ : std_logic;
SIGNAL \mem|ram[60][7]~combout\ : std_logic;
SIGNAL \mem|Mux0~32_combout\ : std_logic;
SIGNAL \mem|ram[58][7]~combout\ : std_logic;
SIGNAL \mem|ram[56][7]~combout\ : std_logic;
SIGNAL \mem|ram[42][7]~combout\ : std_logic;
SIGNAL \mem|ram[40][7]~combout\ : std_logic;
SIGNAL \mem|Mux0~35_combout\ : std_logic;
SIGNAL \mem|Mux0~36_combout\ : std_logic;
SIGNAL \mem|ram[57][7]~combout\ : std_logic;
SIGNAL \mem|ram[59][7]~combout\ : std_logic;
SIGNAL \mem|ram[41][7]~combout\ : std_logic;
SIGNAL \mem|ram[43][7]~combout\ : std_logic;
SIGNAL \mem|Mux0~33_combout\ : std_logic;
SIGNAL \mem|Mux0~34_combout\ : std_logic;
SIGNAL \mem|Mux0~37_combout\ : std_logic;
SIGNAL \mem|ram[63][7]~combout\ : std_logic;
SIGNAL \mem|ram[61][7]~combout\ : std_logic;
SIGNAL \mem|ram[45][7]~combout\ : std_logic;
SIGNAL \mem|ram[47][7]~combout\ : std_logic;
SIGNAL \mem|Mux0~38_combout\ : std_logic;
SIGNAL \mem|Mux0~39_combout\ : std_logic;
SIGNAL \mem|Mux0~40_combout\ : std_logic;
SIGNAL \mem|ram[51][7]~combout\ : std_logic;
SIGNAL \mem|ram[55][7]~combout\ : std_logic;
SIGNAL \mem|ram[35][7]~combout\ : std_logic;
SIGNAL \mem|ram[39][7]~combout\ : std_logic;
SIGNAL \mem|Mux0~7_combout\ : std_logic;
SIGNAL \mem|Mux0~8_combout\ : std_logic;
SIGNAL \mem|ram[49][7]~combout\ : std_logic;
SIGNAL \mem|ram[53][7]~combout\ : std_logic;
SIGNAL \mem|ram[33][7]~combout\ : std_logic;
SIGNAL \mem|ram[37][7]~combout\ : std_logic;
SIGNAL \mem|Mux0~0_combout\ : std_logic;
SIGNAL \mem|Mux0~1_combout\ : std_logic;
SIGNAL \mem|ram[50][7]~combout\ : std_logic;
SIGNAL \mem|ram[54][7]~combout\ : std_logic;
SIGNAL \mem|ram[34][7]~combout\ : std_logic;
SIGNAL \mem|ram[38][7]~combout\ : std_logic;
SIGNAL \mem|Mux0~2_combout\ : std_logic;
SIGNAL \mem|Mux0~3_combout\ : std_logic;
SIGNAL \mem|ram[52][7]~combout\ : std_logic;
SIGNAL \mem|ram[48][7]~combout\ : std_logic;
SIGNAL \mem|ram[36][7]~combout\ : std_logic;
SIGNAL \mem|ram[32][7]~combout\ : std_logic;
SIGNAL \mem|Mux0~4_combout\ : std_logic;
SIGNAL \mem|Mux0~5_combout\ : std_logic;
SIGNAL \mem|Mux0~6_combout\ : std_logic;
SIGNAL \mem|Mux0~9_combout\ : std_logic;
SIGNAL \mem|ram[31][7]~combout\ : std_logic;
SIGNAL \mem|ram[30][7]~combout\ : std_logic;
SIGNAL \mem|ram[14][7]~combout\ : std_logic;
SIGNAL \mem|ram[15][7]~combout\ : std_logic;
SIGNAL \mem|Mux0~17_combout\ : std_logic;
SIGNAL \mem|Mux0~18_combout\ : std_logic;
SIGNAL \mem|ram[11][7]~combout\ : std_logic;
SIGNAL \mem|ram[10][7]~combout\ : std_logic;
SIGNAL \mem|Mux0~10_combout\ : std_logic;
SIGNAL \mem|ram[27][7]~combout\ : std_logic;
SIGNAL \mem|ram[26][7]~combout\ : std_logic;
SIGNAL \mem|Mux0~11_combout\ : std_logic;
SIGNAL \mem|ram[29][7]~combout\ : std_logic;
SIGNAL \mem|ram[13][7]~combout\ : std_logic;
SIGNAL \mem|ram[12][7]~combout\ : std_logic;
SIGNAL \mem|Mux0~12_combout\ : std_logic;
SIGNAL \mem|ram[28][7]~combout\ : std_logic;
SIGNAL \mem|Mux0~13_combout\ : std_logic;
SIGNAL \mem|ram[25][7]~combout\ : std_logic;
SIGNAL \mem|ram[24][7]~combout\ : std_logic;
SIGNAL \mem|ram[9][7]~combout\ : std_logic;
SIGNAL \ir|dBus[7]~42_combout\ : std_logic;
SIGNAL \mem|ram[8][7]~combout\ : std_logic;
SIGNAL \mem|Mux0~14_combout\ : std_logic;
SIGNAL \mem|Mux0~15_combout\ : std_logic;
SIGNAL \mem|Mux0~16_combout\ : std_logic;
SIGNAL \mem|Mux0~19_combout\ : std_logic;
SIGNAL \mem|ram[23][7]~combout\ : std_logic;
SIGNAL \mem|ram[5][7]~combout\ : std_logic;
SIGNAL \mem|ram[7][7]~combout\ : std_logic;
SIGNAL \mem|Mux0~27_combout\ : std_logic;
SIGNAL \mem|ram[21][7]~combout\ : std_logic;
SIGNAL \mem|Mux0~28_combout\ : std_logic;
SIGNAL \mem|ram[20][7]~combout\ : std_logic;
SIGNAL \mem|ram[22][7]~combout\ : std_logic;
SIGNAL \mem|ram[6][7]~combout\ : std_logic;
SIGNAL \mem|ram[4][7]~combout\ : std_logic;
SIGNAL \mem|Mux0~20_combout\ : std_logic;
SIGNAL \mem|Mux0~21_combout\ : std_logic;
SIGNAL \mem|ram[17][7]~combout\ : std_logic;
SIGNAL \mem|ram[19][7]~combout\ : std_logic;
SIGNAL \mem|ram[3][7]~combout\ : std_logic;
SIGNAL \mem|ram[1][7]~combout\ : std_logic;
SIGNAL \mem|Mux0~22_combout\ : std_logic;
SIGNAL \mem|Mux0~23_combout\ : std_logic;
SIGNAL \mem|ram[18][7]~combout\ : std_logic;
SIGNAL \mem|ram[16][7]~combout\ : std_logic;
SIGNAL \mem|ram[2][7]~combout\ : std_logic;
SIGNAL \mem|ram[0][7]~combout\ : std_logic;
SIGNAL \mem|Mux0~24_combout\ : std_logic;
SIGNAL \mem|Mux0~25_combout\ : std_logic;
SIGNAL \mem|Mux0~26_combout\ : std_logic;
SIGNAL \mem|Mux0~29_combout\ : std_logic;
SIGNAL \mem|Mux0~30_combout\ : std_logic;
SIGNAL \mem|Mux0~41_combout\ : std_logic;
SIGNAL \ir|dBus[7]~33_combout\ : std_logic;
SIGNAL \ir|irReg~4_combout\ : std_logic;
SIGNAL \ctl|state~54_combout\ : std_logic;
SIGNAL \ctl|state~55_combout\ : std_logic;
SIGNAL \ctl|state.store0~q\ : std_logic;
SIGNAL \ir|dBus[5]~20_combout\ : std_logic;
SIGNAL \mem|ram[46][5]~combout\ : std_logic;
SIGNAL \mem|ram[44][5]~combout\ : std_logic;
SIGNAL \mem|ram[14][5]~combout\ : std_logic;
SIGNAL \mem|ram[12][5]~combout\ : std_logic;
SIGNAL \mem|Mux2~0_combout\ : std_logic;
SIGNAL \mem|Mux2~1_combout\ : std_logic;
SIGNAL \mem|ram[45][5]~combout\ : std_logic;
SIGNAL \mem|ram[13][5]~combout\ : std_logic;
SIGNAL \mem|ram[15][5]~combout\ : std_logic;
SIGNAL \mem|Mux2~7_combout\ : std_logic;
SIGNAL \mem|ram[47][5]~combout\ : std_logic;
SIGNAL \mem|Mux2~8_combout\ : std_logic;
SIGNAL \mem|ram[40][5]~combout\ : std_logic;
SIGNAL \mem|ram[42][5]~combout\ : std_logic;
SIGNAL \ir|dBus[5]~40_combout\ : std_logic;
SIGNAL \mem|ram[8][5]~combout\ : std_logic;
SIGNAL \mem|ram[10][5]~combout\ : std_logic;
SIGNAL \mem|Mux2~4_combout\ : std_logic;
SIGNAL \mem|Mux2~5_combout\ : std_logic;
SIGNAL \mem|ram[41][5]~combout\ : std_logic;
SIGNAL \mem|ram[43][5]~combout\ : std_logic;
SIGNAL \mem|ram[9][5]~combout\ : std_logic;
SIGNAL \mem|ram[11][5]~combout\ : std_logic;
SIGNAL \mem|Mux2~2_combout\ : std_logic;
SIGNAL \mem|Mux2~3_combout\ : std_logic;
SIGNAL \mem|Mux2~6_combout\ : std_logic;
SIGNAL \mem|Mux2~9_combout\ : std_logic;
SIGNAL \mem|ram[25][5]~combout\ : std_logic;
SIGNAL \mem|ram[29][5]~combout\ : std_logic;
SIGNAL \mem|Mux2~31_combout\ : std_logic;
SIGNAL \mem|ram[61][5]~combout\ : std_logic;
SIGNAL \mem|ram[57][5]~combout\ : std_logic;
SIGNAL \mem|Mux2~32_combout\ : std_logic;
SIGNAL \mem|ram[59][5]~combout\ : std_logic;
SIGNAL \mem|ram[63][5]~combout\ : std_logic;
SIGNAL \mem|ram[31][5]~combout\ : std_logic;
SIGNAL \mem|ram[27][5]~combout\ : std_logic;
SIGNAL \mem|Mux2~38_combout\ : std_logic;
SIGNAL \mem|Mux2~39_combout\ : std_logic;
SIGNAL \mem|ram[56][5]~combout\ : std_logic;
SIGNAL \mem|ram[60][5]~combout\ : std_logic;
SIGNAL \mem|ram[24][5]~combout\ : std_logic;
SIGNAL \mem|ram[28][5]~combout\ : std_logic;
SIGNAL \mem|Mux2~35_combout\ : std_logic;
SIGNAL \mem|Mux2~36_combout\ : std_logic;
SIGNAL \mem|ram[62][5]~combout\ : std_logic;
SIGNAL \mem|ram[58][5]~combout\ : std_logic;
SIGNAL \mem|ram[30][5]~combout\ : std_logic;
SIGNAL \mem|ram[26][5]~combout\ : std_logic;
SIGNAL \mem|Mux2~33_combout\ : std_logic;
SIGNAL \mem|Mux2~34_combout\ : std_logic;
SIGNAL \mem|Mux2~37_combout\ : std_logic;
SIGNAL \mem|Mux2~40_combout\ : std_logic;
SIGNAL \mem|ram[35][5]~combout\ : std_logic;
SIGNAL \mem|ram[3][5]~combout\ : std_logic;
SIGNAL \mem|ram[7][5]~combout\ : std_logic;
SIGNAL \mem|Mux2~27_combout\ : std_logic;
SIGNAL \mem|ram[39][5]~combout\ : std_logic;
SIGNAL \mem|Mux2~28_combout\ : std_logic;
SIGNAL \mem|ram[33][5]~combout\ : std_logic;
SIGNAL \mem|ram[5][5]~combout\ : std_logic;
SIGNAL \mem|ram[1][5]~combout\ : std_logic;
SIGNAL \mem|Mux2~22_combout\ : std_logic;
SIGNAL \mem|ram[37][5]~combout\ : std_logic;
SIGNAL \mem|Mux2~23_combout\ : std_logic;
SIGNAL \mem|ram[32][5]~combout\ : std_logic;
SIGNAL \mem|ram[0][5]~combout\ : std_logic;
SIGNAL \mem|ram[4][5]~combout\ : std_logic;
SIGNAL \mem|Mux2~24_combout\ : std_logic;
SIGNAL \mem|ram[36][5]~combout\ : std_logic;
SIGNAL \mem|Mux2~25_combout\ : std_logic;
SIGNAL \mem|Mux2~26_combout\ : std_logic;
SIGNAL \mem|ram[38][5]~combout\ : std_logic;
SIGNAL \mem|ram[34][5]~combout\ : std_logic;
SIGNAL \mem|ram[2][5]~combout\ : std_logic;
SIGNAL \mem|ram[6][5]~combout\ : std_logic;
SIGNAL \mem|Mux2~20_combout\ : std_logic;
SIGNAL \mem|Mux2~21_combout\ : std_logic;
SIGNAL \mem|Mux2~29_combout\ : std_logic;
SIGNAL \mem|ram[50][5]~combout\ : std_logic;
SIGNAL \mem|ram[51][5]~combout\ : std_logic;
SIGNAL \mem|ram[18][5]~combout\ : std_logic;
SIGNAL \mem|ram[19][5]~combout\ : std_logic;
SIGNAL \mem|Mux2~10_combout\ : std_logic;
SIGNAL \mem|Mux2~11_combout\ : std_logic;
SIGNAL \mem|ram[55][5]~combout\ : std_logic;
SIGNAL \mem|ram[23][5]~combout\ : std_logic;
SIGNAL \mem|ram[22][5]~combout\ : std_logic;
SIGNAL \mem|Mux2~17_combout\ : std_logic;
SIGNAL \mem|ram[54][5]~combout\ : std_logic;
SIGNAL \mem|Mux2~18_combout\ : std_logic;
SIGNAL \mem|ram[48][5]~combout\ : std_logic;
SIGNAL \mem|ram[16][5]~combout\ : std_logic;
SIGNAL \mem|ram[17][5]~combout\ : std_logic;
SIGNAL \mem|Mux2~14_combout\ : std_logic;
SIGNAL \mem|ram[49][5]~combout\ : std_logic;
SIGNAL \mem|Mux2~15_combout\ : std_logic;
SIGNAL \mem|ram[53][5]~combout\ : std_logic;
SIGNAL \mem|ram[21][5]~combout\ : std_logic;
SIGNAL \mem|ram[20][5]~combout\ : std_logic;
SIGNAL \mem|Mux2~12_combout\ : std_logic;
SIGNAL \mem|ram[52][5]~combout\ : std_logic;
SIGNAL \mem|Mux2~13_combout\ : std_logic;
SIGNAL \mem|Mux2~16_combout\ : std_logic;
SIGNAL \mem|Mux2~19_combout\ : std_logic;
SIGNAL \mem|Mux2~30_combout\ : std_logic;
SIGNAL \mem|Mux2~41_combout\ : std_logic;
SIGNAL \ir|dBus[5]~31_combout\ : std_logic;
SIGNAL \ir|irReg~8_combout\ : std_logic;
SIGNAL \ctl|state~61_combout\ : std_logic;
SIGNAL \ctl|state.negate0~q\ : std_logic;
SIGNAL \ctl|state~62_combout\ : std_logic;
SIGNAL \ctl|state.negate1~q\ : std_logic;
SIGNAL \acc|accReg~1_combout\ : std_logic;
SIGNAL \ctl|Selector0~0_combout\ : std_logic;
SIGNAL \ctl|Selector0~1_combout\ : std_logic;
SIGNAL \ctl|state.fetch0~q\ : std_logic;
SIGNAL \ctl|Selector1~0_combout\ : std_logic;
SIGNAL \ctl|Selector1~1_combout\ : std_logic;
SIGNAL \ctl|Selector1~2_combout\ : std_logic;
SIGNAL \ctl|state.fetch1~q\ : std_logic;
SIGNAL \ctl|pc_enA~0_combout\ : std_logic;
SIGNAL \pc|aBus[0]~6_combout\ : std_logic;
SIGNAL \pc|aBus[0]~10_combout\ : std_logic;
SIGNAL \pc|Add0~11\ : std_logic;
SIGNAL \pc|Add0~12_combout\ : std_logic;
SIGNAL \ir|aBus[6]~6_combout\ : std_logic;
SIGNAL \pc|Add0~13\ : std_logic;
SIGNAL \pc|Add0~14_combout\ : std_logic;
SIGNAL \ir|aBus[7]~7_combout\ : std_logic;
SIGNAL \ir|dBus[0]~9_combout\ : std_logic;
SIGNAL \ir|dBus[1]~13_combout\ : std_logic;
SIGNAL \ir|dBus[2]~15_combout\ : std_logic;
SIGNAL \ir|dBus[3]~17_combout\ : std_logic;
SIGNAL \ir|dBus[4]~19_combout\ : std_logic;
SIGNAL \ir|dBus[5]~21_combout\ : std_logic;
SIGNAL \ir|dBus[6]~23_combout\ : std_logic;
SIGNAL \ir|dBus[7]~25_combout\ : std_logic;
SIGNAL \ctl|acc_ld~1_combout\ : std_logic;
SIGNAL \aluu|accZ~1_combout\ : std_logic;
SIGNAL \aluu|accZ~0_combout\ : std_logic;
SIGNAL \aluu|accZ~2_combout\ : std_logic;
SIGNAL \acc|accReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \aluu|Mult1|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \pc|pcReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \aluu|Mult1|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ir|irReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \aluu|Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \aluu|Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \aluu|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \aluu|Mult1|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ctl|alu_op\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \aluu|ALT_INV_accZ~2_combout\ : std_logic;
SIGNAL \ctl|ALT_INV_acc_ld~0_combout\ : std_logic;
SIGNAL \ctl|ALT_INV_ir_enA~2_combout\ : std_logic;
SIGNAL \ctl|ALT_INV_pc_enA~0_combout\ : std_logic;
SIGNAL \ctl|ALT_INV_acc_enD~0_combout\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
abusX <= ww_abusX;
dbusX <= ww_dbusX;
mem_enDX <= ww_mem_enDX;
mem_rwX <= ww_mem_rwX;
pc_enAX <= ww_pc_enAX;
pc_ldX <= ww_pc_ldX;
pc_incX <= ww_pc_incX;
ir_enAX <= ww_ir_enAX;
ir_enDX <= ww_ir_enDX;
ir_ldX <= ww_ir_ldX;
acc_enDX <= ww_acc_enDX;
acc_ldX <= ww_acc_ldX;
acc_selAluX <= ww_acc_selAluX;
acc_QX <= ww_acc_QX;
alu_accZX <= ww_alu_accZX;
alu_opX <= ww_alu_opX;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\mem|Decoder0~13clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mem|Decoder0~13_combout\);

\mem|Decoder0~10clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mem|Decoder0~10_combout\);

\mem|Decoder0~12clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mem|Decoder0~12_combout\);

\mem|Decoder0~11clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mem|Decoder0~11_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\mem|Decoder0~15clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mem|Decoder0~15_combout\);

\mem|Decoder0~14clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mem|Decoder0~14_combout\);

\mem|Decoder0~9clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mem|Decoder0~9_combout\);

\mem|Decoder0~8clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mem|Decoder0~8_combout\);

\mem|Decoder0~16clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mem|Decoder0~16_combout\);
\aluu|ALT_INV_accZ~2_combout\ <= NOT \aluu|accZ~2_combout\;
\ctl|ALT_INV_acc_ld~0_combout\ <= NOT \ctl|acc_ld~0_combout\;
\ctl|ALT_INV_ir_enA~2_combout\ <= NOT \ctl|ir_enA~2_combout\;
\ctl|ALT_INV_pc_enA~0_combout\ <= NOT \ctl|pc_enA~0_combout\;
\ctl|ALT_INV_acc_enD~0_combout\ <= NOT \ctl|acc_enD~0_combout\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y18_N23
\abusX[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc|aBus[0]~6_combout\,
	oe => \pc|aBus[0]~10_combout\,
	devoe => ww_devoe,
	o => \abusX[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\abusX[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc|aBus[1]~7_combout\,
	oe => \pc|aBus[0]~10_combout\,
	devoe => ww_devoe,
	o => \abusX[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\abusX[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc|aBus[2]~8_combout\,
	oe => \pc|aBus[0]~10_combout\,
	devoe => ww_devoe,
	o => \abusX[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\abusX[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc|aBus[3]~9_combout\,
	oe => \pc|aBus[0]~10_combout\,
	devoe => ww_devoe,
	o => \abusX[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\abusX[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir|aBus[4]~4_combout\,
	oe => \pc|aBus[0]~10_combout\,
	devoe => ww_devoe,
	o => \abusX[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\abusX[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir|aBus[5]~5_combout\,
	oe => \pc|aBus[0]~10_combout\,
	devoe => ww_devoe,
	o => \abusX[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\abusX[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir|aBus[6]~6_combout\,
	oe => \pc|aBus[0]~10_combout\,
	devoe => ww_devoe,
	o => \abusX[6]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\abusX[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir|aBus[7]~7_combout\,
	oe => \pc|aBus[0]~10_combout\,
	devoe => ww_devoe,
	o => \abusX[7]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\dbusX[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir|dBus[0]~9_combout\,
	oe => \ir|dBus[0]~11_combout\,
	devoe => ww_devoe,
	o => \dbusX[0]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\dbusX[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir|dBus[1]~13_combout\,
	oe => \ir|dBus[0]~11_combout\,
	devoe => ww_devoe,
	o => \dbusX[1]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\dbusX[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir|dBus[2]~15_combout\,
	oe => \ir|dBus[0]~11_combout\,
	devoe => ww_devoe,
	o => \dbusX[2]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\dbusX[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir|dBus[3]~17_combout\,
	oe => \ir|dBus[0]~11_combout\,
	devoe => ww_devoe,
	o => \dbusX[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\dbusX[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir|dBus[4]~19_combout\,
	oe => \ir|dBus[0]~11_combout\,
	devoe => ww_devoe,
	o => \dbusX[4]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\dbusX[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir|dBus[5]~21_combout\,
	oe => \ir|dBus[0]~11_combout\,
	devoe => ww_devoe,
	o => \dbusX[5]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\dbusX[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir|dBus[6]~23_combout\,
	oe => \ir|dBus[0]~11_combout\,
	devoe => ww_devoe,
	o => \dbusX[6]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\dbusX[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ir|dBus[7]~25_combout\,
	oe => \ir|dBus[0]~11_combout\,
	devoe => ww_devoe,
	o => \dbusX[7]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\mem_enDX~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl|mem_enD~combout\,
	devoe => ww_devoe,
	o => \mem_enDX~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\mem_rwX~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl|mem_rw~q\,
	devoe => ww_devoe,
	o => \mem_rwX~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\pc_enAX~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl|ALT_INV_pc_enA~0_combout\,
	devoe => ww_devoe,
	o => \pc_enAX~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\pc_ldX~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl|state.branch0~q\,
	devoe => ww_devoe,
	o => \pc_ldX~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\pc_incX~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl|state.fetch1~q\,
	devoe => ww_devoe,
	o => \pc_incX~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\ir_enAX~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl|ALT_INV_ir_enA~2_combout\,
	devoe => ww_devoe,
	o => \ir_enAX~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\ir_enDX~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl|state.branch0~q\,
	devoe => ww_devoe,
	o => \ir_enDX~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\ir_ldX~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl|state.fetch1~q\,
	devoe => ww_devoe,
	o => \ir_ldX~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\acc_enDX~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl|ALT_INV_acc_enD~0_combout\,
	devoe => ww_devoe,
	o => \acc_enDX~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\acc_ldX~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl|acc_ld~1_combout\,
	devoe => ww_devoe,
	o => \acc_ldX~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\acc_selAluX~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl|ALT_INV_acc_ld~0_combout\,
	devoe => ww_devoe,
	o => \acc_selAluX~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\acc_QX[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acc|accReg\(0),
	devoe => ww_devoe,
	o => \acc_QX[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\acc_QX[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acc|accReg\(1),
	devoe => ww_devoe,
	o => \acc_QX[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\acc_QX[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acc|accReg\(2),
	devoe => ww_devoe,
	o => \acc_QX[2]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\acc_QX[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acc|accReg\(3),
	devoe => ww_devoe,
	o => \acc_QX[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\acc_QX[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acc|accReg\(4),
	devoe => ww_devoe,
	o => \acc_QX[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\acc_QX[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acc|accReg\(5),
	devoe => ww_devoe,
	o => \acc_QX[5]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\acc_QX[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acc|accReg\(6),
	devoe => ww_devoe,
	o => \acc_QX[6]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\acc_QX[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \acc|accReg\(7),
	devoe => ww_devoe,
	o => \acc_QX[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\alu_accZX~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aluu|ALT_INV_accZ~2_combout\,
	devoe => ww_devoe,
	o => \alu_accZX~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\alu_opX[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl|alu_op\(0),
	devoe => ww_devoe,
	o => \alu_opX[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\alu_opX[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl|alu_op\(1),
	devoe => ww_devoe,
	o => \alu_opX[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\alu_opX[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctl|alu_op\(2),
	devoe => ww_devoe,
	o => \alu_opX[2]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\alu_opX[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alu_opX[3]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: LCCOMB_X13_Y11_N18
\ctl|state~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|state~56_combout\ = (!\reset~input_o\ & \ctl|state.store0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \ctl|state.store0~q\,
	combout => \ctl|state~56_combout\);

-- Location: FF_X13_Y11_N15
\ctl|state.store1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ctl|state~56_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|state.store1~q\);

-- Location: LCCOMB_X13_Y11_N4
\ctl|mem_rw~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|mem_rw~0_combout\ = !\ctl|state.store0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctl|state.store0~q\,
	combout => \ctl|mem_rw~0_combout\);

-- Location: FF_X13_Y11_N5
\ctl|mem_rw\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \ctl|mem_rw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|mem_rw~q\);

-- Location: LCCOMB_X13_Y11_N16
\ctl|acc_enD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|acc_enD~0_combout\ = (!\ctl|state.store1~q\ & !\ctl|state.store0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ctl|state.store1~q\,
	datad => \ctl|state.store0~q\,
	combout => \ctl|acc_enD~0_combout\);

-- Location: LCCOMB_X18_Y14_N14
\ctl|state~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|state~59_combout\ = (!\reset~input_o\ & \ctl|state.not0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \ctl|state.not0~q\,
	combout => \ctl|state~59_combout\);

-- Location: FF_X18_Y14_N29
\ctl|state.not1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \ctl|state~59_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|state.not1~q\);

-- Location: LCCOMB_X19_Y10_N16
\ctl|state~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|state~76_combout\ = (\ir|irReg\(6) & (\ir|irReg\(5) & (\ctl|state~54_combout\ & \ir|irReg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|irReg\(6),
	datab => \ir|irReg\(5),
	datac => \ctl|state~54_combout\,
	datad => \ir|irReg\(4),
	combout => \ctl|state~76_combout\);

-- Location: FF_X19_Y10_N17
\ctl|state.or0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctl|state~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|state.or0~q\);

-- Location: LCCOMB_X21_Y10_N20
\ctl|state~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|state~69_combout\ = (!\reset~input_o\ & \ctl|state.or0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \ctl|state.or0~q\,
	combout => \ctl|state~69_combout\);

-- Location: FF_X21_Y10_N11
\ctl|state.or1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ctl|state~69_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|state.or1~q\);

-- Location: LCCOMB_X19_Y10_N20
\ctl|state~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|state~74_combout\ = (\ctl|state~54_combout\ & (\ir|irReg\(6) & (!\ir|irReg\(5) & !\ir|irReg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|state~54_combout\,
	datab => \ir|irReg\(6),
	datac => \ir|irReg\(5),
	datad => \ir|irReg\(4),
	combout => \ctl|state~74_combout\);

-- Location: FF_X19_Y10_N21
\ctl|state.mul0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctl|state~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|state.mul0~q\);

-- Location: LCCOMB_X22_Y10_N8
\ctl|state~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|state~67_combout\ = (!\reset~input_o\ & \ctl|state.mul0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \ctl|state.mul0~q\,
	combout => \ctl|state~67_combout\);

-- Location: FF_X22_Y10_N13
\ctl|state.mul1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ctl|state~67_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|state.mul1~q\);

-- Location: LCCOMB_X19_Y10_N6
\ctl|state~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|state~73_combout\ = (!\ir|irReg\(6) & (\ir|irReg\(5) & (\ctl|state~54_combout\ & \ir|irReg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|irReg\(6),
	datab => \ir|irReg\(5),
	datac => \ctl|state~54_combout\,
	datad => \ir|irReg\(4),
	combout => \ctl|state~73_combout\);

-- Location: FF_X19_Y10_N7
\ctl|state.sub0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctl|state~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|state.sub0~q\);

-- Location: LCCOMB_X22_Y10_N30
\ctl|state~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|state~66_combout\ = (!\reset~input_o\ & \ctl|state.sub0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \ctl|state.sub0~q\,
	combout => \ctl|state~66_combout\);

-- Location: FF_X22_Y10_N15
\ctl|state.sub1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ctl|state~66_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|state.sub1~q\);

-- Location: LCCOMB_X19_Y10_N30
\ctl|state~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|state~75_combout\ = (\ir|irReg\(6) & (!\ir|irReg\(5) & (\ctl|state~54_combout\ & \ir|irReg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|irReg\(6),
	datab => \ir|irReg\(5),
	datac => \ctl|state~54_combout\,
	datad => \ir|irReg\(4),
	combout => \ctl|state~75_combout\);

-- Location: FF_X19_Y10_N31
\ctl|state.div0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctl|state~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|state.div0~q\);

-- Location: LCCOMB_X22_Y10_N22
\ctl|state~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|state~68_combout\ = (\ctl|state.div0~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|state.div0~q\,
	datac => \reset~input_o\,
	combout => \ctl|state~68_combout\);

-- Location: FF_X22_Y10_N19
\ctl|state.div1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ctl|state~68_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|state.div1~q\);

-- Location: LCCOMB_X19_Y10_N4
\ctl|state~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|state~72_combout\ = (\ctl|state~54_combout\ & (!\ir|irReg\(6) & (\ir|irReg\(5) & !\ir|irReg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|state~54_combout\,
	datab => \ir|irReg\(6),
	datac => \ir|irReg\(5),
	datad => \ir|irReg\(4),
	combout => \ctl|state~72_combout\);

-- Location: FF_X19_Y10_N5
\ctl|state.add0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctl|state~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|state.add0~q\);

-- Location: LCCOMB_X22_Y10_N16
\ctl|state~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|state~65_combout\ = (\ctl|state.add0~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctl|state.add0~q\,
	datac => \reset~input_o\,
	combout => \ctl|state~65_combout\);

-- Location: FF_X22_Y10_N21
\ctl|state.add1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ctl|state~65_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|state.add1~q\);

-- Location: LCCOMB_X22_Y10_N18
\acc|accReg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg~0_combout\ = (!\ctl|state.mul1~q\ & (!\ctl|state.sub1~q\ & (!\ctl|state.div1~q\ & !\ctl|state.add1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|state.mul1~q\,
	datab => \ctl|state.sub1~q\,
	datac => \ctl|state.div1~q\,
	datad => \ctl|state.add1~q\,
	combout => \acc|accReg~0_combout\);

-- Location: LCCOMB_X21_Y10_N10
\ctl|acc_ld~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|acc_ld~0_combout\ = (!\ctl|state.not1~q\ & (!\ctl|state.negate1~q\ & (!\ctl|state.or1~q\ & \acc|accReg~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|state.not1~q\,
	datab => \ctl|state.negate1~q\,
	datac => \ctl|state.or1~q\,
	datad => \acc|accReg~0_combout\,
	combout => \ctl|acc_ld~0_combout\);

-- Location: LCCOMB_X17_Y11_N4
\pc|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|Add0~0_combout\ = (\pc|pcReg\(0) & (\ctl|state.fetch1~q\ $ (VCC))) # (!\pc|pcReg\(0) & (\ctl|state.fetch1~q\ & VCC))
-- \pc|Add0~1\ = CARRY((\pc|pcReg\(0) & \ctl|state.fetch1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pcReg\(0),
	datab => \ctl|state.fetch1~q\,
	datad => VCC,
	combout => \pc|Add0~0_combout\,
	cout => \pc|Add0~1\);

-- Location: LCCOMB_X19_Y14_N20
\ir|irReg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|irReg~2_combout\ = (\ctl|state.fetch1~q\ & (\ir|dBus[2]~28_combout\)) # (!\ctl|state.fetch1~q\ & ((\ir|irReg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[2]~28_combout\,
	datac => \ir|irReg\(2),
	datad => \ctl|state.fetch1~q\,
	combout => \ir|irReg~2_combout\);

-- Location: FF_X19_Y14_N21
\ir|irReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \ir|irReg~2_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|irReg\(2));

-- Location: LCCOMB_X13_Y14_N26
\ir|dBus[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[2]~14_combout\ = (\ctl|state.branch0~q\ & (\ir|irReg\(2) & ((\acc|accReg\(2)) # (\ctl|acc_enD~0_combout\)))) # (!\ctl|state.branch0~q\ & ((\acc|accReg\(2)) # ((\ctl|acc_enD~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|state.branch0~q\,
	datab => \acc|accReg\(2),
	datac => \ctl|acc_enD~0_combout\,
	datad => \ir|irReg\(2),
	combout => \ir|dBus[2]~14_combout\);

-- Location: LCCOMB_X19_Y13_N18
\ir|irReg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|irReg~0_combout\ = (\ctl|state.fetch1~q\ & (\ir|dBus[0]~26_combout\)) # (!\ctl|state.fetch1~q\ & ((\ir|irReg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[0]~26_combout\,
	datac => \ir|irReg\(0),
	datad => \ctl|state.fetch1~q\,
	combout => \ir|irReg~0_combout\);

-- Location: FF_X19_Y13_N19
\ir|irReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \ir|irReg~0_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|irReg\(0));

-- Location: LCCOMB_X19_Y10_N24
\ir|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|Equal10~0_combout\ = (\ir|irReg\(7) & (!\ir|irReg\(6) & (\ir|irReg\(5) & !\ir|irReg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|irReg\(7),
	datab => \ir|irReg\(6),
	datac => \ir|irReg\(5),
	datad => \ir|irReg\(4),
	combout => \ir|Equal10~0_combout\);

-- Location: LCCOMB_X19_Y10_N8
\ir|Equal10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|Equal10~2_combout\ = (\ir|irReg\(0) & (\ir|Equal10~1_combout\ & \ir|Equal10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|irReg\(0),
	datac => \ir|Equal10~1_combout\,
	datad => \ir|Equal10~0_combout\,
	combout => \ir|Equal10~2_combout\);

-- Location: LCCOMB_X19_Y11_N22
\ctl|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|Selector12~0_combout\ = (\ctl|state.halt~q\) # ((\ctl|state.fetch1~q\ & (\ir|Equal10~2_combout\ & \ir|Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|state.fetch1~q\,
	datab => \ir|Equal10~2_combout\,
	datac => \ctl|state.halt~q\,
	datad => \ir|Equal10~0_combout\,
	combout => \ctl|Selector12~0_combout\);

-- Location: FF_X19_Y11_N23
\ctl|state.halt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ctl|Selector12~0_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|state.halt~q\);

-- Location: LCCOMB_X18_Y14_N20
\ctl|ir_enA~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|ir_enA~1_combout\ = (!\ctl|state.negate1~q\ & (!\ctl|state.branch0~q\ & (!\ctl|state.negate0~q\ & !\ctl|state.halt~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|state.negate1~q\,
	datab => \ctl|state.branch0~q\,
	datac => \ctl|state.negate0~q\,
	datad => \ctl|state.halt~q\,
	combout => \ctl|ir_enA~1_combout\);

-- Location: LCCOMB_X17_Y11_N12
\pc|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|Add0~8_combout\ = (\pc|pcReg\(4) & (\pc|Add0~7\ $ (GND))) # (!\pc|pcReg\(4) & (!\pc|Add0~7\ & VCC))
-- \pc|Add0~9\ = CARRY((\pc|pcReg\(4) & !\pc|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pcReg\(4),
	datad => VCC,
	cin => \pc|Add0~7\,
	combout => \pc|Add0~8_combout\,
	cout => \pc|Add0~9\);

-- Location: LCCOMB_X17_Y11_N14
\pc|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|Add0~10_combout\ = (\pc|pcReg\(5) & (!\pc|Add0~9\)) # (!\pc|pcReg\(5) & ((\pc|Add0~9\) # (GND)))
-- \pc|Add0~11\ = CARRY((!\pc|Add0~9\) # (!\pc|pcReg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc|pcReg\(5),
	datad => VCC,
	cin => \pc|Add0~9\,
	combout => \pc|Add0~10_combout\,
	cout => \pc|Add0~11\);

-- Location: FF_X17_Y11_N15
\pc|pcReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pc|Add0~10_combout\,
	asdata => \ir|dBus[5]~31_combout\,
	sclr => \reset~input_o\,
	sload => \ctl|state.branch0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pcReg\(5));

-- Location: LCCOMB_X18_Y14_N2
\ir|aBus[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|aBus[5]~5_combout\ = (\ctl|pc_enA~0_combout\ & (((!\ctl|ir_enA~1_combout\)) # (!\ctl|ir_enA~0_combout\))) # (!\ctl|pc_enA~0_combout\ & (((\pc|pcReg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|pc_enA~0_combout\,
	datab => \ctl|ir_enA~0_combout\,
	datac => \ctl|ir_enA~1_combout\,
	datad => \pc|pcReg\(5),
	combout => \ir|aBus[5]~5_combout\);

-- Location: LCCOMB_X17_Y14_N22
\ir|irReg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|irReg~1_combout\ = (\ctl|state.fetch1~q\ & (!\aluu|Mult0|auto_generated|le3a\(5))) # (!\ctl|state.fetch1~q\ & ((\ir|irReg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|le3a\(5),
	datac => \ir|irReg\(1),
	datad => \ctl|state.fetch1~q\,
	combout => \ir|irReg~1_combout\);

-- Location: FF_X17_Y14_N23
\ir|irReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \ir|irReg~1_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|irReg\(1));

-- Location: LCCOMB_X18_Y14_N16
\ctl|ir_enA~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|ir_enA~2_combout\ = (\ctl|state.fetch0~q\) # (((\ctl|state.fetch1~q\) # (!\ctl|ir_enA~1_combout\)) # (!\ctl|ir_enA~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|state.fetch0~q\,
	datab => \ctl|ir_enA~0_combout\,
	datac => \ctl|state.fetch1~q\,
	datad => \ctl|ir_enA~1_combout\,
	combout => \ctl|ir_enA~2_combout\);

-- Location: LCCOMB_X17_Y14_N6
\pc|aBus[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|aBus[1]~7_combout\ = (\pc|pcReg\(1) & (((\ir|irReg\(1)) # (\ctl|ir_enA~2_combout\)))) # (!\pc|pcReg\(1) & (\ctl|pc_enA~0_combout\ & ((\ir|irReg\(1)) # (\ctl|ir_enA~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pcReg\(1),
	datab => \ctl|pc_enA~0_combout\,
	datac => \ir|irReg\(1),
	datad => \ctl|ir_enA~2_combout\,
	combout => \pc|aBus[1]~7_combout\);

-- Location: LCCOMB_X18_Y14_N8
\pc|aBus[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|aBus[2]~8_combout\ = (\pc|pcReg\(2) & ((\ctl|ir_enA~2_combout\) # ((\ir|irReg\(2))))) # (!\pc|pcReg\(2) & (\ctl|pc_enA~0_combout\ & ((\ctl|ir_enA~2_combout\) # (\ir|irReg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pcReg\(2),
	datab => \ctl|ir_enA~2_combout\,
	datac => \ir|irReg\(2),
	datad => \ctl|pc_enA~0_combout\,
	combout => \pc|aBus[2]~8_combout\);

-- Location: LCCOMB_X10_Y12_N6
\mem|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Decoder0~0_combout\ = (!\pc|aBus[1]~7_combout\ & (!\ctl|mem_rw~q\ & (\pc|aBus[0]~6_combout\ & !\pc|aBus[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \ctl|mem_rw~q\,
	datac => \pc|aBus[0]~6_combout\,
	datad => \pc|aBus[2]~8_combout\,
	combout => \mem|Decoder0~0_combout\);

-- Location: LCCOMB_X13_Y14_N30
\mem|ram[63][1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[63][1]~43_combout\ = (!\reset~input_o\ & (\ir|aBus[4]~4_combout\ & \ir|aBus[5]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \ir|aBus[4]~4_combout\,
	datad => \ir|aBus[5]~5_combout\,
	combout => \mem|ram[63][1]~43_combout\);

-- Location: LCCOMB_X18_Y14_N30
\pc|aBus[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|aBus[3]~9_combout\ = (\ctl|pc_enA~0_combout\ & (((\ir|irReg\(3)) # (\ctl|ir_enA~2_combout\)))) # (!\ctl|pc_enA~0_combout\ & (\pc|pcReg\(3) & ((\ir|irReg\(3)) # (\ctl|ir_enA~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|pc_enA~0_combout\,
	datab => \pc|pcReg\(3),
	datac => \ir|irReg\(3),
	datad => \ctl|ir_enA~2_combout\,
	combout => \pc|aBus[3]~9_combout\);

-- Location: LCCOMB_X10_Y12_N0
\mem|ram[57][0]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[57][0]~44_combout\ = (\mem|Decoder0~0_combout\ & (\mem|ram[63][1]~43_combout\ & \pc|aBus[3]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Decoder0~0_combout\,
	datac => \mem|ram[63][1]~43_combout\,
	datad => \pc|aBus[3]~9_combout\,
	combout => \mem|ram[57][0]~44_combout\);

-- Location: LCCOMB_X11_Y14_N22
\mem|ram[57][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[57][2]~combout\ = (\mem|ram[57][0]~44_combout\ & ((\ir|dBus[2]~28_combout\))) # (!\mem|ram[57][0]~44_combout\ & (\mem|ram[57][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[57][2]~combout\,
	datab => \ir|dBus[2]~28_combout\,
	datac => \mem|ram[57][0]~44_combout\,
	combout => \mem|ram[57][2]~combout\);

-- Location: LCCOMB_X14_Y12_N2
\mem|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Decoder0~1_combout\ = (!\pc|aBus[1]~7_combout\ & (!\ctl|mem_rw~q\ & (\pc|aBus[2]~8_combout\ & !\pc|aBus[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \ctl|mem_rw~q\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Decoder0~1_combout\);

-- Location: LCCOMB_X14_Y13_N0
\mem|ram[60][0]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[60][0]~58_combout\ = (\mem|ram[63][1]~43_combout\ & (\pc|aBus[3]~9_combout\ & \mem|Decoder0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[63][1]~43_combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \mem|Decoder0~1_combout\,
	combout => \mem|ram[60][0]~58_combout\);

-- Location: LCCOMB_X11_Y14_N6
\mem|ram[60][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[60][2]~combout\ = (\mem|ram[60][0]~58_combout\ & ((\ir|dBus[2]~28_combout\))) # (!\mem|ram[60][0]~58_combout\ & (\mem|ram[60][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[60][2]~combout\,
	datab => \ir|dBus[2]~28_combout\,
	datad => \mem|ram[60][0]~58_combout\,
	combout => \mem|ram[60][2]~combout\);

-- Location: LCCOMB_X11_Y12_N4
\mem|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Decoder0~2_combout\ = (!\pc|aBus[0]~6_combout\ & (!\ctl|mem_rw~q\ & (!\pc|aBus[2]~8_combout\ & !\pc|aBus[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[0]~6_combout\,
	datab => \ctl|mem_rw~q\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \pc|aBus[1]~7_combout\,
	combout => \mem|Decoder0~2_combout\);

-- Location: LCCOMB_X12_Y14_N24
\mem|ram[56][0]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[56][0]~46_combout\ = (\mem|ram[63][1]~43_combout\ & (\pc|aBus[3]~9_combout\ & \mem|Decoder0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[63][1]~43_combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \mem|Decoder0~2_combout\,
	combout => \mem|ram[56][0]~46_combout\);

-- Location: LCCOMB_X11_Y14_N4
\mem|ram[56][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[56][2]~combout\ = (\mem|ram[56][0]~46_combout\ & (\ir|dBus[2]~28_combout\)) # (!\mem|ram[56][0]~46_combout\ & ((\mem|ram[56][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[2]~28_combout\,
	datac => \mem|ram[56][2]~combout\,
	datad => \mem|ram[56][0]~46_combout\,
	combout => \mem|ram[56][2]~combout\);

-- Location: LCCOMB_X11_Y14_N30
\mem|Mux5~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~31_combout\ = (\pc|aBus[0]~6_combout\ & (((\pc|aBus[2]~8_combout\)))) # (!\pc|aBus[0]~6_combout\ & ((\pc|aBus[2]~8_combout\ & (\mem|ram[60][2]~combout\)) # (!\pc|aBus[2]~8_combout\ & ((\mem|ram[56][2]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[60][2]~combout\,
	datab => \mem|ram[56][2]~combout\,
	datac => \pc|aBus[0]~6_combout\,
	datad => \pc|aBus[2]~8_combout\,
	combout => \mem|Mux5~31_combout\);

-- Location: LCCOMB_X14_Y12_N18
\mem|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Decoder0~3_combout\ = (!\pc|aBus[1]~7_combout\ & (!\ctl|mem_rw~q\ & (\pc|aBus[2]~8_combout\ & \pc|aBus[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \ctl|mem_rw~q\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Decoder0~3_combout\);

-- Location: LCCOMB_X14_Y13_N18
\mem|ram[61][0]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[61][0]~57_combout\ = (\mem|ram[63][1]~43_combout\ & (\pc|aBus[3]~9_combout\ & \mem|Decoder0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[63][1]~43_combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \mem|Decoder0~3_combout\,
	combout => \mem|ram[61][0]~57_combout\);

-- Location: LCCOMB_X11_Y14_N28
\mem|ram[61][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[61][2]~combout\ = (\mem|ram[61][0]~57_combout\ & (\ir|dBus[2]~28_combout\)) # (!\mem|ram[61][0]~57_combout\ & ((\mem|ram[61][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[2]~28_combout\,
	datac => \mem|ram[61][2]~combout\,
	datad => \mem|ram[61][0]~57_combout\,
	combout => \mem|ram[61][2]~combout\);

-- Location: LCCOMB_X11_Y14_N2
\mem|Mux5~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~32_combout\ = (\pc|aBus[0]~6_combout\ & ((\mem|Mux5~31_combout\ & ((\mem|ram[61][2]~combout\))) # (!\mem|Mux5~31_combout\ & (\mem|ram[57][2]~combout\)))) # (!\pc|aBus[0]~6_combout\ & (((\mem|Mux5~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[0]~6_combout\,
	datab => \mem|ram[57][2]~combout\,
	datac => \mem|Mux5~31_combout\,
	datad => \mem|ram[61][2]~combout\,
	combout => \mem|Mux5~32_combout\);

-- Location: LCCOMB_X21_Y13_N2
\mem|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Decoder0~7_combout\ = (\pc|aBus[2]~8_combout\ & (!\ctl|mem_rw~q\ & (\pc|aBus[1]~7_combout\ & \pc|aBus[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \ctl|mem_rw~q\,
	datac => \pc|aBus[1]~7_combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Decoder0~7_combout\);

-- Location: LCCOMB_X13_Y14_N12
\mem|ram[63][1]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[63][1]~59_combout\ = (\mem|ram[63][1]~43_combout\ & (\pc|aBus[3]~9_combout\ & \mem|Decoder0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[63][1]~43_combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \mem|Decoder0~7_combout\,
	combout => \mem|ram[63][1]~59_combout\);

-- Location: LCCOMB_X11_Y14_N20
\mem|ram[63][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[63][2]~combout\ = (\mem|ram[63][1]~59_combout\ & (\ir|dBus[2]~28_combout\)) # (!\mem|ram[63][1]~59_combout\ & ((\mem|ram[63][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[2]~28_combout\,
	datac => \mem|ram[63][1]~59_combout\,
	datad => \mem|ram[63][2]~combout\,
	combout => \mem|ram[63][2]~combout\);

-- Location: LCCOMB_X14_Y12_N6
\mem|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Decoder0~5_combout\ = (\pc|aBus[1]~7_combout\ & (!\ctl|mem_rw~q\ & (!\pc|aBus[2]~8_combout\ & \pc|aBus[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \ctl|mem_rw~q\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Decoder0~5_combout\);

-- Location: LCCOMB_X11_Y13_N0
\mem|ram[59][0]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[59][0]~47_combout\ = (\mem|ram[63][1]~43_combout\ & (\pc|aBus[3]~9_combout\ & \mem|Decoder0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[63][1]~43_combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \mem|Decoder0~5_combout\,
	combout => \mem|ram[59][0]~47_combout\);

-- Location: LCCOMB_X11_Y14_N12
\mem|ram[59][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[59][2]~combout\ = (\mem|ram[59][0]~47_combout\ & ((\ir|dBus[2]~28_combout\))) # (!\mem|ram[59][0]~47_combout\ & (\mem|ram[59][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[59][2]~combout\,
	datab => \ir|dBus[2]~28_combout\,
	datad => \mem|ram[59][0]~47_combout\,
	combout => \mem|ram[59][2]~combout\);

-- Location: LCCOMB_X12_Y11_N12
\mem|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Decoder0~6_combout\ = (!\ctl|mem_rw~q\ & (!\pc|aBus[0]~6_combout\ & (\pc|aBus[1]~7_combout\ & !\pc|aBus[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|mem_rw~q\,
	datab => \pc|aBus[0]~6_combout\,
	datac => \pc|aBus[1]~7_combout\,
	datad => \pc|aBus[2]~8_combout\,
	combout => \mem|Decoder0~6_combout\);

-- Location: LCCOMB_X11_Y14_N8
\mem|ram[58][0]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[58][0]~45_combout\ = (\mem|Decoder0~6_combout\ & (\pc|aBus[3]~9_combout\ & \mem|ram[63][1]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|Decoder0~6_combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \mem|ram[63][1]~43_combout\,
	combout => \mem|ram[58][0]~45_combout\);

-- Location: LCCOMB_X11_Y14_N26
\mem|ram[58][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[58][2]~combout\ = (\mem|ram[58][0]~45_combout\ & ((\ir|dBus[2]~28_combout\))) # (!\mem|ram[58][0]~45_combout\ & (\mem|ram[58][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[58][2]~combout\,
	datac => \mem|ram[58][0]~45_combout\,
	datad => \ir|dBus[2]~28_combout\,
	combout => \mem|ram[58][2]~combout\);

-- Location: LCCOMB_X13_Y12_N0
\mem|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Decoder0~4_combout\ = (!\ctl|mem_rw~q\ & (\pc|aBus[1]~7_combout\ & (!\pc|aBus[0]~6_combout\ & \pc|aBus[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|mem_rw~q\,
	datab => \pc|aBus[1]~7_combout\,
	datac => \pc|aBus[0]~6_combout\,
	datad => \pc|aBus[2]~8_combout\,
	combout => \mem|Decoder0~4_combout\);

-- Location: LCCOMB_X12_Y16_N30
\mem|ram[62][0]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[62][0]~56_combout\ = (\mem|Decoder0~4_combout\ & (\pc|aBus[3]~9_combout\ & \mem|ram[63][1]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|Decoder0~4_combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \mem|ram[63][1]~43_combout\,
	combout => \mem|ram[62][0]~56_combout\);

-- Location: LCCOMB_X11_Y14_N16
\mem|ram[62][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[62][2]~combout\ = (\mem|ram[62][0]~56_combout\ & (\ir|dBus[2]~28_combout\)) # (!\mem|ram[62][0]~56_combout\ & ((\mem|ram[62][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[2]~28_combout\,
	datac => \mem|ram[62][0]~56_combout\,
	datad => \mem|ram[62][2]~combout\,
	combout => \mem|ram[62][2]~combout\);

-- Location: LCCOMB_X11_Y14_N24
\mem|Mux5~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~38_combout\ = (\pc|aBus[0]~6_combout\ & (((\pc|aBus[2]~8_combout\)))) # (!\pc|aBus[0]~6_combout\ & ((\pc|aBus[2]~8_combout\ & ((\mem|ram[62][2]~combout\))) # (!\pc|aBus[2]~8_combout\ & (\mem|ram[58][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[58][2]~combout\,
	datab => \mem|ram[62][2]~combout\,
	datac => \pc|aBus[0]~6_combout\,
	datad => \pc|aBus[2]~8_combout\,
	combout => \mem|Mux5~38_combout\);

-- Location: LCCOMB_X11_Y14_N18
\mem|Mux5~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~39_combout\ = (\pc|aBus[0]~6_combout\ & ((\mem|Mux5~38_combout\ & (\mem|ram[63][2]~combout\)) # (!\mem|Mux5~38_combout\ & ((\mem|ram[59][2]~combout\))))) # (!\pc|aBus[0]~6_combout\ & (((\mem|Mux5~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[0]~6_combout\,
	datab => \mem|ram[63][2]~combout\,
	datac => \mem|ram[59][2]~combout\,
	datad => \mem|Mux5~38_combout\,
	combout => \mem|Mux5~39_combout\);

-- Location: LCCOMB_X11_Y12_N10
\mem|ram[31][0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[31][0]~18_combout\ = (!\reset~input_o\ & (\ir|aBus[4]~4_combout\ & !\ir|aBus[5]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \ir|aBus[4]~4_combout\,
	datad => \ir|aBus[5]~5_combout\,
	combout => \mem|ram[31][0]~18_combout\);

-- Location: LCCOMB_X18_Y11_N18
\mem|ram[27][0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[27][0]~32_combout\ = (\mem|Decoder0~5_combout\ & (\mem|ram[31][0]~18_combout\ & \pc|aBus[3]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Decoder0~5_combout\,
	datac => \mem|ram[31][0]~18_combout\,
	datad => \pc|aBus[3]~9_combout\,
	combout => \mem|ram[27][0]~32_combout\);

-- Location: LCCOMB_X18_Y11_N8
\mem|ram[27][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[27][2]~combout\ = (\mem|ram[27][0]~32_combout\ & (\ir|dBus[2]~28_combout\)) # (!\mem|ram[27][0]~32_combout\ & ((\mem|ram[27][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[2]~28_combout\,
	datac => \mem|ram[27][2]~combout\,
	datad => \mem|ram[27][0]~32_combout\,
	combout => \mem|ram[27][2]~combout\);

-- Location: LCCOMB_X19_Y12_N0
\mem|ram[31][0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[31][0]~34_combout\ = (\mem|ram[31][0]~18_combout\ & (\mem|Decoder0~7_combout\ & \pc|aBus[3]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[31][0]~18_combout\,
	datac => \mem|Decoder0~7_combout\,
	datad => \pc|aBus[3]~9_combout\,
	combout => \mem|ram[31][0]~34_combout\);

-- Location: LCCOMB_X18_Y11_N26
\mem|ram[31][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[31][2]~combout\ = (\mem|ram[31][0]~34_combout\ & (\ir|dBus[2]~28_combout\)) # (!\mem|ram[31][0]~34_combout\ & ((\mem|ram[31][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[2]~28_combout\,
	datac => \mem|ram[31][2]~combout\,
	datad => \mem|ram[31][0]~34_combout\,
	combout => \mem|ram[31][2]~combout\);

-- Location: LCCOMB_X18_Y11_N4
\mem|ram[26][0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[26][0]~20_combout\ = (\mem|Decoder0~6_combout\ & (\mem|ram[31][0]~18_combout\ & \pc|aBus[3]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|Decoder0~6_combout\,
	datac => \mem|ram[31][0]~18_combout\,
	datad => \pc|aBus[3]~9_combout\,
	combout => \mem|ram[26][0]~20_combout\);

-- Location: LCCOMB_X18_Y11_N30
\mem|ram[26][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[26][2]~combout\ = (\mem|ram[26][0]~20_combout\ & ((\ir|dBus[2]~28_combout\))) # (!\mem|ram[26][0]~20_combout\ & (\mem|ram[26][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[26][2]~combout\,
	datac => \mem|ram[26][0]~20_combout\,
	datad => \ir|dBus[2]~28_combout\,
	combout => \mem|ram[26][2]~combout\);

-- Location: LCCOMB_X14_Y12_N20
\mem|ram[30][0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[30][0]~22_combout\ = (\pc|aBus[3]~9_combout\ & (\mem|Decoder0~4_combout\ & \mem|ram[31][0]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|aBus[3]~9_combout\,
	datac => \mem|Decoder0~4_combout\,
	datad => \mem|ram[31][0]~18_combout\,
	combout => \mem|ram[30][0]~22_combout\);

-- Location: LCCOMB_X18_Y11_N6
\mem|ram[30][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[30][2]~combout\ = (\mem|ram[30][0]~22_combout\ & ((\ir|dBus[2]~28_combout\))) # (!\mem|ram[30][0]~22_combout\ & (\mem|ram[30][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[30][2]~combout\,
	datac => \ir|dBus[2]~28_combout\,
	datad => \mem|ram[30][0]~22_combout\,
	combout => \mem|ram[30][2]~combout\);

-- Location: LCCOMB_X18_Y11_N16
\mem|Mux5~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~33_combout\ = (\pc|aBus[2]~8_combout\ & (((\pc|aBus[0]~6_combout\) # (\mem|ram[30][2]~combout\)))) # (!\pc|aBus[2]~8_combout\ & (\mem|ram[26][2]~combout\ & (!\pc|aBus[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[26][2]~combout\,
	datab => \pc|aBus[2]~8_combout\,
	datac => \pc|aBus[0]~6_combout\,
	datad => \mem|ram[30][2]~combout\,
	combout => \mem|Mux5~33_combout\);

-- Location: LCCOMB_X18_Y11_N0
\mem|Mux5~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~34_combout\ = (\pc|aBus[0]~6_combout\ & ((\mem|Mux5~33_combout\ & ((\mem|ram[31][2]~combout\))) # (!\mem|Mux5~33_combout\ & (\mem|ram[27][2]~combout\)))) # (!\pc|aBus[0]~6_combout\ & (((\mem|Mux5~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[27][2]~combout\,
	datab => \pc|aBus[0]~6_combout\,
	datac => \mem|ram[31][2]~combout\,
	datad => \mem|Mux5~33_combout\,
	combout => \mem|Mux5~34_combout\);

-- Location: LCCOMB_X10_Y12_N30
\mem|ram[25][0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[25][0]~33_combout\ = (\mem|Decoder0~0_combout\ & (\mem|ram[31][0]~18_combout\ & \pc|aBus[3]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Decoder0~0_combout\,
	datac => \mem|ram[31][0]~18_combout\,
	datad => \pc|aBus[3]~9_combout\,
	combout => \mem|ram[25][0]~33_combout\);

-- Location: LCCOMB_X21_Y11_N12
\mem|ram[25][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[25][2]~combout\ = (\mem|ram[25][0]~33_combout\ & (\ir|dBus[2]~28_combout\)) # (!\mem|ram[25][0]~33_combout\ & ((\mem|ram[25][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[2]~28_combout\,
	datac => \mem|ram[25][2]~combout\,
	datad => \mem|ram[25][0]~33_combout\,
	combout => \mem|ram[25][2]~combout\);

-- Location: LCCOMB_X19_Y12_N16
\mem|ram[29][0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[29][0]~31_combout\ = (\mem|Decoder0~3_combout\ & (\mem|ram[31][0]~18_combout\ & \pc|aBus[3]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|Decoder0~3_combout\,
	datac => \mem|ram[31][0]~18_combout\,
	datad => \pc|aBus[3]~9_combout\,
	combout => \mem|ram[29][0]~31_combout\);

-- Location: LCCOMB_X21_Y11_N30
\mem|ram[29][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[29][2]~combout\ = (\mem|ram[29][0]~31_combout\ & (\ir|dBus[2]~28_combout\)) # (!\mem|ram[29][0]~31_combout\ & ((\mem|ram[29][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[2]~28_combout\,
	datac => \mem|ram[29][2]~combout\,
	datad => \mem|ram[29][0]~31_combout\,
	combout => \mem|ram[29][2]~combout\);

-- Location: LCCOMB_X11_Y12_N20
\mem|ram[24][0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[24][0]~21_combout\ = (\mem|Decoder0~2_combout\ & (\pc|aBus[3]~9_combout\ & \mem|ram[31][0]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|Decoder0~2_combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \mem|ram[31][0]~18_combout\,
	combout => \mem|ram[24][0]~21_combout\);

-- Location: LCCOMB_X21_Y11_N4
\mem|ram[24][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[24][2]~combout\ = (\mem|ram[24][0]~21_combout\ & (\ir|dBus[2]~28_combout\)) # (!\mem|ram[24][0]~21_combout\ & ((\mem|ram[24][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[2]~28_combout\,
	datac => \mem|ram[24][2]~combout\,
	datad => \mem|ram[24][0]~21_combout\,
	combout => \mem|ram[24][2]~combout\);

-- Location: LCCOMB_X18_Y12_N0
\mem|ram[28][0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[28][0]~19_combout\ = (\mem|ram[31][0]~18_combout\ & (\mem|Decoder0~1_combout\ & \pc|aBus[3]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[31][0]~18_combout\,
	datac => \mem|Decoder0~1_combout\,
	datad => \pc|aBus[3]~9_combout\,
	combout => \mem|ram[28][0]~19_combout\);

-- Location: LCCOMB_X21_Y11_N18
\mem|ram[28][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[28][2]~combout\ = (\mem|ram[28][0]~19_combout\ & ((\ir|dBus[2]~28_combout\))) # (!\mem|ram[28][0]~19_combout\ & (\mem|ram[28][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[28][2]~combout\,
	datac => \ir|dBus[2]~28_combout\,
	datad => \mem|ram[28][0]~19_combout\,
	combout => \mem|ram[28][2]~combout\);

-- Location: LCCOMB_X21_Y11_N16
\mem|Mux5~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~35_combout\ = (\pc|aBus[2]~8_combout\ & (((\pc|aBus[0]~6_combout\) # (\mem|ram[28][2]~combout\)))) # (!\pc|aBus[2]~8_combout\ & (\mem|ram[24][2]~combout\ & (!\pc|aBus[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \mem|ram[24][2]~combout\,
	datac => \pc|aBus[0]~6_combout\,
	datad => \mem|ram[28][2]~combout\,
	combout => \mem|Mux5~35_combout\);

-- Location: LCCOMB_X21_Y11_N10
\mem|Mux5~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~36_combout\ = (\pc|aBus[0]~6_combout\ & ((\mem|Mux5~35_combout\ & ((\mem|ram[29][2]~combout\))) # (!\mem|Mux5~35_combout\ & (\mem|ram[25][2]~combout\)))) # (!\pc|aBus[0]~6_combout\ & (((\mem|Mux5~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[25][2]~combout\,
	datab => \pc|aBus[0]~6_combout\,
	datac => \mem|ram[29][2]~combout\,
	datad => \mem|Mux5~35_combout\,
	combout => \mem|Mux5~36_combout\);

-- Location: LCCOMB_X19_Y14_N6
\mem|Mux5~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~37_combout\ = (\ir|aBus[5]~5_combout\ & (((\pc|aBus[1]~7_combout\)))) # (!\ir|aBus[5]~5_combout\ & ((\pc|aBus[1]~7_combout\ & (\mem|Mux5~34_combout\)) # (!\pc|aBus[1]~7_combout\ & ((\mem|Mux5~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[5]~5_combout\,
	datab => \mem|Mux5~34_combout\,
	datac => \pc|aBus[1]~7_combout\,
	datad => \mem|Mux5~36_combout\,
	combout => \mem|Mux5~37_combout\);

-- Location: LCCOMB_X19_Y14_N22
\mem|Mux5~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~40_combout\ = (\ir|aBus[5]~5_combout\ & ((\mem|Mux5~37_combout\ & ((\mem|Mux5~39_combout\))) # (!\mem|Mux5~37_combout\ & (\mem|Mux5~32_combout\)))) # (!\ir|aBus[5]~5_combout\ & (((\mem|Mux5~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[5]~5_combout\,
	datab => \mem|Mux5~32_combout\,
	datac => \mem|Mux5~39_combout\,
	datad => \mem|Mux5~37_combout\,
	combout => \mem|Mux5~40_combout\);

-- Location: LCCOMB_X16_Y14_N0
\mem|ram[47][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[47][0]~0_combout\ = (\ir|aBus[5]~5_combout\ & (!\ir|aBus[4]~4_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|aBus[5]~5_combout\,
	datac => \ir|aBus[4]~4_combout\,
	datad => \reset~input_o\,
	combout => \mem|ram[47][0]~0_combout\);

-- Location: LCCOMB_X16_Y14_N26
\mem|ram[45][0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[45][0]~4_combout\ = (\mem|ram[47][0]~0_combout\ & (\mem|Decoder0~3_combout\ & \pc|aBus[3]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[47][0]~0_combout\,
	datac => \mem|Decoder0~3_combout\,
	datad => \pc|aBus[3]~9_combout\,
	combout => \mem|ram[45][0]~4_combout\);

-- Location: LCCOMB_X16_Y14_N12
\mem|ram[45][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[45][2]~combout\ = (\mem|ram[45][0]~4_combout\ & ((\ir|dBus[2]~28_combout\))) # (!\mem|ram[45][0]~4_combout\ & (\mem|ram[45][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[45][2]~combout\,
	datac => \mem|ram[45][0]~4_combout\,
	datad => \ir|dBus[2]~28_combout\,
	combout => \mem|ram[45][2]~combout\);

-- Location: LCCOMB_X16_Y14_N14
\mem|ram[41][0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[41][0]~1_combout\ = (\mem|ram[47][0]~0_combout\ & (\mem|Decoder0~0_combout\ & \pc|aBus[3]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[47][0]~0_combout\,
	datac => \mem|Decoder0~0_combout\,
	datad => \pc|aBus[3]~9_combout\,
	combout => \mem|ram[41][0]~1_combout\);

-- Location: LCCOMB_X16_Y14_N20
\mem|ram[41][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[41][2]~combout\ = (\mem|ram[41][0]~1_combout\ & ((\ir|dBus[2]~28_combout\))) # (!\mem|ram[41][0]~1_combout\ & (\mem|ram[41][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[41][2]~combout\,
	datac => \mem|ram[41][0]~1_combout\,
	datad => \ir|dBus[2]~28_combout\,
	combout => \mem|ram[41][2]~combout\);

-- Location: LCCOMB_X14_Y14_N0
\mem|ram[43][0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[43][0]~15_combout\ = (\mem|ram[47][0]~0_combout\ & (\pc|aBus[3]~9_combout\ & \mem|Decoder0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[47][0]~0_combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \mem|Decoder0~5_combout\,
	combout => \mem|ram[43][0]~15_combout\);

-- Location: LCCOMB_X16_Y14_N22
\mem|ram[43][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[43][2]~combout\ = (\mem|ram[43][0]~15_combout\ & (\ir|dBus[2]~28_combout\)) # (!\mem|ram[43][0]~15_combout\ & ((\mem|ram[43][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[2]~28_combout\,
	datac => \mem|ram[43][2]~combout\,
	datad => \mem|ram[43][0]~15_combout\,
	combout => \mem|ram[43][2]~combout\);

-- Location: LCCOMB_X16_Y14_N16
\mem|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~7_combout\ = (\pc|aBus[2]~8_combout\ & (((\pc|aBus[1]~7_combout\)))) # (!\pc|aBus[2]~8_combout\ & ((\pc|aBus[1]~7_combout\ & ((\mem|ram[43][2]~combout\))) # (!\pc|aBus[1]~7_combout\ & (\mem|ram[41][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \mem|ram[41][2]~combout\,
	datac => \mem|ram[43][2]~combout\,
	datad => \pc|aBus[1]~7_combout\,
	combout => \mem|Mux5~7_combout\);

-- Location: LCCOMB_X22_Y13_N0
\mem|ram[47][0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[47][0]~17_combout\ = (\mem|Decoder0~7_combout\ & (\pc|aBus[3]~9_combout\ & \mem|ram[47][0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Decoder0~7_combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \mem|ram[47][0]~0_combout\,
	combout => \mem|ram[47][0]~17_combout\);

-- Location: LCCOMB_X16_Y14_N2
\mem|ram[47][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[47][2]~combout\ = (\mem|ram[47][0]~17_combout\ & (\ir|dBus[2]~28_combout\)) # (!\mem|ram[47][0]~17_combout\ & ((\mem|ram[47][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[2]~28_combout\,
	datac => \mem|ram[47][0]~17_combout\,
	datad => \mem|ram[47][2]~combout\,
	combout => \mem|ram[47][2]~combout\);

-- Location: LCCOMB_X16_Y14_N28
\mem|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~8_combout\ = (\mem|Mux5~7_combout\ & (((\mem|ram[47][2]~combout\) # (!\pc|aBus[2]~8_combout\)))) # (!\mem|Mux5~7_combout\ & (\mem|ram[45][2]~combout\ & (\pc|aBus[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[45][2]~combout\,
	datab => \mem|Mux5~7_combout\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \mem|ram[47][2]~combout\,
	combout => \mem|Mux5~8_combout\);

-- Location: LCCOMB_X16_Y15_N10
\mem|ram[44][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[44][0]~2_combout\ = (\mem|ram[47][0]~0_combout\ & (\mem|Decoder0~1_combout\ & \pc|aBus[3]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[47][0]~0_combout\,
	datac => \mem|Decoder0~1_combout\,
	datad => \pc|aBus[3]~9_combout\,
	combout => \mem|ram[44][0]~2_combout\);

-- Location: LCCOMB_X17_Y17_N10
\mem|ram[44][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[44][2]~combout\ = (\mem|ram[44][0]~2_combout\ & (\ir|dBus[2]~28_combout\)) # (!\mem|ram[44][0]~2_combout\ & ((\mem|ram[44][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[2]~28_combout\,
	datac => \mem|ram[44][2]~combout\,
	datad => \mem|ram[44][0]~2_combout\,
	combout => \mem|ram[44][2]~combout\);

-- Location: LCCOMB_X17_Y17_N30
\mem|ram[40][0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[40][0]~3_combout\ = (\mem|ram[47][0]~0_combout\ & (\pc|aBus[3]~9_combout\ & \mem|Decoder0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[47][0]~0_combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \mem|Decoder0~2_combout\,
	combout => \mem|ram[40][0]~3_combout\);

-- Location: LCCOMB_X17_Y17_N12
\mem|ram[40][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[40][2]~combout\ = (\mem|ram[40][0]~3_combout\ & ((\ir|dBus[2]~28_combout\))) # (!\mem|ram[40][0]~3_combout\ & (\mem|ram[40][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[40][2]~combout\,
	datac => \mem|ram[40][0]~3_combout\,
	datad => \ir|dBus[2]~28_combout\,
	combout => \mem|ram[40][2]~combout\);

-- Location: LCCOMB_X16_Y16_N0
\mem|ram[42][0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[42][0]~16_combout\ = (\mem|ram[47][0]~0_combout\ & (\mem|Decoder0~6_combout\ & \pc|aBus[3]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[47][0]~0_combout\,
	datac => \mem|Decoder0~6_combout\,
	datad => \pc|aBus[3]~9_combout\,
	combout => \mem|ram[42][0]~16_combout\);

-- Location: LCCOMB_X17_Y17_N14
\mem|ram[42][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[42][2]~combout\ = (\mem|ram[42][0]~16_combout\ & (\ir|dBus[2]~28_combout\)) # (!\mem|ram[42][0]~16_combout\ & ((\mem|ram[42][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[2]~28_combout\,
	datac => \mem|ram[42][2]~combout\,
	datad => \mem|ram[42][0]~16_combout\,
	combout => \mem|ram[42][2]~combout\);

-- Location: LCCOMB_X17_Y17_N22
\mem|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~0_combout\ = (\pc|aBus[2]~8_combout\ & (((\pc|aBus[1]~7_combout\)))) # (!\pc|aBus[2]~8_combout\ & ((\pc|aBus[1]~7_combout\ & ((\mem|ram[42][2]~combout\))) # (!\pc|aBus[1]~7_combout\ & (\mem|ram[40][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[40][2]~combout\,
	datab => \mem|ram[42][2]~combout\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \pc|aBus[1]~7_combout\,
	combout => \mem|Mux5~0_combout\);

-- Location: LCCOMB_X16_Y16_N16
\mem|ram[46][0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[46][0]~14_combout\ = (\mem|Decoder0~4_combout\ & (\mem|ram[47][0]~0_combout\ & \pc|aBus[3]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|Decoder0~4_combout\,
	datac => \mem|ram[47][0]~0_combout\,
	datad => \pc|aBus[3]~9_combout\,
	combout => \mem|ram[46][0]~14_combout\);

-- Location: LCCOMB_X17_Y17_N6
\mem|ram[46][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[46][2]~combout\ = (\mem|ram[46][0]~14_combout\ & ((\ir|dBus[2]~28_combout\))) # (!\mem|ram[46][0]~14_combout\ & (\mem|ram[46][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[46][2]~combout\,
	datac => \ir|dBus[2]~28_combout\,
	datad => \mem|ram[46][0]~14_combout\,
	combout => \mem|ram[46][2]~combout\);

-- Location: LCCOMB_X17_Y17_N26
\mem|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~1_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|Mux5~0_combout\ & ((\mem|ram[46][2]~combout\))) # (!\mem|Mux5~0_combout\ & (\mem|ram[44][2]~combout\)))) # (!\pc|aBus[2]~8_combout\ & (((\mem|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[44][2]~combout\,
	datab => \pc|aBus[2]~8_combout\,
	datac => \mem|Mux5~0_combout\,
	datad => \mem|ram[46][2]~combout\,
	combout => \mem|Mux5~1_combout\);

-- Location: LCCOMB_X12_Y13_N16
\mem|ram[15][0]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[15][0]~35_combout\ = (!\reset~input_o\ & (\pc|aBus[3]~9_combout\ & (!\ir|aBus[5]~5_combout\ & !\ir|aBus[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \pc|aBus[3]~9_combout\,
	datac => \ir|aBus[5]~5_combout\,
	datad => \ir|aBus[4]~4_combout\,
	combout => \mem|ram[15][0]~35_combout\);

-- Location: LCCOMB_X17_Y13_N18
\mem|ram[15][0]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[15][0]~42_combout\ = (\mem|Decoder0~7_combout\ & \mem|ram[15][0]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem|Decoder0~7_combout\,
	datad => \mem|ram[15][0]~35_combout\,
	combout => \mem|ram[15][0]~42_combout\);

-- Location: LCCOMB_X18_Y10_N26
\mem|ram[15][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[15][2]~combout\ = (\mem|ram[15][0]~42_combout\ & (\ir|dBus[2]~28_combout\)) # (!\mem|ram[15][0]~42_combout\ & ((\mem|ram[15][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[2]~28_combout\,
	datac => \mem|ram[15][2]~combout\,
	datad => \mem|ram[15][0]~42_combout\,
	combout => \mem|ram[15][2]~combout\);

-- Location: LCCOMB_X17_Y13_N30
\mem|ram[13][0]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[13][0]~40_combout\ = (\mem|Decoder0~3_combout\ & \mem|ram[15][0]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem|Decoder0~3_combout\,
	datad => \mem|ram[15][0]~35_combout\,
	combout => \mem|ram[13][0]~40_combout\);

-- Location: LCCOMB_X18_Y10_N28
\mem|ram[13][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[13][2]~combout\ = (\mem|ram[13][0]~40_combout\ & (\ir|dBus[2]~28_combout\)) # (!\mem|ram[13][0]~40_combout\ & ((\mem|ram[13][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[2]~28_combout\,
	datac => \mem|ram[13][0]~40_combout\,
	datad => \mem|ram[13][2]~combout\,
	combout => \mem|ram[13][2]~combout\);

-- Location: LCCOMB_X11_Y12_N0
\mem|ram[9][0]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[9][0]~36_combout\ = (\mem|Decoder0~0_combout\ & \mem|ram[15][0]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem|Decoder0~0_combout\,
	datad => \mem|ram[15][0]~35_combout\,
	combout => \mem|ram[9][0]~36_combout\);

-- Location: LCCOMB_X18_Y10_N8
\mem|ram[9][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[9][2]~combout\ = (\mem|ram[9][0]~36_combout\ & (\ir|dBus[2]~28_combout\)) # (!\mem|ram[9][0]~36_combout\ & ((\mem|ram[9][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[2]~28_combout\,
	datac => \mem|ram[9][2]~combout\,
	datad => \mem|ram[9][0]~36_combout\,
	combout => \mem|ram[9][2]~combout\);

-- Location: LCCOMB_X21_Y13_N20
\mem|ram[11][0]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[11][0]~38_combout\ = (\mem|ram[15][0]~35_combout\ & \mem|Decoder0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem|ram[15][0]~35_combout\,
	datad => \mem|Decoder0~5_combout\,
	combout => \mem|ram[11][0]~38_combout\);

-- Location: LCCOMB_X18_Y10_N10
\mem|ram[11][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[11][2]~combout\ = (\mem|ram[11][0]~38_combout\ & ((\ir|dBus[2]~28_combout\))) # (!\mem|ram[11][0]~38_combout\ & (\mem|ram[11][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[11][2]~combout\,
	datac => \ir|dBus[2]~28_combout\,
	datad => \mem|ram[11][0]~38_combout\,
	combout => \mem|ram[11][2]~combout\);

-- Location: LCCOMB_X18_Y10_N16
\mem|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~2_combout\ = (\pc|aBus[2]~8_combout\ & (\pc|aBus[1]~7_combout\)) # (!\pc|aBus[2]~8_combout\ & ((\pc|aBus[1]~7_combout\ & ((\mem|ram[11][2]~combout\))) # (!\pc|aBus[1]~7_combout\ & (\mem|ram[9][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \pc|aBus[1]~7_combout\,
	datac => \mem|ram[9][2]~combout\,
	datad => \mem|ram[11][2]~combout\,
	combout => \mem|Mux5~2_combout\);

-- Location: LCCOMB_X18_Y10_N14
\mem|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~3_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|Mux5~2_combout\ & (\mem|ram[15][2]~combout\)) # (!\mem|Mux5~2_combout\ & ((\mem|ram[13][2]~combout\))))) # (!\pc|aBus[2]~8_combout\ & (((\mem|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[15][2]~combout\,
	datab => \mem|ram[13][2]~combout\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \mem|Mux5~2_combout\,
	combout => \mem|Mux5~3_combout\);

-- Location: LCCOMB_X17_Y13_N16
\mem|ram[14][0]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[14][0]~39_combout\ = (\mem|ram[15][0]~35_combout\ & \mem|Decoder0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem|ram[15][0]~35_combout\,
	datad => \mem|Decoder0~4_combout\,
	combout => \mem|ram[14][0]~39_combout\);

-- Location: LCCOMB_X18_Y10_N18
\mem|ram[14][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[14][2]~combout\ = (\mem|ram[14][0]~39_combout\ & (\ir|dBus[2]~28_combout\)) # (!\mem|ram[14][0]~39_combout\ & ((\mem|ram[14][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[2]~28_combout\,
	datab => \mem|ram[14][2]~combout\,
	datac => \mem|ram[14][0]~39_combout\,
	combout => \mem|ram[14][2]~combout\);

-- Location: LCCOMB_X18_Y12_N24
\mem|ram[12][0]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[12][0]~41_combout\ = (\mem|Decoder0~1_combout\ & \mem|ram[15][0]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem|Decoder0~1_combout\,
	datad => \mem|ram[15][0]~35_combout\,
	combout => \mem|ram[12][0]~41_combout\);

-- Location: LCCOMB_X18_Y10_N20
\mem|ram[12][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[12][2]~combout\ = (\mem|ram[12][0]~41_combout\ & (\ir|dBus[2]~28_combout\)) # (!\mem|ram[12][0]~41_combout\ & ((\mem|ram[12][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[2]~28_combout\,
	datab => \mem|ram[12][2]~combout\,
	datac => \mem|ram[12][0]~41_combout\,
	combout => \mem|ram[12][2]~combout\);

-- Location: LCCOMB_X16_Y10_N12
\mem|dBus~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|dBus~1_combout\ = (\ctl|mem_rw~q\ & \ctl|mem_enD~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ctl|mem_rw~q\,
	datad => \ctl|mem_enD~combout\,
	combout => \mem|dBus~1_combout\);

-- Location: LCCOMB_X13_Y11_N12
\ir|dBus[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[0]~34_combout\ = ((\ctl|mem_rw~q\ & \ctl|mem_enD~combout\)) # (!\ir|dBus[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|mem_rw~q\,
	datab => \ctl|mem_enD~combout\,
	datad => \ir|dBus[0]~10_combout\,
	combout => \ir|dBus[0]~34_combout\);

-- Location: LCCOMB_X19_Y14_N0
\ir|dBus[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[2]~37_combout\ = ((\ir|dBus[2]~14_combout\ & ((\mem|Mux5~41_combout\) # (!\mem|dBus~1_combout\)))) # (!\ir|dBus[0]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|dBus~1_combout\,
	datab => \ir|dBus[2]~14_combout\,
	datac => \ir|dBus[0]~34_combout\,
	datad => \mem|Mux5~41_combout\,
	combout => \ir|dBus[2]~37_combout\);

-- Location: LCCOMB_X12_Y11_N30
\mem|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Decoder0~8_combout\ = (!\ir|aBus[5]~5_combout\ & (\mem|Decoder0~2_combout\ & (!\ir|aBus[4]~4_combout\ & \pc|aBus[3]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[5]~5_combout\,
	datab => \mem|Decoder0~2_combout\,
	datac => \ir|aBus[4]~4_combout\,
	datad => \pc|aBus[3]~9_combout\,
	combout => \mem|Decoder0~8_combout\);

-- Location: CLKCTRL_G3
\mem|Decoder0~8clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mem|Decoder0~8clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mem|Decoder0~8clkctrl_outclk\);

-- Location: LCCOMB_X18_Y10_N12
\mem|ram[8][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[8][2]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~8clkctrl_outclk\) & (\ir|dBus[2]~37_combout\)) # (!GLOBAL(\mem|Decoder0~8clkctrl_outclk\) & ((\mem|ram[8][2]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ir|dBus[2]~37_combout\,
	datac => \mem|Decoder0~8clkctrl_outclk\,
	datad => \mem|ram[8][2]~combout\,
	combout => \mem|ram[8][2]~combout\);

-- Location: LCCOMB_X17_Y15_N30
\mem|ram[10][0]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[10][0]~37_combout\ = (\mem|Decoder0~6_combout\ & \mem|ram[15][0]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Decoder0~6_combout\,
	datad => \mem|ram[15][0]~35_combout\,
	combout => \mem|ram[10][0]~37_combout\);

-- Location: LCCOMB_X18_Y10_N6
\mem|ram[10][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[10][2]~combout\ = (\mem|ram[10][0]~37_combout\ & ((\ir|dBus[2]~28_combout\))) # (!\mem|ram[10][0]~37_combout\ & (\mem|ram[10][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[10][2]~combout\,
	datab => \ir|dBus[2]~28_combout\,
	datad => \mem|ram[10][0]~37_combout\,
	combout => \mem|ram[10][2]~combout\);

-- Location: LCCOMB_X18_Y10_N24
\mem|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~4_combout\ = (\pc|aBus[2]~8_combout\ & (((\pc|aBus[1]~7_combout\)))) # (!\pc|aBus[2]~8_combout\ & ((\pc|aBus[1]~7_combout\ & ((\mem|ram[10][2]~combout\))) # (!\pc|aBus[1]~7_combout\ & (\mem|ram[8][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[8][2]~combout\,
	datab => \pc|aBus[2]~8_combout\,
	datac => \pc|aBus[1]~7_combout\,
	datad => \mem|ram[10][2]~combout\,
	combout => \mem|Mux5~4_combout\);

-- Location: LCCOMB_X18_Y10_N2
\mem|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~5_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|Mux5~4_combout\ & (\mem|ram[14][2]~combout\)) # (!\mem|Mux5~4_combout\ & ((\mem|ram[12][2]~combout\))))) # (!\pc|aBus[2]~8_combout\ & (((\mem|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \mem|ram[14][2]~combout\,
	datac => \mem|ram[12][2]~combout\,
	datad => \mem|Mux5~4_combout\,
	combout => \mem|Mux5~5_combout\);

-- Location: LCCOMB_X18_Y10_N4
\mem|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~6_combout\ = (\pc|aBus[0]~6_combout\ & ((\ir|aBus[5]~5_combout\) # ((\mem|Mux5~3_combout\)))) # (!\pc|aBus[0]~6_combout\ & (!\ir|aBus[5]~5_combout\ & ((\mem|Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[0]~6_combout\,
	datab => \ir|aBus[5]~5_combout\,
	datac => \mem|Mux5~3_combout\,
	datad => \mem|Mux5~5_combout\,
	combout => \mem|Mux5~6_combout\);

-- Location: LCCOMB_X19_Y14_N30
\mem|Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~9_combout\ = (\ir|aBus[5]~5_combout\ & ((\mem|Mux5~6_combout\ & (\mem|Mux5~8_combout\)) # (!\mem|Mux5~6_combout\ & ((\mem|Mux5~1_combout\))))) # (!\ir|aBus[5]~5_combout\ & (((\mem|Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[5]~5_combout\,
	datab => \mem|Mux5~8_combout\,
	datac => \mem|Mux5~1_combout\,
	datad => \mem|Mux5~6_combout\,
	combout => \mem|Mux5~9_combout\);

-- Location: LCCOMB_X14_Y15_N8
\mem|ram[37][0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[37][0]~5_combout\ = (!\reset~input_o\ & (!\ir|aBus[4]~4_combout\ & (\ir|aBus[5]~5_combout\ & !\pc|aBus[3]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ir|aBus[4]~4_combout\,
	datac => \ir|aBus[5]~5_combout\,
	datad => \pc|aBus[3]~9_combout\,
	combout => \mem|ram[37][0]~5_combout\);

-- Location: LCCOMB_X14_Y15_N2
\mem|ram[38][0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[38][0]~6_combout\ = (\mem|ram[37][0]~5_combout\ & \mem|Decoder0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[37][0]~5_combout\,
	datac => \mem|Decoder0~4_combout\,
	combout => \mem|ram[38][0]~6_combout\);

-- Location: LCCOMB_X19_Y16_N28
\mem|ram[38][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[38][2]~combout\ = (\mem|ram[38][0]~6_combout\ & (\ir|dBus[2]~28_combout\)) # (!\mem|ram[38][0]~6_combout\ & ((\mem|ram[38][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[2]~28_combout\,
	datab => \mem|ram[38][2]~combout\,
	datad => \mem|ram[38][0]~6_combout\,
	combout => \mem|ram[38][2]~combout\);

-- Location: LCCOMB_X14_Y15_N14
\mem|ram[34][0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[34][0]~8_combout\ = (\mem|ram[37][0]~5_combout\ & \mem|Decoder0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem|ram[37][0]~5_combout\,
	datad => \mem|Decoder0~6_combout\,
	combout => \mem|ram[34][0]~8_combout\);

-- Location: LCCOMB_X19_Y16_N8
\mem|ram[34][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[34][2]~combout\ = (\mem|ram[34][0]~8_combout\ & (\ir|dBus[2]~28_combout\)) # (!\mem|ram[34][0]~8_combout\ & ((\mem|ram[34][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[2]~28_combout\,
	datac => \mem|ram[34][2]~combout\,
	datad => \mem|ram[34][0]~8_combout\,
	combout => \mem|ram[34][2]~combout\);

-- Location: LCCOMB_X19_Y16_N26
\mem|Mux5~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~27_combout\ = (\pc|aBus[0]~6_combout\ & (((\pc|aBus[2]~8_combout\)))) # (!\pc|aBus[0]~6_combout\ & ((\pc|aBus[2]~8_combout\ & (\mem|ram[38][2]~combout\)) # (!\pc|aBus[2]~8_combout\ & ((\mem|ram[34][2]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[0]~6_combout\,
	datab => \mem|ram[38][2]~combout\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \mem|ram[34][2]~combout\,
	combout => \mem|Mux5~27_combout\);

-- Location: LCCOMB_X19_Y16_N30
\mem|ram[39][0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[39][0]~9_combout\ = (\mem|Decoder0~7_combout\ & \mem|ram[37][0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem|Decoder0~7_combout\,
	datad => \mem|ram[37][0]~5_combout\,
	combout => \mem|ram[39][0]~9_combout\);

-- Location: LCCOMB_X19_Y16_N2
\mem|ram[39][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[39][2]~combout\ = (\mem|ram[39][0]~9_combout\ & (\ir|dBus[2]~28_combout\)) # (!\mem|ram[39][0]~9_combout\ & ((\mem|ram[39][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[2]~28_combout\,
	datab => \mem|ram[39][2]~combout\,
	datac => \mem|ram[39][0]~9_combout\,
	combout => \mem|ram[39][2]~combout\);

-- Location: LCCOMB_X13_Y16_N30
\mem|ram[35][0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[35][0]~7_combout\ = (\mem|ram[37][0]~5_combout\ & \mem|Decoder0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem|ram[37][0]~5_combout\,
	datad => \mem|Decoder0~5_combout\,
	combout => \mem|ram[35][0]~7_combout\);

-- Location: LCCOMB_X19_Y16_N10
\mem|ram[35][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[35][2]~combout\ = (\mem|ram[35][0]~7_combout\ & (\ir|dBus[2]~28_combout\)) # (!\mem|ram[35][0]~7_combout\ & ((\mem|ram[35][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[2]~28_combout\,
	datac => \mem|ram[35][0]~7_combout\,
	datad => \mem|ram[35][2]~combout\,
	combout => \mem|ram[35][2]~combout\);

-- Location: LCCOMB_X19_Y16_N16
\mem|Mux5~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~28_combout\ = (\mem|Mux5~27_combout\ & ((\mem|ram[39][2]~combout\) # ((!\pc|aBus[0]~6_combout\)))) # (!\mem|Mux5~27_combout\ & (((\pc|aBus[0]~6_combout\ & \mem|ram[35][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux5~27_combout\,
	datab => \mem|ram[39][2]~combout\,
	datac => \pc|aBus[0]~6_combout\,
	datad => \mem|ram[35][2]~combout\,
	combout => \mem|Mux5~28_combout\);

-- Location: LCCOMB_X14_Y17_N28
\mem|ram[32][0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[32][0]~12_combout\ = (\mem|ram[37][0]~5_combout\ & \mem|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem|ram[37][0]~5_combout\,
	datad => \mem|Decoder0~2_combout\,
	combout => \mem|ram[32][0]~12_combout\);

-- Location: LCCOMB_X18_Y17_N0
\mem|ram[32][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[32][2]~combout\ = (\mem|ram[32][0]~12_combout\ & ((\ir|dBus[2]~28_combout\))) # (!\mem|ram[32][0]~12_combout\ & (\mem|ram[32][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[32][2]~combout\,
	datac => \ir|dBus[2]~28_combout\,
	datad => \mem|ram[32][0]~12_combout\,
	combout => \mem|ram[32][2]~combout\);

-- Location: LCCOMB_X13_Y17_N22
\mem|ram[33][0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[33][0]~10_combout\ = (\mem|Decoder0~0_combout\ & \mem|ram[37][0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem|Decoder0~0_combout\,
	datad => \mem|ram[37][0]~5_combout\,
	combout => \mem|ram[33][0]~10_combout\);

-- Location: LCCOMB_X18_Y17_N22
\mem|ram[33][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[33][2]~combout\ = (\mem|ram[33][0]~10_combout\ & (\ir|dBus[2]~28_combout\)) # (!\mem|ram[33][0]~10_combout\ & ((\mem|ram[33][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[2]~28_combout\,
	datac => \mem|ram[33][2]~combout\,
	datad => \mem|ram[33][0]~10_combout\,
	combout => \mem|ram[33][2]~combout\);

-- Location: LCCOMB_X14_Y15_N0
\mem|ram[36][0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[36][0]~11_combout\ = (\mem|ram[37][0]~5_combout\ & \mem|Decoder0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem|ram[37][0]~5_combout\,
	datad => \mem|Decoder0~1_combout\,
	combout => \mem|ram[36][0]~11_combout\);

-- Location: LCCOMB_X18_Y17_N4
\mem|ram[36][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[36][2]~combout\ = (\mem|ram[36][0]~11_combout\ & (\ir|dBus[2]~28_combout\)) # (!\mem|ram[36][0]~11_combout\ & ((\mem|ram[36][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[2]~28_combout\,
	datac => \mem|ram[36][2]~combout\,
	datad => \mem|ram[36][0]~11_combout\,
	combout => \mem|ram[36][2]~combout\);

-- Location: LCCOMB_X13_Y17_N30
\mem|ram[37][0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[37][0]~13_combout\ = (\mem|Decoder0~3_combout\ & \mem|ram[37][0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem|Decoder0~3_combout\,
	datad => \mem|ram[37][0]~5_combout\,
	combout => \mem|ram[37][0]~13_combout\);

-- Location: LCCOMB_X18_Y17_N14
\mem|ram[37][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[37][2]~combout\ = (\mem|ram[37][0]~13_combout\ & ((\ir|dBus[2]~28_combout\))) # (!\mem|ram[37][0]~13_combout\ & (\mem|ram[37][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[37][2]~combout\,
	datac => \mem|ram[37][0]~13_combout\,
	datad => \ir|dBus[2]~28_combout\,
	combout => \mem|ram[37][2]~combout\);

-- Location: LCCOMB_X18_Y17_N24
\mem|Mux5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~20_combout\ = (\pc|aBus[2]~8_combout\ & ((\pc|aBus[0]~6_combout\ & ((\mem|ram[37][2]~combout\))) # (!\pc|aBus[0]~6_combout\ & (\mem|ram[36][2]~combout\)))) # (!\pc|aBus[2]~8_combout\ & (((\pc|aBus[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \mem|ram[36][2]~combout\,
	datac => \mem|ram[37][2]~combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Mux5~20_combout\);

-- Location: LCCOMB_X18_Y17_N26
\mem|Mux5~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~21_combout\ = (\pc|aBus[2]~8_combout\ & (((\mem|Mux5~20_combout\)))) # (!\pc|aBus[2]~8_combout\ & ((\mem|Mux5~20_combout\ & ((\mem|ram[33][2]~combout\))) # (!\mem|Mux5~20_combout\ & (\mem|ram[32][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \mem|ram[32][2]~combout\,
	datac => \mem|ram[33][2]~combout\,
	datad => \mem|Mux5~20_combout\,
	combout => \mem|Mux5~21_combout\);

-- Location: LCCOMB_X14_Y12_N22
\mem|Decoder0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Decoder0~16_combout\ = (\mem|Decoder0~5_combout\ & (!\pc|aBus[3]~9_combout\ & (!\ir|aBus[4]~4_combout\ & !\ir|aBus[5]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Decoder0~5_combout\,
	datab => \pc|aBus[3]~9_combout\,
	datac => \ir|aBus[4]~4_combout\,
	datad => \ir|aBus[5]~5_combout\,
	combout => \mem|Decoder0~16_combout\);

-- Location: CLKCTRL_G6
\mem|Decoder0~16clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mem|Decoder0~16clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mem|Decoder0~16clkctrl_outclk\);

-- Location: LCCOMB_X18_Y14_N0
\mem|ram[3][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[3][2]~combout\ = (\reset~input_o\) # ((GLOBAL(\mem|Decoder0~16clkctrl_outclk\) & ((\ir|dBus[2]~37_combout\))) # (!GLOBAL(\mem|Decoder0~16clkctrl_outclk\) & (\mem|ram[3][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \mem|ram[3][2]~combout\,
	datac => \ir|dBus[2]~37_combout\,
	datad => \mem|Decoder0~16clkctrl_outclk\,
	combout => \mem|ram[3][2]~combout\);

-- Location: LCCOMB_X22_Y13_N30
\mem|Decoder0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Decoder0~12_combout\ = (\mem|Decoder0~7_combout\ & (!\pc|aBus[3]~9_combout\ & (!\ir|aBus[5]~5_combout\ & !\ir|aBus[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Decoder0~7_combout\,
	datab => \pc|aBus[3]~9_combout\,
	datac => \ir|aBus[5]~5_combout\,
	datad => \ir|aBus[4]~4_combout\,
	combout => \mem|Decoder0~12_combout\);

-- Location: CLKCTRL_G9
\mem|Decoder0~12clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mem|Decoder0~12clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mem|Decoder0~12clkctrl_outclk\);

-- Location: LCCOMB_X21_Y15_N28
\mem|ram[7][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[7][2]~combout\ = (\reset~input_o\) # ((GLOBAL(\mem|Decoder0~12clkctrl_outclk\) & (\ir|dBus[2]~37_combout\)) # (!GLOBAL(\mem|Decoder0~12clkctrl_outclk\) & ((\mem|ram[7][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[2]~37_combout\,
	datab => \reset~input_o\,
	datac => \mem|Decoder0~12clkctrl_outclk\,
	datad => \mem|ram[7][2]~combout\,
	combout => \mem|ram[7][2]~combout\);

-- Location: LCCOMB_X12_Y11_N6
\mem|Decoder0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Decoder0~14_combout\ = (\mem|Decoder0~6_combout\ & (!\ir|aBus[5]~5_combout\ & (!\pc|aBus[3]~9_combout\ & !\ir|aBus[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Decoder0~6_combout\,
	datab => \ir|aBus[5]~5_combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \ir|aBus[4]~4_combout\,
	combout => \mem|Decoder0~14_combout\);

-- Location: CLKCTRL_G0
\mem|Decoder0~14clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mem|Decoder0~14clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mem|Decoder0~14clkctrl_outclk\);

-- Location: LCCOMB_X14_Y14_N26
\mem|ram[2][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[2][2]~combout\ = (\reset~input_o\) # ((GLOBAL(\mem|Decoder0~14clkctrl_outclk\) & ((\ir|dBus[2]~37_combout\))) # (!GLOBAL(\mem|Decoder0~14clkctrl_outclk\) & (\mem|ram[2][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[2][2]~combout\,
	datab => \ir|dBus[2]~37_combout\,
	datac => \reset~input_o\,
	datad => \mem|Decoder0~14clkctrl_outclk\,
	combout => \mem|ram[2][2]~combout\);

-- Location: LCCOMB_X13_Y12_N8
\mem|Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Decoder0~10_combout\ = (!\pc|aBus[3]~9_combout\ & (\mem|Decoder0~4_combout\ & (!\ir|aBus[5]~5_combout\ & !\ir|aBus[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[3]~9_combout\,
	datab => \mem|Decoder0~4_combout\,
	datac => \ir|aBus[5]~5_combout\,
	datad => \ir|aBus[4]~4_combout\,
	combout => \mem|Decoder0~10_combout\);

-- Location: CLKCTRL_G8
\mem|Decoder0~10clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mem|Decoder0~10clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mem|Decoder0~10clkctrl_outclk\);

-- Location: LCCOMB_X14_Y14_N2
\mem|ram[6][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[6][2]~combout\ = (\reset~input_o\) # ((GLOBAL(\mem|Decoder0~10clkctrl_outclk\) & (\ir|dBus[2]~37_combout\)) # (!GLOBAL(\mem|Decoder0~10clkctrl_outclk\) & ((\mem|ram[6][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ir|dBus[2]~37_combout\,
	datac => \mem|Decoder0~10clkctrl_outclk\,
	datad => \mem|ram[6][2]~combout\,
	combout => \mem|ram[6][2]~combout\);

-- Location: LCCOMB_X14_Y14_N12
\mem|Mux5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~22_combout\ = (\pc|aBus[2]~8_combout\ & (((\pc|aBus[0]~6_combout\) # (\mem|ram[6][2]~combout\)))) # (!\pc|aBus[2]~8_combout\ & (\mem|ram[2][2]~combout\ & (!\pc|aBus[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[2][2]~combout\,
	datab => \pc|aBus[2]~8_combout\,
	datac => \pc|aBus[0]~6_combout\,
	datad => \mem|ram[6][2]~combout\,
	combout => \mem|Mux5~22_combout\);

-- Location: LCCOMB_X19_Y14_N14
\mem|Mux5~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~23_combout\ = (\pc|aBus[0]~6_combout\ & ((\mem|Mux5~22_combout\ & ((\mem|ram[7][2]~combout\))) # (!\mem|Mux5~22_combout\ & (\mem|ram[3][2]~combout\)))) # (!\pc|aBus[0]~6_combout\ & (((\mem|Mux5~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[3][2]~combout\,
	datab => \mem|ram[7][2]~combout\,
	datac => \pc|aBus[0]~6_combout\,
	datad => \mem|Mux5~22_combout\,
	combout => \mem|Mux5~23_combout\);

-- Location: LCCOMB_X10_Y12_N28
\mem|Decoder0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Decoder0~13_combout\ = (\mem|Decoder0~0_combout\ & (!\ir|aBus[4]~4_combout\ & (!\ir|aBus[5]~5_combout\ & !\pc|aBus[3]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Decoder0~0_combout\,
	datab => \ir|aBus[4]~4_combout\,
	datac => \ir|aBus[5]~5_combout\,
	datad => \pc|aBus[3]~9_combout\,
	combout => \mem|Decoder0~13_combout\);

-- Location: CLKCTRL_G1
\mem|Decoder0~13clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mem|Decoder0~13clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mem|Decoder0~13clkctrl_outclk\);

-- Location: LCCOMB_X16_Y11_N30
\mem|ram[1][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[1][2]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~13clkctrl_outclk\) & (\ir|dBus[2]~37_combout\)) # (!GLOBAL(\mem|Decoder0~13clkctrl_outclk\) & ((\mem|ram[1][2]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[2]~37_combout\,
	datab => \reset~input_o\,
	datac => \mem|ram[1][2]~combout\,
	datad => \mem|Decoder0~13clkctrl_outclk\,
	combout => \mem|ram[1][2]~combout\);

-- Location: LCCOMB_X14_Y12_N24
\mem|Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Decoder0~9_combout\ = (!\pc|aBus[3]~9_combout\ & (\mem|Decoder0~3_combout\ & (!\ir|aBus[5]~5_combout\ & !\ir|aBus[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[3]~9_combout\,
	datab => \mem|Decoder0~3_combout\,
	datac => \ir|aBus[5]~5_combout\,
	datad => \ir|aBus[4]~4_combout\,
	combout => \mem|Decoder0~9_combout\);

-- Location: CLKCTRL_G7
\mem|Decoder0~9clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mem|Decoder0~9clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mem|Decoder0~9clkctrl_outclk\);

-- Location: LCCOMB_X16_Y10_N2
\mem|ram[5][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[5][2]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~9clkctrl_outclk\) & (\ir|dBus[2]~37_combout\)) # (!GLOBAL(\mem|Decoder0~9clkctrl_outclk\) & ((\mem|ram[5][2]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ir|dBus[2]~37_combout\,
	datac => \mem|Decoder0~9clkctrl_outclk\,
	datad => \mem|ram[5][2]~combout\,
	combout => \mem|ram[5][2]~combout\);

-- Location: LCCOMB_X16_Y14_N4
\mem|Decoder0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Decoder0~11_combout\ = (\mem|Decoder0~1_combout\ & (!\ir|aBus[5]~5_combout\ & (!\ir|aBus[4]~4_combout\ & !\pc|aBus[3]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Decoder0~1_combout\,
	datab => \ir|aBus[5]~5_combout\,
	datac => \ir|aBus[4]~4_combout\,
	datad => \pc|aBus[3]~9_combout\,
	combout => \mem|Decoder0~11_combout\);

-- Location: CLKCTRL_G5
\mem|Decoder0~11clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mem|Decoder0~11clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mem|Decoder0~11clkctrl_outclk\);

-- Location: LCCOMB_X16_Y10_N30
\mem|ram[4][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[4][2]~combout\ = (\reset~input_o\) # ((GLOBAL(\mem|Decoder0~11clkctrl_outclk\) & (\ir|dBus[2]~37_combout\)) # (!GLOBAL(\mem|Decoder0~11clkctrl_outclk\) & ((\mem|ram[4][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ir|dBus[2]~37_combout\,
	datac => \mem|Decoder0~11clkctrl_outclk\,
	datad => \mem|ram[4][2]~combout\,
	combout => \mem|ram[4][2]~combout\);

-- Location: LCCOMB_X12_Y11_N28
\mem|Decoder0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Decoder0~15_combout\ = (!\ir|aBus[5]~5_combout\ & (\mem|Decoder0~2_combout\ & (!\pc|aBus[3]~9_combout\ & !\ir|aBus[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[5]~5_combout\,
	datab => \mem|Decoder0~2_combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \ir|aBus[4]~4_combout\,
	combout => \mem|Decoder0~15_combout\);

-- Location: CLKCTRL_G4
\mem|Decoder0~15clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mem|Decoder0~15clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mem|Decoder0~15clkctrl_outclk\);

-- Location: LCCOMB_X16_Y10_N28
\mem|ram[0][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[0][2]~combout\ = (\reset~input_o\) # ((GLOBAL(\mem|Decoder0~15clkctrl_outclk\) & ((\ir|dBus[2]~37_combout\))) # (!GLOBAL(\mem|Decoder0~15clkctrl_outclk\) & (\mem|ram[0][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[0][2]~combout\,
	datab => \ir|dBus[2]~37_combout\,
	datac => \reset~input_o\,
	datad => \mem|Decoder0~15clkctrl_outclk\,
	combout => \mem|ram[0][2]~combout\);

-- Location: LCCOMB_X16_Y10_N16
\mem|Mux5~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~24_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|ram[4][2]~combout\) # ((\pc|aBus[0]~6_combout\)))) # (!\pc|aBus[2]~8_combout\ & (((\mem|ram[0][2]~combout\ & !\pc|aBus[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[4][2]~combout\,
	datab => \mem|ram[0][2]~combout\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Mux5~24_combout\);

-- Location: LCCOMB_X16_Y10_N10
\mem|Mux5~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~25_combout\ = (\pc|aBus[0]~6_combout\ & ((\mem|Mux5~24_combout\ & ((\mem|ram[5][2]~combout\))) # (!\mem|Mux5~24_combout\ & (\mem|ram[1][2]~combout\)))) # (!\pc|aBus[0]~6_combout\ & (((\mem|Mux5~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[0]~6_combout\,
	datab => \mem|ram[1][2]~combout\,
	datac => \mem|ram[5][2]~combout\,
	datad => \mem|Mux5~24_combout\,
	combout => \mem|Mux5~25_combout\);

-- Location: LCCOMB_X19_Y14_N28
\mem|Mux5~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~26_combout\ = (\ir|aBus[5]~5_combout\ & (((\pc|aBus[1]~7_combout\)))) # (!\ir|aBus[5]~5_combout\ & ((\pc|aBus[1]~7_combout\ & (\mem|Mux5~23_combout\)) # (!\pc|aBus[1]~7_combout\ & ((\mem|Mux5~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[5]~5_combout\,
	datab => \mem|Mux5~23_combout\,
	datac => \pc|aBus[1]~7_combout\,
	datad => \mem|Mux5~25_combout\,
	combout => \mem|Mux5~26_combout\);

-- Location: LCCOMB_X19_Y14_N26
\mem|Mux5~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~29_combout\ = (\ir|aBus[5]~5_combout\ & ((\mem|Mux5~26_combout\ & (\mem|Mux5~28_combout\)) # (!\mem|Mux5~26_combout\ & ((\mem|Mux5~21_combout\))))) # (!\ir|aBus[5]~5_combout\ & (((\mem|Mux5~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[5]~5_combout\,
	datab => \mem|Mux5~28_combout\,
	datac => \mem|Mux5~21_combout\,
	datad => \mem|Mux5~26_combout\,
	combout => \mem|Mux5~29_combout\);

-- Location: LCCOMB_X12_Y11_N22
\mem|ram[50][0]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[50][0]~52_combout\ = (\mem|Decoder0~6_combout\ & (\mem|ram[63][1]~43_combout\ & !\pc|aBus[3]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Decoder0~6_combout\,
	datac => \mem|ram[63][1]~43_combout\,
	datad => \pc|aBus[3]~9_combout\,
	combout => \mem|ram[50][0]~52_combout\);

-- Location: LCCOMB_X12_Y14_N28
\mem|ram[50][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[50][2]~combout\ = (\mem|ram[50][0]~52_combout\ & ((\ir|dBus[2]~28_combout\))) # (!\mem|ram[50][0]~52_combout\ & (\mem|ram[50][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[50][0]~52_combout\,
	datab => \mem|ram[50][2]~combout\,
	datac => \ir|dBus[2]~28_combout\,
	combout => \mem|ram[50][2]~combout\);

-- Location: LCCOMB_X12_Y16_N10
\mem|ram[51][0]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[51][0]~55_combout\ = (\mem|Decoder0~5_combout\ & (!\pc|aBus[3]~9_combout\ & \mem|ram[63][1]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|Decoder0~5_combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \mem|ram[63][1]~43_combout\,
	combout => \mem|ram[51][0]~55_combout\);

-- Location: LCCOMB_X12_Y16_N8
\mem|ram[51][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[51][2]~combout\ = (\mem|ram[51][0]~55_combout\ & ((\ir|dBus[2]~28_combout\))) # (!\mem|ram[51][0]~55_combout\ & (\mem|ram[51][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[51][0]~55_combout\,
	datab => \mem|ram[51][2]~combout\,
	datad => \ir|dBus[2]~28_combout\,
	combout => \mem|ram[51][2]~combout\);

-- Location: LCCOMB_X12_Y14_N16
\mem|ram[48][0]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[48][0]~54_combout\ = (\mem|ram[63][1]~43_combout\ & (!\pc|aBus[3]~9_combout\ & \mem|Decoder0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[63][1]~43_combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \mem|Decoder0~2_combout\,
	combout => \mem|ram[48][0]~54_combout\);

-- Location: LCCOMB_X12_Y14_N22
\mem|ram[48][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[48][2]~combout\ = (\mem|ram[48][0]~54_combout\ & ((\ir|dBus[2]~28_combout\))) # (!\mem|ram[48][0]~54_combout\ & (\mem|ram[48][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[48][0]~54_combout\,
	datac => \mem|ram[48][2]~combout\,
	datad => \ir|dBus[2]~28_combout\,
	combout => \mem|ram[48][2]~combout\);

-- Location: LCCOMB_X12_Y14_N18
\mem|ram[49][0]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[49][0]~53_combout\ = (\mem|ram[63][1]~43_combout\ & (!\pc|aBus[3]~9_combout\ & \mem|Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[63][1]~43_combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \mem|Decoder0~0_combout\,
	combout => \mem|ram[49][0]~53_combout\);

-- Location: LCCOMB_X12_Y14_N8
\mem|ram[49][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[49][2]~combout\ = (\mem|ram[49][0]~53_combout\ & ((\ir|dBus[2]~28_combout\))) # (!\mem|ram[49][0]~53_combout\ & (\mem|ram[49][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[49][0]~53_combout\,
	datac => \mem|ram[49][2]~combout\,
	datad => \ir|dBus[2]~28_combout\,
	combout => \mem|ram[49][2]~combout\);

-- Location: LCCOMB_X12_Y14_N0
\mem|Mux5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~10_combout\ = (\pc|aBus[1]~7_combout\ & (((\pc|aBus[0]~6_combout\)))) # (!\pc|aBus[1]~7_combout\ & ((\pc|aBus[0]~6_combout\ & ((\mem|ram[49][2]~combout\))) # (!\pc|aBus[0]~6_combout\ & (\mem|ram[48][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[48][2]~combout\,
	datab => \mem|ram[49][2]~combout\,
	datac => \pc|aBus[1]~7_combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Mux5~10_combout\);

-- Location: LCCOMB_X12_Y14_N26
\mem|Mux5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~11_combout\ = (\pc|aBus[1]~7_combout\ & ((\mem|Mux5~10_combout\ & ((\mem|ram[51][2]~combout\))) # (!\mem|Mux5~10_combout\ & (\mem|ram[50][2]~combout\)))) # (!\pc|aBus[1]~7_combout\ & (((\mem|Mux5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \mem|ram[50][2]~combout\,
	datac => \mem|ram[51][2]~combout\,
	datad => \mem|Mux5~10_combout\,
	combout => \mem|Mux5~11_combout\);

-- Location: LCCOMB_X13_Y14_N14
\mem|ram[55][0]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[55][0]~51_combout\ = (\mem|ram[63][1]~43_combout\ & (!\pc|aBus[3]~9_combout\ & \mem|Decoder0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[63][1]~43_combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \mem|Decoder0~7_combout\,
	combout => \mem|ram[55][0]~51_combout\);

-- Location: LCCOMB_X10_Y14_N22
\mem|ram[55][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[55][2]~combout\ = (\mem|ram[55][0]~51_combout\ & (\ir|dBus[2]~28_combout\)) # (!\mem|ram[55][0]~51_combout\ & ((\mem|ram[55][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[2]~28_combout\,
	datac => \mem|ram[55][2]~combout\,
	datad => \mem|ram[55][0]~51_combout\,
	combout => \mem|ram[55][2]~combout\);

-- Location: LCCOMB_X12_Y16_N20
\mem|ram[54][0]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[54][0]~48_combout\ = (\mem|Decoder0~4_combout\ & (!\pc|aBus[3]~9_combout\ & \mem|ram[63][1]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|Decoder0~4_combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \mem|ram[63][1]~43_combout\,
	combout => \mem|ram[54][0]~48_combout\);

-- Location: LCCOMB_X10_Y14_N24
\mem|ram[54][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[54][2]~combout\ = (\mem|ram[54][0]~48_combout\ & ((\ir|dBus[2]~28_combout\))) # (!\mem|ram[54][0]~48_combout\ & (\mem|ram[54][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[54][2]~combout\,
	datac => \ir|dBus[2]~28_combout\,
	datad => \mem|ram[54][0]~48_combout\,
	combout => \mem|ram[54][2]~combout\);

-- Location: LCCOMB_X14_Y14_N14
\mem|ram[52][0]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[52][0]~50_combout\ = (\mem|Decoder0~1_combout\ & (!\pc|aBus[3]~9_combout\ & \mem|ram[63][1]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|Decoder0~1_combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \mem|ram[63][1]~43_combout\,
	combout => \mem|ram[52][0]~50_combout\);

-- Location: LCCOMB_X10_Y14_N8
\mem|ram[52][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[52][2]~combout\ = (\mem|ram[52][0]~50_combout\ & ((\ir|dBus[2]~28_combout\))) # (!\mem|ram[52][0]~50_combout\ & (\mem|ram[52][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[52][2]~combout\,
	datac => \ir|dBus[2]~28_combout\,
	datad => \mem|ram[52][0]~50_combout\,
	combout => \mem|ram[52][2]~combout\);

-- Location: LCCOMB_X11_Y16_N0
\mem|ram[53][0]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[53][0]~49_combout\ = (\mem|Decoder0~3_combout\ & (!\pc|aBus[3]~9_combout\ & \mem|ram[63][1]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Decoder0~3_combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \mem|ram[63][1]~43_combout\,
	combout => \mem|ram[53][0]~49_combout\);

-- Location: LCCOMB_X10_Y14_N18
\mem|ram[53][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[53][2]~combout\ = (\mem|ram[53][0]~49_combout\ & (\ir|dBus[2]~28_combout\)) # (!\mem|ram[53][0]~49_combout\ & ((\mem|ram[53][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[2]~28_combout\,
	datab => \mem|ram[53][2]~combout\,
	datac => \mem|ram[53][0]~49_combout\,
	combout => \mem|ram[53][2]~combout\);

-- Location: LCCOMB_X10_Y14_N28
\mem|Mux5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~17_combout\ = (\pc|aBus[1]~7_combout\ & (((\pc|aBus[0]~6_combout\)))) # (!\pc|aBus[1]~7_combout\ & ((\pc|aBus[0]~6_combout\ & ((\mem|ram[53][2]~combout\))) # (!\pc|aBus[0]~6_combout\ & (\mem|ram[52][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[52][2]~combout\,
	datab => \pc|aBus[1]~7_combout\,
	datac => \pc|aBus[0]~6_combout\,
	datad => \mem|ram[53][2]~combout\,
	combout => \mem|Mux5~17_combout\);

-- Location: LCCOMB_X10_Y14_N6
\mem|Mux5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~18_combout\ = (\pc|aBus[1]~7_combout\ & ((\mem|Mux5~17_combout\ & (\mem|ram[55][2]~combout\)) # (!\mem|Mux5~17_combout\ & ((\mem|ram[54][2]~combout\))))) # (!\pc|aBus[1]~7_combout\ & (((\mem|Mux5~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[55][2]~combout\,
	datab => \mem|ram[54][2]~combout\,
	datac => \pc|aBus[1]~7_combout\,
	datad => \mem|Mux5~17_combout\,
	combout => \mem|Mux5~18_combout\);

-- Location: LCCOMB_X11_Y12_N6
\mem|ram[18][0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[18][0]~28_combout\ = (\mem|ram[31][0]~18_combout\ & (!\pc|aBus[3]~9_combout\ & \mem|Decoder0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[31][0]~18_combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \mem|Decoder0~6_combout\,
	combout => \mem|ram[18][0]~28_combout\);

-- Location: LCCOMB_X12_Y11_N8
\mem|ram[18][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[18][2]~combout\ = (\mem|ram[18][0]~28_combout\ & ((\ir|dBus[2]~28_combout\))) # (!\mem|ram[18][0]~28_combout\ & (\mem|ram[18][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[18][0]~28_combout\,
	datab => \mem|ram[18][2]~combout\,
	datad => \ir|dBus[2]~28_combout\,
	combout => \mem|ram[18][2]~combout\);

-- Location: LCCOMB_X14_Y12_N26
\mem|ram[19][0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[19][0]~24_combout\ = (\mem|ram[31][0]~18_combout\ & (!\pc|aBus[3]~9_combout\ & \mem|Decoder0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[31][0]~18_combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \mem|Decoder0~5_combout\,
	combout => \mem|ram[19][0]~24_combout\);

-- Location: LCCOMB_X19_Y14_N4
\mem|ram[19][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[19][2]~combout\ = (\mem|ram[19][0]~24_combout\ & (\ir|dBus[2]~28_combout\)) # (!\mem|ram[19][0]~24_combout\ & ((\mem|ram[19][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[2]~28_combout\,
	datac => \mem|ram[19][2]~combout\,
	datad => \mem|ram[19][0]~24_combout\,
	combout => \mem|ram[19][2]~combout\);

-- Location: LCCOMB_X14_Y10_N24
\mem|ram[16][0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[16][0]~29_combout\ = (\mem|Decoder0~2_combout\ & (\mem|ram[31][0]~18_combout\ & !\pc|aBus[3]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|Decoder0~2_combout\,
	datac => \mem|ram[31][0]~18_combout\,
	datad => \pc|aBus[3]~9_combout\,
	combout => \mem|ram[16][0]~29_combout\);

-- Location: LCCOMB_X18_Y10_N30
\mem|ram[16][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[16][2]~combout\ = (\mem|ram[16][0]~29_combout\ & ((\ir|dBus[2]~28_combout\))) # (!\mem|ram[16][0]~29_combout\ & (\mem|ram[16][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[16][2]~combout\,
	datac => \ir|dBus[2]~28_combout\,
	datad => \mem|ram[16][0]~29_combout\,
	combout => \mem|ram[16][2]~combout\);

-- Location: LCCOMB_X13_Y11_N8
\mem|ram[17][0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[17][0]~25_combout\ = (\mem|ram[31][0]~18_combout\ & (\mem|Decoder0~0_combout\ & !\pc|aBus[3]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[31][0]~18_combout\,
	datac => \mem|Decoder0~0_combout\,
	datad => \pc|aBus[3]~9_combout\,
	combout => \mem|ram[17][0]~25_combout\);

-- Location: LCCOMB_X18_Y10_N0
\mem|ram[17][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[17][2]~combout\ = (\mem|ram[17][0]~25_combout\ & (\ir|dBus[2]~28_combout\)) # (!\mem|ram[17][0]~25_combout\ & ((\mem|ram[17][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[2]~28_combout\,
	datac => \mem|ram[17][2]~combout\,
	datad => \mem|ram[17][0]~25_combout\,
	combout => \mem|ram[17][2]~combout\);

-- Location: LCCOMB_X18_Y10_N22
\mem|Mux5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~14_combout\ = (\pc|aBus[0]~6_combout\ & ((\pc|aBus[1]~7_combout\) # ((\mem|ram[17][2]~combout\)))) # (!\pc|aBus[0]~6_combout\ & (!\pc|aBus[1]~7_combout\ & (\mem|ram[16][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[0]~6_combout\,
	datab => \pc|aBus[1]~7_combout\,
	datac => \mem|ram[16][2]~combout\,
	datad => \mem|ram[17][2]~combout\,
	combout => \mem|Mux5~14_combout\);

-- Location: LCCOMB_X19_Y14_N8
\mem|Mux5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~15_combout\ = (\pc|aBus[1]~7_combout\ & ((\mem|Mux5~14_combout\ & ((\mem|ram[19][2]~combout\))) # (!\mem|Mux5~14_combout\ & (\mem|ram[18][2]~combout\)))) # (!\pc|aBus[1]~7_combout\ & (((\mem|Mux5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \mem|ram[18][2]~combout\,
	datac => \mem|ram[19][2]~combout\,
	datad => \mem|Mux5~14_combout\,
	combout => \mem|Mux5~15_combout\);

-- Location: LCCOMB_X12_Y13_N30
\mem|ram[23][0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[23][0]~26_combout\ = (!\pc|aBus[3]~9_combout\ & (\mem|Decoder0~7_combout\ & \mem|ram[31][0]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|aBus[3]~9_combout\,
	datac => \mem|Decoder0~7_combout\,
	datad => \mem|ram[31][0]~18_combout\,
	combout => \mem|ram[23][0]~26_combout\);

-- Location: LCCOMB_X12_Y13_N6
\mem|ram[23][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[23][2]~combout\ = (\mem|ram[23][0]~26_combout\ & ((\ir|dBus[2]~28_combout\))) # (!\mem|ram[23][0]~26_combout\ & (\mem|ram[23][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[23][2]~combout\,
	datac => \mem|ram[23][0]~26_combout\,
	datad => \ir|dBus[2]~28_combout\,
	combout => \mem|ram[23][2]~combout\);

-- Location: LCCOMB_X13_Y12_N14
\mem|ram[22][0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[22][0]~30_combout\ = (\mem|ram[31][0]~18_combout\ & (!\pc|aBus[3]~9_combout\ & \mem|Decoder0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[31][0]~18_combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \mem|Decoder0~4_combout\,
	combout => \mem|ram[22][0]~30_combout\);

-- Location: LCCOMB_X19_Y11_N14
\mem|ram[22][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[22][2]~combout\ = (\mem|ram[22][0]~30_combout\ & (\ir|dBus[2]~28_combout\)) # (!\mem|ram[22][0]~30_combout\ & ((\mem|ram[22][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[2]~28_combout\,
	datac => \mem|ram[22][2]~combout\,
	datad => \mem|ram[22][0]~30_combout\,
	combout => \mem|ram[22][2]~combout\);

-- Location: LCCOMB_X14_Y10_N12
\mem|ram[20][0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[20][0]~27_combout\ = (\mem|Decoder0~1_combout\ & (\mem|ram[31][0]~18_combout\ & !\pc|aBus[3]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Decoder0~1_combout\,
	datac => \mem|ram[31][0]~18_combout\,
	datad => \pc|aBus[3]~9_combout\,
	combout => \mem|ram[20][0]~27_combout\);

-- Location: LCCOMB_X17_Y10_N22
\mem|ram[20][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[20][2]~combout\ = (\mem|ram[20][0]~27_combout\ & (\ir|dBus[2]~28_combout\)) # (!\mem|ram[20][0]~27_combout\ & ((\mem|ram[20][2]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[2]~28_combout\,
	datac => \mem|ram[20][2]~combout\,
	datad => \mem|ram[20][0]~27_combout\,
	combout => \mem|ram[20][2]~combout\);

-- Location: LCCOMB_X16_Y11_N16
\mem|ram[21][0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[21][0]~23_combout\ = (\mem|Decoder0~3_combout\ & (!\pc|aBus[3]~9_combout\ & \mem|ram[31][0]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|Decoder0~3_combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \mem|ram[31][0]~18_combout\,
	combout => \mem|ram[21][0]~23_combout\);

-- Location: LCCOMB_X17_Y10_N4
\mem|ram[21][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[21][2]~combout\ = (\mem|ram[21][0]~23_combout\ & ((\ir|dBus[2]~28_combout\))) # (!\mem|ram[21][0]~23_combout\ & (\mem|ram[21][2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[21][2]~combout\,
	datac => \mem|ram[21][0]~23_combout\,
	datad => \ir|dBus[2]~28_combout\,
	combout => \mem|ram[21][2]~combout\);

-- Location: LCCOMB_X17_Y10_N24
\mem|Mux5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~12_combout\ = (\pc|aBus[1]~7_combout\ & (((\pc|aBus[0]~6_combout\)))) # (!\pc|aBus[1]~7_combout\ & ((\pc|aBus[0]~6_combout\ & ((\mem|ram[21][2]~combout\))) # (!\pc|aBus[0]~6_combout\ & (\mem|ram[20][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[20][2]~combout\,
	datab => \pc|aBus[1]~7_combout\,
	datac => \mem|ram[21][2]~combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Mux5~12_combout\);

-- Location: LCCOMB_X19_Y14_N18
\mem|Mux5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~13_combout\ = (\pc|aBus[1]~7_combout\ & ((\mem|Mux5~12_combout\ & (\mem|ram[23][2]~combout\)) # (!\mem|Mux5~12_combout\ & ((\mem|ram[22][2]~combout\))))) # (!\pc|aBus[1]~7_combout\ & (((\mem|Mux5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \mem|ram[23][2]~combout\,
	datac => \mem|ram[22][2]~combout\,
	datad => \mem|Mux5~12_combout\,
	combout => \mem|Mux5~13_combout\);

-- Location: LCCOMB_X19_Y14_N12
\mem|Mux5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~16_combout\ = (\ir|aBus[5]~5_combout\ & (\pc|aBus[2]~8_combout\)) # (!\ir|aBus[5]~5_combout\ & ((\pc|aBus[2]~8_combout\ & ((\mem|Mux5~13_combout\))) # (!\pc|aBus[2]~8_combout\ & (\mem|Mux5~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[5]~5_combout\,
	datab => \pc|aBus[2]~8_combout\,
	datac => \mem|Mux5~15_combout\,
	datad => \mem|Mux5~13_combout\,
	combout => \mem|Mux5~16_combout\);

-- Location: LCCOMB_X19_Y14_N24
\mem|Mux5~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~19_combout\ = (\ir|aBus[5]~5_combout\ & ((\mem|Mux5~16_combout\ & ((\mem|Mux5~18_combout\))) # (!\mem|Mux5~16_combout\ & (\mem|Mux5~11_combout\)))) # (!\ir|aBus[5]~5_combout\ & (((\mem|Mux5~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[5]~5_combout\,
	datab => \mem|Mux5~11_combout\,
	datac => \mem|Mux5~18_combout\,
	datad => \mem|Mux5~16_combout\,
	combout => \mem|Mux5~19_combout\);

-- Location: LCCOMB_X19_Y14_N2
\mem|Mux5~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~30_combout\ = (\ir|aBus[4]~4_combout\ & ((\pc|aBus[3]~9_combout\) # ((\mem|Mux5~19_combout\)))) # (!\ir|aBus[4]~4_combout\ & (!\pc|aBus[3]~9_combout\ & (\mem|Mux5~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[4]~4_combout\,
	datab => \pc|aBus[3]~9_combout\,
	datac => \mem|Mux5~29_combout\,
	datad => \mem|Mux5~19_combout\,
	combout => \mem|Mux5~30_combout\);

-- Location: LCCOMB_X19_Y14_N10
\mem|Mux5~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux5~41_combout\ = (\pc|aBus[3]~9_combout\ & ((\mem|Mux5~30_combout\ & (\mem|Mux5~40_combout\)) # (!\mem|Mux5~30_combout\ & ((\mem|Mux5~9_combout\))))) # (!\pc|aBus[3]~9_combout\ & (((\mem|Mux5~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux5~40_combout\,
	datab => \pc|aBus[3]~9_combout\,
	datac => \mem|Mux5~9_combout\,
	datad => \mem|Mux5~30_combout\,
	combout => \mem|Mux5~41_combout\);

-- Location: LCCOMB_X19_Y14_N16
\ir|dBus[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[2]~28_combout\ = ((\ir|dBus[2]~14_combout\ & ((\mem|Mux5~41_combout\) # (!\mem|dBus~0_combout\)))) # (!\ir|dBus[0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|dBus~0_combout\,
	datab => \ir|dBus[2]~14_combout\,
	datac => \ir|dBus[0]~11_combout\,
	datad => \mem|Mux5~41_combout\,
	combout => \ir|dBus[2]~28_combout\);

-- Location: LCCOMB_X21_Y14_N2
\aluu|Mult1|auto_generated|le4a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult1|auto_generated|le4a\(0) = \ir|dBus[3]~29_combout\ $ (((\aluu|Mult0|auto_generated|le3a\(5) & (\acc|accReg\(0) & \ir|dBus[2]~28_combout\)) # (!\aluu|Mult0|auto_generated|le3a\(5) & ((\acc|accReg\(0)) # (\ir|dBus[2]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|le3a\(5),
	datab => \acc|accReg\(0),
	datac => \ir|dBus[2]~28_combout\,
	datad => \ir|dBus[3]~29_combout\,
	combout => \aluu|Mult1|auto_generated|le4a\(0));

-- Location: LCCOMB_X21_Y14_N8
\aluu|Mult1|auto_generated|le3a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult1|auto_generated|le3a\(2) = (\ir|dBus[0]~26_combout\ & ((\acc|accReg\(2) $ (!\aluu|Mult0|auto_generated|le3a\(5))))) # (!\ir|dBus[0]~26_combout\ & (!\acc|accReg\(1) & ((!\aluu|Mult0|auto_generated|le3a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|accReg\(1),
	datab => \acc|accReg\(2),
	datac => \ir|dBus[0]~26_combout\,
	datad => \aluu|Mult0|auto_generated|le3a\(5),
	combout => \aluu|Mult1|auto_generated|le3a\(2));

-- Location: LCCOMB_X21_Y14_N28
\aluu|Mult1|auto_generated|le4a[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult1|auto_generated|le4a\(5) = \ir|dBus[3]~29_combout\ $ (((\ir|dBus[2]~28_combout\ & !\aluu|Mult0|auto_generated|le3a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[2]~28_combout\,
	datac => \aluu|Mult0|auto_generated|le3a\(5),
	datad => \ir|dBus[3]~29_combout\,
	combout => \aluu|Mult1|auto_generated|le4a\(5));

-- Location: LCCOMB_X22_Y14_N0
\aluu|Mult1|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult1|auto_generated|op_1~0_combout\ = (\aluu|Mult1|auto_generated|le3a\(2) & (\aluu|Mult1|auto_generated|le4a\(5) $ (VCC))) # (!\aluu|Mult1|auto_generated|le3a\(2) & (\aluu|Mult1|auto_generated|le4a\(5) & VCC))
-- \aluu|Mult1|auto_generated|op_1~1\ = CARRY((\aluu|Mult1|auto_generated|le3a\(2) & \aluu|Mult1|auto_generated|le4a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult1|auto_generated|le3a\(2),
	datab => \aluu|Mult1|auto_generated|le4a\(5),
	datad => VCC,
	combout => \aluu|Mult1|auto_generated|op_1~0_combout\,
	cout => \aluu|Mult1|auto_generated|op_1~1\);

-- Location: LCCOMB_X23_Y14_N22
\aluu|Mult1|auto_generated|le3a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult1|auto_generated|le3a\(1) = (\ir|dBus[0]~26_combout\ & (\acc|accReg\(1) $ (((!\aluu|Mult0|auto_generated|le3a\(5)))))) # (!\ir|dBus[0]~26_combout\ & (((!\acc|accReg\(0) & !\aluu|Mult0|auto_generated|le3a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|accReg\(1),
	datab => \acc|accReg\(0),
	datac => \aluu|Mult0|auto_generated|le3a\(5),
	datad => \ir|dBus[0]~26_combout\,
	combout => \aluu|Mult1|auto_generated|le3a\(1));

-- Location: LCCOMB_X21_Y14_N10
\aluu|Mult1|auto_generated|le3a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult1|auto_generated|le3a\(0) = \aluu|Mult0|auto_generated|le3a\(5) $ (((!\ir|dBus[0]~26_combout\) # (!\acc|accReg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \acc|accReg\(0),
	datac => \ir|dBus[0]~26_combout\,
	datad => \aluu|Mult0|auto_generated|le3a\(5),
	combout => \aluu|Mult1|auto_generated|le3a\(0));

-- Location: LCCOMB_X21_Y14_N30
\aluu|Mult0|auto_generated|le3a[5]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult0|auto_generated|le3a[5]~_wirecell_combout\ = !\aluu|Mult0|auto_generated|le3a\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \aluu|Mult0|auto_generated|le3a\(5),
	combout => \aluu|Mult0|auto_generated|le3a[5]~_wirecell_combout\);

-- Location: LCCOMB_X22_Y14_N14
\aluu|Mult1|auto_generated|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult1|auto_generated|op_3~0_combout\ = (\aluu|Mult1|auto_generated|le3a\(0) & (\aluu|Mult0|auto_generated|le3a[5]~_wirecell_combout\ $ (VCC))) # (!\aluu|Mult1|auto_generated|le3a\(0) & (\aluu|Mult0|auto_generated|le3a[5]~_wirecell_combout\ & VCC))
-- \aluu|Mult1|auto_generated|op_3~1\ = CARRY((\aluu|Mult1|auto_generated|le3a\(0) & \aluu|Mult0|auto_generated|le3a[5]~_wirecell_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult1|auto_generated|le3a\(0),
	datab => \aluu|Mult0|auto_generated|le3a[5]~_wirecell_combout\,
	datad => VCC,
	combout => \aluu|Mult1|auto_generated|op_3~0_combout\,
	cout => \aluu|Mult1|auto_generated|op_3~1\);

-- Location: LCCOMB_X22_Y14_N16
\aluu|Mult1|auto_generated|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult1|auto_generated|op_3~2_combout\ = (\aluu|Mult1|auto_generated|le3a\(1) & (!\aluu|Mult1|auto_generated|op_3~1\)) # (!\aluu|Mult1|auto_generated|le3a\(1) & ((\aluu|Mult1|auto_generated|op_3~1\) # (GND)))
-- \aluu|Mult1|auto_generated|op_3~3\ = CARRY((!\aluu|Mult1|auto_generated|op_3~1\) # (!\aluu|Mult1|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aluu|Mult1|auto_generated|le3a\(1),
	datad => VCC,
	cin => \aluu|Mult1|auto_generated|op_3~1\,
	combout => \aluu|Mult1|auto_generated|op_3~2_combout\,
	cout => \aluu|Mult1|auto_generated|op_3~3\);

-- Location: LCCOMB_X22_Y14_N18
\aluu|Mult1|auto_generated|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult1|auto_generated|op_3~4_combout\ = ((\aluu|Mult1|auto_generated|le4a\(0) $ (\aluu|Mult1|auto_generated|op_1~0_combout\ $ (!\aluu|Mult1|auto_generated|op_3~3\)))) # (GND)
-- \aluu|Mult1|auto_generated|op_3~5\ = CARRY((\aluu|Mult1|auto_generated|le4a\(0) & ((\aluu|Mult1|auto_generated|op_1~0_combout\) # (!\aluu|Mult1|auto_generated|op_3~3\))) # (!\aluu|Mult1|auto_generated|le4a\(0) & (\aluu|Mult1|auto_generated|op_1~0_combout\ 
-- & !\aluu|Mult1|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult1|auto_generated|le4a\(0),
	datab => \aluu|Mult1|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \aluu|Mult1|auto_generated|op_3~3\,
	combout => \aluu|Mult1|auto_generated|op_3~4_combout\,
	cout => \aluu|Mult1|auto_generated|op_3~5\);

-- Location: LCCOMB_X19_Y12_N2
\aluu|Mult0|auto_generated|le4a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult0|auto_generated|le4a\(0) = \ir|dBus[3]~29_combout\ $ (((\acc|accReg\(0) & (\ir|dBus[2]~28_combout\ & !\aluu|Mult0|auto_generated|le3a\(5))) # (!\acc|accReg\(0) & ((\ir|dBus[2]~28_combout\) # (!\aluu|Mult0|auto_generated|le3a\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|accReg\(0),
	datab => \ir|dBus[2]~28_combout\,
	datac => \aluu|Mult0|auto_generated|le3a\(5),
	datad => \ir|dBus[3]~29_combout\,
	combout => \aluu|Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X21_Y12_N22
\aluu|Mult0|auto_generated|le4a[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult0|auto_generated|le4a\(5) = \ir|dBus[3]~29_combout\ $ (((\ir|dBus[2]~28_combout\) # (!\aluu|Mult0|auto_generated|le3a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[3]~29_combout\,
	datac => \ir|dBus[2]~28_combout\,
	datad => \aluu|Mult0|auto_generated|le3a\(5),
	combout => \aluu|Mult0|auto_generated|le4a\(5));

-- Location: LCCOMB_X21_Y12_N24
\aluu|Mult0|auto_generated|le3a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult0|auto_generated|le3a\(2) = (\ir|dBus[0]~26_combout\ & (((!\acc|accReg\(1) & \aluu|Mult0|auto_generated|le3a\(5))))) # (!\ir|dBus[0]~26_combout\ & (\acc|accReg\(2) $ (((\aluu|Mult0|auto_generated|le3a\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|accReg\(2),
	datab => \acc|accReg\(1),
	datac => \aluu|Mult0|auto_generated|le3a\(5),
	datad => \ir|dBus[0]~26_combout\,
	combout => \aluu|Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X21_Y12_N6
\aluu|Mult0|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult0|auto_generated|op_1~0_combout\ = (\aluu|Mult0|auto_generated|le4a\(5) & (\aluu|Mult0|auto_generated|le3a\(2) $ (VCC))) # (!\aluu|Mult0|auto_generated|le4a\(5) & (\aluu|Mult0|auto_generated|le3a\(2) & VCC))
-- \aluu|Mult0|auto_generated|op_1~1\ = CARRY((\aluu|Mult0|auto_generated|le4a\(5) & \aluu|Mult0|auto_generated|le3a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|le4a\(5),
	datab => \aluu|Mult0|auto_generated|le3a\(2),
	datad => VCC,
	combout => \aluu|Mult0|auto_generated|op_1~0_combout\,
	cout => \aluu|Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X23_Y14_N20
\aluu|Mult0|auto_generated|le3a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult0|auto_generated|le3a\(1) = (\ir|dBus[0]~26_combout\ & (((!\acc|accReg\(0) & \aluu|Mult0|auto_generated|le3a\(5))))) # (!\ir|dBus[0]~26_combout\ & (\acc|accReg\(1) $ (((\aluu|Mult0|auto_generated|le3a\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|accReg\(1),
	datab => \acc|accReg\(0),
	datac => \aluu|Mult0|auto_generated|le3a\(5),
	datad => \ir|dBus[0]~26_combout\,
	combout => \aluu|Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X19_Y12_N24
\aluu|Mult0|auto_generated|le3a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult0|auto_generated|le3a\(0) = \aluu|Mult0|auto_generated|le3a\(5) $ (((\acc|accReg\(0) & !\ir|dBus[0]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|accReg\(0),
	datac => \aluu|Mult0|auto_generated|le3a\(5),
	datad => \ir|dBus[0]~26_combout\,
	combout => \aluu|Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X22_Y12_N0
\aluu|Mult0|auto_generated|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult0|auto_generated|op_3~0_combout\ = (\aluu|Mult0|auto_generated|le3a\(0) & (\aluu|Mult0|auto_generated|le3a[5]~_wirecell_combout\ $ (GND))) # (!\aluu|Mult0|auto_generated|le3a\(0) & (!\aluu|Mult0|auto_generated|le3a[5]~_wirecell_combout\ & VCC))
-- \aluu|Mult0|auto_generated|op_3~1\ = CARRY((\aluu|Mult0|auto_generated|le3a\(0) & !\aluu|Mult0|auto_generated|le3a[5]~_wirecell_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|le3a\(0),
	datab => \aluu|Mult0|auto_generated|le3a[5]~_wirecell_combout\,
	datad => VCC,
	combout => \aluu|Mult0|auto_generated|op_3~0_combout\,
	cout => \aluu|Mult0|auto_generated|op_3~1\);

-- Location: LCCOMB_X22_Y12_N2
\aluu|Mult0|auto_generated|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult0|auto_generated|op_3~2_combout\ = (\aluu|Mult0|auto_generated|le3a\(1) & (!\aluu|Mult0|auto_generated|op_3~1\)) # (!\aluu|Mult0|auto_generated|le3a\(1) & ((\aluu|Mult0|auto_generated|op_3~1\) # (GND)))
-- \aluu|Mult0|auto_generated|op_3~3\ = CARRY((!\aluu|Mult0|auto_generated|op_3~1\) # (!\aluu|Mult0|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \aluu|Mult0|auto_generated|op_3~1\,
	combout => \aluu|Mult0|auto_generated|op_3~2_combout\,
	cout => \aluu|Mult0|auto_generated|op_3~3\);

-- Location: LCCOMB_X22_Y12_N4
\aluu|Mult0|auto_generated|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult0|auto_generated|op_3~4_combout\ = ((\aluu|Mult0|auto_generated|le4a\(0) $ (\aluu|Mult0|auto_generated|op_1~0_combout\ $ (!\aluu|Mult0|auto_generated|op_3~3\)))) # (GND)
-- \aluu|Mult0|auto_generated|op_3~5\ = CARRY((\aluu|Mult0|auto_generated|le4a\(0) & ((\aluu|Mult0|auto_generated|op_1~0_combout\) # (!\aluu|Mult0|auto_generated|op_3~3\))) # (!\aluu|Mult0|auto_generated|le4a\(0) & (\aluu|Mult0|auto_generated|op_1~0_combout\ 
-- & !\aluu|Mult0|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|le4a\(0),
	datab => \aluu|Mult0|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \aluu|Mult0|auto_generated|op_3~3\,
	combout => \aluu|Mult0|auto_generated|op_3~4_combout\,
	cout => \aluu|Mult0|auto_generated|op_3~5\);

-- Location: LCCOMB_X22_Y10_N12
\ctl|alu_op[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|alu_op[0]~6_combout\ = (!\ctl|state.mul1~q\ & !\ctl|state.mul0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ctl|state.mul1~q\,
	datad => \ctl|state.mul0~q\,
	combout => \ctl|alu_op[0]~6_combout\);

-- Location: LCCOMB_X21_Y10_N2
\ctl|alu_op[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|alu_op[0]~4_combout\ = (!\ctl|state.div0~q\ & !\ctl|state.div1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ctl|state.div0~q\,
	datad => \ctl|state.div1~q\,
	combout => \ctl|alu_op[0]~4_combout\);

-- Location: LCCOMB_X21_Y10_N6
\ctl|state~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|state~70_combout\ = (!\reset~input_o\ & \ctl|state.and0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \ctl|state.and0~q\,
	combout => \ctl|state~70_combout\);

-- Location: FF_X21_Y10_N31
\ctl|state.and1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ctl|state~70_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|state.and1~q\);

-- Location: LCCOMB_X21_Y10_N0
\ctl|alu_op[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|alu_op[0]~3_combout\ = (\ctl|state.and1~q\) # ((\ctl|state.and0~q\) # ((!\ctl|state.or0~q\ & !\ctl|state.or1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|state.and1~q\,
	datab => \ctl|state.or0~q\,
	datac => \ctl|state.and0~q\,
	datad => \ctl|state.or1~q\,
	combout => \ctl|alu_op[0]~3_combout\);

-- Location: LCCOMB_X21_Y10_N12
\ctl|alu_op[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|alu_op[0]~5_combout\ = ((!\ctl|state.negate0~q\ & (!\ctl|state.negate1~q\ & \ctl|alu_op[0]~3_combout\))) # (!\ctl|alu_op[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|state.negate0~q\,
	datab => \ctl|state.negate1~q\,
	datac => \ctl|alu_op[0]~4_combout\,
	datad => \ctl|alu_op[0]~3_combout\,
	combout => \ctl|alu_op[0]~5_combout\);

-- Location: LCCOMB_X22_Y10_N10
\ctl|alu_op[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|alu_op[0]~7_combout\ = (\ctl|state.sub0~q\) # ((\ctl|state.sub1~q\) # ((\ctl|alu_op[0]~6_combout\ & \ctl|alu_op[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|state.sub0~q\,
	datab => \ctl|alu_op[0]~6_combout\,
	datac => \ctl|state.sub1~q\,
	datad => \ctl|alu_op[0]~5_combout\,
	combout => \ctl|alu_op[0]~7_combout\);

-- Location: LCCOMB_X22_Y10_N26
\ctl|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|comb~1_combout\ = (\ctl|alu_op[0]~7_combout\ & (!\ctl|state.add1~q\ & (!\ctl|state.add0~q\ & \ctl|alu_op[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|alu_op[0]~7_combout\,
	datab => \ctl|state.add1~q\,
	datac => \ctl|state.add0~q\,
	datad => \ctl|alu_op[3]~2_combout\,
	combout => \ctl|comb~1_combout\);

-- Location: LCCOMB_X22_Y10_N4
\ctl|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|comb~0_combout\ = (\ctl|alu_op[3]~2_combout\ & (((\ctl|state.add1~q\) # (\ctl|state.add0~q\)) # (!\ctl|alu_op[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|alu_op[0]~7_combout\,
	datab => \ctl|state.add1~q\,
	datac => \ctl|state.add0~q\,
	datad => \ctl|alu_op[3]~2_combout\,
	combout => \ctl|comb~0_combout\);

-- Location: LCCOMB_X22_Y10_N2
\ctl|alu_op[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|alu_op\(0) = (!\ctl|comb~0_combout\ & ((\ctl|comb~1_combout\) # (\ctl|alu_op\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|comb~1_combout\,
	datac => \ctl|comb~0_combout\,
	datad => \ctl|alu_op\(0),
	combout => \ctl|alu_op\(0));

-- Location: LCCOMB_X22_Y10_N24
\ctl|alu_op[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|alu_op[1]~8_combout\ = (!\ctl|state.sub0~q\ & (!\ctl|state.sub1~q\ & (!\ctl|state.add0~q\ & !\ctl|state.add1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|state.sub0~q\,
	datab => \ctl|state.sub1~q\,
	datac => \ctl|state.add0~q\,
	datad => \ctl|state.add1~q\,
	combout => \ctl|alu_op[1]~8_combout\);

-- Location: LCCOMB_X22_Y11_N16
\ctl|comb~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|comb~4_combout\ = (\ctl|alu_op[3]~2_combout\ & (((!\ctl|alu_op[0]~6_combout\) # (!\ctl|alu_op[1]~8_combout\)) # (!\ctl|alu_op[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|alu_op[0]~4_combout\,
	datab => \ctl|alu_op[1]~8_combout\,
	datac => \ctl|alu_op[0]~6_combout\,
	datad => \ctl|alu_op[3]~2_combout\,
	combout => \ctl|comb~4_combout\);

-- Location: LCCOMB_X22_Y11_N22
\ctl|comb~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|comb~5_combout\ = (\ctl|alu_op[0]~4_combout\ & (\ctl|alu_op[1]~8_combout\ & (\ctl|alu_op[0]~6_combout\ & \ctl|alu_op[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|alu_op[0]~4_combout\,
	datab => \ctl|alu_op[1]~8_combout\,
	datac => \ctl|alu_op[0]~6_combout\,
	datad => \ctl|alu_op[3]~2_combout\,
	combout => \ctl|comb~5_combout\);

-- Location: LCCOMB_X22_Y11_N10
\ctl|alu_op[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|alu_op\(2) = (!\ctl|comb~4_combout\ & ((\ctl|comb~5_combout\) # (\ctl|alu_op\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctl|comb~4_combout\,
	datac => \ctl|comb~5_combout\,
	datad => \ctl|alu_op\(2),
	combout => \ctl|alu_op\(2));

-- Location: LCCOMB_X22_Y11_N6
\acc|accReg[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg[6]~2_combout\ = (\ctl|alu_op\(1) & ((\ctl|alu_op\(2)) # (!\ctl|alu_op\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|alu_op\(0),
	datab => \ctl|alu_op\(1),
	datad => \ctl|alu_op\(2),
	combout => \acc|accReg[6]~2_combout\);

-- Location: LCCOMB_X22_Y11_N20
\acc|accReg[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg[6]~3_combout\ = ((!\ctl|alu_op\(0) & \ctl|alu_op\(2))) # (!\ctl|alu_op\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|alu_op\(0),
	datab => \ctl|alu_op\(1),
	datad => \ctl|alu_op\(2),
	combout => \acc|accReg[6]~3_combout\);

-- Location: LCCOMB_X24_Y12_N12
\aluu|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Add0~12_combout\ = \acc|accReg\(2) $ (((\ctl|alu_op\(0)) # (\ctl|alu_op\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|alu_op\(0),
	datac => \acc|accReg\(2),
	datad => \ctl|alu_op\(1),
	combout => \aluu|Add0~12_combout\);

-- Location: LCCOMB_X23_Y12_N24
\aluu|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Add0~11_combout\ = (\ctl|alu_op\(1) & (((!\ir|dBus[2]~28_combout\)))) # (!\ctl|alu_op\(1) & (\ctl|alu_op\(2) $ (((\ctl|alu_op\(0) & \ir|dBus[2]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|alu_op\(1),
	datab => \ctl|alu_op\(0),
	datac => \ctl|alu_op\(2),
	datad => \ir|dBus[2]~28_combout\,
	combout => \aluu|Add0~11_combout\);

-- Location: LCCOMB_X24_Y12_N6
\aluu|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Add0~8_combout\ = \acc|accReg\(1) $ (((\ctl|alu_op\(1)) # (\ctl|alu_op\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|alu_op\(1),
	datac => \ctl|alu_op\(0),
	datad => \acc|accReg\(1),
	combout => \aluu|Add0~8_combout\);

-- Location: LCCOMB_X24_Y12_N8
\aluu|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Add0~7_combout\ = (\ctl|alu_op\(1) & (((\aluu|Mult0|auto_generated|le3a\(5))))) # (!\ctl|alu_op\(1) & (\ctl|alu_op\(2) $ (((\ctl|alu_op\(0) & !\aluu|Mult0|auto_generated|le3a\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|alu_op\(2),
	datab => \ctl|alu_op\(1),
	datac => \ctl|alu_op\(0),
	datad => \aluu|Mult0|auto_generated|le3a\(5),
	combout => \aluu|Add0~7_combout\);

-- Location: LCCOMB_X23_Y12_N30
\aluu|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Add0~0_combout\ = (\ctl|alu_op\(1) & (((\ir|dBus[0]~26_combout\)))) # (!\ctl|alu_op\(1) & (\ctl|alu_op\(0) & (\ctl|alu_op\(2) $ (!\ir|dBus[0]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|alu_op\(1),
	datab => \ctl|alu_op\(2),
	datac => \ir|dBus[0]~26_combout\,
	datad => \ctl|alu_op\(0),
	combout => \aluu|Add0~0_combout\);

-- Location: LCCOMB_X24_Y12_N2
\aluu|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Add0~1_combout\ = \acc|accReg\(0) $ (((\ctl|alu_op\(0)) # (\ctl|alu_op\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|accReg\(0),
	datac => \ctl|alu_op\(0),
	datad => \ctl|alu_op\(1),
	combout => \aluu|Add0~1_combout\);

-- Location: LCCOMB_X22_Y11_N2
\aluu|Equal13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Equal13~1_combout\ = (!\ctl|alu_op\(0) & (!\ctl|alu_op\(1) & !\ctl|alu_op\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|alu_op\(0),
	datab => \ctl|alu_op\(1),
	datad => \ctl|alu_op\(2),
	combout => \aluu|Equal13~1_combout\);

-- Location: LCCOMB_X22_Y11_N8
\aluu|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Add0~2_combout\ = (!\ctl|alu_op\(1) & (\ctl|alu_op\(0) $ (\ctl|alu_op\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|alu_op\(0),
	datab => \ctl|alu_op\(1),
	datad => \ctl|alu_op\(2),
	combout => \aluu|Add0~2_combout\);

-- Location: LCCOMB_X23_Y12_N0
\aluu|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Add0~4_cout\ = CARRY((!\aluu|Equal13~1_combout\ & !\aluu|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Equal13~1_combout\,
	datab => \aluu|Add0~2_combout\,
	datad => VCC,
	cout => \aluu|Add0~4_cout\);

-- Location: LCCOMB_X23_Y12_N2
\aluu|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Add0~5_combout\ = (\aluu|Add0~0_combout\ & ((\aluu|Add0~1_combout\ & ((\aluu|Add0~4_cout\) # (GND))) # (!\aluu|Add0~1_combout\ & (!\aluu|Add0~4_cout\)))) # (!\aluu|Add0~0_combout\ & ((\aluu|Add0~1_combout\ & (!\aluu|Add0~4_cout\)) # 
-- (!\aluu|Add0~1_combout\ & (\aluu|Add0~4_cout\ & VCC))))
-- \aluu|Add0~6\ = CARRY((\aluu|Add0~0_combout\ & ((\aluu|Add0~1_combout\) # (!\aluu|Add0~4_cout\))) # (!\aluu|Add0~0_combout\ & (\aluu|Add0~1_combout\ & !\aluu|Add0~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Add0~0_combout\,
	datab => \aluu|Add0~1_combout\,
	datad => VCC,
	cin => \aluu|Add0~4_cout\,
	combout => \aluu|Add0~5_combout\,
	cout => \aluu|Add0~6\);

-- Location: LCCOMB_X23_Y12_N4
\aluu|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Add0~9_combout\ = ((\aluu|Add0~8_combout\ $ (\aluu|Add0~7_combout\ $ (\aluu|Add0~6\)))) # (GND)
-- \aluu|Add0~10\ = CARRY((\aluu|Add0~8_combout\ & (\aluu|Add0~7_combout\ & !\aluu|Add0~6\)) # (!\aluu|Add0~8_combout\ & ((\aluu|Add0~7_combout\) # (!\aluu|Add0~6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Add0~8_combout\,
	datab => \aluu|Add0~7_combout\,
	datad => VCC,
	cin => \aluu|Add0~6\,
	combout => \aluu|Add0~9_combout\,
	cout => \aluu|Add0~10\);

-- Location: LCCOMB_X23_Y12_N6
\aluu|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Add0~13_combout\ = (\aluu|Add0~12_combout\ & ((\aluu|Add0~11_combout\ & (!\aluu|Add0~10\)) # (!\aluu|Add0~11_combout\ & ((\aluu|Add0~10\) # (GND))))) # (!\aluu|Add0~12_combout\ & ((\aluu|Add0~11_combout\ & (\aluu|Add0~10\ & VCC)) # 
-- (!\aluu|Add0~11_combout\ & (!\aluu|Add0~10\))))
-- \aluu|Add0~14\ = CARRY((\aluu|Add0~12_combout\ & ((!\aluu|Add0~10\) # (!\aluu|Add0~11_combout\))) # (!\aluu|Add0~12_combout\ & (!\aluu|Add0~11_combout\ & !\aluu|Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Add0~12_combout\,
	datab => \aluu|Add0~11_combout\,
	datad => VCC,
	cin => \aluu|Add0~10\,
	combout => \aluu|Add0~13_combout\,
	cout => \aluu|Add0~14\);

-- Location: LCCOMB_X23_Y14_N24
\acc|accReg~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg~12_combout\ = (\acc|accReg[6]~2_combout\ & (\acc|accReg[6]~3_combout\)) # (!\acc|accReg[6]~2_combout\ & ((\acc|accReg[6]~3_combout\ & ((\aluu|Add0~13_combout\))) # (!\acc|accReg[6]~3_combout\ & (\ir|dBus[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|accReg[6]~2_combout\,
	datab => \acc|accReg[6]~3_combout\,
	datac => \ir|dBus[2]~28_combout\,
	datad => \aluu|Add0~13_combout\,
	combout => \acc|accReg~12_combout\);

-- Location: LCCOMB_X23_Y14_N2
\acc|accReg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg~13_combout\ = (\aluu|Equal13~0_combout\ & ((\acc|accReg~12_combout\ & (\aluu|Mult1|auto_generated|op_3~4_combout\)) # (!\acc|accReg~12_combout\ & ((\aluu|Mult0|auto_generated|op_3~4_combout\))))) # (!\aluu|Equal13~0_combout\ & 
-- (((\acc|accReg~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Equal13~0_combout\,
	datab => \aluu|Mult1|auto_generated|op_3~4_combout\,
	datac => \aluu|Mult0|auto_generated|op_3~4_combout\,
	datad => \acc|accReg~12_combout\,
	combout => \acc|accReg~13_combout\);

-- Location: LCCOMB_X23_Y14_N0
\acc|accReg~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg~14_combout\ = (\ctl|acc_ld~0_combout\ & (\ir|dBus[2]~28_combout\)) # (!\ctl|acc_ld~0_combout\ & ((\acc|accReg~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|acc_ld~0_combout\,
	datac => \ir|dBus[2]~28_combout\,
	datad => \acc|accReg~13_combout\,
	combout => \acc|accReg~14_combout\);

-- Location: LCCOMB_X19_Y10_N10
\ctl|state~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|state~71_combout\ = (!\ir|irReg\(6) & (!\ir|irReg\(5) & (\ctl|state~54_combout\ & !\ir|irReg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|irReg\(6),
	datab => \ir|irReg\(5),
	datac => \ctl|state~54_combout\,
	datad => \ir|irReg\(4),
	combout => \ctl|state~71_combout\);

-- Location: FF_X19_Y10_N11
\ctl|state.load0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctl|state~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|state.load0~q\);

-- Location: LCCOMB_X21_Y10_N18
\ctl|state~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|state~64_combout\ = (!\reset~input_o\ & \ctl|state.load0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \ctl|state.load0~q\,
	combout => \ctl|state~64_combout\);

-- Location: LCCOMB_X21_Y10_N28
\ctl|state.load1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|state.load1~feeder_combout\ = \ctl|state~64_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|state~64_combout\,
	combout => \ctl|state.load1~feeder_combout\);

-- Location: FF_X21_Y10_N29
\ctl|state.load1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctl|state.load1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|state.load1~q\);

-- Location: LCCOMB_X22_Y10_N20
\aluu|Equal13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Equal13~2_combout\ = (!\ctl|alu_op\(2) & (!\ctl|alu_op\(0) & \ctl|alu_op\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|alu_op\(2),
	datab => \ctl|alu_op\(0),
	datad => \ctl|alu_op\(1),
	combout => \aluu|Equal13~2_combout\);

-- Location: LCCOMB_X21_Y10_N22
\acc|accReg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg~7_combout\ = (\ctl|state.not1~q\ & (((!\aluu|Equal13~2_combout\)))) # (!\ctl|state.not1~q\ & ((\ctl|acc_ld~0_combout\ & (\ctl|state.load1~q\)) # (!\ctl|acc_ld~0_combout\ & ((!\aluu|Equal13~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|state.not1~q\,
	datab => \ctl|state.load1~q\,
	datac => \aluu|Equal13~2_combout\,
	datad => \ctl|acc_ld~0_combout\,
	combout => \acc|accReg~7_combout\);

-- Location: LCCOMB_X22_Y13_N24
\acc|accReg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg~8_combout\ = (\reset~input_o\) # (\acc|accReg~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \acc|accReg~7_combout\,
	combout => \acc|accReg~8_combout\);

-- Location: FF_X23_Y14_N1
\acc|accReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \acc|accReg~14_combout\,
	sclr => \reset~input_o\,
	ena => \acc|accReg~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acc|accReg\(2));

-- Location: LCCOMB_X21_Y12_N18
\aluu|Mult0|auto_generated|le3a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult0|auto_generated|le3a\(3) = (\ir|dBus[0]~26_combout\ & (!\acc|accReg\(2) & ((\aluu|Mult0|auto_generated|le3a\(5))))) # (!\ir|dBus[0]~26_combout\ & ((\acc|accReg\(3) $ (\aluu|Mult0|auto_generated|le3a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|accReg\(2),
	datab => \acc|accReg\(3),
	datac => \aluu|Mult0|auto_generated|le3a\(5),
	datad => \ir|dBus[0]~26_combout\,
	combout => \aluu|Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X21_Y12_N8
\aluu|Mult0|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult0|auto_generated|op_1~2_combout\ = (\aluu|Mult0|auto_generated|le3a\(3) & (!\aluu|Mult0|auto_generated|op_1~1\)) # (!\aluu|Mult0|auto_generated|le3a\(3) & ((\aluu|Mult0|auto_generated|op_1~1\) # (GND)))
-- \aluu|Mult0|auto_generated|op_1~3\ = CARRY((!\aluu|Mult0|auto_generated|op_1~1\) # (!\aluu|Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aluu|Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \aluu|Mult0|auto_generated|op_1~1\,
	combout => \aluu|Mult0|auto_generated|op_1~2_combout\,
	cout => \aluu|Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X21_Y14_N4
\aluu|Mult0|auto_generated|cs2a[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult0|auto_generated|cs2a[1]~0_combout\ = \ir|dBus[2]~28_combout\ $ (!\aluu|Mult0|auto_generated|le3a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ir|dBus[2]~28_combout\,
	datad => \aluu|Mult0|auto_generated|le3a\(5),
	combout => \aluu|Mult0|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X21_Y12_N20
\aluu|Mult0|auto_generated|le4a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult0|auto_generated|le4a\(1) = (\aluu|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\acc|accReg\(1) $ (\aluu|Mult0|auto_generated|le4a\(5))))) # (!\aluu|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\acc|accReg\(0) & 
-- ((\aluu|Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|accReg\(0),
	datab => \acc|accReg\(1),
	datac => \aluu|Mult0|auto_generated|le4a\(5),
	datad => \aluu|Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \aluu|Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X22_Y12_N6
\aluu|Mult0|auto_generated|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult0|auto_generated|op_3~6_combout\ = (\aluu|Mult0|auto_generated|op_1~2_combout\ & ((\aluu|Mult0|auto_generated|le4a\(1) & (\aluu|Mult0|auto_generated|op_3~5\ & VCC)) # (!\aluu|Mult0|auto_generated|le4a\(1) & 
-- (!\aluu|Mult0|auto_generated|op_3~5\)))) # (!\aluu|Mult0|auto_generated|op_1~2_combout\ & ((\aluu|Mult0|auto_generated|le4a\(1) & (!\aluu|Mult0|auto_generated|op_3~5\)) # (!\aluu|Mult0|auto_generated|le4a\(1) & ((\aluu|Mult0|auto_generated|op_3~5\) # 
-- (GND)))))
-- \aluu|Mult0|auto_generated|op_3~7\ = CARRY((\aluu|Mult0|auto_generated|op_1~2_combout\ & (!\aluu|Mult0|auto_generated|le4a\(1) & !\aluu|Mult0|auto_generated|op_3~5\)) # (!\aluu|Mult0|auto_generated|op_1~2_combout\ & ((!\aluu|Mult0|auto_generated|op_3~5\) 
-- # (!\aluu|Mult0|auto_generated|le4a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|op_1~2_combout\,
	datab => \aluu|Mult0|auto_generated|le4a\(1),
	datad => VCC,
	cin => \aluu|Mult0|auto_generated|op_3~5\,
	combout => \aluu|Mult0|auto_generated|op_3~6_combout\,
	cout => \aluu|Mult0|auto_generated|op_3~7\);

-- Location: LCCOMB_X23_Y12_N22
\aluu|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Add0~15_combout\ = (\ctl|alu_op\(1) & (((!\ir|dBus[3]~29_combout\)))) # (!\ctl|alu_op\(1) & (\ctl|alu_op\(2) $ (((\ctl|alu_op\(0) & \ir|dBus[3]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|alu_op\(1),
	datab => \ctl|alu_op\(0),
	datac => \ctl|alu_op\(2),
	datad => \ir|dBus[3]~29_combout\,
	combout => \aluu|Add0~15_combout\);

-- Location: LCCOMB_X24_Y12_N10
\aluu|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Add0~16_combout\ = \acc|accReg\(3) $ (((\ctl|alu_op\(0)) # (\ctl|alu_op\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|alu_op\(0),
	datac => \acc|accReg\(3),
	datad => \ctl|alu_op\(1),
	combout => \aluu|Add0~16_combout\);

-- Location: LCCOMB_X23_Y12_N8
\aluu|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Add0~17_combout\ = ((\aluu|Add0~15_combout\ $ (\aluu|Add0~16_combout\ $ (\aluu|Add0~14\)))) # (GND)
-- \aluu|Add0~18\ = CARRY((\aluu|Add0~15_combout\ & ((!\aluu|Add0~14\) # (!\aluu|Add0~16_combout\))) # (!\aluu|Add0~15_combout\ & (!\aluu|Add0~16_combout\ & !\aluu|Add0~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Add0~15_combout\,
	datab => \aluu|Add0~16_combout\,
	datad => VCC,
	cin => \aluu|Add0~14\,
	combout => \aluu|Add0~17_combout\,
	cout => \aluu|Add0~18\);

-- Location: LCCOMB_X23_Y12_N20
\acc|accReg~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg~15_combout\ = (\acc|accReg[6]~2_combout\ & (\acc|accReg[6]~3_combout\)) # (!\acc|accReg[6]~2_combout\ & ((\acc|accReg[6]~3_combout\ & (\aluu|Add0~17_combout\)) # (!\acc|accReg[6]~3_combout\ & ((\ir|dBus[3]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|accReg[6]~2_combout\,
	datab => \acc|accReg[6]~3_combout\,
	datac => \aluu|Add0~17_combout\,
	datad => \ir|dBus[3]~29_combout\,
	combout => \acc|accReg~15_combout\);

-- Location: LCCOMB_X21_Y14_N18
\aluu|Mult1|auto_generated|le4a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult1|auto_generated|le4a\(1) = (\aluu|Mult0|auto_generated|cs2a[1]~0_combout\ & (\acc|accReg\(1) $ (((\aluu|Mult1|auto_generated|le4a\(5)))))) # (!\aluu|Mult0|auto_generated|cs2a[1]~0_combout\ & (((!\acc|accReg\(0) & 
-- \aluu|Mult1|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|accReg\(1),
	datab => \acc|accReg\(0),
	datac => \aluu|Mult0|auto_generated|cs2a[1]~0_combout\,
	datad => \aluu|Mult1|auto_generated|le4a\(5),
	combout => \aluu|Mult1|auto_generated|le4a\(1));

-- Location: LCCOMB_X22_Y14_N12
\aluu|Mult1|auto_generated|le3a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult1|auto_generated|le3a\(3) = (\ir|dBus[0]~26_combout\ & (\acc|accReg\(3) $ (((!\aluu|Mult0|auto_generated|le3a\(5)))))) # (!\ir|dBus[0]~26_combout\ & (((!\acc|accReg\(2) & !\aluu|Mult0|auto_generated|le3a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|accReg\(3),
	datab => \acc|accReg\(2),
	datac => \ir|dBus[0]~26_combout\,
	datad => \aluu|Mult0|auto_generated|le3a\(5),
	combout => \aluu|Mult1|auto_generated|le3a\(3));

-- Location: LCCOMB_X22_Y14_N2
\aluu|Mult1|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult1|auto_generated|op_1~2_combout\ = (\aluu|Mult1|auto_generated|le3a\(3) & (!\aluu|Mult1|auto_generated|op_1~1\)) # (!\aluu|Mult1|auto_generated|le3a\(3) & ((\aluu|Mult1|auto_generated|op_1~1\) # (GND)))
-- \aluu|Mult1|auto_generated|op_1~3\ = CARRY((!\aluu|Mult1|auto_generated|op_1~1\) # (!\aluu|Mult1|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult1|auto_generated|le3a\(3),
	datad => VCC,
	cin => \aluu|Mult1|auto_generated|op_1~1\,
	combout => \aluu|Mult1|auto_generated|op_1~2_combout\,
	cout => \aluu|Mult1|auto_generated|op_1~3\);

-- Location: LCCOMB_X22_Y14_N20
\aluu|Mult1|auto_generated|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult1|auto_generated|op_3~6_combout\ = (\aluu|Mult1|auto_generated|le4a\(1) & ((\aluu|Mult1|auto_generated|op_1~2_combout\ & (\aluu|Mult1|auto_generated|op_3~5\ & VCC)) # (!\aluu|Mult1|auto_generated|op_1~2_combout\ & 
-- (!\aluu|Mult1|auto_generated|op_3~5\)))) # (!\aluu|Mult1|auto_generated|le4a\(1) & ((\aluu|Mult1|auto_generated|op_1~2_combout\ & (!\aluu|Mult1|auto_generated|op_3~5\)) # (!\aluu|Mult1|auto_generated|op_1~2_combout\ & ((\aluu|Mult1|auto_generated|op_3~5\) 
-- # (GND)))))
-- \aluu|Mult1|auto_generated|op_3~7\ = CARRY((\aluu|Mult1|auto_generated|le4a\(1) & (!\aluu|Mult1|auto_generated|op_1~2_combout\ & !\aluu|Mult1|auto_generated|op_3~5\)) # (!\aluu|Mult1|auto_generated|le4a\(1) & ((!\aluu|Mult1|auto_generated|op_3~5\) # 
-- (!\aluu|Mult1|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult1|auto_generated|le4a\(1),
	datab => \aluu|Mult1|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \aluu|Mult1|auto_generated|op_3~5\,
	combout => \aluu|Mult1|auto_generated|op_3~6_combout\,
	cout => \aluu|Mult1|auto_generated|op_3~7\);

-- Location: LCCOMB_X22_Y12_N26
\acc|accReg~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg~16_combout\ = (\aluu|Equal13~0_combout\ & ((\acc|accReg~15_combout\ & ((\aluu|Mult1|auto_generated|op_3~6_combout\))) # (!\acc|accReg~15_combout\ & (\aluu|Mult0|auto_generated|op_3~6_combout\)))) # (!\aluu|Equal13~0_combout\ & 
-- (((\acc|accReg~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|op_3~6_combout\,
	datab => \aluu|Equal13~0_combout\,
	datac => \acc|accReg~15_combout\,
	datad => \aluu|Mult1|auto_generated|op_3~6_combout\,
	combout => \acc|accReg~16_combout\);

-- Location: LCCOMB_X21_Y12_N4
\acc|accReg~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg~17_combout\ = (\ctl|acc_ld~0_combout\ & (\ir|dBus[3]~29_combout\)) # (!\ctl|acc_ld~0_combout\ & ((\acc|accReg~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|acc_ld~0_combout\,
	datac => \ir|dBus[3]~29_combout\,
	datad => \acc|accReg~16_combout\,
	combout => \acc|accReg~17_combout\);

-- Location: FF_X21_Y12_N5
\acc|accReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \acc|accReg~17_combout\,
	sclr => \reset~input_o\,
	ena => \acc|accReg~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acc|accReg\(3));

-- Location: LCCOMB_X18_Y12_N2
\ir|dBus[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[3]~16_combout\ = (\ir|irReg\(3) & ((\acc|accReg\(3)) # ((\ctl|acc_enD~0_combout\)))) # (!\ir|irReg\(3) & (!\ctl|state.branch0~q\ & ((\acc|accReg\(3)) # (\ctl|acc_enD~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|irReg\(3),
	datab => \acc|accReg\(3),
	datac => \ctl|state.branch0~q\,
	datad => \ctl|acc_enD~0_combout\,
	combout => \ir|dBus[3]~16_combout\);

-- Location: LCCOMB_X10_Y12_N20
\mem|ram[63][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[63][3]~combout\ = (\mem|ram[63][1]~59_combout\ & ((\ir|dBus[3]~29_combout\))) # (!\mem|ram[63][1]~59_combout\ & (\mem|ram[63][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[63][3]~combout\,
	datac => \ir|dBus[3]~29_combout\,
	datad => \mem|ram[63][1]~59_combout\,
	combout => \mem|ram[63][3]~combout\);

-- Location: LCCOMB_X13_Y12_N26
\mem|ram[62][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[62][3]~combout\ = (\mem|ram[62][0]~56_combout\ & (\ir|dBus[3]~29_combout\)) # (!\mem|ram[62][0]~56_combout\ & ((\mem|ram[62][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[3]~29_combout\,
	datac => \mem|ram[62][3]~combout\,
	datad => \mem|ram[62][0]~56_combout\,
	combout => \mem|ram[62][3]~combout\);

-- Location: LCCOMB_X14_Y13_N8
\mem|ram[61][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[61][3]~combout\ = (\mem|ram[61][0]~57_combout\ & ((\ir|dBus[3]~29_combout\))) # (!\mem|ram[61][0]~57_combout\ & (\mem|ram[61][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[61][3]~combout\,
	datac => \ir|dBus[3]~29_combout\,
	datad => \mem|ram[61][0]~57_combout\,
	combout => \mem|ram[61][3]~combout\);

-- Location: LCCOMB_X14_Y13_N30
\mem|ram[60][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[60][3]~combout\ = (\mem|ram[60][0]~58_combout\ & ((\ir|dBus[3]~29_combout\))) # (!\mem|ram[60][0]~58_combout\ & (\mem|ram[60][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[60][3]~combout\,
	datac => \ir|dBus[3]~29_combout\,
	datad => \mem|ram[60][0]~58_combout\,
	combout => \mem|ram[60][3]~combout\);

-- Location: LCCOMB_X16_Y12_N24
\mem|Mux4~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~38_combout\ = (\pc|aBus[1]~7_combout\ & (((\pc|aBus[0]~6_combout\)))) # (!\pc|aBus[1]~7_combout\ & ((\pc|aBus[0]~6_combout\ & (\mem|ram[61][3]~combout\)) # (!\pc|aBus[0]~6_combout\ & ((\mem|ram[60][3]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[61][3]~combout\,
	datab => \pc|aBus[1]~7_combout\,
	datac => \mem|ram[60][3]~combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Mux4~38_combout\);

-- Location: LCCOMB_X16_Y12_N30
\mem|Mux4~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~39_combout\ = (\pc|aBus[1]~7_combout\ & ((\mem|Mux4~38_combout\ & (\mem|ram[63][3]~combout\)) # (!\mem|Mux4~38_combout\ & ((\mem|ram[62][3]~combout\))))) # (!\pc|aBus[1]~7_combout\ & (((\mem|Mux4~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \mem|ram[63][3]~combout\,
	datac => \mem|ram[62][3]~combout\,
	datad => \mem|Mux4~38_combout\,
	combout => \mem|Mux4~39_combout\);

-- Location: LCCOMB_X11_Y13_N30
\mem|ram[59][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[59][3]~combout\ = (\mem|ram[59][0]~47_combout\ & ((\ir|dBus[3]~29_combout\))) # (!\mem|ram[59][0]~47_combout\ & (\mem|ram[59][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[59][3]~combout\,
	datac => \ir|dBus[3]~29_combout\,
	datad => \mem|ram[59][0]~47_combout\,
	combout => \mem|ram[59][3]~combout\);

-- Location: LCCOMB_X16_Y13_N12
\mem|ram[56][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[56][3]~combout\ = (\mem|ram[56][0]~46_combout\ & ((\ir|dBus[3]~29_combout\))) # (!\mem|ram[56][0]~46_combout\ & (\mem|ram[56][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[56][3]~combout\,
	datac => \ir|dBus[3]~29_combout\,
	datad => \mem|ram[56][0]~46_combout\,
	combout => \mem|ram[56][3]~combout\);

-- Location: LCCOMB_X16_Y13_N10
\mem|ram[57][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[57][3]~combout\ = (\mem|ram[57][0]~44_combout\ & (\ir|dBus[3]~29_combout\)) # (!\mem|ram[57][0]~44_combout\ & ((\mem|ram[57][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[3]~29_combout\,
	datac => \mem|ram[57][0]~44_combout\,
	datad => \mem|ram[57][3]~combout\,
	combout => \mem|ram[57][3]~combout\);

-- Location: LCCOMB_X16_Y13_N30
\mem|Mux4~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~31_combout\ = (\pc|aBus[0]~6_combout\ & ((\pc|aBus[1]~7_combout\) # ((\mem|ram[57][3]~combout\)))) # (!\pc|aBus[0]~6_combout\ & (!\pc|aBus[1]~7_combout\ & (\mem|ram[56][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[0]~6_combout\,
	datab => \pc|aBus[1]~7_combout\,
	datac => \mem|ram[56][3]~combout\,
	datad => \mem|ram[57][3]~combout\,
	combout => \mem|Mux4~31_combout\);

-- Location: LCCOMB_X11_Y14_N14
\mem|ram[58][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[58][3]~combout\ = (\mem|ram[58][0]~45_combout\ & ((\ir|dBus[3]~29_combout\))) # (!\mem|ram[58][0]~45_combout\ & (\mem|ram[58][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[58][3]~combout\,
	datac => \mem|ram[58][0]~45_combout\,
	datad => \ir|dBus[3]~29_combout\,
	combout => \mem|ram[58][3]~combout\);

-- Location: LCCOMB_X16_Y12_N8
\mem|Mux4~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~32_combout\ = (\pc|aBus[1]~7_combout\ & ((\mem|Mux4~31_combout\ & (\mem|ram[59][3]~combout\)) # (!\mem|Mux4~31_combout\ & ((\mem|ram[58][3]~combout\))))) # (!\pc|aBus[1]~7_combout\ & (((\mem|Mux4~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[59][3]~combout\,
	datab => \pc|aBus[1]~7_combout\,
	datac => \mem|Mux4~31_combout\,
	datad => \mem|ram[58][3]~combout\,
	combout => \mem|Mux4~32_combout\);

-- Location: LCCOMB_X16_Y12_N22
\mem|ram[51][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[51][3]~combout\ = (\mem|ram[51][0]~55_combout\ & (\ir|dBus[3]~29_combout\)) # (!\mem|ram[51][0]~55_combout\ & ((\mem|ram[51][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[3]~29_combout\,
	datac => \mem|ram[51][3]~combout\,
	datad => \mem|ram[51][0]~55_combout\,
	combout => \mem|ram[51][3]~combout\);

-- Location: LCCOMB_X16_Y12_N20
\mem|ram[50][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[50][3]~combout\ = (\mem|ram[50][0]~52_combout\ & (\ir|dBus[3]~29_combout\)) # (!\mem|ram[50][0]~52_combout\ & ((\mem|ram[50][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[3]~29_combout\,
	datac => \mem|ram[50][0]~52_combout\,
	datad => \mem|ram[50][3]~combout\,
	combout => \mem|ram[50][3]~combout\);

-- Location: LCCOMB_X16_Y12_N26
\mem|ram[49][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[49][3]~combout\ = (\mem|ram[49][0]~53_combout\ & ((\ir|dBus[3]~29_combout\))) # (!\mem|ram[49][0]~53_combout\ & (\mem|ram[49][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[49][3]~combout\,
	datab => \ir|dBus[3]~29_combout\,
	datad => \mem|ram[49][0]~53_combout\,
	combout => \mem|ram[49][3]~combout\);

-- Location: LCCOMB_X16_Y12_N0
\mem|ram[48][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[48][3]~combout\ = (\mem|ram[48][0]~54_combout\ & (\ir|dBus[3]~29_combout\)) # (!\mem|ram[48][0]~54_combout\ & ((\mem|ram[48][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[3]~29_combout\,
	datab => \mem|ram[48][3]~combout\,
	datad => \mem|ram[48][0]~54_combout\,
	combout => \mem|ram[48][3]~combout\);

-- Location: LCCOMB_X16_Y12_N6
\mem|Mux4~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~35_combout\ = (\pc|aBus[1]~7_combout\ & (((\pc|aBus[0]~6_combout\)))) # (!\pc|aBus[1]~7_combout\ & ((\pc|aBus[0]~6_combout\ & (\mem|ram[49][3]~combout\)) # (!\pc|aBus[0]~6_combout\ & ((\mem|ram[48][3]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[49][3]~combout\,
	datab => \mem|ram[48][3]~combout\,
	datac => \pc|aBus[1]~7_combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Mux4~35_combout\);

-- Location: LCCOMB_X16_Y12_N4
\mem|Mux4~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~36_combout\ = (\pc|aBus[1]~7_combout\ & ((\mem|Mux4~35_combout\ & (\mem|ram[51][3]~combout\)) # (!\mem|Mux4~35_combout\ & ((\mem|ram[50][3]~combout\))))) # (!\pc|aBus[1]~7_combout\ & (((\mem|Mux4~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[51][3]~combout\,
	datab => \mem|ram[50][3]~combout\,
	datac => \pc|aBus[1]~7_combout\,
	datad => \mem|Mux4~35_combout\,
	combout => \mem|Mux4~36_combout\);

-- Location: LCCOMB_X17_Y11_N0
\mem|ram[55][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[55][3]~combout\ = (\mem|ram[55][0]~51_combout\ & (\ir|dBus[3]~29_combout\)) # (!\mem|ram[55][0]~51_combout\ & ((\mem|ram[55][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[3]~29_combout\,
	datab => \mem|ram[55][3]~combout\,
	datad => \mem|ram[55][0]~51_combout\,
	combout => \mem|ram[55][3]~combout\);

-- Location: LCCOMB_X16_Y12_N14
\mem|ram[54][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[54][3]~combout\ = (\mem|ram[54][0]~48_combout\ & (\ir|dBus[3]~29_combout\)) # (!\mem|ram[54][0]~48_combout\ & ((\mem|ram[54][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[3]~29_combout\,
	datac => \mem|ram[54][3]~combout\,
	datad => \mem|ram[54][0]~48_combout\,
	combout => \mem|ram[54][3]~combout\);

-- Location: LCCOMB_X16_Y12_N10
\mem|ram[52][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[52][3]~combout\ = (\mem|ram[52][0]~50_combout\ & ((\ir|dBus[3]~29_combout\))) # (!\mem|ram[52][0]~50_combout\ & (\mem|ram[52][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[52][3]~combout\,
	datab => \ir|dBus[3]~29_combout\,
	datac => \mem|ram[52][0]~50_combout\,
	combout => \mem|ram[52][3]~combout\);

-- Location: LCCOMB_X16_Y12_N12
\mem|ram[53][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[53][3]~combout\ = (\mem|ram[53][0]~49_combout\ & ((\ir|dBus[3]~29_combout\))) # (!\mem|ram[53][0]~49_combout\ & (\mem|ram[53][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[53][3]~combout\,
	datac => \ir|dBus[3]~29_combout\,
	datad => \mem|ram[53][0]~49_combout\,
	combout => \mem|ram[53][3]~combout\);

-- Location: LCCOMB_X16_Y12_N2
\mem|Mux4~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~33_combout\ = (\pc|aBus[1]~7_combout\ & (((\pc|aBus[0]~6_combout\)))) # (!\pc|aBus[1]~7_combout\ & ((\pc|aBus[0]~6_combout\ & ((\mem|ram[53][3]~combout\))) # (!\pc|aBus[0]~6_combout\ & (\mem|ram[52][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[52][3]~combout\,
	datab => \pc|aBus[1]~7_combout\,
	datac => \pc|aBus[0]~6_combout\,
	datad => \mem|ram[53][3]~combout\,
	combout => \mem|Mux4~33_combout\);

-- Location: LCCOMB_X16_Y12_N28
\mem|Mux4~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~34_combout\ = (\pc|aBus[1]~7_combout\ & ((\mem|Mux4~33_combout\ & (\mem|ram[55][3]~combout\)) # (!\mem|Mux4~33_combout\ & ((\mem|ram[54][3]~combout\))))) # (!\pc|aBus[1]~7_combout\ & (((\mem|Mux4~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \mem|ram[55][3]~combout\,
	datac => \mem|ram[54][3]~combout\,
	datad => \mem|Mux4~33_combout\,
	combout => \mem|Mux4~34_combout\);

-- Location: LCCOMB_X16_Y12_N18
\mem|Mux4~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~37_combout\ = (\pc|aBus[3]~9_combout\ & (\pc|aBus[2]~8_combout\)) # (!\pc|aBus[3]~9_combout\ & ((\pc|aBus[2]~8_combout\ & ((\mem|Mux4~34_combout\))) # (!\pc|aBus[2]~8_combout\ & (\mem|Mux4~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[3]~9_combout\,
	datab => \pc|aBus[2]~8_combout\,
	datac => \mem|Mux4~36_combout\,
	datad => \mem|Mux4~34_combout\,
	combout => \mem|Mux4~37_combout\);

-- Location: LCCOMB_X16_Y12_N16
\mem|Mux4~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~40_combout\ = (\pc|aBus[3]~9_combout\ & ((\mem|Mux4~37_combout\ & (\mem|Mux4~39_combout\)) # (!\mem|Mux4~37_combout\ & ((\mem|Mux4~32_combout\))))) # (!\pc|aBus[3]~9_combout\ & (((\mem|Mux4~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux4~39_combout\,
	datab => \pc|aBus[3]~9_combout\,
	datac => \mem|Mux4~32_combout\,
	datad => \mem|Mux4~37_combout\,
	combout => \mem|Mux4~40_combout\);

-- Location: LCCOMB_X17_Y15_N26
\mem|ram[41][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[41][3]~combout\ = (\mem|ram[41][0]~1_combout\ & (\ir|dBus[3]~29_combout\)) # (!\mem|ram[41][0]~1_combout\ & ((\mem|ram[41][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[3]~29_combout\,
	datac => \mem|ram[41][3]~combout\,
	datad => \mem|ram[41][0]~1_combout\,
	combout => \mem|ram[41][3]~combout\);

-- Location: LCCOMB_X19_Y16_N4
\mem|ram[45][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[45][3]~combout\ = (\mem|ram[45][0]~4_combout\ & (\ir|dBus[3]~29_combout\)) # (!\mem|ram[45][0]~4_combout\ & ((\mem|ram[45][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[3]~29_combout\,
	datac => \mem|ram[45][3]~combout\,
	datad => \mem|ram[45][0]~4_combout\,
	combout => \mem|ram[45][3]~combout\);

-- Location: LCCOMB_X19_Y17_N20
\mem|ram[44][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[44][3]~combout\ = (\mem|ram[44][0]~2_combout\ & (\ir|dBus[3]~29_combout\)) # (!\mem|ram[44][0]~2_combout\ & ((\mem|ram[44][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[3]~29_combout\,
	datab => \mem|ram[44][3]~combout\,
	datad => \mem|ram[44][0]~2_combout\,
	combout => \mem|ram[44][3]~combout\);

-- Location: LCCOMB_X17_Y15_N10
\mem|ram[40][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[40][3]~combout\ = (\mem|ram[40][0]~3_combout\ & ((\ir|dBus[3]~29_combout\))) # (!\mem|ram[40][0]~3_combout\ & (\mem|ram[40][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[40][3]~combout\,
	datac => \ir|dBus[3]~29_combout\,
	datad => \mem|ram[40][0]~3_combout\,
	combout => \mem|ram[40][3]~combout\);

-- Location: LCCOMB_X19_Y15_N12
\mem|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~0_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|ram[44][3]~combout\) # ((\pc|aBus[0]~6_combout\)))) # (!\pc|aBus[2]~8_combout\ & (((!\pc|aBus[0]~6_combout\ & \mem|ram[40][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[44][3]~combout\,
	datab => \pc|aBus[2]~8_combout\,
	datac => \pc|aBus[0]~6_combout\,
	datad => \mem|ram[40][3]~combout\,
	combout => \mem|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y15_N14
\mem|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~1_combout\ = (\pc|aBus[0]~6_combout\ & ((\mem|Mux4~0_combout\ & ((\mem|ram[45][3]~combout\))) # (!\mem|Mux4~0_combout\ & (\mem|ram[41][3]~combout\)))) # (!\pc|aBus[0]~6_combout\ & (((\mem|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[0]~6_combout\,
	datab => \mem|ram[41][3]~combout\,
	datac => \mem|ram[45][3]~combout\,
	datad => \mem|Mux4~0_combout\,
	combout => \mem|Mux4~1_combout\);

-- Location: LCCOMB_X19_Y15_N28
\mem|ram[38][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[38][3]~combout\ = (\mem|ram[38][0]~6_combout\ & ((\ir|dBus[3]~29_combout\))) # (!\mem|ram[38][0]~6_combout\ & (\mem|ram[38][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[38][3]~combout\,
	datac => \mem|ram[38][0]~6_combout\,
	datad => \ir|dBus[3]~29_combout\,
	combout => \mem|ram[38][3]~combout\);

-- Location: LCCOMB_X19_Y15_N6
\mem|ram[34][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[34][3]~combout\ = (\mem|ram[34][0]~8_combout\ & ((\ir|dBus[3]~29_combout\))) # (!\mem|ram[34][0]~8_combout\ & (\mem|ram[34][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[34][3]~combout\,
	datab => \ir|dBus[3]~29_combout\,
	datad => \mem|ram[34][0]~8_combout\,
	combout => \mem|ram[34][3]~combout\);

-- Location: LCCOMB_X19_Y15_N20
\mem|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~2_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|ram[38][3]~combout\) # ((\pc|aBus[0]~6_combout\)))) # (!\pc|aBus[2]~8_combout\ & (((!\pc|aBus[0]~6_combout\ & \mem|ram[34][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \mem|ram[38][3]~combout\,
	datac => \pc|aBus[0]~6_combout\,
	datad => \mem|ram[34][3]~combout\,
	combout => \mem|Mux4~2_combout\);

-- Location: LCCOMB_X19_Y16_N12
\mem|ram[35][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[35][3]~combout\ = (\mem|ram[35][0]~7_combout\ & (\ir|dBus[3]~29_combout\)) # (!\mem|ram[35][0]~7_combout\ & ((\mem|ram[35][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[3]~29_combout\,
	datac => \mem|ram[35][0]~7_combout\,
	datad => \mem|ram[35][3]~combout\,
	combout => \mem|ram[35][3]~combout\);

-- Location: LCCOMB_X19_Y12_N6
\mem|ram[39][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[39][3]~combout\ = (\mem|ram[39][0]~9_combout\ & ((\ir|dBus[3]~29_combout\))) # (!\mem|ram[39][0]~9_combout\ & (\mem|ram[39][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[39][3]~combout\,
	datac => \ir|dBus[3]~29_combout\,
	datad => \mem|ram[39][0]~9_combout\,
	combout => \mem|ram[39][3]~combout\);

-- Location: LCCOMB_X19_Y15_N30
\mem|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~3_combout\ = (\pc|aBus[0]~6_combout\ & ((\mem|Mux4~2_combout\ & ((\mem|ram[39][3]~combout\))) # (!\mem|Mux4~2_combout\ & (\mem|ram[35][3]~combout\)))) # (!\pc|aBus[0]~6_combout\ & (\mem|Mux4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[0]~6_combout\,
	datab => \mem|Mux4~2_combout\,
	datac => \mem|ram[35][3]~combout\,
	datad => \mem|ram[39][3]~combout\,
	combout => \mem|Mux4~3_combout\);

-- Location: LCCOMB_X19_Y15_N8
\mem|ram[33][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[33][3]~combout\ = (\mem|ram[33][0]~10_combout\ & (\ir|dBus[3]~29_combout\)) # (!\mem|ram[33][0]~10_combout\ & ((\mem|ram[33][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[3]~29_combout\,
	datac => \mem|ram[33][3]~combout\,
	datad => \mem|ram[33][0]~10_combout\,
	combout => \mem|ram[33][3]~combout\);

-- Location: LCCOMB_X17_Y16_N8
\mem|ram[37][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[37][3]~combout\ = (\mem|ram[37][0]~13_combout\ & (\ir|dBus[3]~29_combout\)) # (!\mem|ram[37][0]~13_combout\ & ((\mem|ram[37][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[3]~29_combout\,
	datac => \mem|ram[37][3]~combout\,
	datad => \mem|ram[37][0]~13_combout\,
	combout => \mem|ram[37][3]~combout\);

-- Location: LCCOMB_X19_Y15_N10
\mem|ram[36][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[36][3]~combout\ = (\mem|ram[36][0]~11_combout\ & (\ir|dBus[3]~29_combout\)) # (!\mem|ram[36][0]~11_combout\ & ((\mem|ram[36][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[3]~29_combout\,
	datac => \mem|ram[36][0]~11_combout\,
	datad => \mem|ram[36][3]~combout\,
	combout => \mem|ram[36][3]~combout\);

-- Location: LCCOMB_X19_Y15_N0
\mem|ram[32][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[32][3]~combout\ = (\mem|ram[32][0]~12_combout\ & (\ir|dBus[3]~29_combout\)) # (!\mem|ram[32][0]~12_combout\ & ((\mem|ram[32][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[3]~29_combout\,
	datab => \mem|ram[32][3]~combout\,
	datad => \mem|ram[32][0]~12_combout\,
	combout => \mem|ram[32][3]~combout\);

-- Location: LCCOMB_X19_Y15_N16
\mem|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~4_combout\ = (\pc|aBus[0]~6_combout\ & (((\pc|aBus[2]~8_combout\)))) # (!\pc|aBus[0]~6_combout\ & ((\pc|aBus[2]~8_combout\ & (\mem|ram[36][3]~combout\)) # (!\pc|aBus[2]~8_combout\ & ((\mem|ram[32][3]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[36][3]~combout\,
	datab => \pc|aBus[0]~6_combout\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \mem|ram[32][3]~combout\,
	combout => \mem|Mux4~4_combout\);

-- Location: LCCOMB_X19_Y15_N2
\mem|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~5_combout\ = (\pc|aBus[0]~6_combout\ & ((\mem|Mux4~4_combout\ & ((\mem|ram[37][3]~combout\))) # (!\mem|Mux4~4_combout\ & (\mem|ram[33][3]~combout\)))) # (!\pc|aBus[0]~6_combout\ & (((\mem|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[0]~6_combout\,
	datab => \mem|ram[33][3]~combout\,
	datac => \mem|ram[37][3]~combout\,
	datad => \mem|Mux4~4_combout\,
	combout => \mem|Mux4~5_combout\);

-- Location: LCCOMB_X19_Y15_N4
\mem|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~6_combout\ = (\pc|aBus[1]~7_combout\ & ((\pc|aBus[3]~9_combout\) # ((\mem|Mux4~3_combout\)))) # (!\pc|aBus[1]~7_combout\ & (!\pc|aBus[3]~9_combout\ & ((\mem|Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \pc|aBus[3]~9_combout\,
	datac => \mem|Mux4~3_combout\,
	datad => \mem|Mux4~5_combout\,
	combout => \mem|Mux4~6_combout\);

-- Location: LCCOMB_X18_Y15_N14
\mem|ram[43][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[43][3]~combout\ = (\mem|ram[43][0]~15_combout\ & (\ir|dBus[3]~29_combout\)) # (!\mem|ram[43][0]~15_combout\ & ((\mem|ram[43][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[3]~29_combout\,
	datac => \mem|ram[43][3]~combout\,
	datad => \mem|ram[43][0]~15_combout\,
	combout => \mem|ram[43][3]~combout\);

-- Location: LCCOMB_X17_Y16_N30
\mem|ram[46][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[46][3]~combout\ = (\mem|ram[46][0]~14_combout\ & ((\ir|dBus[3]~29_combout\))) # (!\mem|ram[46][0]~14_combout\ & (\mem|ram[46][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[46][3]~combout\,
	datac => \mem|ram[46][0]~14_combout\,
	datad => \ir|dBus[3]~29_combout\,
	combout => \mem|ram[46][3]~combout\);

-- Location: LCCOMB_X19_Y15_N18
\mem|ram[42][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[42][3]~combout\ = (\mem|ram[42][0]~16_combout\ & (\ir|dBus[3]~29_combout\)) # (!\mem|ram[42][0]~16_combout\ & ((\mem|ram[42][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[3]~29_combout\,
	datac => \mem|ram[42][3]~combout\,
	datad => \mem|ram[42][0]~16_combout\,
	combout => \mem|ram[42][3]~combout\);

-- Location: LCCOMB_X19_Y15_N26
\mem|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~7_combout\ = (\pc|aBus[2]~8_combout\ & ((\pc|aBus[0]~6_combout\) # ((\mem|ram[46][3]~combout\)))) # (!\pc|aBus[2]~8_combout\ & (!\pc|aBus[0]~6_combout\ & ((\mem|ram[42][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \pc|aBus[0]~6_combout\,
	datac => \mem|ram[46][3]~combout\,
	datad => \mem|ram[42][3]~combout\,
	combout => \mem|Mux4~7_combout\);

-- Location: LCCOMB_X14_Y15_N4
\mem|ram[47][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[47][3]~combout\ = (\mem|ram[47][0]~17_combout\ & ((\ir|dBus[3]~29_combout\))) # (!\mem|ram[47][0]~17_combout\ & (\mem|ram[47][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[47][3]~combout\,
	datac => \ir|dBus[3]~29_combout\,
	datad => \mem|ram[47][0]~17_combout\,
	combout => \mem|ram[47][3]~combout\);

-- Location: LCCOMB_X19_Y15_N24
\mem|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~8_combout\ = (\pc|aBus[0]~6_combout\ & ((\mem|Mux4~7_combout\ & ((\mem|ram[47][3]~combout\))) # (!\mem|Mux4~7_combout\ & (\mem|ram[43][3]~combout\)))) # (!\pc|aBus[0]~6_combout\ & (((\mem|Mux4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[0]~6_combout\,
	datab => \mem|ram[43][3]~combout\,
	datac => \mem|Mux4~7_combout\,
	datad => \mem|ram[47][3]~combout\,
	combout => \mem|Mux4~8_combout\);

-- Location: LCCOMB_X19_Y15_N22
\mem|Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~9_combout\ = (\pc|aBus[3]~9_combout\ & ((\mem|Mux4~6_combout\ & ((\mem|Mux4~8_combout\))) # (!\mem|Mux4~6_combout\ & (\mem|Mux4~1_combout\)))) # (!\pc|aBus[3]~9_combout\ & (((\mem|Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[3]~9_combout\,
	datab => \mem|Mux4~1_combout\,
	datac => \mem|Mux4~6_combout\,
	datad => \mem|Mux4~8_combout\,
	combout => \mem|Mux4~9_combout\);

-- Location: LCCOMB_X19_Y12_N26
\mem|ram[29][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[29][3]~combout\ = (\mem|ram[29][0]~31_combout\ & (\ir|dBus[3]~29_combout\)) # (!\mem|ram[29][0]~31_combout\ & ((\mem|ram[29][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[3]~29_combout\,
	datac => \mem|ram[29][3]~combout\,
	datad => \mem|ram[29][0]~31_combout\,
	combout => \mem|ram[29][3]~combout\);

-- Location: LCCOMB_X18_Y12_N12
\mem|ram[31][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[31][3]~combout\ = (\mem|ram[31][0]~34_combout\ & ((\ir|dBus[3]~29_combout\))) # (!\mem|ram[31][0]~34_combout\ & (\mem|ram[31][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[31][3]~combout\,
	datab => \ir|dBus[3]~29_combout\,
	datac => \mem|ram[31][0]~34_combout\,
	combout => \mem|ram[31][3]~combout\);

-- Location: LCCOMB_X10_Y12_N24
\mem|ram[25][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[25][3]~combout\ = (\mem|ram[25][0]~33_combout\ & ((\ir|dBus[3]~29_combout\))) # (!\mem|ram[25][0]~33_combout\ & (\mem|ram[25][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[25][3]~combout\,
	datac => \mem|ram[25][0]~33_combout\,
	datad => \ir|dBus[3]~29_combout\,
	combout => \mem|ram[25][3]~combout\);

-- Location: LCCOMB_X18_Y12_N16
\mem|ram[27][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[27][3]~combout\ = (\mem|ram[27][0]~32_combout\ & ((\ir|dBus[3]~29_combout\))) # (!\mem|ram[27][0]~32_combout\ & (\mem|ram[27][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[27][3]~combout\,
	datac => \mem|ram[27][0]~32_combout\,
	datad => \ir|dBus[3]~29_combout\,
	combout => \mem|ram[27][3]~combout\);

-- Location: LCCOMB_X17_Y12_N10
\mem|Mux4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~17_combout\ = (\pc|aBus[1]~7_combout\ & (((\pc|aBus[2]~8_combout\) # (\mem|ram[27][3]~combout\)))) # (!\pc|aBus[1]~7_combout\ & (\mem|ram[25][3]~combout\ & (!\pc|aBus[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \mem|ram[25][3]~combout\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \mem|ram[27][3]~combout\,
	combout => \mem|Mux4~17_combout\);

-- Location: LCCOMB_X17_Y12_N8
\mem|Mux4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~18_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|Mux4~17_combout\ & ((\mem|ram[31][3]~combout\))) # (!\mem|Mux4~17_combout\ & (\mem|ram[29][3]~combout\)))) # (!\pc|aBus[2]~8_combout\ & (((\mem|Mux4~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[29][3]~combout\,
	datab => \mem|ram[31][3]~combout\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \mem|Mux4~17_combout\,
	combout => \mem|Mux4~18_combout\);

-- Location: LCCOMB_X13_Y12_N20
\mem|ram[30][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[30][3]~combout\ = (\mem|ram[30][0]~22_combout\ & (\ir|dBus[3]~29_combout\)) # (!\mem|ram[30][0]~22_combout\ & ((\mem|ram[30][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[3]~29_combout\,
	datac => \mem|ram[30][0]~22_combout\,
	datad => \mem|ram[30][3]~combout\,
	combout => \mem|ram[30][3]~combout\);

-- Location: LCCOMB_X18_Y12_N4
\mem|ram[28][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[28][3]~combout\ = (\mem|ram[28][0]~19_combout\ & (\ir|dBus[3]~29_combout\)) # (!\mem|ram[28][0]~19_combout\ & ((\mem|ram[28][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[3]~29_combout\,
	datac => \mem|ram[28][3]~combout\,
	datad => \mem|ram[28][0]~19_combout\,
	combout => \mem|ram[28][3]~combout\);

-- Location: LCCOMB_X13_Y12_N22
\mem|ram[24][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[24][3]~combout\ = (\mem|ram[24][0]~21_combout\ & (\ir|dBus[3]~29_combout\)) # (!\mem|ram[24][0]~21_combout\ & ((\mem|ram[24][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[3]~29_combout\,
	datac => \mem|ram[24][3]~combout\,
	datad => \mem|ram[24][0]~21_combout\,
	combout => \mem|ram[24][3]~combout\);

-- Location: LCCOMB_X18_Y11_N14
\mem|ram[26][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[26][3]~combout\ = (\mem|ram[26][0]~20_combout\ & ((\ir|dBus[3]~29_combout\))) # (!\mem|ram[26][0]~20_combout\ & (\mem|ram[26][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[26][3]~combout\,
	datac => \mem|ram[26][0]~20_combout\,
	datad => \ir|dBus[3]~29_combout\,
	combout => \mem|ram[26][3]~combout\);

-- Location: LCCOMB_X17_Y12_N16
\mem|Mux4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~10_combout\ = (\pc|aBus[1]~7_combout\ & (((\pc|aBus[2]~8_combout\) # (\mem|ram[26][3]~combout\)))) # (!\pc|aBus[1]~7_combout\ & (\mem|ram[24][3]~combout\ & (!\pc|aBus[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \mem|ram[24][3]~combout\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \mem|ram[26][3]~combout\,
	combout => \mem|Mux4~10_combout\);

-- Location: LCCOMB_X17_Y12_N30
\mem|Mux4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~11_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|Mux4~10_combout\ & (\mem|ram[30][3]~combout\)) # (!\mem|Mux4~10_combout\ & ((\mem|ram[28][3]~combout\))))) # (!\pc|aBus[2]~8_combout\ & (((\mem|Mux4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \mem|ram[30][3]~combout\,
	datac => \mem|ram[28][3]~combout\,
	datad => \mem|Mux4~10_combout\,
	combout => \mem|Mux4~11_combout\);

-- Location: LCCOMB_X14_Y12_N4
\mem|ram[22][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[22][3]~combout\ = (\mem|ram[22][0]~30_combout\ & (\ir|dBus[3]~29_combout\)) # (!\mem|ram[22][0]~30_combout\ & ((\mem|ram[22][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[3]~29_combout\,
	datac => \mem|ram[22][3]~combout\,
	datad => \mem|ram[22][0]~30_combout\,
	combout => \mem|ram[22][3]~combout\);

-- Location: LCCOMB_X14_Y12_N10
\mem|ram[20][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[20][3]~combout\ = (\mem|ram[20][0]~27_combout\ & ((\ir|dBus[3]~29_combout\))) # (!\mem|ram[20][0]~27_combout\ & (\mem|ram[20][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[20][3]~combout\,
	datac => \ir|dBus[3]~29_combout\,
	datad => \mem|ram[20][0]~27_combout\,
	combout => \mem|ram[20][3]~combout\);

-- Location: LCCOMB_X17_Y12_N20
\mem|ram[18][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[18][3]~combout\ = (\mem|ram[18][0]~28_combout\ & (\ir|dBus[3]~29_combout\)) # (!\mem|ram[18][0]~28_combout\ & ((\mem|ram[18][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[3]~29_combout\,
	datac => \mem|ram[18][0]~28_combout\,
	datad => \mem|ram[18][3]~combout\,
	combout => \mem|ram[18][3]~combout\);

-- Location: LCCOMB_X17_Y12_N18
\mem|ram[16][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[16][3]~combout\ = (\mem|ram[16][0]~29_combout\ & ((\ir|dBus[3]~29_combout\))) # (!\mem|ram[16][0]~29_combout\ & (\mem|ram[16][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[16][3]~combout\,
	datac => \mem|ram[16][0]~29_combout\,
	datad => \ir|dBus[3]~29_combout\,
	combout => \mem|ram[16][3]~combout\);

-- Location: LCCOMB_X17_Y12_N24
\mem|Mux4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~14_combout\ = (\pc|aBus[1]~7_combout\ & ((\mem|ram[18][3]~combout\) # ((\pc|aBus[2]~8_combout\)))) # (!\pc|aBus[1]~7_combout\ & (((!\pc|aBus[2]~8_combout\ & \mem|ram[16][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \mem|ram[18][3]~combout\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \mem|ram[16][3]~combout\,
	combout => \mem|Mux4~14_combout\);

-- Location: LCCOMB_X17_Y12_N14
\mem|Mux4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~15_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|Mux4~14_combout\ & (\mem|ram[22][3]~combout\)) # (!\mem|Mux4~14_combout\ & ((\mem|ram[20][3]~combout\))))) # (!\pc|aBus[2]~8_combout\ & (((\mem|Mux4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \mem|ram[22][3]~combout\,
	datac => \mem|ram[20][3]~combout\,
	datad => \mem|Mux4~14_combout\,
	combout => \mem|Mux4~15_combout\);

-- Location: LCCOMB_X17_Y12_N26
\mem|ram[23][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[23][3]~combout\ = (\mem|ram[23][0]~26_combout\ & ((\ir|dBus[3]~29_combout\))) # (!\mem|ram[23][0]~26_combout\ & (\mem|ram[23][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[23][3]~combout\,
	datab => \ir|dBus[3]~29_combout\,
	datac => \mem|ram[23][0]~26_combout\,
	combout => \mem|ram[23][3]~combout\);

-- Location: LCCOMB_X17_Y12_N4
\mem|ram[21][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[21][3]~combout\ = (\mem|ram[21][0]~23_combout\ & (\ir|dBus[3]~29_combout\)) # (!\mem|ram[21][0]~23_combout\ & ((\mem|ram[21][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[3]~29_combout\,
	datac => \mem|ram[21][3]~combout\,
	datad => \mem|ram[21][0]~23_combout\,
	combout => \mem|ram[21][3]~combout\);

-- Location: LCCOMB_X17_Y12_N22
\mem|ram[19][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[19][3]~combout\ = (\mem|ram[19][0]~24_combout\ & (\ir|dBus[3]~29_combout\)) # (!\mem|ram[19][0]~24_combout\ & ((\mem|ram[19][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[3]~29_combout\,
	datac => \mem|ram[19][3]~combout\,
	datad => \mem|ram[19][0]~24_combout\,
	combout => \mem|ram[19][3]~combout\);

-- Location: LCCOMB_X17_Y12_N12
\mem|ram[17][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[17][3]~combout\ = (\mem|ram[17][0]~25_combout\ & ((\ir|dBus[3]~29_combout\))) # (!\mem|ram[17][0]~25_combout\ & (\mem|ram[17][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[17][3]~combout\,
	datac => \ir|dBus[3]~29_combout\,
	datad => \mem|ram[17][0]~25_combout\,
	combout => \mem|ram[17][3]~combout\);

-- Location: LCCOMB_X17_Y12_N0
\mem|Mux4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~12_combout\ = (\pc|aBus[1]~7_combout\ & ((\mem|ram[19][3]~combout\) # ((\pc|aBus[2]~8_combout\)))) # (!\pc|aBus[1]~7_combout\ & (((!\pc|aBus[2]~8_combout\ & \mem|ram[17][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \mem|ram[19][3]~combout\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \mem|ram[17][3]~combout\,
	combout => \mem|Mux4~12_combout\);

-- Location: LCCOMB_X17_Y12_N2
\mem|Mux4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~13_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|Mux4~12_combout\ & (\mem|ram[23][3]~combout\)) # (!\mem|Mux4~12_combout\ & ((\mem|ram[21][3]~combout\))))) # (!\pc|aBus[2]~8_combout\ & (((\mem|Mux4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \mem|ram[23][3]~combout\,
	datac => \mem|ram[21][3]~combout\,
	datad => \mem|Mux4~12_combout\,
	combout => \mem|Mux4~13_combout\);

-- Location: LCCOMB_X17_Y12_N28
\mem|Mux4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~16_combout\ = (\pc|aBus[0]~6_combout\ & ((\pc|aBus[3]~9_combout\) # ((\mem|Mux4~13_combout\)))) # (!\pc|aBus[0]~6_combout\ & (!\pc|aBus[3]~9_combout\ & (\mem|Mux4~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[0]~6_combout\,
	datab => \pc|aBus[3]~9_combout\,
	datac => \mem|Mux4~15_combout\,
	datad => \mem|Mux4~13_combout\,
	combout => \mem|Mux4~16_combout\);

-- Location: LCCOMB_X17_Y12_N6
\mem|Mux4~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~19_combout\ = (\pc|aBus[3]~9_combout\ & ((\mem|Mux4~16_combout\ & (\mem|Mux4~18_combout\)) # (!\mem|Mux4~16_combout\ & ((\mem|Mux4~11_combout\))))) # (!\pc|aBus[3]~9_combout\ & (((\mem|Mux4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[3]~9_combout\,
	datab => \mem|Mux4~18_combout\,
	datac => \mem|Mux4~11_combout\,
	datad => \mem|Mux4~16_combout\,
	combout => \mem|Mux4~19_combout\);

-- Location: LCCOMB_X18_Y16_N12
\mem|ram[14][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[14][3]~combout\ = (\mem|ram[14][0]~39_combout\ & ((\ir|dBus[3]~29_combout\))) # (!\mem|ram[14][0]~39_combout\ & (\mem|ram[14][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[14][3]~combout\,
	datac => \ir|dBus[3]~29_combout\,
	datad => \mem|ram[14][0]~39_combout\,
	combout => \mem|ram[14][3]~combout\);

-- Location: LCCOMB_X18_Y16_N10
\mem|ram[15][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[15][3]~combout\ = (\mem|ram[15][0]~42_combout\ & ((\ir|dBus[3]~29_combout\))) # (!\mem|ram[15][0]~42_combout\ & (\mem|ram[15][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[15][3]~combout\,
	datac => \ir|dBus[3]~29_combout\,
	datad => \mem|ram[15][0]~42_combout\,
	combout => \mem|ram[15][3]~combout\);

-- Location: LCCOMB_X18_Y12_N28
\mem|ram[12][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[12][3]~combout\ = (\mem|ram[12][0]~41_combout\ & ((\ir|dBus[3]~29_combout\))) # (!\mem|ram[12][0]~41_combout\ & (\mem|ram[12][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[12][3]~combout\,
	datac => \ir|dBus[3]~29_combout\,
	datad => \mem|ram[12][0]~41_combout\,
	combout => \mem|ram[12][3]~combout\);

-- Location: LCCOMB_X18_Y12_N18
\mem|ram[13][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[13][3]~combout\ = (\mem|ram[13][0]~40_combout\ & ((\ir|dBus[3]~29_combout\))) # (!\mem|ram[13][0]~40_combout\ & (\mem|ram[13][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[13][3]~combout\,
	datac => \ir|dBus[3]~29_combout\,
	datad => \mem|ram[13][0]~40_combout\,
	combout => \mem|ram[13][3]~combout\);

-- Location: LCCOMB_X18_Y16_N18
\mem|Mux4~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~27_combout\ = (\pc|aBus[1]~7_combout\ & (\pc|aBus[0]~6_combout\)) # (!\pc|aBus[1]~7_combout\ & ((\pc|aBus[0]~6_combout\ & ((\mem|ram[13][3]~combout\))) # (!\pc|aBus[0]~6_combout\ & (\mem|ram[12][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \pc|aBus[0]~6_combout\,
	datac => \mem|ram[12][3]~combout\,
	datad => \mem|ram[13][3]~combout\,
	combout => \mem|Mux4~27_combout\);

-- Location: LCCOMB_X18_Y16_N4
\mem|Mux4~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~28_combout\ = (\pc|aBus[1]~7_combout\ & ((\mem|Mux4~27_combout\ & ((\mem|ram[15][3]~combout\))) # (!\mem|Mux4~27_combout\ & (\mem|ram[14][3]~combout\)))) # (!\pc|aBus[1]~7_combout\ & (((\mem|Mux4~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[14][3]~combout\,
	datab => \pc|aBus[1]~7_combout\,
	datac => \mem|ram[15][3]~combout\,
	datad => \mem|Mux4~27_combout\,
	combout => \mem|Mux4~28_combout\);

-- Location: LCCOMB_X22_Y13_N8
\mem|ram[11][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[11][3]~combout\ = (\mem|ram[11][0]~38_combout\ & (\ir|dBus[3]~29_combout\)) # (!\mem|ram[11][0]~38_combout\ & ((\mem|ram[11][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[3]~29_combout\,
	datac => \mem|ram[11][3]~combout\,
	datad => \mem|ram[11][0]~38_combout\,
	combout => \mem|ram[11][3]~combout\);

-- Location: LCCOMB_X18_Y12_N22
\ir|dBus[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[3]~38_combout\ = ((\ir|dBus[3]~16_combout\ & ((\mem|Mux4~41_combout\) # (!\mem|dBus~1_combout\)))) # (!\ir|dBus[0]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|dBus~1_combout\,
	datab => \ir|dBus[3]~16_combout\,
	datac => \ir|dBus[0]~34_combout\,
	datad => \mem|Mux4~41_combout\,
	combout => \ir|dBus[3]~38_combout\);

-- Location: LCCOMB_X21_Y13_N24
\mem|ram[8][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[8][3]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~8clkctrl_outclk\) & ((\ir|dBus[3]~38_combout\))) # (!GLOBAL(\mem|Decoder0~8clkctrl_outclk\) & (\mem|ram[8][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \mem|ram[8][3]~combout\,
	datac => \ir|dBus[3]~38_combout\,
	datad => \mem|Decoder0~8clkctrl_outclk\,
	combout => \mem|ram[8][3]~combout\);

-- Location: LCCOMB_X17_Y16_N28
\mem|ram[9][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[9][3]~combout\ = (\mem|ram[9][0]~36_combout\ & ((\ir|dBus[3]~29_combout\))) # (!\mem|ram[9][0]~36_combout\ & (\mem|ram[9][3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[9][3]~combout\,
	datac => \ir|dBus[3]~29_combout\,
	datad => \mem|ram[9][0]~36_combout\,
	combout => \mem|ram[9][3]~combout\);

-- Location: LCCOMB_X18_Y16_N8
\mem|Mux4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~20_combout\ = (\pc|aBus[1]~7_combout\ & (\pc|aBus[0]~6_combout\)) # (!\pc|aBus[1]~7_combout\ & ((\pc|aBus[0]~6_combout\ & ((\mem|ram[9][3]~combout\))) # (!\pc|aBus[0]~6_combout\ & (\mem|ram[8][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \pc|aBus[0]~6_combout\,
	datac => \mem|ram[8][3]~combout\,
	datad => \mem|ram[9][3]~combout\,
	combout => \mem|Mux4~20_combout\);

-- Location: LCCOMB_X18_Y12_N26
\mem|ram[10][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[10][3]~combout\ = (\mem|ram[10][0]~37_combout\ & (\ir|dBus[3]~29_combout\)) # (!\mem|ram[10][0]~37_combout\ & ((\mem|ram[10][3]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[3]~29_combout\,
	datac => \mem|ram[10][3]~combout\,
	datad => \mem|ram[10][0]~37_combout\,
	combout => \mem|ram[10][3]~combout\);

-- Location: LCCOMB_X18_Y16_N22
\mem|Mux4~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~21_combout\ = (\pc|aBus[1]~7_combout\ & ((\mem|Mux4~20_combout\ & (\mem|ram[11][3]~combout\)) # (!\mem|Mux4~20_combout\ & ((\mem|ram[10][3]~combout\))))) # (!\pc|aBus[1]~7_combout\ & (((\mem|Mux4~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[11][3]~combout\,
	datab => \pc|aBus[1]~7_combout\,
	datac => \mem|Mux4~20_combout\,
	datad => \mem|ram[10][3]~combout\,
	combout => \mem|Mux4~21_combout\);

-- Location: LCCOMB_X21_Y16_N4
\mem|ram[6][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[6][3]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~10clkctrl_outclk\) & ((\ir|dBus[3]~38_combout\))) # (!GLOBAL(\mem|Decoder0~10clkctrl_outclk\) & (\mem|ram[6][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \mem|ram[6][3]~combout\,
	datac => \mem|Decoder0~10clkctrl_outclk\,
	datad => \ir|dBus[3]~38_combout\,
	combout => \mem|ram[6][3]~combout\);

-- Location: LCCOMB_X21_Y16_N10
\mem|ram[7][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[7][3]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~12clkctrl_outclk\) & ((\ir|dBus[3]~38_combout\))) # (!GLOBAL(\mem|Decoder0~12clkctrl_outclk\) & (\mem|ram[7][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[7][3]~combout\,
	datab => \reset~input_o\,
	datac => \ir|dBus[3]~38_combout\,
	datad => \mem|Decoder0~12clkctrl_outclk\,
	combout => \mem|ram[7][3]~combout\);

-- Location: LCCOMB_X18_Y16_N30
\mem|ram[5][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[5][3]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~9clkctrl_outclk\) & (\ir|dBus[3]~38_combout\)) # (!GLOBAL(\mem|Decoder0~9clkctrl_outclk\) & ((\mem|ram[5][3]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[3]~38_combout\,
	datab => \reset~input_o\,
	datac => \mem|ram[5][3]~combout\,
	datad => \mem|Decoder0~9clkctrl_outclk\,
	combout => \mem|ram[5][3]~combout\);

-- Location: LCCOMB_X18_Y16_N20
\mem|ram[4][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[4][3]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~11clkctrl_outclk\) & ((\ir|dBus[3]~38_combout\))) # (!GLOBAL(\mem|Decoder0~11clkctrl_outclk\) & (\mem|ram[4][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \mem|ram[4][3]~combout\,
	datac => \ir|dBus[3]~38_combout\,
	datad => \mem|Decoder0~11clkctrl_outclk\,
	combout => \mem|ram[4][3]~combout\);

-- Location: LCCOMB_X18_Y16_N0
\mem|Mux4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~22_combout\ = (\pc|aBus[0]~6_combout\ & ((\mem|ram[5][3]~combout\) # ((\pc|aBus[1]~7_combout\)))) # (!\pc|aBus[0]~6_combout\ & (((\mem|ram[4][3]~combout\ & !\pc|aBus[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[5][3]~combout\,
	datab => \mem|ram[4][3]~combout\,
	datac => \pc|aBus[0]~6_combout\,
	datad => \pc|aBus[1]~7_combout\,
	combout => \mem|Mux4~22_combout\);

-- Location: LCCOMB_X18_Y16_N14
\mem|Mux4~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~23_combout\ = (\pc|aBus[1]~7_combout\ & ((\mem|Mux4~22_combout\ & ((\mem|ram[7][3]~combout\))) # (!\mem|Mux4~22_combout\ & (\mem|ram[6][3]~combout\)))) # (!\pc|aBus[1]~7_combout\ & (((\mem|Mux4~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \mem|ram[6][3]~combout\,
	datac => \mem|ram[7][3]~combout\,
	datad => \mem|Mux4~22_combout\,
	combout => \mem|Mux4~23_combout\);

-- Location: LCCOMB_X18_Y16_N6
\mem|ram[3][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[3][3]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~16clkctrl_outclk\) & (\ir|dBus[3]~38_combout\)) # (!GLOBAL(\mem|Decoder0~16clkctrl_outclk\) & ((\mem|ram[3][3]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[3]~38_combout\,
	datab => \reset~input_o\,
	datac => \mem|Decoder0~16clkctrl_outclk\,
	datad => \mem|ram[3][3]~combout\,
	combout => \mem|ram[3][3]~combout\);

-- Location: LCCOMB_X17_Y16_N10
\mem|ram[2][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[2][3]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~14clkctrl_outclk\) & ((\ir|dBus[3]~38_combout\))) # (!GLOBAL(\mem|Decoder0~14clkctrl_outclk\) & (\mem|ram[2][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[2][3]~combout\,
	datab => \ir|dBus[3]~38_combout\,
	datac => \mem|Decoder0~14clkctrl_outclk\,
	datad => \reset~input_o\,
	combout => \mem|ram[2][3]~combout\);

-- Location: LCCOMB_X19_Y12_N18
\mem|ram[1][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[1][3]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~13clkctrl_outclk\) & ((\ir|dBus[3]~38_combout\))) # (!GLOBAL(\mem|Decoder0~13clkctrl_outclk\) & (\mem|ram[1][3]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \mem|ram[1][3]~combout\,
	datac => \ir|dBus[3]~38_combout\,
	datad => \mem|Decoder0~13clkctrl_outclk\,
	combout => \mem|ram[1][3]~combout\);

-- Location: LCCOMB_X21_Y14_N12
\mem|ram[0][3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[0][3]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~15clkctrl_outclk\) & (\ir|dBus[3]~38_combout\)) # (!GLOBAL(\mem|Decoder0~15clkctrl_outclk\) & ((\mem|ram[0][3]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[3]~38_combout\,
	datab => \reset~input_o\,
	datac => \mem|Decoder0~15clkctrl_outclk\,
	datad => \mem|ram[0][3]~combout\,
	combout => \mem|ram[0][3]~combout\);

-- Location: LCCOMB_X18_Y16_N28
\mem|Mux4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~24_combout\ = (\pc|aBus[1]~7_combout\ & (((\pc|aBus[0]~6_combout\)))) # (!\pc|aBus[1]~7_combout\ & ((\pc|aBus[0]~6_combout\ & (\mem|ram[1][3]~combout\)) # (!\pc|aBus[0]~6_combout\ & ((\mem|ram[0][3]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[1][3]~combout\,
	datab => \pc|aBus[1]~7_combout\,
	datac => \pc|aBus[0]~6_combout\,
	datad => \mem|ram[0][3]~combout\,
	combout => \mem|Mux4~24_combout\);

-- Location: LCCOMB_X18_Y16_N2
\mem|Mux4~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~25_combout\ = (\pc|aBus[1]~7_combout\ & ((\mem|Mux4~24_combout\ & (\mem|ram[3][3]~combout\)) # (!\mem|Mux4~24_combout\ & ((\mem|ram[2][3]~combout\))))) # (!\pc|aBus[1]~7_combout\ & (((\mem|Mux4~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[3][3]~combout\,
	datab => \pc|aBus[1]~7_combout\,
	datac => \mem|ram[2][3]~combout\,
	datad => \mem|Mux4~24_combout\,
	combout => \mem|Mux4~25_combout\);

-- Location: LCCOMB_X18_Y16_N24
\mem|Mux4~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~26_combout\ = (\pc|aBus[2]~8_combout\ & ((\pc|aBus[3]~9_combout\) # ((\mem|Mux4~23_combout\)))) # (!\pc|aBus[2]~8_combout\ & (!\pc|aBus[3]~9_combout\ & ((\mem|Mux4~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \pc|aBus[3]~9_combout\,
	datac => \mem|Mux4~23_combout\,
	datad => \mem|Mux4~25_combout\,
	combout => \mem|Mux4~26_combout\);

-- Location: LCCOMB_X18_Y16_N26
\mem|Mux4~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~29_combout\ = (\pc|aBus[3]~9_combout\ & ((\mem|Mux4~26_combout\ & (\mem|Mux4~28_combout\)) # (!\mem|Mux4~26_combout\ & ((\mem|Mux4~21_combout\))))) # (!\pc|aBus[3]~9_combout\ & (((\mem|Mux4~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[3]~9_combout\,
	datab => \mem|Mux4~28_combout\,
	datac => \mem|Mux4~21_combout\,
	datad => \mem|Mux4~26_combout\,
	combout => \mem|Mux4~29_combout\);

-- Location: LCCOMB_X18_Y12_N10
\mem|Mux4~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~30_combout\ = (\ir|aBus[5]~5_combout\ & (\ir|aBus[4]~4_combout\)) # (!\ir|aBus[5]~5_combout\ & ((\ir|aBus[4]~4_combout\ & (\mem|Mux4~19_combout\)) # (!\ir|aBus[4]~4_combout\ & ((\mem|Mux4~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[5]~5_combout\,
	datab => \ir|aBus[4]~4_combout\,
	datac => \mem|Mux4~19_combout\,
	datad => \mem|Mux4~29_combout\,
	combout => \mem|Mux4~30_combout\);

-- Location: LCCOMB_X18_Y12_N6
\mem|Mux4~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux4~41_combout\ = (\ir|aBus[5]~5_combout\ & ((\mem|Mux4~30_combout\ & (\mem|Mux4~40_combout\)) # (!\mem|Mux4~30_combout\ & ((\mem|Mux4~9_combout\))))) # (!\ir|aBus[5]~5_combout\ & (((\mem|Mux4~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux4~40_combout\,
	datab => \ir|aBus[5]~5_combout\,
	datac => \mem|Mux4~9_combout\,
	datad => \mem|Mux4~30_combout\,
	combout => \mem|Mux4~41_combout\);

-- Location: LCCOMB_X18_Y12_N8
\ir|dBus[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[3]~29_combout\ = ((\ir|dBus[3]~16_combout\ & ((\mem|Mux4~41_combout\) # (!\mem|dBus~0_combout\)))) # (!\ir|dBus[0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|dBus~0_combout\,
	datab => \ir|dBus[3]~16_combout\,
	datac => \ir|dBus[0]~11_combout\,
	datad => \mem|Mux4~41_combout\,
	combout => \ir|dBus[3]~29_combout\);

-- Location: LCCOMB_X19_Y12_N4
\ir|irReg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|irReg~3_combout\ = (\ctl|state.fetch1~q\ & ((\ir|dBus[3]~29_combout\))) # (!\ctl|state.fetch1~q\ & (\ir|irReg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|state.fetch1~q\,
	datac => \ir|irReg\(3),
	datad => \ir|dBus[3]~29_combout\,
	combout => \ir|irReg~3_combout\);

-- Location: FF_X19_Y12_N5
\ir|irReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \ir|irReg~3_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|irReg\(3));

-- Location: LCCOMB_X19_Y10_N22
\ir|Equal10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|Equal10~1_combout\ = (!\ir|irReg\(3) & (!\ir|irReg\(2) & !\ir|irReg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|irReg\(3),
	datac => \ir|irReg\(2),
	datad => \ir|irReg\(1),
	combout => \ir|Equal10~1_combout\);

-- Location: LCCOMB_X19_Y10_N28
\ctl|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|Selector1~3_combout\ = (\ir|Equal10~1_combout\ & (!\ir|irReg\(0) & \ir|irReg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|Equal10~1_combout\,
	datac => \ir|irReg\(0),
	datad => \ir|irReg\(6),
	combout => \ctl|Selector1~3_combout\);

-- Location: LCCOMB_X19_Y10_N26
\ctl|state~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|state~77_combout\ = (\ir|irReg\(5) & (!\ir|irReg\(4) & (\ctl|state~54_combout\ & \ctl|Selector1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|irReg\(5),
	datab => \ir|irReg\(4),
	datac => \ctl|state~54_combout\,
	datad => \ctl|Selector1~3_combout\,
	combout => \ctl|state~77_combout\);

-- Location: FF_X19_Y10_N27
\ctl|state.and0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ctl|state~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|state.and0~q\);

-- Location: LCCOMB_X21_Y10_N26
\ctl|alu_op[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|alu_op[3]~0_combout\ = (\ctl|state.and0~q\) # ((\ctl|state.add0~q\) # ((\ctl|state.negate0~q\) # (\ctl|state.and1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|state.and0~q\,
	datab => \ctl|state.add0~q\,
	datac => \ctl|state.negate0~q\,
	datad => \ctl|state.and1~q\,
	combout => \ctl|alu_op[3]~0_combout\);

-- Location: LCCOMB_X22_Y10_N6
\ctl|alu_op[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|alu_op[3]~1_combout\ = (\ctl|state.mul0~q\) # ((\ctl|state.or0~q\) # ((\ctl|state.div0~q\) # (\ctl|state.sub0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|state.mul0~q\,
	datab => \ctl|state.or0~q\,
	datac => \ctl|state.div0~q\,
	datad => \ctl|state.sub0~q\,
	combout => \ctl|alu_op[3]~1_combout\);

-- Location: LCCOMB_X22_Y10_N0
\ctl|alu_op[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|alu_op[3]~2_combout\ = ((\ctl|state.not0~q\) # ((\ctl|alu_op[3]~0_combout\) # (\ctl|alu_op[3]~1_combout\))) # (!\ctl|acc_ld~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|acc_ld~0_combout\,
	datab => \ctl|state.not0~q\,
	datac => \ctl|alu_op[3]~0_combout\,
	datad => \ctl|alu_op[3]~1_combout\,
	combout => \ctl|alu_op[3]~2_combout\);

-- Location: LCCOMB_X21_Y10_N30
\ctl|alu_op~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|alu_op~9_combout\ = (!\ctl|state.and0~q\ & (!\ctl|state.negate1~q\ & (!\ctl|state.and1~q\ & !\ctl|state.negate0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|state.and0~q\,
	datab => \ctl|state.negate1~q\,
	datac => \ctl|state.and1~q\,
	datad => \ctl|state.negate0~q\,
	combout => \ctl|alu_op~9_combout\);

-- Location: LCCOMB_X22_Y11_N18
\ctl|alu_op[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|alu_op[1]~10_combout\ = (\ctl|alu_op[1]~8_combout\ & (((\ctl|alu_op~9_combout\) # (!\ctl|alu_op[0]~6_combout\)) # (!\ctl|alu_op[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|alu_op[0]~4_combout\,
	datab => \ctl|alu_op[0]~6_combout\,
	datac => \ctl|alu_op[1]~8_combout\,
	datad => \ctl|alu_op~9_combout\,
	combout => \ctl|alu_op[1]~10_combout\);

-- Location: LCCOMB_X22_Y11_N24
\ctl|comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|comb~2_combout\ = (\ctl|alu_op[3]~2_combout\ & !\ctl|alu_op[1]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctl|alu_op[3]~2_combout\,
	datad => \ctl|alu_op[1]~10_combout\,
	combout => \ctl|comb~2_combout\);

-- Location: LCCOMB_X22_Y11_N26
\ctl|comb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|comb~3_combout\ = (\ctl|alu_op[3]~2_combout\ & \ctl|alu_op[1]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctl|alu_op[3]~2_combout\,
	datad => \ctl|alu_op[1]~10_combout\,
	combout => \ctl|comb~3_combout\);

-- Location: LCCOMB_X22_Y11_N0
\ctl|alu_op[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|alu_op\(1) = (!\ctl|comb~2_combout\ & ((\ctl|comb~3_combout\) # (\ctl|alu_op\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctl|comb~2_combout\,
	datac => \ctl|comb~3_combout\,
	datad => \ctl|alu_op\(1),
	combout => \ctl|alu_op\(1));

-- Location: LCCOMB_X22_Y11_N28
\aluu|Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Equal13~0_combout\ = (\ctl|alu_op\(1) & \ctl|alu_op\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctl|alu_op\(1),
	datad => \ctl|alu_op\(2),
	combout => \aluu|Equal13~0_combout\);

-- Location: LCCOMB_X23_Y14_N28
\acc|accReg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg~4_combout\ = (\acc|accReg[6]~3_combout\ & (((\acc|accReg[6]~2_combout\) # (\aluu|Add0~5_combout\)))) # (!\acc|accReg[6]~3_combout\ & (\ir|dBus[0]~26_combout\ & (!\acc|accReg[6]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|accReg[6]~3_combout\,
	datab => \ir|dBus[0]~26_combout\,
	datac => \acc|accReg[6]~2_combout\,
	datad => \aluu|Add0~5_combout\,
	combout => \acc|accReg~4_combout\);

-- Location: LCCOMB_X23_Y14_N6
\acc|accReg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg~5_combout\ = (\aluu|Equal13~0_combout\ & ((\acc|accReg~4_combout\ & ((\aluu|Mult1|auto_generated|op_3~0_combout\))) # (!\acc|accReg~4_combout\ & (\aluu|Mult0|auto_generated|op_3~0_combout\)))) # (!\aluu|Equal13~0_combout\ & 
-- (\acc|accReg~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Equal13~0_combout\,
	datab => \acc|accReg~4_combout\,
	datac => \aluu|Mult0|auto_generated|op_3~0_combout\,
	datad => \aluu|Mult1|auto_generated|op_3~0_combout\,
	combout => \acc|accReg~5_combout\);

-- Location: LCCOMB_X23_Y14_N8
\acc|accReg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg~6_combout\ = (\ctl|acc_ld~0_combout\ & (\ir|dBus[0]~26_combout\)) # (!\ctl|acc_ld~0_combout\ & ((\acc|accReg~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|acc_ld~0_combout\,
	datac => \ir|dBus[0]~26_combout\,
	datad => \acc|accReg~5_combout\,
	combout => \acc|accReg~6_combout\);

-- Location: FF_X23_Y14_N9
\acc|accReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \acc|accReg~6_combout\,
	sclr => \reset~input_o\,
	ena => \acc|accReg~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acc|accReg\(0));

-- Location: LCCOMB_X18_Y12_N14
\ir|dBus[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[0]~8_combout\ = (\ctl|state.branch0~q\ & (\ir|irReg\(0) & ((\ctl|acc_enD~0_combout\) # (\acc|accReg\(0))))) # (!\ctl|state.branch0~q\ & ((\ctl|acc_enD~0_combout\) # ((\acc|accReg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|state.branch0~q\,
	datab => \ctl|acc_enD~0_combout\,
	datac => \acc|accReg\(0),
	datad => \ir|irReg\(0),
	combout => \ir|dBus[0]~8_combout\);

-- Location: LCCOMB_X17_Y13_N22
\mem|ram[15][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[15][0]~combout\ = (\mem|ram[15][0]~42_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[15][0]~42_combout\ & ((\mem|ram[15][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[0]~26_combout\,
	datac => \mem|ram[15][0]~combout\,
	datad => \mem|ram[15][0]~42_combout\,
	combout => \mem|ram[15][0]~combout\);

-- Location: LCCOMB_X17_Y13_N4
\mem|ram[14][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[14][0]~combout\ = (\mem|ram[14][0]~39_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[14][0]~39_combout\ & ((\mem|ram[14][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[0]~26_combout\,
	datac => \mem|ram[14][0]~combout\,
	datad => \mem|ram[14][0]~39_combout\,
	combout => \mem|ram[14][0]~combout\);

-- Location: LCCOMB_X17_Y13_N6
\mem|ram[12][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[12][0]~combout\ = (\mem|ram[12][0]~41_combout\ & ((\ir|dBus[0]~26_combout\))) # (!\mem|ram[12][0]~41_combout\ & (\mem|ram[12][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[12][0]~combout\,
	datac => \ir|dBus[0]~26_combout\,
	datad => \mem|ram[12][0]~41_combout\,
	combout => \mem|ram[12][0]~combout\);

-- Location: LCCOMB_X17_Y13_N10
\mem|ram[13][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[13][0]~combout\ = (\mem|ram[13][0]~40_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[13][0]~40_combout\ & ((\mem|ram[13][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[0]~26_combout\,
	datac => \mem|ram[13][0]~40_combout\,
	datad => \mem|ram[13][0]~combout\,
	combout => \mem|ram[13][0]~combout\);

-- Location: LCCOMB_X17_Y13_N20
\mem|Mux7~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~27_combout\ = (\pc|aBus[1]~7_combout\ & (((\pc|aBus[0]~6_combout\)))) # (!\pc|aBus[1]~7_combout\ & ((\pc|aBus[0]~6_combout\ & ((\mem|ram[13][0]~combout\))) # (!\pc|aBus[0]~6_combout\ & (\mem|ram[12][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[12][0]~combout\,
	datab => \mem|ram[13][0]~combout\,
	datac => \pc|aBus[1]~7_combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Mux7~27_combout\);

-- Location: LCCOMB_X17_Y13_N28
\mem|Mux7~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~28_combout\ = (\pc|aBus[1]~7_combout\ & ((\mem|Mux7~27_combout\ & (\mem|ram[15][0]~combout\)) # (!\mem|Mux7~27_combout\ & ((\mem|ram[14][0]~combout\))))) # (!\pc|aBus[1]~7_combout\ & (((\mem|Mux7~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \mem|ram[15][0]~combout\,
	datac => \mem|ram[14][0]~combout\,
	datad => \mem|Mux7~27_combout\,
	combout => \mem|Mux7~28_combout\);

-- Location: LCCOMB_X19_Y13_N14
\ir|dBus[0]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[0]~35_combout\ = ((\ir|dBus[0]~8_combout\ & ((\mem|Mux7~41_combout\) # (!\mem|dBus~1_combout\)))) # (!\ir|dBus[0]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[0]~8_combout\,
	datab => \ir|dBus[0]~34_combout\,
	datac => \mem|dBus~1_combout\,
	datad => \mem|Mux7~41_combout\,
	combout => \ir|dBus[0]~35_combout\);

-- Location: LCCOMB_X22_Y13_N28
\mem|ram[5][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[5][0]~combout\ = (\reset~input_o\) # ((GLOBAL(\mem|Decoder0~9clkctrl_outclk\) & ((\ir|dBus[0]~35_combout\))) # (!GLOBAL(\mem|Decoder0~9clkctrl_outclk\) & (\mem|ram[5][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \mem|ram[5][0]~combout\,
	datac => \ir|dBus[0]~35_combout\,
	datad => \mem|Decoder0~9clkctrl_outclk\,
	combout => \mem|ram[5][0]~combout\);

-- Location: LCCOMB_X18_Y13_N26
\mem|ram[6][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[6][0]~combout\ = (\reset~input_o\) # ((GLOBAL(\mem|Decoder0~10clkctrl_outclk\) & ((\ir|dBus[0]~35_combout\))) # (!GLOBAL(\mem|Decoder0~10clkctrl_outclk\) & (\mem|ram[6][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[6][0]~combout\,
	datab => \ir|dBus[0]~35_combout\,
	datac => \mem|Decoder0~10clkctrl_outclk\,
	datad => \reset~input_o\,
	combout => \mem|ram[6][0]~combout\);

-- Location: LCCOMB_X18_Y13_N20
\mem|ram[4][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[4][0]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~11clkctrl_outclk\) & ((\ir|dBus[0]~35_combout\))) # (!GLOBAL(\mem|Decoder0~11clkctrl_outclk\) & (\mem|ram[4][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \mem|ram[4][0]~combout\,
	datac => \ir|dBus[0]~35_combout\,
	datad => \mem|Decoder0~11clkctrl_outclk\,
	combout => \mem|ram[4][0]~combout\);

-- Location: LCCOMB_X18_Y13_N8
\mem|Mux7~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~22_combout\ = (\pc|aBus[1]~7_combout\ & ((\mem|ram[6][0]~combout\) # ((\pc|aBus[0]~6_combout\)))) # (!\pc|aBus[1]~7_combout\ & (((\mem|ram[4][0]~combout\ & !\pc|aBus[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[6][0]~combout\,
	datab => \mem|ram[4][0]~combout\,
	datac => \pc|aBus[1]~7_combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Mux7~22_combout\);

-- Location: LCCOMB_X21_Y16_N28
\mem|ram[7][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[7][0]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~12clkctrl_outclk\) & ((\ir|dBus[0]~35_combout\))) # (!GLOBAL(\mem|Decoder0~12clkctrl_outclk\) & (\mem|ram[7][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \mem|ram[7][0]~combout\,
	datac => \ir|dBus[0]~35_combout\,
	datad => \mem|Decoder0~12clkctrl_outclk\,
	combout => \mem|ram[7][0]~combout\);

-- Location: LCCOMB_X18_Y13_N30
\mem|Mux7~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~23_combout\ = (\pc|aBus[0]~6_combout\ & ((\mem|Mux7~22_combout\ & ((\mem|ram[7][0]~combout\))) # (!\mem|Mux7~22_combout\ & (\mem|ram[5][0]~combout\)))) # (!\pc|aBus[0]~6_combout\ & (((\mem|Mux7~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[5][0]~combout\,
	datab => \pc|aBus[0]~6_combout\,
	datac => \mem|Mux7~22_combout\,
	datad => \mem|ram[7][0]~combout\,
	combout => \mem|Mux7~23_combout\);

-- Location: LCCOMB_X21_Y16_N18
\mem|ram[3][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[3][0]~combout\ = (\reset~input_o\) # ((GLOBAL(\mem|Decoder0~16clkctrl_outclk\) & (\ir|dBus[0]~35_combout\)) # (!GLOBAL(\mem|Decoder0~16clkctrl_outclk\) & ((\mem|ram[3][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[0]~35_combout\,
	datab => \mem|ram[3][0]~combout\,
	datac => \mem|Decoder0~16clkctrl_outclk\,
	datad => \reset~input_o\,
	combout => \mem|ram[3][0]~combout\);

-- Location: LCCOMB_X21_Y15_N10
\mem|ram[1][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[1][0]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~13clkctrl_outclk\) & ((\ir|dBus[0]~35_combout\))) # (!GLOBAL(\mem|Decoder0~13clkctrl_outclk\) & (\mem|ram[1][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[1][0]~combout\,
	datab => \ir|dBus[0]~35_combout\,
	datac => \reset~input_o\,
	datad => \mem|Decoder0~13clkctrl_outclk\,
	combout => \mem|ram[1][0]~combout\);

-- Location: LCCOMB_X18_Y17_N12
\mem|ram[2][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[2][0]~combout\ = (\reset~input_o\) # ((GLOBAL(\mem|Decoder0~14clkctrl_outclk\) & ((\ir|dBus[0]~35_combout\))) # (!GLOBAL(\mem|Decoder0~14clkctrl_outclk\) & (\mem|ram[2][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[2][0]~combout\,
	datab => \ir|dBus[0]~35_combout\,
	datac => \reset~input_o\,
	datad => \mem|Decoder0~14clkctrl_outclk\,
	combout => \mem|ram[2][0]~combout\);

-- Location: LCCOMB_X18_Y17_N30
\mem|ram[0][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[0][0]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~15clkctrl_outclk\) & (\ir|dBus[0]~35_combout\)) # (!GLOBAL(\mem|Decoder0~15clkctrl_outclk\) & ((\mem|ram[0][0]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ir|dBus[0]~35_combout\,
	datac => \mem|ram[0][0]~combout\,
	datad => \mem|Decoder0~15clkctrl_outclk\,
	combout => \mem|ram[0][0]~combout\);

-- Location: LCCOMB_X18_Y13_N16
\mem|Mux7~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~24_combout\ = (\pc|aBus[0]~6_combout\ & (((\pc|aBus[1]~7_combout\)))) # (!\pc|aBus[0]~6_combout\ & ((\pc|aBus[1]~7_combout\ & (\mem|ram[2][0]~combout\)) # (!\pc|aBus[1]~7_combout\ & ((\mem|ram[0][0]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[2][0]~combout\,
	datab => \pc|aBus[0]~6_combout\,
	datac => \mem|ram[0][0]~combout\,
	datad => \pc|aBus[1]~7_combout\,
	combout => \mem|Mux7~24_combout\);

-- Location: LCCOMB_X18_Y13_N18
\mem|Mux7~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~25_combout\ = (\pc|aBus[0]~6_combout\ & ((\mem|Mux7~24_combout\ & (\mem|ram[3][0]~combout\)) # (!\mem|Mux7~24_combout\ & ((\mem|ram[1][0]~combout\))))) # (!\pc|aBus[0]~6_combout\ & (((\mem|Mux7~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[3][0]~combout\,
	datab => \pc|aBus[0]~6_combout\,
	datac => \mem|ram[1][0]~combout\,
	datad => \mem|Mux7~24_combout\,
	combout => \mem|Mux7~25_combout\);

-- Location: LCCOMB_X18_Y13_N4
\mem|Mux7~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~26_combout\ = (\pc|aBus[3]~9_combout\ & (\pc|aBus[2]~8_combout\)) # (!\pc|aBus[3]~9_combout\ & ((\pc|aBus[2]~8_combout\ & (\mem|Mux7~23_combout\)) # (!\pc|aBus[2]~8_combout\ & ((\mem|Mux7~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[3]~9_combout\,
	datab => \pc|aBus[2]~8_combout\,
	datac => \mem|Mux7~23_combout\,
	datad => \mem|Mux7~25_combout\,
	combout => \mem|Mux7~26_combout\);

-- Location: LCCOMB_X21_Y13_N4
\mem|ram[11][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[11][0]~combout\ = (\mem|ram[11][0]~38_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[11][0]~38_combout\ & ((\mem|ram[11][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[0]~26_combout\,
	datac => \mem|ram[11][0]~combout\,
	datad => \mem|ram[11][0]~38_combout\,
	combout => \mem|ram[11][0]~combout\);

-- Location: LCCOMB_X21_Y13_N26
\mem|ram[9][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[9][0]~combout\ = (\mem|ram[9][0]~36_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[9][0]~36_combout\ & ((\mem|ram[9][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[0]~26_combout\,
	datac => \mem|ram[9][0]~combout\,
	datad => \mem|ram[9][0]~36_combout\,
	combout => \mem|ram[9][0]~combout\);

-- Location: LCCOMB_X21_Y13_N10
\mem|ram[8][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[8][0]~combout\ = (\reset~input_o\) # ((GLOBAL(\mem|Decoder0~8clkctrl_outclk\) & ((\ir|dBus[0]~35_combout\))) # (!GLOBAL(\mem|Decoder0~8clkctrl_outclk\) & (\mem|ram[8][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[8][0]~combout\,
	datab => \reset~input_o\,
	datac => \ir|dBus[0]~35_combout\,
	datad => \mem|Decoder0~8clkctrl_outclk\,
	combout => \mem|ram[8][0]~combout\);

-- Location: LCCOMB_X21_Y13_N12
\mem|ram[10][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[10][0]~combout\ = (\mem|ram[10][0]~37_combout\ & ((\ir|dBus[0]~26_combout\))) # (!\mem|ram[10][0]~37_combout\ & (\mem|ram[10][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[10][0]~combout\,
	datac => \ir|dBus[0]~26_combout\,
	datad => \mem|ram[10][0]~37_combout\,
	combout => \mem|ram[10][0]~combout\);

-- Location: LCCOMB_X21_Y13_N28
\mem|Mux7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~20_combout\ = (\pc|aBus[0]~6_combout\ & (((\pc|aBus[1]~7_combout\)))) # (!\pc|aBus[0]~6_combout\ & ((\pc|aBus[1]~7_combout\ & ((\mem|ram[10][0]~combout\))) # (!\pc|aBus[1]~7_combout\ & (\mem|ram[8][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[0]~6_combout\,
	datab => \mem|ram[8][0]~combout\,
	datac => \pc|aBus[1]~7_combout\,
	datad => \mem|ram[10][0]~combout\,
	combout => \mem|Mux7~20_combout\);

-- Location: LCCOMB_X21_Y13_N16
\mem|Mux7~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~21_combout\ = (\pc|aBus[0]~6_combout\ & ((\mem|Mux7~20_combout\ & (\mem|ram[11][0]~combout\)) # (!\mem|Mux7~20_combout\ & ((\mem|ram[9][0]~combout\))))) # (!\pc|aBus[0]~6_combout\ & (((\mem|Mux7~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[0]~6_combout\,
	datab => \mem|ram[11][0]~combout\,
	datac => \mem|ram[9][0]~combout\,
	datad => \mem|Mux7~20_combout\,
	combout => \mem|Mux7~21_combout\);

-- Location: LCCOMB_X18_Y13_N6
\mem|Mux7~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~29_combout\ = (\pc|aBus[3]~9_combout\ & ((\mem|Mux7~26_combout\ & (\mem|Mux7~28_combout\)) # (!\mem|Mux7~26_combout\ & ((\mem|Mux7~21_combout\))))) # (!\pc|aBus[3]~9_combout\ & (((\mem|Mux7~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[3]~9_combout\,
	datab => \mem|Mux7~28_combout\,
	datac => \mem|Mux7~26_combout\,
	datad => \mem|Mux7~21_combout\,
	combout => \mem|Mux7~29_combout\);

-- Location: LCCOMB_X19_Y13_N16
\mem|ram[30][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[30][0]~combout\ = (\mem|ram[30][0]~22_combout\ & ((\ir|dBus[0]~26_combout\))) # (!\mem|ram[30][0]~22_combout\ & (\mem|ram[30][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[30][0]~combout\,
	datac => \ir|dBus[0]~26_combout\,
	datad => \mem|ram[30][0]~22_combout\,
	combout => \mem|ram[30][0]~combout\);

-- Location: LCCOMB_X18_Y13_N28
\mem|ram[28][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[28][0]~combout\ = (\mem|ram[28][0]~19_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[28][0]~19_combout\ & ((\mem|ram[28][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[0]~26_combout\,
	datab => \mem|ram[28][0]~combout\,
	datad => \mem|ram[28][0]~19_combout\,
	combout => \mem|ram[28][0]~combout\);

-- Location: LCCOMB_X18_Y9_N16
\mem|ram[24][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[24][0]~combout\ = (\mem|ram[24][0]~21_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[24][0]~21_combout\ & ((\mem|ram[24][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[0]~26_combout\,
	datac => \mem|ram[24][0]~combout\,
	datad => \mem|ram[24][0]~21_combout\,
	combout => \mem|ram[24][0]~combout\);

-- Location: LCCOMB_X18_Y11_N28
\mem|ram[26][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[26][0]~combout\ = (\mem|ram[26][0]~20_combout\ & ((\ir|dBus[0]~26_combout\))) # (!\mem|ram[26][0]~20_combout\ & (\mem|ram[26][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[26][0]~combout\,
	datac => \mem|ram[26][0]~20_combout\,
	datad => \ir|dBus[0]~26_combout\,
	combout => \mem|ram[26][0]~combout\);

-- Location: LCCOMB_X18_Y9_N20
\mem|Mux7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~10_combout\ = (\pc|aBus[2]~8_combout\ & (((\pc|aBus[1]~7_combout\)))) # (!\pc|aBus[2]~8_combout\ & ((\pc|aBus[1]~7_combout\ & ((\mem|ram[26][0]~combout\))) # (!\pc|aBus[1]~7_combout\ & (\mem|ram[24][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \mem|ram[24][0]~combout\,
	datac => \mem|ram[26][0]~combout\,
	datad => \pc|aBus[1]~7_combout\,
	combout => \mem|Mux7~10_combout\);

-- Location: LCCOMB_X18_Y9_N30
\mem|Mux7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~11_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|Mux7~10_combout\ & (\mem|ram[30][0]~combout\)) # (!\mem|Mux7~10_combout\ & ((\mem|ram[28][0]~combout\))))) # (!\pc|aBus[2]~8_combout\ & (((\mem|Mux7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \mem|ram[30][0]~combout\,
	datac => \mem|ram[28][0]~combout\,
	datad => \mem|Mux7~10_combout\,
	combout => \mem|Mux7~11_combout\);

-- Location: LCCOMB_X19_Y12_N22
\mem|ram[31][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[31][0]~combout\ = (\mem|ram[31][0]~34_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[31][0]~34_combout\ & ((\mem|ram[31][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[0]~26_combout\,
	datac => \mem|ram[31][0]~combout\,
	datad => \mem|ram[31][0]~34_combout\,
	combout => \mem|ram[31][0]~combout\);

-- Location: LCCOMB_X19_Y11_N18
\mem|ram[29][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[29][0]~combout\ = (\mem|ram[29][0]~31_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[29][0]~31_combout\ & ((\mem|ram[29][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[0]~26_combout\,
	datab => \mem|ram[29][0]~combout\,
	datad => \mem|ram[29][0]~31_combout\,
	combout => \mem|ram[29][0]~combout\);

-- Location: LCCOMB_X11_Y12_N26
\mem|ram[25][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[25][0]~combout\ = (\mem|ram[25][0]~33_combout\ & ((\ir|dBus[0]~26_combout\))) # (!\mem|ram[25][0]~33_combout\ & (\mem|ram[25][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[25][0]~combout\,
	datab => \mem|ram[25][0]~33_combout\,
	datac => \ir|dBus[0]~26_combout\,
	combout => \mem|ram[25][0]~combout\);

-- Location: LCCOMB_X19_Y9_N14
\mem|ram[27][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[27][0]~combout\ = (\mem|ram[27][0]~32_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[27][0]~32_combout\ & ((\mem|ram[27][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[0]~26_combout\,
	datac => \mem|ram[27][0]~combout\,
	datad => \mem|ram[27][0]~32_combout\,
	combout => \mem|ram[27][0]~combout\);

-- Location: LCCOMB_X18_Y9_N2
\mem|Mux7~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~17_combout\ = (\pc|aBus[2]~8_combout\ & (((\pc|aBus[1]~7_combout\)))) # (!\pc|aBus[2]~8_combout\ & ((\pc|aBus[1]~7_combout\ & ((\mem|ram[27][0]~combout\))) # (!\pc|aBus[1]~7_combout\ & (\mem|ram[25][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[25][0]~combout\,
	datab => \pc|aBus[2]~8_combout\,
	datac => \mem|ram[27][0]~combout\,
	datad => \pc|aBus[1]~7_combout\,
	combout => \mem|Mux7~17_combout\);

-- Location: LCCOMB_X18_Y9_N8
\mem|Mux7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~18_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|Mux7~17_combout\ & (\mem|ram[31][0]~combout\)) # (!\mem|Mux7~17_combout\ & ((\mem|ram[29][0]~combout\))))) # (!\pc|aBus[2]~8_combout\ & (((\mem|Mux7~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[31][0]~combout\,
	datab => \pc|aBus[2]~8_combout\,
	datac => \mem|ram[29][0]~combout\,
	datad => \mem|Mux7~17_combout\,
	combout => \mem|Mux7~18_combout\);

-- Location: LCCOMB_X12_Y13_N2
\mem|ram[23][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[23][0]~combout\ = (\mem|ram[23][0]~26_combout\ & ((\ir|dBus[0]~26_combout\))) # (!\mem|ram[23][0]~26_combout\ & (\mem|ram[23][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[23][0]~combout\,
	datac => \mem|ram[23][0]~26_combout\,
	datad => \ir|dBus[0]~26_combout\,
	combout => \mem|ram[23][0]~combout\);

-- Location: LCCOMB_X19_Y9_N8
\mem|ram[21][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[21][0]~combout\ = (\mem|ram[21][0]~23_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[21][0]~23_combout\ & ((\mem|ram[21][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[0]~26_combout\,
	datac => \mem|ram[21][0]~23_combout\,
	datad => \mem|ram[21][0]~combout\,
	combout => \mem|ram[21][0]~combout\);

-- Location: LCCOMB_X18_Y9_N6
\mem|ram[19][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[19][0]~combout\ = (\mem|ram[19][0]~24_combout\ & ((\ir|dBus[0]~26_combout\))) # (!\mem|ram[19][0]~24_combout\ & (\mem|ram[19][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[19][0]~combout\,
	datab => \ir|dBus[0]~26_combout\,
	datad => \mem|ram[19][0]~24_combout\,
	combout => \mem|ram[19][0]~combout\);

-- Location: LCCOMB_X18_Y9_N4
\mem|ram[17][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[17][0]~combout\ = (\mem|ram[17][0]~25_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[17][0]~25_combout\ & ((\mem|ram[17][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[0]~26_combout\,
	datac => \mem|ram[17][0]~combout\,
	datad => \mem|ram[17][0]~25_combout\,
	combout => \mem|ram[17][0]~combout\);

-- Location: LCCOMB_X18_Y9_N24
\mem|Mux7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~12_combout\ = (\pc|aBus[2]~8_combout\ & (((\pc|aBus[1]~7_combout\)))) # (!\pc|aBus[2]~8_combout\ & ((\pc|aBus[1]~7_combout\ & (\mem|ram[19][0]~combout\)) # (!\pc|aBus[1]~7_combout\ & ((\mem|ram[17][0]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[19][0]~combout\,
	datab => \pc|aBus[2]~8_combout\,
	datac => \mem|ram[17][0]~combout\,
	datad => \pc|aBus[1]~7_combout\,
	combout => \mem|Mux7~12_combout\);

-- Location: LCCOMB_X18_Y9_N14
\mem|Mux7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~13_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|Mux7~12_combout\ & (\mem|ram[23][0]~combout\)) # (!\mem|Mux7~12_combout\ & ((\mem|ram[21][0]~combout\))))) # (!\pc|aBus[2]~8_combout\ & (((\mem|Mux7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[23][0]~combout\,
	datab => \pc|aBus[2]~8_combout\,
	datac => \mem|ram[21][0]~combout\,
	datad => \mem|Mux7~12_combout\,
	combout => \mem|Mux7~13_combout\);

-- Location: LCCOMB_X18_Y9_N26
\mem|ram[20][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[20][0]~combout\ = (\mem|ram[20][0]~27_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[20][0]~27_combout\ & ((\mem|ram[20][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[0]~26_combout\,
	datac => \mem|ram[20][0]~combout\,
	datad => \mem|ram[20][0]~27_combout\,
	combout => \mem|ram[20][0]~combout\);

-- Location: LCCOMB_X19_Y13_N20
\mem|ram[22][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[22][0]~combout\ = (\mem|ram[22][0]~30_combout\ & ((\ir|dBus[0]~26_combout\))) # (!\mem|ram[22][0]~30_combout\ & (\mem|ram[22][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[22][0]~combout\,
	datac => \ir|dBus[0]~26_combout\,
	datad => \mem|ram[22][0]~30_combout\,
	combout => \mem|ram[22][0]~combout\);

-- Location: LCCOMB_X18_Y9_N0
\mem|ram[18][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[18][0]~combout\ = (\mem|ram[18][0]~28_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[18][0]~28_combout\ & ((\mem|ram[18][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[0]~26_combout\,
	datac => \mem|ram[18][0]~28_combout\,
	datad => \mem|ram[18][0]~combout\,
	combout => \mem|ram[18][0]~combout\);

-- Location: LCCOMB_X18_Y9_N22
\mem|ram[16][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[16][0]~combout\ = (\mem|ram[16][0]~29_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[16][0]~29_combout\ & ((\mem|ram[16][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[0]~26_combout\,
	datac => \mem|ram[16][0]~combout\,
	datad => \mem|ram[16][0]~29_combout\,
	combout => \mem|ram[16][0]~combout\);

-- Location: LCCOMB_X18_Y9_N28
\mem|Mux7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~14_combout\ = (\pc|aBus[2]~8_combout\ & (((\pc|aBus[1]~7_combout\)))) # (!\pc|aBus[2]~8_combout\ & ((\pc|aBus[1]~7_combout\ & (\mem|ram[18][0]~combout\)) # (!\pc|aBus[1]~7_combout\ & ((\mem|ram[16][0]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \mem|ram[18][0]~combout\,
	datac => \mem|ram[16][0]~combout\,
	datad => \pc|aBus[1]~7_combout\,
	combout => \mem|Mux7~14_combout\);

-- Location: LCCOMB_X18_Y9_N10
\mem|Mux7~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~15_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|Mux7~14_combout\ & ((\mem|ram[22][0]~combout\))) # (!\mem|Mux7~14_combout\ & (\mem|ram[20][0]~combout\)))) # (!\pc|aBus[2]~8_combout\ & (((\mem|Mux7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[20][0]~combout\,
	datab => \pc|aBus[2]~8_combout\,
	datac => \mem|ram[22][0]~combout\,
	datad => \mem|Mux7~14_combout\,
	combout => \mem|Mux7~15_combout\);

-- Location: LCCOMB_X18_Y9_N12
\mem|Mux7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~16_combout\ = (\pc|aBus[3]~9_combout\ & (\pc|aBus[0]~6_combout\)) # (!\pc|aBus[3]~9_combout\ & ((\pc|aBus[0]~6_combout\ & (\mem|Mux7~13_combout\)) # (!\pc|aBus[0]~6_combout\ & ((\mem|Mux7~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[3]~9_combout\,
	datab => \pc|aBus[0]~6_combout\,
	datac => \mem|Mux7~13_combout\,
	datad => \mem|Mux7~15_combout\,
	combout => \mem|Mux7~16_combout\);

-- Location: LCCOMB_X18_Y9_N18
\mem|Mux7~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~19_combout\ = (\pc|aBus[3]~9_combout\ & ((\mem|Mux7~16_combout\ & ((\mem|Mux7~18_combout\))) # (!\mem|Mux7~16_combout\ & (\mem|Mux7~11_combout\)))) # (!\pc|aBus[3]~9_combout\ & (((\mem|Mux7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux7~11_combout\,
	datab => \pc|aBus[3]~9_combout\,
	datac => \mem|Mux7~18_combout\,
	datad => \mem|Mux7~16_combout\,
	combout => \mem|Mux7~19_combout\);

-- Location: LCCOMB_X19_Y13_N10
\mem|Mux7~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~30_combout\ = (\ir|aBus[5]~5_combout\ & (\ir|aBus[4]~4_combout\)) # (!\ir|aBus[5]~5_combout\ & ((\ir|aBus[4]~4_combout\ & ((\mem|Mux7~19_combout\))) # (!\ir|aBus[4]~4_combout\ & (\mem|Mux7~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[5]~5_combout\,
	datab => \ir|aBus[4]~4_combout\,
	datac => \mem|Mux7~29_combout\,
	datad => \mem|Mux7~19_combout\,
	combout => \mem|Mux7~30_combout\);

-- Location: LCCOMB_X10_Y12_N18
\mem|ram[57][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[57][0]~combout\ = (\mem|ram[57][0]~44_combout\ & ((\ir|dBus[0]~26_combout\))) # (!\mem|ram[57][0]~44_combout\ & (\mem|ram[57][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[57][0]~combout\,
	datac => \ir|dBus[0]~26_combout\,
	datad => \mem|ram[57][0]~44_combout\,
	combout => \mem|ram[57][0]~combout\);

-- Location: LCCOMB_X11_Y13_N20
\mem|ram[59][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[59][0]~combout\ = (\mem|ram[59][0]~47_combout\ & ((\ir|dBus[0]~26_combout\))) # (!\mem|ram[59][0]~47_combout\ & (\mem|ram[59][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[59][0]~combout\,
	datab => \mem|ram[59][0]~47_combout\,
	datad => \ir|dBus[0]~26_combout\,
	combout => \mem|ram[59][0]~combout\);

-- Location: LCCOMB_X19_Y13_N26
\mem|ram[56][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[56][0]~combout\ = (\mem|ram[56][0]~46_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[56][0]~46_combout\ & ((\mem|ram[56][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[0]~26_combout\,
	datac => \mem|ram[56][0]~combout\,
	datad => \mem|ram[56][0]~46_combout\,
	combout => \mem|ram[56][0]~combout\);

-- Location: LCCOMB_X11_Y13_N24
\mem|ram[58][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[58][0]~combout\ = (\mem|ram[58][0]~45_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[58][0]~45_combout\ & ((\mem|ram[58][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[0]~26_combout\,
	datab => \mem|ram[58][0]~combout\,
	datad => \mem|ram[58][0]~45_combout\,
	combout => \mem|ram[58][0]~combout\);

-- Location: LCCOMB_X19_Y13_N28
\mem|Mux7~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~31_combout\ = (\pc|aBus[0]~6_combout\ & (((\pc|aBus[1]~7_combout\)))) # (!\pc|aBus[0]~6_combout\ & ((\pc|aBus[1]~7_combout\ & ((\mem|ram[58][0]~combout\))) # (!\pc|aBus[1]~7_combout\ & (\mem|ram[56][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[56][0]~combout\,
	datab => \pc|aBus[0]~6_combout\,
	datac => \pc|aBus[1]~7_combout\,
	datad => \mem|ram[58][0]~combout\,
	combout => \mem|Mux7~31_combout\);

-- Location: LCCOMB_X19_Y13_N12
\mem|Mux7~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~32_combout\ = (\pc|aBus[0]~6_combout\ & ((\mem|Mux7~31_combout\ & ((\mem|ram[59][0]~combout\))) # (!\mem|Mux7~31_combout\ & (\mem|ram[57][0]~combout\)))) # (!\pc|aBus[0]~6_combout\ & (((\mem|Mux7~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[57][0]~combout\,
	datab => \pc|aBus[0]~6_combout\,
	datac => \mem|ram[59][0]~combout\,
	datad => \mem|Mux7~31_combout\,
	combout => \mem|Mux7~32_combout\);

-- Location: LCCOMB_X14_Y13_N26
\mem|ram[60][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[60][0]~combout\ = (\mem|ram[60][0]~58_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[60][0]~58_combout\ & ((\mem|ram[60][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[0]~26_combout\,
	datac => \mem|ram[60][0]~combout\,
	datad => \mem|ram[60][0]~58_combout\,
	combout => \mem|ram[60][0]~combout\);

-- Location: LCCOMB_X14_Y13_N28
\mem|ram[61][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[61][0]~combout\ = (\mem|ram[61][0]~57_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[61][0]~57_combout\ & ((\mem|ram[61][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[0]~26_combout\,
	datab => \mem|ram[61][0]~combout\,
	datad => \mem|ram[61][0]~57_combout\,
	combout => \mem|ram[61][0]~combout\);

-- Location: LCCOMB_X14_Y13_N10
\mem|Mux7~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~38_combout\ = (\pc|aBus[1]~7_combout\ & (((\pc|aBus[0]~6_combout\)))) # (!\pc|aBus[1]~7_combout\ & ((\pc|aBus[0]~6_combout\ & ((\mem|ram[61][0]~combout\))) # (!\pc|aBus[0]~6_combout\ & (\mem|ram[60][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[60][0]~combout\,
	datab => \mem|ram[61][0]~combout\,
	datac => \pc|aBus[1]~7_combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Mux7~38_combout\);

-- Location: LCCOMB_X14_Y12_N12
\mem|ram[63][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[63][0]~combout\ = (\mem|ram[63][1]~59_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[63][1]~59_combout\ & ((\mem|ram[63][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[0]~26_combout\,
	datac => \mem|ram[63][1]~59_combout\,
	datad => \mem|ram[63][0]~combout\,
	combout => \mem|ram[63][0]~combout\);

-- Location: LCCOMB_X19_Y13_N2
\mem|ram[62][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[62][0]~combout\ = (\mem|ram[62][0]~56_combout\ & ((\ir|dBus[0]~26_combout\))) # (!\mem|ram[62][0]~56_combout\ & (\mem|ram[62][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[62][0]~combout\,
	datac => \ir|dBus[0]~26_combout\,
	datad => \mem|ram[62][0]~56_combout\,
	combout => \mem|ram[62][0]~combout\);

-- Location: LCCOMB_X14_Y13_N20
\mem|Mux7~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~39_combout\ = (\mem|Mux7~38_combout\ & ((\mem|ram[63][0]~combout\) # ((!\pc|aBus[1]~7_combout\)))) # (!\mem|Mux7~38_combout\ & (((\pc|aBus[1]~7_combout\ & \mem|ram[62][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux7~38_combout\,
	datab => \mem|ram[63][0]~combout\,
	datac => \pc|aBus[1]~7_combout\,
	datad => \mem|ram[62][0]~combout\,
	combout => \mem|Mux7~39_combout\);

-- Location: LCCOMB_X22_Y13_N10
\mem|ram[51][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[51][0]~combout\ = (\mem|ram[51][0]~55_combout\ & ((\ir|dBus[0]~26_combout\))) # (!\mem|ram[51][0]~55_combout\ & (\mem|ram[51][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[51][0]~combout\,
	datac => \ir|dBus[0]~26_combout\,
	datad => \mem|ram[51][0]~55_combout\,
	combout => \mem|ram[51][0]~combout\);

-- Location: LCCOMB_X19_Y13_N8
\mem|ram[50][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[50][0]~combout\ = (\mem|ram[50][0]~52_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[50][0]~52_combout\ & ((\mem|ram[50][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[0]~26_combout\,
	datac => \mem|ram[50][0]~combout\,
	datad => \mem|ram[50][0]~52_combout\,
	combout => \mem|ram[50][0]~combout\);

-- Location: LCCOMB_X12_Y14_N2
\mem|ram[48][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[48][0]~combout\ = (\mem|ram[48][0]~54_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[48][0]~54_combout\ & ((\mem|ram[48][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[48][0]~54_combout\,
	datac => \ir|dBus[0]~26_combout\,
	datad => \mem|ram[48][0]~combout\,
	combout => \mem|ram[48][0]~combout\);

-- Location: LCCOMB_X12_Y14_N20
\mem|ram[49][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[49][0]~combout\ = (\mem|ram[49][0]~53_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[49][0]~53_combout\ & ((\mem|ram[49][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[49][0]~53_combout\,
	datac => \ir|dBus[0]~26_combout\,
	datad => \mem|ram[49][0]~combout\,
	combout => \mem|ram[49][0]~combout\);

-- Location: LCCOMB_X12_Y14_N30
\mem|Mux7~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~35_combout\ = (\pc|aBus[1]~7_combout\ & (((\pc|aBus[0]~6_combout\)))) # (!\pc|aBus[1]~7_combout\ & ((\pc|aBus[0]~6_combout\ & ((\mem|ram[49][0]~combout\))) # (!\pc|aBus[0]~6_combout\ & (\mem|ram[48][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[48][0]~combout\,
	datab => \mem|ram[49][0]~combout\,
	datac => \pc|aBus[1]~7_combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Mux7~35_combout\);

-- Location: LCCOMB_X19_Y13_N30
\mem|Mux7~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~36_combout\ = (\pc|aBus[1]~7_combout\ & ((\mem|Mux7~35_combout\ & (\mem|ram[51][0]~combout\)) # (!\mem|Mux7~35_combout\ & ((\mem|ram[50][0]~combout\))))) # (!\pc|aBus[1]~7_combout\ & (((\mem|Mux7~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[51][0]~combout\,
	datab => \pc|aBus[1]~7_combout\,
	datac => \mem|ram[50][0]~combout\,
	datad => \mem|Mux7~35_combout\,
	combout => \mem|Mux7~36_combout\);

-- Location: LCCOMB_X14_Y13_N16
\mem|ram[55][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[55][0]~combout\ = (\mem|ram[55][0]~51_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[55][0]~51_combout\ & ((\mem|ram[55][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[0]~26_combout\,
	datac => \mem|ram[55][0]~51_combout\,
	datad => \mem|ram[55][0]~combout\,
	combout => \mem|ram[55][0]~combout\);

-- Location: LCCOMB_X14_Y13_N4
\mem|ram[54][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[54][0]~combout\ = (\mem|ram[54][0]~48_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[54][0]~48_combout\ & ((\mem|ram[54][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[0]~26_combout\,
	datac => \mem|ram[54][0]~combout\,
	datad => \mem|ram[54][0]~48_combout\,
	combout => \mem|ram[54][0]~combout\);

-- Location: LCCOMB_X14_Y13_N22
\mem|ram[53][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[53][0]~combout\ = (\mem|ram[53][0]~49_combout\ & ((\ir|dBus[0]~26_combout\))) # (!\mem|ram[53][0]~49_combout\ & (\mem|ram[53][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[53][0]~combout\,
	datac => \ir|dBus[0]~26_combout\,
	datad => \mem|ram[53][0]~49_combout\,
	combout => \mem|ram[53][0]~combout\);

-- Location: LCCOMB_X14_Y13_N6
\mem|ram[52][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[52][0]~combout\ = (\mem|ram[52][0]~50_combout\ & ((\ir|dBus[0]~26_combout\))) # (!\mem|ram[52][0]~50_combout\ & (\mem|ram[52][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[52][0]~combout\,
	datac => \ir|dBus[0]~26_combout\,
	datad => \mem|ram[52][0]~50_combout\,
	combout => \mem|ram[52][0]~combout\);

-- Location: LCCOMB_X14_Y13_N24
\mem|Mux7~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~33_combout\ = (\pc|aBus[1]~7_combout\ & (((\pc|aBus[0]~6_combout\)))) # (!\pc|aBus[1]~7_combout\ & ((\pc|aBus[0]~6_combout\ & (\mem|ram[53][0]~combout\)) # (!\pc|aBus[0]~6_combout\ & ((\mem|ram[52][0]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[53][0]~combout\,
	datab => \mem|ram[52][0]~combout\,
	datac => \pc|aBus[1]~7_combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Mux7~33_combout\);

-- Location: LCCOMB_X14_Y13_N12
\mem|Mux7~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~34_combout\ = (\pc|aBus[1]~7_combout\ & ((\mem|Mux7~33_combout\ & (\mem|ram[55][0]~combout\)) # (!\mem|Mux7~33_combout\ & ((\mem|ram[54][0]~combout\))))) # (!\pc|aBus[1]~7_combout\ & (((\mem|Mux7~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \mem|ram[55][0]~combout\,
	datac => \mem|ram[54][0]~combout\,
	datad => \mem|Mux7~33_combout\,
	combout => \mem|Mux7~34_combout\);

-- Location: LCCOMB_X19_Y13_N24
\mem|Mux7~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~37_combout\ = (\pc|aBus[2]~8_combout\ & ((\pc|aBus[3]~9_combout\) # ((\mem|Mux7~34_combout\)))) # (!\pc|aBus[2]~8_combout\ & (!\pc|aBus[3]~9_combout\ & (\mem|Mux7~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \pc|aBus[3]~9_combout\,
	datac => \mem|Mux7~36_combout\,
	datad => \mem|Mux7~34_combout\,
	combout => \mem|Mux7~37_combout\);

-- Location: LCCOMB_X19_Y13_N4
\mem|Mux7~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~40_combout\ = (\pc|aBus[3]~9_combout\ & ((\mem|Mux7~37_combout\ & ((\mem|Mux7~39_combout\))) # (!\mem|Mux7~37_combout\ & (\mem|Mux7~32_combout\)))) # (!\pc|aBus[3]~9_combout\ & (((\mem|Mux7~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux7~32_combout\,
	datab => \pc|aBus[3]~9_combout\,
	datac => \mem|Mux7~39_combout\,
	datad => \mem|Mux7~37_combout\,
	combout => \mem|Mux7~40_combout\);

-- Location: LCCOMB_X17_Y16_N2
\mem|ram[45][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[45][0]~combout\ = (\mem|ram[45][0]~4_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[45][0]~4_combout\ & ((\mem|ram[45][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[0]~26_combout\,
	datac => \mem|ram[45][0]~4_combout\,
	datad => \mem|ram[45][0]~combout\,
	combout => \mem|ram[45][0]~combout\);

-- Location: LCCOMB_X16_Y13_N2
\mem|ram[41][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[41][0]~combout\ = (\mem|ram[41][0]~1_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[41][0]~1_combout\ & ((\mem|ram[41][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[0]~26_combout\,
	datac => \mem|ram[41][0]~combout\,
	datad => \mem|ram[41][0]~1_combout\,
	combout => \mem|ram[41][0]~combout\);

-- Location: LCCOMB_X16_Y15_N12
\mem|ram[44][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[44][0]~combout\ = (\mem|ram[44][0]~2_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[44][0]~2_combout\ & ((\mem|ram[44][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[44][0]~2_combout\,
	datac => \ir|dBus[0]~26_combout\,
	datad => \mem|ram[44][0]~combout\,
	combout => \mem|ram[44][0]~combout\);

-- Location: LCCOMB_X16_Y15_N24
\mem|ram[40][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[40][0]~combout\ = (\mem|ram[40][0]~3_combout\ & ((\ir|dBus[0]~26_combout\))) # (!\mem|ram[40][0]~3_combout\ & (\mem|ram[40][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[40][0]~combout\,
	datac => \ir|dBus[0]~26_combout\,
	datad => \mem|ram[40][0]~3_combout\,
	combout => \mem|ram[40][0]~combout\);

-- Location: LCCOMB_X16_Y15_N26
\mem|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~0_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|ram[44][0]~combout\) # ((\pc|aBus[0]~6_combout\)))) # (!\pc|aBus[2]~8_combout\ & (((\mem|ram[40][0]~combout\ & !\pc|aBus[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[44][0]~combout\,
	datab => \mem|ram[40][0]~combout\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Mux7~0_combout\);

-- Location: LCCOMB_X16_Y13_N8
\mem|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~1_combout\ = (\mem|Mux7~0_combout\ & ((\mem|ram[45][0]~combout\) # ((!\pc|aBus[0]~6_combout\)))) # (!\mem|Mux7~0_combout\ & (((\mem|ram[41][0]~combout\ & \pc|aBus[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[45][0]~combout\,
	datab => \mem|ram[41][0]~combout\,
	datac => \mem|Mux7~0_combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Mux7~1_combout\);

-- Location: LCCOMB_X16_Y17_N14
\mem|ram[46][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[46][0]~combout\ = (\mem|ram[46][0]~14_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[46][0]~14_combout\ & ((\mem|ram[46][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[0]~26_combout\,
	datac => \mem|ram[46][0]~combout\,
	datad => \mem|ram[46][0]~14_combout\,
	combout => \mem|ram[46][0]~combout\);

-- Location: LCCOMB_X22_Y13_N26
\mem|ram[47][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[47][0]~combout\ = (\mem|ram[47][0]~17_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[47][0]~17_combout\ & ((\mem|ram[47][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[0]~26_combout\,
	datac => \mem|ram[47][0]~combout\,
	datad => \mem|ram[47][0]~17_combout\,
	combout => \mem|ram[47][0]~combout\);

-- Location: LCCOMB_X16_Y16_N26
\mem|ram[42][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[42][0]~combout\ = (\mem|ram[42][0]~16_combout\ & ((\ir|dBus[0]~26_combout\))) # (!\mem|ram[42][0]~16_combout\ & (\mem|ram[42][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[42][0]~combout\,
	datac => \ir|dBus[0]~26_combout\,
	datad => \mem|ram[42][0]~16_combout\,
	combout => \mem|ram[42][0]~combout\);

-- Location: LCCOMB_X17_Y17_N28
\mem|ram[43][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[43][0]~combout\ = (\mem|ram[43][0]~15_combout\ & ((\ir|dBus[0]~26_combout\))) # (!\mem|ram[43][0]~15_combout\ & (\mem|ram[43][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[43][0]~combout\,
	datac => \ir|dBus[0]~26_combout\,
	datad => \mem|ram[43][0]~15_combout\,
	combout => \mem|ram[43][0]~combout\);

-- Location: LCCOMB_X16_Y17_N0
\mem|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~7_combout\ = (\pc|aBus[2]~8_combout\ & (((\pc|aBus[0]~6_combout\)))) # (!\pc|aBus[2]~8_combout\ & ((\pc|aBus[0]~6_combout\ & ((\mem|ram[43][0]~combout\))) # (!\pc|aBus[0]~6_combout\ & (\mem|ram[42][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \mem|ram[42][0]~combout\,
	datac => \pc|aBus[0]~6_combout\,
	datad => \mem|ram[43][0]~combout\,
	combout => \mem|Mux7~7_combout\);

-- Location: LCCOMB_X16_Y17_N2
\mem|Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~8_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|Mux7~7_combout\ & ((\mem|ram[47][0]~combout\))) # (!\mem|Mux7~7_combout\ & (\mem|ram[46][0]~combout\)))) # (!\pc|aBus[2]~8_combout\ & (((\mem|Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \mem|ram[46][0]~combout\,
	datac => \mem|ram[47][0]~combout\,
	datad => \mem|Mux7~7_combout\,
	combout => \mem|Mux7~8_combout\);

-- Location: LCCOMB_X16_Y13_N28
\mem|ram[38][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[38][0]~combout\ = (\mem|ram[38][0]~6_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[38][0]~6_combout\ & ((\mem|ram[38][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[0]~26_combout\,
	datab => \mem|ram[38][0]~combout\,
	datad => \mem|ram[38][0]~6_combout\,
	combout => \mem|ram[38][0]~combout\);

-- Location: LCCOMB_X16_Y13_N24
\mem|ram[34][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[34][0]~combout\ = (\mem|ram[34][0]~8_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[34][0]~8_combout\ & ((\mem|ram[34][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[0]~26_combout\,
	datab => \mem|ram[34][0]~combout\,
	datad => \mem|ram[34][0]~8_combout\,
	combout => \mem|ram[34][0]~combout\);

-- Location: LCCOMB_X16_Y13_N14
\mem|ram[35][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[35][0]~combout\ = (\mem|ram[35][0]~7_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[35][0]~7_combout\ & ((\mem|ram[35][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[0]~26_combout\,
	datac => \mem|ram[35][0]~combout\,
	datad => \mem|ram[35][0]~7_combout\,
	combout => \mem|ram[35][0]~combout\);

-- Location: LCCOMB_X16_Y13_N26
\mem|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~2_combout\ = (\pc|aBus[2]~8_combout\ & (((\pc|aBus[0]~6_combout\)))) # (!\pc|aBus[2]~8_combout\ & ((\pc|aBus[0]~6_combout\ & ((\mem|ram[35][0]~combout\))) # (!\pc|aBus[0]~6_combout\ & (\mem|ram[34][0]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \mem|ram[34][0]~combout\,
	datac => \mem|ram[35][0]~combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Mux7~2_combout\);

-- Location: LCCOMB_X19_Y13_N22
\mem|ram[39][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[39][0]~combout\ = (\mem|ram[39][0]~9_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[39][0]~9_combout\ & ((\mem|ram[39][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[0]~26_combout\,
	datab => \mem|ram[39][0]~combout\,
	datad => \mem|ram[39][0]~9_combout\,
	combout => \mem|ram[39][0]~combout\);

-- Location: LCCOMB_X16_Y13_N4
\mem|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~3_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|Mux7~2_combout\ & ((\mem|ram[39][0]~combout\))) # (!\mem|Mux7~2_combout\ & (\mem|ram[38][0]~combout\)))) # (!\pc|aBus[2]~8_combout\ & (((\mem|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \mem|ram[38][0]~combout\,
	datac => \mem|Mux7~2_combout\,
	datad => \mem|ram[39][0]~combout\,
	combout => \mem|Mux7~3_combout\);

-- Location: LCCOMB_X19_Y17_N26
\mem|ram[37][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[37][0]~combout\ = (\mem|ram[37][0]~13_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[37][0]~13_combout\ & ((\mem|ram[37][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[0]~26_combout\,
	datac => \mem|ram[37][0]~combout\,
	datad => \mem|ram[37][0]~13_combout\,
	combout => \mem|ram[37][0]~combout\);

-- Location: LCCOMB_X19_Y17_N4
\mem|ram[33][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[33][0]~combout\ = (\mem|ram[33][0]~10_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[33][0]~10_combout\ & ((\mem|ram[33][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[0]~26_combout\,
	datac => \mem|ram[33][0]~combout\,
	datad => \mem|ram[33][0]~10_combout\,
	combout => \mem|ram[33][0]~combout\);

-- Location: LCCOMB_X19_Y17_N22
\mem|ram[36][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[36][0]~combout\ = (\mem|ram[36][0]~11_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[36][0]~11_combout\ & ((\mem|ram[36][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[0]~26_combout\,
	datac => \mem|ram[36][0]~combout\,
	datad => \mem|ram[36][0]~11_combout\,
	combout => \mem|ram[36][0]~combout\);

-- Location: LCCOMB_X19_Y17_N16
\mem|ram[32][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[32][0]~combout\ = (\mem|ram[32][0]~12_combout\ & (\ir|dBus[0]~26_combout\)) # (!\mem|ram[32][0]~12_combout\ & ((\mem|ram[32][0]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[0]~26_combout\,
	datac => \mem|ram[32][0]~combout\,
	datad => \mem|ram[32][0]~12_combout\,
	combout => \mem|ram[32][0]~combout\);

-- Location: LCCOMB_X19_Y17_N0
\mem|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~4_combout\ = (\pc|aBus[0]~6_combout\ & (\pc|aBus[2]~8_combout\)) # (!\pc|aBus[0]~6_combout\ & ((\pc|aBus[2]~8_combout\ & (\mem|ram[36][0]~combout\)) # (!\pc|aBus[2]~8_combout\ & ((\mem|ram[32][0]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[0]~6_combout\,
	datab => \pc|aBus[2]~8_combout\,
	datac => \mem|ram[36][0]~combout\,
	datad => \mem|ram[32][0]~combout\,
	combout => \mem|Mux7~4_combout\);

-- Location: LCCOMB_X19_Y17_N6
\mem|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~5_combout\ = (\pc|aBus[0]~6_combout\ & ((\mem|Mux7~4_combout\ & (\mem|ram[37][0]~combout\)) # (!\mem|Mux7~4_combout\ & ((\mem|ram[33][0]~combout\))))) # (!\pc|aBus[0]~6_combout\ & (((\mem|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[37][0]~combout\,
	datab => \pc|aBus[0]~6_combout\,
	datac => \mem|ram[33][0]~combout\,
	datad => \mem|Mux7~4_combout\,
	combout => \mem|Mux7~5_combout\);

-- Location: LCCOMB_X16_Y13_N18
\mem|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~6_combout\ = (\pc|aBus[3]~9_combout\ & (\pc|aBus[1]~7_combout\)) # (!\pc|aBus[3]~9_combout\ & ((\pc|aBus[1]~7_combout\ & (\mem|Mux7~3_combout\)) # (!\pc|aBus[1]~7_combout\ & ((\mem|Mux7~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[3]~9_combout\,
	datab => \pc|aBus[1]~7_combout\,
	datac => \mem|Mux7~3_combout\,
	datad => \mem|Mux7~5_combout\,
	combout => \mem|Mux7~6_combout\);

-- Location: LCCOMB_X16_Y13_N20
\mem|Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~9_combout\ = (\pc|aBus[3]~9_combout\ & ((\mem|Mux7~6_combout\ & ((\mem|Mux7~8_combout\))) # (!\mem|Mux7~6_combout\ & (\mem|Mux7~1_combout\)))) # (!\pc|aBus[3]~9_combout\ & (((\mem|Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[3]~9_combout\,
	datab => \mem|Mux7~1_combout\,
	datac => \mem|Mux7~8_combout\,
	datad => \mem|Mux7~6_combout\,
	combout => \mem|Mux7~9_combout\);

-- Location: LCCOMB_X19_Y13_N6
\mem|Mux7~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux7~41_combout\ = (\mem|Mux7~30_combout\ & (((\mem|Mux7~40_combout\)) # (!\ir|aBus[5]~5_combout\))) # (!\mem|Mux7~30_combout\ & (\ir|aBus[5]~5_combout\ & ((\mem|Mux7~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux7~30_combout\,
	datab => \ir|aBus[5]~5_combout\,
	datac => \mem|Mux7~40_combout\,
	datad => \mem|Mux7~9_combout\,
	combout => \mem|Mux7~41_combout\);

-- Location: LCCOMB_X19_Y13_N0
\ir|dBus[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[0]~26_combout\ = ((\ir|dBus[0]~8_combout\ & ((\mem|Mux7~41_combout\) # (!\mem|dBus~0_combout\)))) # (!\ir|dBus[0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[0]~8_combout\,
	datab => \mem|dBus~0_combout\,
	datac => \ir|dBus[0]~11_combout\,
	datad => \mem|Mux7~41_combout\,
	combout => \ir|dBus[0]~26_combout\);

-- Location: FF_X17_Y11_N5
\pc|pcReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pc|Add0~0_combout\,
	asdata => \ir|dBus[0]~26_combout\,
	sclr => \reset~input_o\,
	sload => \ctl|state.branch0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pcReg\(0));

-- Location: LCCOMB_X17_Y11_N6
\pc|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|Add0~2_combout\ = (\pc|pcReg\(1) & (!\pc|Add0~1\)) # (!\pc|pcReg\(1) & ((\pc|Add0~1\) # (GND)))
-- \pc|Add0~3\ = CARRY((!\pc|Add0~1\) # (!\pc|pcReg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pcReg\(1),
	datad => VCC,
	cin => \pc|Add0~1\,
	combout => \pc|Add0~2_combout\,
	cout => \pc|Add0~3\);

-- Location: FF_X17_Y11_N7
\pc|pcReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pc|Add0~2_combout\,
	asdata => \aluu|Mult0|auto_generated|le3a[5]~_wirecell_combout\,
	sclr => \reset~input_o\,
	sload => \ctl|state.branch0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pcReg\(1));

-- Location: LCCOMB_X17_Y11_N8
\pc|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|Add0~4_combout\ = (\pc|pcReg\(2) & (\pc|Add0~3\ $ (GND))) # (!\pc|pcReg\(2) & (!\pc|Add0~3\ & VCC))
-- \pc|Add0~5\ = CARRY((\pc|pcReg\(2) & !\pc|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc|pcReg\(2),
	datad => VCC,
	cin => \pc|Add0~3\,
	combout => \pc|Add0~4_combout\,
	cout => \pc|Add0~5\);

-- Location: FF_X17_Y11_N9
\pc|pcReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pc|Add0~4_combout\,
	asdata => \ir|dBus[2]~28_combout\,
	sclr => \reset~input_o\,
	sload => \ctl|state.branch0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pcReg\(2));

-- Location: LCCOMB_X17_Y11_N10
\pc|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|Add0~6_combout\ = (\pc|pcReg\(3) & (!\pc|Add0~5\)) # (!\pc|pcReg\(3) & ((\pc|Add0~5\) # (GND)))
-- \pc|Add0~7\ = CARRY((!\pc|Add0~5\) # (!\pc|pcReg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc|pcReg\(3),
	datad => VCC,
	cin => \pc|Add0~5\,
	combout => \pc|Add0~6_combout\,
	cout => \pc|Add0~7\);

-- Location: FF_X17_Y11_N11
\pc|pcReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pc|Add0~6_combout\,
	asdata => \ir|dBus[3]~29_combout\,
	sclr => \reset~input_o\,
	sload => \ctl|state.branch0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pcReg\(3));

-- Location: FF_X17_Y11_N13
\pc|pcReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \pc|Add0~8_combout\,
	asdata => \ir|dBus[4]~30_combout\,
	sclr => \reset~input_o\,
	sload => \ctl|state.branch0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pcReg\(4));

-- Location: LCCOMB_X18_Y14_N24
\ir|aBus[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|aBus[4]~4_combout\ = (\ctl|pc_enA~0_combout\ & (((!\ctl|ir_enA~1_combout\)) # (!\ctl|ir_enA~0_combout\))) # (!\ctl|pc_enA~0_combout\ & (((\pc|pcReg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|pc_enA~0_combout\,
	datab => \ctl|ir_enA~0_combout\,
	datac => \pc|pcReg\(4),
	datad => \ctl|ir_enA~1_combout\,
	combout => \ir|aBus[4]~4_combout\);

-- Location: LCCOMB_X13_Y14_N0
\mem|ram[62][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[62][1]~combout\ = (\mem|ram[62][0]~56_combout\ & ((!\aluu|Mult0|auto_generated|le3a\(5)))) # (!\mem|ram[62][0]~56_combout\ & (\mem|ram[62][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[62][1]~combout\,
	datac => \aluu|Mult0|auto_generated|le3a\(5),
	datad => \mem|ram[62][0]~56_combout\,
	combout => \mem|ram[62][1]~combout\);

-- Location: LCCOMB_X13_Y14_N28
\mem|ram[56][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[56][1]~combout\ = (\mem|ram[56][0]~46_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5))) # (!\mem|ram[56][0]~46_combout\ & ((\mem|ram[56][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|le3a\(5),
	datab => \mem|ram[56][1]~combout\,
	datad => \mem|ram[56][0]~46_combout\,
	combout => \mem|ram[56][1]~combout\);

-- Location: LCCOMB_X13_Y14_N4
\mem|ram[58][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[58][1]~combout\ = (\mem|ram[58][0]~45_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5))) # (!\mem|ram[58][0]~45_combout\ & ((\mem|ram[58][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|le3a\(5),
	datac => \mem|ram[58][1]~combout\,
	datad => \mem|ram[58][0]~45_combout\,
	combout => \mem|ram[58][1]~combout\);

-- Location: LCCOMB_X13_Y14_N18
\mem|Mux6~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~31_combout\ = (\pc|aBus[2]~8_combout\ & (((\pc|aBus[1]~7_combout\)))) # (!\pc|aBus[2]~8_combout\ & ((\pc|aBus[1]~7_combout\ & ((\mem|ram[58][1]~combout\))) # (!\pc|aBus[1]~7_combout\ & (\mem|ram[56][1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[56][1]~combout\,
	datab => \mem|ram[58][1]~combout\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \pc|aBus[1]~7_combout\,
	combout => \mem|Mux6~31_combout\);

-- Location: LCCOMB_X13_Y14_N6
\mem|ram[60][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[60][1]~combout\ = (\mem|ram[60][0]~58_combout\ & ((!\aluu|Mult0|auto_generated|le3a\(5)))) # (!\mem|ram[60][0]~58_combout\ & (\mem|ram[60][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[60][1]~combout\,
	datab => \aluu|Mult0|auto_generated|le3a\(5),
	datad => \mem|ram[60][0]~58_combout\,
	combout => \mem|ram[60][1]~combout\);

-- Location: LCCOMB_X13_Y14_N24
\mem|Mux6~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~32_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|Mux6~31_combout\ & (\mem|ram[62][1]~combout\)) # (!\mem|Mux6~31_combout\ & ((\mem|ram[60][1]~combout\))))) # (!\pc|aBus[2]~8_combout\ & (((\mem|Mux6~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \mem|ram[62][1]~combout\,
	datac => \mem|Mux6~31_combout\,
	datad => \mem|ram[60][1]~combout\,
	combout => \mem|Mux6~32_combout\);

-- Location: LCCOMB_X16_Y14_N30
\mem|ram[41][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[41][1]~combout\ = (\mem|ram[41][0]~1_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5))) # (!\mem|ram[41][0]~1_combout\ & ((\mem|ram[41][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|le3a\(5),
	datac => \mem|ram[41][0]~1_combout\,
	datad => \mem|ram[41][1]~combout\,
	combout => \mem|ram[41][1]~combout\);

-- Location: LCCOMB_X16_Y14_N24
\mem|ram[43][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[43][1]~combout\ = (\mem|ram[43][0]~15_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5))) # (!\mem|ram[43][0]~15_combout\ & ((\mem|ram[43][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|le3a\(5),
	datac => \mem|ram[43][0]~15_combout\,
	datad => \mem|ram[43][1]~combout\,
	combout => \mem|ram[43][1]~combout\);

-- Location: LCCOMB_X16_Y14_N6
\mem|Mux6~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~33_combout\ = (\pc|aBus[1]~7_combout\ & ((\pc|aBus[2]~8_combout\) # ((\mem|ram[43][1]~combout\)))) # (!\pc|aBus[1]~7_combout\ & (!\pc|aBus[2]~8_combout\ & (\mem|ram[41][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \pc|aBus[2]~8_combout\,
	datac => \mem|ram[41][1]~combout\,
	datad => \mem|ram[43][1]~combout\,
	combout => \mem|Mux6~33_combout\);

-- Location: LCCOMB_X16_Y14_N8
\mem|ram[45][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[45][1]~combout\ = (\mem|ram[45][0]~4_combout\ & ((!\aluu|Mult0|auto_generated|le3a\(5)))) # (!\mem|ram[45][0]~4_combout\ & (\mem|ram[45][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[45][1]~combout\,
	datac => \mem|ram[45][0]~4_combout\,
	datad => \aluu|Mult0|auto_generated|le3a\(5),
	combout => \mem|ram[45][1]~combout\);

-- Location: LCCOMB_X16_Y14_N10
\mem|ram[47][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[47][1]~combout\ = (\mem|ram[47][0]~17_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5))) # (!\mem|ram[47][0]~17_combout\ & ((\mem|ram[47][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluu|Mult0|auto_generated|le3a\(5),
	datac => \mem|ram[47][0]~17_combout\,
	datad => \mem|ram[47][1]~combout\,
	combout => \mem|ram[47][1]~combout\);

-- Location: LCCOMB_X16_Y14_N18
\mem|Mux6~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~34_combout\ = (\mem|Mux6~33_combout\ & (((\mem|ram[47][1]~combout\) # (!\pc|aBus[2]~8_combout\)))) # (!\mem|Mux6~33_combout\ & (\mem|ram[45][1]~combout\ & (\pc|aBus[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux6~33_combout\,
	datab => \mem|ram[45][1]~combout\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \mem|ram[47][1]~combout\,
	combout => \mem|Mux6~34_combout\);

-- Location: LCCOMB_X17_Y17_N18
\mem|ram[46][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[46][1]~combout\ = (\mem|ram[46][0]~14_combout\ & ((!\aluu|Mult0|auto_generated|le3a\(5)))) # (!\mem|ram[46][0]~14_combout\ & (\mem|ram[46][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[46][1]~combout\,
	datac => \aluu|Mult0|auto_generated|le3a\(5),
	datad => \mem|ram[46][0]~14_combout\,
	combout => \mem|ram[46][1]~combout\);

-- Location: LCCOMB_X17_Y17_N4
\mem|ram[44][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[44][1]~combout\ = (\mem|ram[44][0]~2_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5))) # (!\mem|ram[44][0]~2_combout\ & ((\mem|ram[44][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluu|Mult0|auto_generated|le3a\(5),
	datac => \mem|ram[44][1]~combout\,
	datad => \mem|ram[44][0]~2_combout\,
	combout => \mem|ram[44][1]~combout\);

-- Location: LCCOMB_X17_Y17_N8
\mem|ram[40][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[40][1]~combout\ = (\mem|ram[40][0]~3_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5))) # (!\mem|ram[40][0]~3_combout\ & ((\mem|ram[40][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluu|Mult0|auto_generated|le3a\(5),
	datac => \mem|ram[40][0]~3_combout\,
	datad => \mem|ram[40][1]~combout\,
	combout => \mem|ram[40][1]~combout\);

-- Location: LCCOMB_X17_Y17_N24
\mem|ram[42][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[42][1]~combout\ = (\mem|ram[42][0]~16_combout\ & ((!\aluu|Mult0|auto_generated|le3a\(5)))) # (!\mem|ram[42][0]~16_combout\ & (\mem|ram[42][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[42][1]~combout\,
	datac => \aluu|Mult0|auto_generated|le3a\(5),
	datad => \mem|ram[42][0]~16_combout\,
	combout => \mem|ram[42][1]~combout\);

-- Location: LCCOMB_X17_Y17_N16
\mem|Mux6~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~35_combout\ = (\pc|aBus[1]~7_combout\ & (((\pc|aBus[2]~8_combout\) # (\mem|ram[42][1]~combout\)))) # (!\pc|aBus[1]~7_combout\ & (\mem|ram[40][1]~combout\ & (!\pc|aBus[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[40][1]~combout\,
	datab => \pc|aBus[1]~7_combout\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \mem|ram[42][1]~combout\,
	combout => \mem|Mux6~35_combout\);

-- Location: LCCOMB_X17_Y17_N20
\mem|Mux6~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~36_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|Mux6~35_combout\ & (\mem|ram[46][1]~combout\)) # (!\mem|Mux6~35_combout\ & ((\mem|ram[44][1]~combout\))))) # (!\pc|aBus[2]~8_combout\ & (((\mem|Mux6~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \mem|ram[46][1]~combout\,
	datac => \mem|ram[44][1]~combout\,
	datad => \mem|Mux6~35_combout\,
	combout => \mem|Mux6~36_combout\);

-- Location: LCCOMB_X17_Y14_N26
\mem|Mux6~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~37_combout\ = (\ir|aBus[4]~4_combout\ & (((\pc|aBus[0]~6_combout\)))) # (!\ir|aBus[4]~4_combout\ & ((\pc|aBus[0]~6_combout\ & (\mem|Mux6~34_combout\)) # (!\pc|aBus[0]~6_combout\ & ((\mem|Mux6~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[4]~4_combout\,
	datab => \mem|Mux6~34_combout\,
	datac => \pc|aBus[0]~6_combout\,
	datad => \mem|Mux6~36_combout\,
	combout => \mem|Mux6~37_combout\);

-- Location: LCCOMB_X13_Y14_N10
\mem|ram[63][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[63][1]~combout\ = (\mem|ram[63][1]~59_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5))) # (!\mem|ram[63][1]~59_combout\ & ((\mem|ram[63][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluu|Mult0|auto_generated|le3a\(5),
	datac => \mem|ram[63][1]~combout\,
	datad => \mem|ram[63][1]~59_combout\,
	combout => \mem|ram[63][1]~combout\);

-- Location: LCCOMB_X13_Y14_N8
\mem|ram[61][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[61][1]~combout\ = (\mem|ram[61][0]~57_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5))) # (!\mem|ram[61][0]~57_combout\ & ((\mem|ram[61][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|le3a\(5),
	datab => \mem|ram[61][1]~combout\,
	datad => \mem|ram[61][0]~57_combout\,
	combout => \mem|ram[61][1]~combout\);

-- Location: LCCOMB_X13_Y14_N2
\mem|ram[59][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[59][1]~combout\ = (\mem|ram[59][0]~47_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5))) # (!\mem|ram[59][0]~47_combout\ & ((\mem|ram[59][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|le3a\(5),
	datac => \mem|ram[59][0]~47_combout\,
	datad => \mem|ram[59][1]~combout\,
	combout => \mem|ram[59][1]~combout\);

-- Location: LCCOMB_X13_Y14_N20
\mem|ram[57][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[57][1]~combout\ = (\mem|ram[57][0]~44_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5))) # (!\mem|ram[57][0]~44_combout\ & ((\mem|ram[57][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluu|Mult0|auto_generated|le3a\(5),
	datac => \mem|ram[57][0]~44_combout\,
	datad => \mem|ram[57][1]~combout\,
	combout => \mem|ram[57][1]~combout\);

-- Location: LCCOMB_X13_Y14_N16
\mem|Mux6~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~38_combout\ = (\pc|aBus[1]~7_combout\ & ((\mem|ram[59][1]~combout\) # ((\pc|aBus[2]~8_combout\)))) # (!\pc|aBus[1]~7_combout\ & (((!\pc|aBus[2]~8_combout\ & \mem|ram[57][1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \mem|ram[59][1]~combout\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \mem|ram[57][1]~combout\,
	combout => \mem|Mux6~38_combout\);

-- Location: LCCOMB_X13_Y14_N22
\mem|Mux6~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~39_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|Mux6~38_combout\ & (\mem|ram[63][1]~combout\)) # (!\mem|Mux6~38_combout\ & ((\mem|ram[61][1]~combout\))))) # (!\pc|aBus[2]~8_combout\ & (((\mem|Mux6~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[63][1]~combout\,
	datab => \mem|ram[61][1]~combout\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \mem|Mux6~38_combout\,
	combout => \mem|Mux6~39_combout\);

-- Location: LCCOMB_X17_Y14_N10
\mem|Mux6~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~40_combout\ = (\ir|aBus[4]~4_combout\ & ((\mem|Mux6~37_combout\ & ((\mem|Mux6~39_combout\))) # (!\mem|Mux6~37_combout\ & (\mem|Mux6~32_combout\)))) # (!\ir|aBus[4]~4_combout\ & (((\mem|Mux6~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[4]~4_combout\,
	datab => \mem|Mux6~32_combout\,
	datac => \mem|Mux6~37_combout\,
	datad => \mem|Mux6~39_combout\,
	combout => \mem|Mux6~40_combout\);

-- Location: LCCOMB_X10_Y14_N12
\mem|ram[53][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[53][1]~combout\ = (\mem|ram[53][0]~49_combout\ & ((!\aluu|Mult0|auto_generated|le3a\(5)))) # (!\mem|ram[53][0]~49_combout\ & (\mem|ram[53][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[53][1]~combout\,
	datac => \mem|ram[53][0]~49_combout\,
	datad => \aluu|Mult0|auto_generated|le3a\(5),
	combout => \mem|ram[53][1]~combout\);

-- Location: LCCOMB_X12_Y14_N4
\mem|ram[49][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[49][1]~combout\ = (\mem|ram[49][0]~53_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5))) # (!\mem|ram[49][0]~53_combout\ & ((\mem|ram[49][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluu|Mult0|auto_generated|le3a\(5),
	datac => \mem|ram[49][1]~combout\,
	datad => \mem|ram[49][0]~53_combout\,
	combout => \mem|ram[49][1]~combout\);

-- Location: LCCOMB_X10_Y14_N14
\mem|ram[48][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[48][1]~combout\ = (\mem|ram[48][0]~54_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5))) # (!\mem|ram[48][0]~54_combout\ & ((\mem|ram[48][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluu|Mult0|auto_generated|le3a\(5),
	datac => \mem|ram[48][1]~combout\,
	datad => \mem|ram[48][0]~54_combout\,
	combout => \mem|ram[48][1]~combout\);

-- Location: LCCOMB_X10_Y14_N4
\mem|ram[52][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[52][1]~combout\ = (\mem|ram[52][0]~50_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5))) # (!\mem|ram[52][0]~50_combout\ & ((\mem|ram[52][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluu|Mult0|auto_generated|le3a\(5),
	datac => \mem|ram[52][1]~combout\,
	datad => \mem|ram[52][0]~50_combout\,
	combout => \mem|ram[52][1]~combout\);

-- Location: LCCOMB_X10_Y14_N16
\mem|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~0_combout\ = (\pc|aBus[2]~8_combout\ & (((\pc|aBus[0]~6_combout\) # (\mem|ram[52][1]~combout\)))) # (!\pc|aBus[2]~8_combout\ & (\mem|ram[48][1]~combout\ & (!\pc|aBus[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \mem|ram[48][1]~combout\,
	datac => \pc|aBus[0]~6_combout\,
	datad => \mem|ram[52][1]~combout\,
	combout => \mem|Mux6~0_combout\);

-- Location: LCCOMB_X10_Y14_N10
\mem|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~1_combout\ = (\pc|aBus[0]~6_combout\ & ((\mem|Mux6~0_combout\ & (\mem|ram[53][1]~combout\)) # (!\mem|Mux6~0_combout\ & ((\mem|ram[49][1]~combout\))))) # (!\pc|aBus[0]~6_combout\ & (((\mem|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[53][1]~combout\,
	datab => \mem|ram[49][1]~combout\,
	datac => \pc|aBus[0]~6_combout\,
	datad => \mem|Mux6~0_combout\,
	combout => \mem|Mux6~1_combout\);

-- Location: LCCOMB_X12_Y14_N10
\mem|ram[55][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[55][1]~combout\ = (\mem|ram[55][0]~51_combout\ & ((!\aluu|Mult0|auto_generated|le3a\(5)))) # (!\mem|ram[55][0]~51_combout\ & (\mem|ram[55][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[55][1]~combout\,
	datab => \aluu|Mult0|auto_generated|le3a\(5),
	datad => \mem|ram[55][0]~51_combout\,
	combout => \mem|ram[55][1]~combout\);

-- Location: LCCOMB_X10_Y14_N30
\mem|ram[51][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[51][1]~combout\ = (\mem|ram[51][0]~55_combout\ & ((!\aluu|Mult0|auto_generated|le3a\(5)))) # (!\mem|ram[51][0]~55_combout\ & (\mem|ram[51][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[51][1]~combout\,
	datac => \mem|ram[51][0]~55_combout\,
	datad => \aluu|Mult0|auto_generated|le3a\(5),
	combout => \mem|ram[51][1]~combout\);

-- Location: LCCOMB_X10_Y14_N26
\mem|ram[50][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[50][1]~combout\ = (\mem|ram[50][0]~52_combout\ & ((!\aluu|Mult0|auto_generated|le3a\(5)))) # (!\mem|ram[50][0]~52_combout\ & (\mem|ram[50][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[50][1]~combout\,
	datac => \aluu|Mult0|auto_generated|le3a\(5),
	datad => \mem|ram[50][0]~52_combout\,
	combout => \mem|ram[50][1]~combout\);

-- Location: LCCOMB_X10_Y14_N20
\mem|ram[54][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[54][1]~combout\ = (\mem|ram[54][0]~48_combout\ & ((!\aluu|Mult0|auto_generated|le3a\(5)))) # (!\mem|ram[54][0]~48_combout\ & (\mem|ram[54][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[54][1]~combout\,
	datac => \aluu|Mult0|auto_generated|le3a\(5),
	datad => \mem|ram[54][0]~48_combout\,
	combout => \mem|ram[54][1]~combout\);

-- Location: LCCOMB_X10_Y14_N0
\mem|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~7_combout\ = (\pc|aBus[0]~6_combout\ & (((\pc|aBus[2]~8_combout\)))) # (!\pc|aBus[0]~6_combout\ & ((\pc|aBus[2]~8_combout\ & ((\mem|ram[54][1]~combout\))) # (!\pc|aBus[2]~8_combout\ & (\mem|ram[50][1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[50][1]~combout\,
	datab => \mem|ram[54][1]~combout\,
	datac => \pc|aBus[0]~6_combout\,
	datad => \pc|aBus[2]~8_combout\,
	combout => \mem|Mux6~7_combout\);

-- Location: LCCOMB_X10_Y14_N2
\mem|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~8_combout\ = (\pc|aBus[0]~6_combout\ & ((\mem|Mux6~7_combout\ & (\mem|ram[55][1]~combout\)) # (!\mem|Mux6~7_combout\ & ((\mem|ram[51][1]~combout\))))) # (!\pc|aBus[0]~6_combout\ & (((\mem|Mux6~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[55][1]~combout\,
	datab => \pc|aBus[0]~6_combout\,
	datac => \mem|ram[51][1]~combout\,
	datad => \mem|Mux6~7_combout\,
	combout => \mem|Mux6~8_combout\);

-- Location: LCCOMB_X19_Y16_N0
\mem|ram[39][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[39][1]~combout\ = (\mem|ram[39][0]~9_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5))) # (!\mem|ram[39][0]~9_combout\ & ((\mem|ram[39][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|le3a\(5),
	datac => \mem|ram[39][0]~9_combout\,
	datad => \mem|ram[39][1]~combout\,
	combout => \mem|ram[39][1]~combout\);

-- Location: LCCOMB_X19_Y16_N6
\mem|ram[35][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[35][1]~combout\ = (\mem|ram[35][0]~7_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5))) # (!\mem|ram[35][0]~7_combout\ & ((\mem|ram[35][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|le3a\(5),
	datac => \mem|ram[35][0]~7_combout\,
	datad => \mem|ram[35][1]~combout\,
	combout => \mem|ram[35][1]~combout\);

-- Location: LCCOMB_X19_Y16_N24
\mem|ram[38][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[38][1]~combout\ = (\mem|ram[38][0]~6_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5))) # (!\mem|ram[38][0]~6_combout\ & ((\mem|ram[38][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|le3a\(5),
	datab => \mem|ram[38][1]~combout\,
	datad => \mem|ram[38][0]~6_combout\,
	combout => \mem|ram[38][1]~combout\);

-- Location: LCCOMB_X19_Y16_N20
\mem|ram[34][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[34][1]~combout\ = (\mem|ram[34][0]~8_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5))) # (!\mem|ram[34][0]~8_combout\ & ((\mem|ram[34][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|le3a\(5),
	datab => \mem|ram[34][1]~combout\,
	datad => \mem|ram[34][0]~8_combout\,
	combout => \mem|ram[34][1]~combout\);

-- Location: LCCOMB_X19_Y16_N18
\mem|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~2_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|ram[38][1]~combout\) # ((\pc|aBus[0]~6_combout\)))) # (!\pc|aBus[2]~8_combout\ & (((!\pc|aBus[0]~6_combout\ & \mem|ram[34][1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \mem|ram[38][1]~combout\,
	datac => \pc|aBus[0]~6_combout\,
	datad => \mem|ram[34][1]~combout\,
	combout => \mem|Mux6~2_combout\);

-- Location: LCCOMB_X19_Y16_N14
\mem|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~3_combout\ = (\pc|aBus[0]~6_combout\ & ((\mem|Mux6~2_combout\ & (\mem|ram[39][1]~combout\)) # (!\mem|Mux6~2_combout\ & ((\mem|ram[35][1]~combout\))))) # (!\pc|aBus[0]~6_combout\ & (((\mem|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[0]~6_combout\,
	datab => \mem|ram[39][1]~combout\,
	datac => \mem|ram[35][1]~combout\,
	datad => \mem|Mux6~2_combout\,
	combout => \mem|Mux6~3_combout\);

-- Location: LCCOMB_X19_Y17_N10
\mem|ram[37][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[37][1]~combout\ = (\mem|ram[37][0]~13_combout\ & ((!\aluu|Mult0|auto_generated|le3a\(5)))) # (!\mem|ram[37][0]~13_combout\ & (\mem|ram[37][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[37][1]~combout\,
	datac => \aluu|Mult0|auto_generated|le3a\(5),
	datad => \mem|ram[37][0]~13_combout\,
	combout => \mem|ram[37][1]~combout\);

-- Location: LCCOMB_X19_Y17_N8
\mem|ram[33][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[33][1]~combout\ = (\mem|ram[33][0]~10_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5))) # (!\mem|ram[33][0]~10_combout\ & ((\mem|ram[33][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|le3a\(5),
	datac => \mem|ram[33][1]~combout\,
	datad => \mem|ram[33][0]~10_combout\,
	combout => \mem|ram[33][1]~combout\);

-- Location: LCCOMB_X19_Y17_N12
\mem|ram[32][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[32][1]~combout\ = (\mem|ram[32][0]~12_combout\ & ((!\aluu|Mult0|auto_generated|le3a\(5)))) # (!\mem|ram[32][0]~12_combout\ & (\mem|ram[32][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[32][1]~combout\,
	datac => \aluu|Mult0|auto_generated|le3a\(5),
	datad => \mem|ram[32][0]~12_combout\,
	combout => \mem|ram[32][1]~combout\);

-- Location: LCCOMB_X19_Y17_N14
\mem|ram[36][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[36][1]~combout\ = (\mem|ram[36][0]~11_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5))) # (!\mem|ram[36][0]~11_combout\ & ((\mem|ram[36][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluu|Mult0|auto_generated|le3a\(5),
	datac => \mem|ram[36][1]~combout\,
	datad => \mem|ram[36][0]~11_combout\,
	combout => \mem|ram[36][1]~combout\);

-- Location: LCCOMB_X19_Y17_N28
\mem|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~4_combout\ = (\pc|aBus[2]~8_combout\ & (((\mem|ram[36][1]~combout\) # (\pc|aBus[0]~6_combout\)))) # (!\pc|aBus[2]~8_combout\ & (\mem|ram[32][1]~combout\ & ((!\pc|aBus[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[32][1]~combout\,
	datab => \pc|aBus[2]~8_combout\,
	datac => \mem|ram[36][1]~combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Mux6~4_combout\);

-- Location: LCCOMB_X19_Y17_N30
\mem|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~5_combout\ = (\pc|aBus[0]~6_combout\ & ((\mem|Mux6~4_combout\ & (\mem|ram[37][1]~combout\)) # (!\mem|Mux6~4_combout\ & ((\mem|ram[33][1]~combout\))))) # (!\pc|aBus[0]~6_combout\ & (((\mem|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[0]~6_combout\,
	datab => \mem|ram[37][1]~combout\,
	datac => \mem|ram[33][1]~combout\,
	datad => \mem|Mux6~4_combout\,
	combout => \mem|Mux6~5_combout\);

-- Location: LCCOMB_X17_Y14_N16
\mem|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~6_combout\ = (\pc|aBus[1]~7_combout\ & ((\ir|aBus[4]~4_combout\) # ((\mem|Mux6~3_combout\)))) # (!\pc|aBus[1]~7_combout\ & (!\ir|aBus[4]~4_combout\ & ((\mem|Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \ir|aBus[4]~4_combout\,
	datac => \mem|Mux6~3_combout\,
	datad => \mem|Mux6~5_combout\,
	combout => \mem|Mux6~6_combout\);

-- Location: LCCOMB_X17_Y14_N14
\mem|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~9_combout\ = (\ir|aBus[4]~4_combout\ & ((\mem|Mux6~6_combout\ & ((\mem|Mux6~8_combout\))) # (!\mem|Mux6~6_combout\ & (\mem|Mux6~1_combout\)))) # (!\ir|aBus[4]~4_combout\ & (((\mem|Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[4]~4_combout\,
	datab => \mem|Mux6~1_combout\,
	datac => \mem|Mux6~8_combout\,
	datad => \mem|Mux6~6_combout\,
	combout => \mem|Mux6~9_combout\);

-- Location: LCCOMB_X16_Y10_N8
\mem|ram[22][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[22][1]~combout\ = (\mem|ram[22][0]~30_combout\ & ((!\aluu|Mult0|auto_generated|le3a\(5)))) # (!\mem|ram[22][0]~30_combout\ & (\mem|ram[22][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[22][1]~combout\,
	datac => \aluu|Mult0|auto_generated|le3a\(5),
	datad => \mem|ram[22][0]~30_combout\,
	combout => \mem|ram[22][1]~combout\);

-- Location: LCCOMB_X16_Y10_N18
\mem|ram[16][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[16][1]~combout\ = (\mem|ram[16][0]~29_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5))) # (!\mem|ram[16][0]~29_combout\ & ((\mem|ram[16][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|le3a\(5),
	datac => \mem|ram[16][0]~29_combout\,
	datad => \mem|ram[16][1]~combout\,
	combout => \mem|ram[16][1]~combout\);

-- Location: LCCOMB_X16_Y10_N24
\mem|ram[18][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[18][1]~combout\ = (\mem|ram[18][0]~28_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5))) # (!\mem|ram[18][0]~28_combout\ & ((\mem|ram[18][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|le3a\(5),
	datab => \mem|ram[18][1]~combout\,
	datad => \mem|ram[18][0]~28_combout\,
	combout => \mem|ram[18][1]~combout\);

-- Location: LCCOMB_X16_Y10_N4
\mem|Mux6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~20_combout\ = (\pc|aBus[1]~7_combout\ & (((\pc|aBus[2]~8_combout\) # (\mem|ram[18][1]~combout\)))) # (!\pc|aBus[1]~7_combout\ & (\mem|ram[16][1]~combout\ & (!\pc|aBus[2]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \mem|ram[16][1]~combout\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \mem|ram[18][1]~combout\,
	combout => \mem|Mux6~20_combout\);

-- Location: LCCOMB_X16_Y10_N6
\mem|ram[20][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[20][1]~combout\ = (\mem|ram[20][0]~27_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5))) # (!\mem|ram[20][0]~27_combout\ & ((\mem|ram[20][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|le3a\(5),
	datac => \mem|ram[20][0]~27_combout\,
	datad => \mem|ram[20][1]~combout\,
	combout => \mem|ram[20][1]~combout\);

-- Location: LCCOMB_X16_Y10_N22
\mem|Mux6~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~21_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|Mux6~20_combout\ & (\mem|ram[22][1]~combout\)) # (!\mem|Mux6~20_combout\ & ((\mem|ram[20][1]~combout\))))) # (!\pc|aBus[2]~8_combout\ & (((\mem|Mux6~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \mem|ram[22][1]~combout\,
	datac => \mem|Mux6~20_combout\,
	datad => \mem|ram[20][1]~combout\,
	combout => \mem|Mux6~21_combout\);

-- Location: LCCOMB_X16_Y11_N0
\mem|ram[21][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[21][1]~combout\ = (\mem|ram[21][0]~23_combout\ & ((!\aluu|Mult0|auto_generated|le3a\(5)))) # (!\mem|ram[21][0]~23_combout\ & (\mem|ram[21][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[21][1]~combout\,
	datac => \aluu|Mult0|auto_generated|le3a\(5),
	datad => \mem|ram[21][0]~23_combout\,
	combout => \mem|ram[21][1]~combout\);

-- Location: LCCOMB_X16_Y11_N18
\mem|ram[19][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[19][1]~combout\ = (\mem|ram[19][0]~24_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5))) # (!\mem|ram[19][0]~24_combout\ & ((\mem|ram[19][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|le3a\(5),
	datab => \mem|ram[19][1]~combout\,
	datad => \mem|ram[19][0]~24_combout\,
	combout => \mem|ram[19][1]~combout\);

-- Location: LCCOMB_X16_Y11_N8
\mem|ram[17][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[17][1]~combout\ = (\mem|ram[17][0]~25_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5))) # (!\mem|ram[17][0]~25_combout\ & ((\mem|ram[17][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluu|Mult0|auto_generated|le3a\(5),
	datac => \mem|ram[17][1]~combout\,
	datad => \mem|ram[17][0]~25_combout\,
	combout => \mem|ram[17][1]~combout\);

-- Location: LCCOMB_X16_Y11_N26
\mem|Mux6~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~27_combout\ = (\pc|aBus[1]~7_combout\ & ((\mem|ram[19][1]~combout\) # ((\pc|aBus[2]~8_combout\)))) # (!\pc|aBus[1]~7_combout\ & (((\mem|ram[17][1]~combout\ & !\pc|aBus[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \mem|ram[19][1]~combout\,
	datac => \mem|ram[17][1]~combout\,
	datad => \pc|aBus[2]~8_combout\,
	combout => \mem|Mux6~27_combout\);

-- Location: LCCOMB_X16_Y11_N28
\mem|ram[23][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[23][1]~combout\ = (\mem|ram[23][0]~26_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5))) # (!\mem|ram[23][0]~26_combout\ & ((\mem|ram[23][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluu|Mult0|auto_generated|le3a\(5),
	datac => \mem|ram[23][0]~26_combout\,
	datad => \mem|ram[23][1]~combout\,
	combout => \mem|ram[23][1]~combout\);

-- Location: LCCOMB_X16_Y11_N10
\mem|Mux6~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~28_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|Mux6~27_combout\ & ((\mem|ram[23][1]~combout\))) # (!\mem|Mux6~27_combout\ & (\mem|ram[21][1]~combout\)))) # (!\pc|aBus[2]~8_combout\ & (((\mem|Mux6~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \mem|ram[21][1]~combout\,
	datac => \mem|Mux6~27_combout\,
	datad => \mem|ram[23][1]~combout\,
	combout => \mem|Mux6~28_combout\);

-- Location: LCCOMB_X17_Y14_N0
\ir|dBus[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[1]~36_combout\ = ((\ir|dBus[1]~12_combout\ & ((\mem|Mux6~41_combout\) # (!\mem|dBus~1_combout\)))) # (!\ir|dBus[0]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|dBus~1_combout\,
	datab => \ir|dBus[1]~12_combout\,
	datac => \ir|dBus[0]~34_combout\,
	datad => \mem|Mux6~41_combout\,
	combout => \ir|dBus[1]~36_combout\);

-- Location: LCCOMB_X18_Y16_N16
\mem|ram[5][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[5][1]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~9clkctrl_outclk\) & (\ir|dBus[1]~36_combout\)) # (!GLOBAL(\mem|Decoder0~9clkctrl_outclk\) & ((\mem|ram[5][1]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[1]~36_combout\,
	datab => \mem|ram[5][1]~combout\,
	datac => \reset~input_o\,
	datad => \mem|Decoder0~9clkctrl_outclk\,
	combout => \mem|ram[5][1]~combout\);

-- Location: LCCOMB_X19_Y16_N22
\mem|ram[7][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[7][1]~combout\ = (\reset~input_o\) # ((GLOBAL(\mem|Decoder0~12clkctrl_outclk\) & ((\ir|dBus[1]~36_combout\))) # (!GLOBAL(\mem|Decoder0~12clkctrl_outclk\) & (\mem|ram[7][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[7][1]~combout\,
	datab => \reset~input_o\,
	datac => \ir|dBus[1]~36_combout\,
	datad => \mem|Decoder0~12clkctrl_outclk\,
	combout => \mem|ram[7][1]~combout\);

-- Location: LCCOMB_X17_Y16_N4
\mem|ram[3][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[3][1]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~16clkctrl_outclk\) & (\ir|dBus[1]~36_combout\)) # (!GLOBAL(\mem|Decoder0~16clkctrl_outclk\) & ((\mem|ram[3][1]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ir|dBus[1]~36_combout\,
	datac => \mem|ram[3][1]~combout\,
	datad => \mem|Decoder0~16clkctrl_outclk\,
	combout => \mem|ram[3][1]~combout\);

-- Location: LCCOMB_X17_Y16_N14
\mem|ram[1][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[1][1]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~13clkctrl_outclk\) & (\ir|dBus[1]~36_combout\)) # (!GLOBAL(\mem|Decoder0~13clkctrl_outclk\) & ((\mem|ram[1][1]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ir|dBus[1]~36_combout\,
	datac => \mem|ram[1][1]~combout\,
	datad => \mem|Decoder0~13clkctrl_outclk\,
	combout => \mem|ram[1][1]~combout\);

-- Location: LCCOMB_X17_Y16_N16
\mem|Mux6~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~22_combout\ = (\pc|aBus[1]~7_combout\ & ((\mem|ram[3][1]~combout\) # ((\pc|aBus[2]~8_combout\)))) # (!\pc|aBus[1]~7_combout\ & (((\mem|ram[1][1]~combout\ & !\pc|aBus[2]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[3][1]~combout\,
	datab => \mem|ram[1][1]~combout\,
	datac => \pc|aBus[1]~7_combout\,
	datad => \pc|aBus[2]~8_combout\,
	combout => \mem|Mux6~22_combout\);

-- Location: LCCOMB_X17_Y16_N26
\mem|Mux6~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~23_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|Mux6~22_combout\ & ((\mem|ram[7][1]~combout\))) # (!\mem|Mux6~22_combout\ & (\mem|ram[5][1]~combout\)))) # (!\pc|aBus[2]~8_combout\ & (((\mem|Mux6~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[5][1]~combout\,
	datab => \pc|aBus[2]~8_combout\,
	datac => \mem|ram[7][1]~combout\,
	datad => \mem|Mux6~22_combout\,
	combout => \mem|Mux6~23_combout\);

-- Location: LCCOMB_X18_Y17_N28
\mem|ram[4][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[4][1]~combout\ = (\reset~input_o\) # ((GLOBAL(\mem|Decoder0~11clkctrl_outclk\) & (\ir|dBus[1]~36_combout\)) # (!GLOBAL(\mem|Decoder0~11clkctrl_outclk\) & ((\mem|ram[4][1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ir|dBus[1]~36_combout\,
	datac => \mem|Decoder0~11clkctrl_outclk\,
	datad => \mem|ram[4][1]~combout\,
	combout => \mem|ram[4][1]~combout\);

-- Location: LCCOMB_X18_Y15_N12
\mem|ram[6][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[6][1]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~10clkctrl_outclk\) & ((\ir|dBus[1]~36_combout\))) # (!GLOBAL(\mem|Decoder0~10clkctrl_outclk\) & (\mem|ram[6][1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[6][1]~combout\,
	datab => \ir|dBus[1]~36_combout\,
	datac => \reset~input_o\,
	datad => \mem|Decoder0~10clkctrl_outclk\,
	combout => \mem|ram[6][1]~combout\);

-- Location: LCCOMB_X18_Y17_N18
\mem|ram[2][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[2][1]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~14clkctrl_outclk\) & (\ir|dBus[1]~36_combout\)) # (!GLOBAL(\mem|Decoder0~14clkctrl_outclk\) & ((\mem|ram[2][1]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[1]~36_combout\,
	datab => \mem|ram[2][1]~combout\,
	datac => \reset~input_o\,
	datad => \mem|Decoder0~14clkctrl_outclk\,
	combout => \mem|ram[2][1]~combout\);

-- Location: LCCOMB_X18_Y17_N8
\mem|ram[0][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[0][1]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~15clkctrl_outclk\) & ((\ir|dBus[1]~36_combout\))) # (!GLOBAL(\mem|Decoder0~15clkctrl_outclk\) & (\mem|ram[0][1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \mem|ram[0][1]~combout\,
	datac => \ir|dBus[1]~36_combout\,
	datad => \mem|Decoder0~15clkctrl_outclk\,
	combout => \mem|ram[0][1]~combout\);

-- Location: LCCOMB_X18_Y17_N20
\mem|Mux6~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~24_combout\ = (\pc|aBus[2]~8_combout\ & (((\pc|aBus[1]~7_combout\)))) # (!\pc|aBus[2]~8_combout\ & ((\pc|aBus[1]~7_combout\ & (\mem|ram[2][1]~combout\)) # (!\pc|aBus[1]~7_combout\ & ((\mem|ram[0][1]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \mem|ram[2][1]~combout\,
	datac => \mem|ram[0][1]~combout\,
	datad => \pc|aBus[1]~7_combout\,
	combout => \mem|Mux6~24_combout\);

-- Location: LCCOMB_X18_Y17_N6
\mem|Mux6~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~25_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|Mux6~24_combout\ & ((\mem|ram[6][1]~combout\))) # (!\mem|Mux6~24_combout\ & (\mem|ram[4][1]~combout\)))) # (!\pc|aBus[2]~8_combout\ & (((\mem|Mux6~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[4][1]~combout\,
	datab => \mem|ram[6][1]~combout\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \mem|Mux6~24_combout\,
	combout => \mem|Mux6~25_combout\);

-- Location: LCCOMB_X17_Y14_N24
\mem|Mux6~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~26_combout\ = (\pc|aBus[0]~6_combout\ & ((\ir|aBus[4]~4_combout\) # ((\mem|Mux6~23_combout\)))) # (!\pc|aBus[0]~6_combout\ & (!\ir|aBus[4]~4_combout\ & ((\mem|Mux6~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[0]~6_combout\,
	datab => \ir|aBus[4]~4_combout\,
	datac => \mem|Mux6~23_combout\,
	datad => \mem|Mux6~25_combout\,
	combout => \mem|Mux6~26_combout\);

-- Location: LCCOMB_X17_Y14_N8
\mem|Mux6~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~29_combout\ = (\ir|aBus[4]~4_combout\ & ((\mem|Mux6~26_combout\ & ((\mem|Mux6~28_combout\))) # (!\mem|Mux6~26_combout\ & (\mem|Mux6~21_combout\)))) # (!\ir|aBus[4]~4_combout\ & (((\mem|Mux6~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[4]~4_combout\,
	datab => \mem|Mux6~21_combout\,
	datac => \mem|Mux6~28_combout\,
	datad => \mem|Mux6~26_combout\,
	combout => \mem|Mux6~29_combout\);

-- Location: LCCOMB_X18_Y15_N30
\mem|ram[30][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[30][1]~combout\ = (\mem|ram[30][0]~22_combout\ & ((!\aluu|Mult0|auto_generated|le3a\(5)))) # (!\mem|ram[30][0]~22_combout\ & (\mem|ram[30][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[30][1]~combout\,
	datab => \aluu|Mult0|auto_generated|le3a\(5),
	datad => \mem|ram[30][0]~22_combout\,
	combout => \mem|ram[30][1]~combout\);

-- Location: LCCOMB_X18_Y15_N6
\mem|ram[28][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[28][1]~combout\ = (\mem|ram[28][0]~19_combout\ & ((!\aluu|Mult0|auto_generated|le3a\(5)))) # (!\mem|ram[28][0]~19_combout\ & (\mem|ram[28][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[28][1]~combout\,
	datab => \aluu|Mult0|auto_generated|le3a\(5),
	datac => \mem|ram[28][0]~19_combout\,
	combout => \mem|ram[28][1]~combout\);

-- Location: LCCOMB_X18_Y15_N28
\mem|ram[29][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[29][1]~combout\ = (\mem|ram[29][0]~31_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5))) # (!\mem|ram[29][0]~31_combout\ & ((\mem|ram[29][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluu|Mult0|auto_generated|le3a\(5),
	datac => \mem|ram[29][1]~combout\,
	datad => \mem|ram[29][0]~31_combout\,
	combout => \mem|ram[29][1]~combout\);

-- Location: LCCOMB_X18_Y15_N16
\mem|Mux6~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~17_combout\ = (\pc|aBus[0]~6_combout\ & (((\mem|ram[29][1]~combout\) # (\pc|aBus[1]~7_combout\)))) # (!\pc|aBus[0]~6_combout\ & (\mem|ram[28][1]~combout\ & ((!\pc|aBus[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[28][1]~combout\,
	datab => \mem|ram[29][1]~combout\,
	datac => \pc|aBus[0]~6_combout\,
	datad => \pc|aBus[1]~7_combout\,
	combout => \mem|Mux6~17_combout\);

-- Location: LCCOMB_X18_Y14_N22
\mem|ram[31][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[31][1]~combout\ = (\mem|ram[31][0]~34_combout\ & ((!\aluu|Mult0|auto_generated|le3a\(5)))) # (!\mem|ram[31][0]~34_combout\ & (\mem|ram[31][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[31][1]~combout\,
	datab => \aluu|Mult0|auto_generated|le3a\(5),
	datad => \mem|ram[31][0]~34_combout\,
	combout => \mem|ram[31][1]~combout\);

-- Location: LCCOMB_X18_Y15_N10
\mem|Mux6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~18_combout\ = (\mem|Mux6~17_combout\ & (((\mem|ram[31][1]~combout\) # (!\pc|aBus[1]~7_combout\)))) # (!\mem|Mux6~17_combout\ & (\mem|ram[30][1]~combout\ & ((\pc|aBus[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[30][1]~combout\,
	datab => \mem|Mux6~17_combout\,
	datac => \mem|ram[31][1]~combout\,
	datad => \pc|aBus[1]~7_combout\,
	combout => \mem|Mux6~18_combout\);

-- Location: LCCOMB_X18_Y15_N4
\mem|ram[27][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[27][1]~combout\ = (\mem|ram[27][0]~32_combout\ & ((!\aluu|Mult0|auto_generated|le3a\(5)))) # (!\mem|ram[27][0]~32_combout\ & (\mem|ram[27][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[27][1]~combout\,
	datac => \mem|ram[27][0]~32_combout\,
	datad => \aluu|Mult0|auto_generated|le3a\(5),
	combout => \mem|ram[27][1]~combout\);

-- Location: LCCOMB_X18_Y15_N22
\mem|ram[26][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[26][1]~combout\ = (\mem|ram[26][0]~20_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5))) # (!\mem|ram[26][0]~20_combout\ & ((\mem|ram[26][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluu|Mult0|auto_generated|le3a\(5),
	datac => \mem|ram[26][1]~combout\,
	datad => \mem|ram[26][0]~20_combout\,
	combout => \mem|ram[26][1]~combout\);

-- Location: LCCOMB_X18_Y15_N26
\mem|ram[24][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[24][1]~combout\ = (\mem|ram[24][0]~21_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5))) # (!\mem|ram[24][0]~21_combout\ & ((\mem|ram[24][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluu|Mult0|auto_generated|le3a\(5),
	datac => \mem|ram[24][1]~combout\,
	datad => \mem|ram[24][0]~21_combout\,
	combout => \mem|ram[24][1]~combout\);

-- Location: LCCOMB_X18_Y15_N24
\mem|ram[25][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[25][1]~combout\ = (\mem|ram[25][0]~33_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5))) # (!\mem|ram[25][0]~33_combout\ & ((\mem|ram[25][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|le3a\(5),
	datab => \mem|ram[25][1]~combout\,
	datad => \mem|ram[25][0]~33_combout\,
	combout => \mem|ram[25][1]~combout\);

-- Location: LCCOMB_X18_Y15_N20
\mem|Mux6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~10_combout\ = (\pc|aBus[0]~6_combout\ & (((\mem|ram[25][1]~combout\) # (\pc|aBus[1]~7_combout\)))) # (!\pc|aBus[0]~6_combout\ & (\mem|ram[24][1]~combout\ & ((!\pc|aBus[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[24][1]~combout\,
	datab => \mem|ram[25][1]~combout\,
	datac => \pc|aBus[0]~6_combout\,
	datad => \pc|aBus[1]~7_combout\,
	combout => \mem|Mux6~10_combout\);

-- Location: LCCOMB_X18_Y15_N18
\mem|Mux6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~11_combout\ = (\pc|aBus[1]~7_combout\ & ((\mem|Mux6~10_combout\ & (\mem|ram[27][1]~combout\)) # (!\mem|Mux6~10_combout\ & ((\mem|ram[26][1]~combout\))))) # (!\pc|aBus[1]~7_combout\ & (((\mem|Mux6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \mem|ram[27][1]~combout\,
	datac => \mem|ram[26][1]~combout\,
	datad => \mem|Mux6~10_combout\,
	combout => \mem|Mux6~11_combout\);

-- Location: LCCOMB_X21_Y13_N0
\mem|ram[11][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[11][1]~combout\ = (\mem|ram[11][0]~38_combout\ & ((!\aluu|Mult0|auto_generated|le3a\(5)))) # (!\mem|ram[11][0]~38_combout\ & (\mem|ram[11][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[11][1]~combout\,
	datac => \aluu|Mult0|auto_generated|le3a\(5),
	datad => \mem|ram[11][0]~38_combout\,
	combout => \mem|ram[11][1]~combout\);

-- Location: LCCOMB_X18_Y13_N12
\mem|ram[8][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[8][1]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~8clkctrl_outclk\) & ((\ir|dBus[1]~36_combout\))) # (!GLOBAL(\mem|Decoder0~8clkctrl_outclk\) & (\mem|ram[8][1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[8][1]~combout\,
	datab => \ir|dBus[1]~36_combout\,
	datac => \reset~input_o\,
	datad => \mem|Decoder0~8clkctrl_outclk\,
	combout => \mem|ram[8][1]~combout\);

-- Location: LCCOMB_X18_Y13_N2
\mem|ram[9][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[9][1]~combout\ = (\mem|ram[9][0]~36_combout\ & ((!\aluu|Mult0|auto_generated|le3a\(5)))) # (!\mem|ram[9][0]~36_combout\ & (\mem|ram[9][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[9][1]~combout\,
	datac => \aluu|Mult0|auto_generated|le3a\(5),
	datad => \mem|ram[9][0]~36_combout\,
	combout => \mem|ram[9][1]~combout\);

-- Location: LCCOMB_X18_Y13_N0
\mem|Mux6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~14_combout\ = (\pc|aBus[1]~7_combout\ & (((\pc|aBus[0]~6_combout\)))) # (!\pc|aBus[1]~7_combout\ & ((\pc|aBus[0]~6_combout\ & ((\mem|ram[9][1]~combout\))) # (!\pc|aBus[0]~6_combout\ & (\mem|ram[8][1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[8][1]~combout\,
	datab => \mem|ram[9][1]~combout\,
	datac => \pc|aBus[1]~7_combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Mux6~14_combout\);

-- Location: LCCOMB_X18_Y14_N26
\mem|ram[10][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[10][1]~combout\ = (\mem|ram[10][0]~37_combout\ & ((!\aluu|Mult0|auto_generated|le3a\(5)))) # (!\mem|ram[10][0]~37_combout\ & (\mem|ram[10][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[10][1]~combout\,
	datab => \aluu|Mult0|auto_generated|le3a\(5),
	datad => \mem|ram[10][0]~37_combout\,
	combout => \mem|ram[10][1]~combout\);

-- Location: LCCOMB_X17_Y14_N4
\mem|Mux6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~15_combout\ = (\pc|aBus[1]~7_combout\ & ((\mem|Mux6~14_combout\ & (\mem|ram[11][1]~combout\)) # (!\mem|Mux6~14_combout\ & ((\mem|ram[10][1]~combout\))))) # (!\pc|aBus[1]~7_combout\ & (((\mem|Mux6~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \mem|ram[11][1]~combout\,
	datac => \mem|Mux6~14_combout\,
	datad => \mem|ram[10][1]~combout\,
	combout => \mem|Mux6~15_combout\);

-- Location: LCCOMB_X17_Y13_N8
\mem|ram[15][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[15][1]~combout\ = (\mem|ram[15][0]~42_combout\ & ((!\aluu|Mult0|auto_generated|le3a\(5)))) # (!\mem|ram[15][0]~42_combout\ & (\mem|ram[15][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[15][1]~combout\,
	datac => \aluu|Mult0|auto_generated|le3a\(5),
	datad => \mem|ram[15][0]~42_combout\,
	combout => \mem|ram[15][1]~combout\);

-- Location: LCCOMB_X17_Y13_N14
\mem|ram[14][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[14][1]~combout\ = (\mem|ram[14][0]~39_combout\ & ((!\aluu|Mult0|auto_generated|le3a\(5)))) # (!\mem|ram[14][0]~39_combout\ & (\mem|ram[14][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[14][1]~combout\,
	datac => \aluu|Mult0|auto_generated|le3a\(5),
	datad => \mem|ram[14][0]~39_combout\,
	combout => \mem|ram[14][1]~combout\);

-- Location: LCCOMB_X17_Y13_N24
\mem|ram[13][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[13][1]~combout\ = (\mem|ram[13][0]~40_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5))) # (!\mem|ram[13][0]~40_combout\ & ((\mem|ram[13][1]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluu|Mult0|auto_generated|le3a\(5),
	datac => \mem|ram[13][0]~40_combout\,
	datad => \mem|ram[13][1]~combout\,
	combout => \mem|ram[13][1]~combout\);

-- Location: LCCOMB_X17_Y14_N30
\mem|ram[12][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[12][1]~combout\ = (\mem|ram[12][0]~41_combout\ & ((!\aluu|Mult0|auto_generated|le3a\(5)))) # (!\mem|ram[12][0]~41_combout\ & (\mem|ram[12][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[12][1]~combout\,
	datac => \aluu|Mult0|auto_generated|le3a\(5),
	datad => \mem|ram[12][0]~41_combout\,
	combout => \mem|ram[12][1]~combout\);

-- Location: LCCOMB_X17_Y13_N2
\mem|Mux6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~12_combout\ = (\pc|aBus[1]~7_combout\ & (((\pc|aBus[0]~6_combout\)))) # (!\pc|aBus[1]~7_combout\ & ((\pc|aBus[0]~6_combout\ & (\mem|ram[13][1]~combout\)) # (!\pc|aBus[0]~6_combout\ & ((\mem|ram[12][1]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \mem|ram[13][1]~combout\,
	datac => \mem|ram[12][1]~combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Mux6~12_combout\);

-- Location: LCCOMB_X17_Y13_N0
\mem|Mux6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~13_combout\ = (\pc|aBus[1]~7_combout\ & ((\mem|Mux6~12_combout\ & (\mem|ram[15][1]~combout\)) # (!\mem|Mux6~12_combout\ & ((\mem|ram[14][1]~combout\))))) # (!\pc|aBus[1]~7_combout\ & (((\mem|Mux6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \mem|ram[15][1]~combout\,
	datac => \mem|ram[14][1]~combout\,
	datad => \mem|Mux6~12_combout\,
	combout => \mem|Mux6~13_combout\);

-- Location: LCCOMB_X17_Y14_N28
\mem|Mux6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~16_combout\ = (\ir|aBus[4]~4_combout\ & (\pc|aBus[2]~8_combout\)) # (!\ir|aBus[4]~4_combout\ & ((\pc|aBus[2]~8_combout\ & ((\mem|Mux6~13_combout\))) # (!\pc|aBus[2]~8_combout\ & (\mem|Mux6~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[4]~4_combout\,
	datab => \pc|aBus[2]~8_combout\,
	datac => \mem|Mux6~15_combout\,
	datad => \mem|Mux6~13_combout\,
	combout => \mem|Mux6~16_combout\);

-- Location: LCCOMB_X17_Y14_N20
\mem|Mux6~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~19_combout\ = (\ir|aBus[4]~4_combout\ & ((\mem|Mux6~16_combout\ & (\mem|Mux6~18_combout\)) # (!\mem|Mux6~16_combout\ & ((\mem|Mux6~11_combout\))))) # (!\ir|aBus[4]~4_combout\ & (((\mem|Mux6~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux6~18_combout\,
	datab => \ir|aBus[4]~4_combout\,
	datac => \mem|Mux6~11_combout\,
	datad => \mem|Mux6~16_combout\,
	combout => \mem|Mux6~19_combout\);

-- Location: LCCOMB_X17_Y14_N12
\mem|Mux6~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~30_combout\ = (\pc|aBus[3]~9_combout\ & ((\ir|aBus[5]~5_combout\) # ((\mem|Mux6~19_combout\)))) # (!\pc|aBus[3]~9_combout\ & (!\ir|aBus[5]~5_combout\ & (\mem|Mux6~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[3]~9_combout\,
	datab => \ir|aBus[5]~5_combout\,
	datac => \mem|Mux6~29_combout\,
	datad => \mem|Mux6~19_combout\,
	combout => \mem|Mux6~30_combout\);

-- Location: LCCOMB_X17_Y14_N2
\mem|Mux6~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux6~41_combout\ = (\ir|aBus[5]~5_combout\ & ((\mem|Mux6~30_combout\ & (\mem|Mux6~40_combout\)) # (!\mem|Mux6~30_combout\ & ((\mem|Mux6~9_combout\))))) # (!\ir|aBus[5]~5_combout\ & (((\mem|Mux6~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux6~40_combout\,
	datab => \ir|aBus[5]~5_combout\,
	datac => \mem|Mux6~9_combout\,
	datad => \mem|Mux6~30_combout\,
	combout => \mem|Mux6~41_combout\);

-- Location: LCCOMB_X17_Y14_N18
\aluu|Mult0|auto_generated|le3a[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult0|auto_generated|le3a\(5) = (\ir|dBus[0]~11_combout\ & (((\mem|dBus~0_combout\ & !\mem|Mux6~41_combout\)) # (!\ir|dBus[1]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[0]~11_combout\,
	datab => \ir|dBus[1]~12_combout\,
	datac => \mem|dBus~0_combout\,
	datad => \mem|Mux6~41_combout\,
	combout => \aluu|Mult0|auto_generated|le3a\(5));

-- Location: LCCOMB_X23_Y14_N4
\acc|accReg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg~9_combout\ = (\acc|accReg[6]~3_combout\ & (((\acc|accReg[6]~2_combout\) # (\aluu|Add0~9_combout\)))) # (!\acc|accReg[6]~3_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5) & (!\acc|accReg[6]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|le3a\(5),
	datab => \acc|accReg[6]~3_combout\,
	datac => \acc|accReg[6]~2_combout\,
	datad => \aluu|Add0~9_combout\,
	combout => \acc|accReg~9_combout\);

-- Location: LCCOMB_X23_Y14_N10
\acc|accReg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg~10_combout\ = (\aluu|Equal13~0_combout\ & ((\acc|accReg~9_combout\ & (\aluu|Mult1|auto_generated|op_3~2_combout\)) # (!\acc|accReg~9_combout\ & ((\aluu|Mult0|auto_generated|op_3~2_combout\))))) # (!\aluu|Equal13~0_combout\ & 
-- (\acc|accReg~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Equal13~0_combout\,
	datab => \acc|accReg~9_combout\,
	datac => \aluu|Mult1|auto_generated|op_3~2_combout\,
	datad => \aluu|Mult0|auto_generated|op_3~2_combout\,
	combout => \acc|accReg~10_combout\);

-- Location: LCCOMB_X23_Y14_N26
\acc|accReg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg~11_combout\ = (\ctl|acc_ld~0_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5))) # (!\ctl|acc_ld~0_combout\ & ((\acc|accReg~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|acc_ld~0_combout\,
	datac => \aluu|Mult0|auto_generated|le3a\(5),
	datad => \acc|accReg~10_combout\,
	combout => \acc|accReg~11_combout\);

-- Location: FF_X23_Y14_N27
\acc|accReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \acc|accReg~11_combout\,
	sclr => \reset~input_o\,
	ena => \acc|accReg~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acc|accReg\(1));

-- Location: LCCOMB_X17_Y11_N22
\ir|dBus[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[1]~12_combout\ = (\acc|accReg\(1) & (((\ir|irReg\(1))) # (!\ctl|state.branch0~q\))) # (!\acc|accReg\(1) & (\ctl|acc_enD~0_combout\ & ((\ir|irReg\(1)) # (!\ctl|state.branch0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|accReg\(1),
	datab => \ctl|state.branch0~q\,
	datac => \ctl|acc_enD~0_combout\,
	datad => \ir|irReg\(1),
	combout => \ir|dBus[1]~12_combout\);

-- Location: LCCOMB_X18_Y14_N12
\aluu|Mult1|auto_generated|le3a[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult1|auto_generated|le3a\(5) = ((\ir|dBus[1]~12_combout\ & ((\mem|Mux6~41_combout\) # (!\mem|dBus~0_combout\)))) # (!\ir|dBus[0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|dBus~0_combout\,
	datab => \ir|dBus[0]~11_combout\,
	datac => \ir|dBus[1]~12_combout\,
	datad => \mem|Mux6~41_combout\,
	combout => \aluu|Mult1|auto_generated|le3a\(5));

-- Location: LCCOMB_X21_Y14_N0
\aluu|Mult1|auto_generated|le4a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult1|auto_generated|le4a\(4) = (\acc|accReg\(3) & (\ir|dBus[3]~29_combout\ & (\aluu|Mult0|auto_generated|le3a\(5) $ (!\ir|dBus[2]~28_combout\)))) # (!\acc|accReg\(3) & (\ir|dBus[3]~29_combout\ $ (((!\aluu|Mult0|auto_generated|le3a\(5) & 
-- \ir|dBus[2]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|accReg\(3),
	datab => \aluu|Mult0|auto_generated|le3a\(5),
	datac => \ir|dBus[2]~28_combout\,
	datad => \ir|dBus[3]~29_combout\,
	combout => \aluu|Mult1|auto_generated|le4a\(4));

-- Location: LCCOMB_X21_Y14_N22
\aluu|Mult1|auto_generated|le5a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult1|auto_generated|le5a\(2) = (\acc|accReg\(2) & ((\ir|dBus[3]~29_combout\) # ((!\aluu|Mult0|auto_generated|le3a\(5) & \ir|dBus[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|le3a\(5),
	datab => \acc|accReg\(2),
	datac => \ir|dBus[2]~28_combout\,
	datad => \ir|dBus[3]~29_combout\,
	combout => \aluu|Mult1|auto_generated|le5a\(2));

-- Location: LCCOMB_X22_Y14_N30
\aluu|Mult1|auto_generated|le5a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult1|auto_generated|le5a\(1) = (\acc|accReg\(1) & ((\ir|dBus[3]~29_combout\) # ((!\aluu|Mult0|auto_generated|le3a\(5) & \ir|dBus[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|accReg\(1),
	datab => \aluu|Mult0|auto_generated|le3a\(5),
	datac => \ir|dBus[2]~28_combout\,
	datad => \ir|dBus[3]~29_combout\,
	combout => \aluu|Mult1|auto_generated|le5a\(1));

-- Location: LCCOMB_X21_Y14_N6
\aluu|Mult1|auto_generated|le4a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult1|auto_generated|le4a\(3) = (\aluu|Mult0|auto_generated|cs2a[1]~0_combout\ & (\acc|accReg\(3) $ (((\aluu|Mult1|auto_generated|le4a\(5)))))) # (!\aluu|Mult0|auto_generated|cs2a[1]~0_combout\ & (((!\acc|accReg\(2) & 
-- \aluu|Mult1|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|accReg\(3),
	datab => \acc|accReg\(2),
	datac => \aluu|Mult0|auto_generated|cs2a[1]~0_combout\,
	datad => \aluu|Mult1|auto_generated|le4a\(5),
	combout => \aluu|Mult1|auto_generated|le4a\(3));

-- Location: LCCOMB_X21_Y14_N14
\aluu|Mult1|auto_generated|le4a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult1|auto_generated|le4a\(2) = (\aluu|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\acc|accReg\(2) $ (\aluu|Mult1|auto_generated|le4a\(5))))) # (!\aluu|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\acc|accReg\(1) & 
-- ((\aluu|Mult1|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|accReg\(1),
	datab => \acc|accReg\(2),
	datac => \aluu|Mult0|auto_generated|cs2a[1]~0_combout\,
	datad => \aluu|Mult1|auto_generated|le4a\(5),
	combout => \aluu|Mult1|auto_generated|le4a\(2));

-- Location: LCCOMB_X21_Y14_N20
\aluu|Mult1|auto_generated|le3a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult1|auto_generated|le3a\(4) = (!\aluu|Mult0|auto_generated|le3a\(5) & ((\ir|dBus[0]~26_combout\) # (!\acc|accReg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|accReg\(3),
	datac => \ir|dBus[0]~26_combout\,
	datad => \aluu|Mult0|auto_generated|le3a\(5),
	combout => \aluu|Mult1|auto_generated|le3a\(4));

-- Location: LCCOMB_X22_Y14_N4
\aluu|Mult1|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult1|auto_generated|op_1~4_combout\ = ((\aluu|Mult1|auto_generated|le4a\(2) $ (\aluu|Mult1|auto_generated|le3a\(4) $ (!\aluu|Mult1|auto_generated|op_1~3\)))) # (GND)
-- \aluu|Mult1|auto_generated|op_1~5\ = CARRY((\aluu|Mult1|auto_generated|le4a\(2) & ((\aluu|Mult1|auto_generated|le3a\(4)) # (!\aluu|Mult1|auto_generated|op_1~3\))) # (!\aluu|Mult1|auto_generated|le4a\(2) & (\aluu|Mult1|auto_generated|le3a\(4) & 
-- !\aluu|Mult1|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult1|auto_generated|le4a\(2),
	datab => \aluu|Mult1|auto_generated|le3a\(4),
	datad => VCC,
	cin => \aluu|Mult1|auto_generated|op_1~3\,
	combout => \aluu|Mult1|auto_generated|op_1~4_combout\,
	cout => \aluu|Mult1|auto_generated|op_1~5\);

-- Location: LCCOMB_X22_Y14_N6
\aluu|Mult1|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult1|auto_generated|op_1~6_combout\ = (\aluu|Mult1|auto_generated|le5a\(1) & ((\aluu|Mult1|auto_generated|le4a\(3) & (\aluu|Mult1|auto_generated|op_1~5\ & VCC)) # (!\aluu|Mult1|auto_generated|le4a\(3) & (!\aluu|Mult1|auto_generated|op_1~5\)))) # 
-- (!\aluu|Mult1|auto_generated|le5a\(1) & ((\aluu|Mult1|auto_generated|le4a\(3) & (!\aluu|Mult1|auto_generated|op_1~5\)) # (!\aluu|Mult1|auto_generated|le4a\(3) & ((\aluu|Mult1|auto_generated|op_1~5\) # (GND)))))
-- \aluu|Mult1|auto_generated|op_1~7\ = CARRY((\aluu|Mult1|auto_generated|le5a\(1) & (!\aluu|Mult1|auto_generated|le4a\(3) & !\aluu|Mult1|auto_generated|op_1~5\)) # (!\aluu|Mult1|auto_generated|le5a\(1) & ((!\aluu|Mult1|auto_generated|op_1~5\) # 
-- (!\aluu|Mult1|auto_generated|le4a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult1|auto_generated|le5a\(1),
	datab => \aluu|Mult1|auto_generated|le4a\(3),
	datad => VCC,
	cin => \aluu|Mult1|auto_generated|op_1~5\,
	combout => \aluu|Mult1|auto_generated|op_1~6_combout\,
	cout => \aluu|Mult1|auto_generated|op_1~7\);

-- Location: LCCOMB_X22_Y14_N8
\aluu|Mult1|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult1|auto_generated|op_1~8_combout\ = ((\aluu|Mult1|auto_generated|le4a\(4) $ (\aluu|Mult1|auto_generated|le5a\(2) $ (!\aluu|Mult1|auto_generated|op_1~7\)))) # (GND)
-- \aluu|Mult1|auto_generated|op_1~9\ = CARRY((\aluu|Mult1|auto_generated|le4a\(4) & ((\aluu|Mult1|auto_generated|le5a\(2)) # (!\aluu|Mult1|auto_generated|op_1~7\))) # (!\aluu|Mult1|auto_generated|le4a\(4) & (\aluu|Mult1|auto_generated|le5a\(2) & 
-- !\aluu|Mult1|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult1|auto_generated|le4a\(4),
	datab => \aluu|Mult1|auto_generated|le5a\(2),
	datad => VCC,
	cin => \aluu|Mult1|auto_generated|op_1~7\,
	combout => \aluu|Mult1|auto_generated|op_1~8_combout\,
	cout => \aluu|Mult1|auto_generated|op_1~9\);

-- Location: LCCOMB_X21_Y14_N16
\aluu|Mult1|auto_generated|le5a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult1|auto_generated|le5a\(0) = (\acc|accReg\(0) & ((\ir|dBus[3]~29_combout\) # ((!\aluu|Mult0|auto_generated|le3a\(5) & \ir|dBus[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|le3a\(5),
	datab => \acc|accReg\(0),
	datac => \ir|dBus[2]~28_combout\,
	datad => \ir|dBus[3]~29_combout\,
	combout => \aluu|Mult1|auto_generated|le5a\(0));

-- Location: LCCOMB_X22_Y14_N22
\aluu|Mult1|auto_generated|op_3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult1|auto_generated|op_3~8_combout\ = ((\aluu|Mult1|auto_generated|le5a\(0) $ (\aluu|Mult1|auto_generated|op_1~4_combout\ $ (!\aluu|Mult1|auto_generated|op_3~7\)))) # (GND)
-- \aluu|Mult1|auto_generated|op_3~9\ = CARRY((\aluu|Mult1|auto_generated|le5a\(0) & ((\aluu|Mult1|auto_generated|op_1~4_combout\) # (!\aluu|Mult1|auto_generated|op_3~7\))) # (!\aluu|Mult1|auto_generated|le5a\(0) & (\aluu|Mult1|auto_generated|op_1~4_combout\ 
-- & !\aluu|Mult1|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult1|auto_generated|le5a\(0),
	datab => \aluu|Mult1|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \aluu|Mult1|auto_generated|op_3~7\,
	combout => \aluu|Mult1|auto_generated|op_3~8_combout\,
	cout => \aluu|Mult1|auto_generated|op_3~9\);

-- Location: LCCOMB_X22_Y14_N24
\aluu|Mult1|auto_generated|op_3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult1|auto_generated|op_3~10_combout\ = (\aluu|Mult1|auto_generated|op_1~6_combout\ & ((\aluu|Mult1|auto_generated|le3a\(5) & (\aluu|Mult1|auto_generated|op_3~9\ & VCC)) # (!\aluu|Mult1|auto_generated|le3a\(5) & 
-- (!\aluu|Mult1|auto_generated|op_3~9\)))) # (!\aluu|Mult1|auto_generated|op_1~6_combout\ & ((\aluu|Mult1|auto_generated|le3a\(5) & (!\aluu|Mult1|auto_generated|op_3~9\)) # (!\aluu|Mult1|auto_generated|le3a\(5) & ((\aluu|Mult1|auto_generated|op_3~9\) # 
-- (GND)))))
-- \aluu|Mult1|auto_generated|op_3~11\ = CARRY((\aluu|Mult1|auto_generated|op_1~6_combout\ & (!\aluu|Mult1|auto_generated|le3a\(5) & !\aluu|Mult1|auto_generated|op_3~9\)) # (!\aluu|Mult1|auto_generated|op_1~6_combout\ & ((!\aluu|Mult1|auto_generated|op_3~9\) 
-- # (!\aluu|Mult1|auto_generated|le3a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult1|auto_generated|op_1~6_combout\,
	datab => \aluu|Mult1|auto_generated|le3a\(5),
	datad => VCC,
	cin => \aluu|Mult1|auto_generated|op_3~9\,
	combout => \aluu|Mult1|auto_generated|op_3~10_combout\,
	cout => \aluu|Mult1|auto_generated|op_3~11\);

-- Location: LCCOMB_X22_Y14_N26
\aluu|Mult1|auto_generated|op_3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult1|auto_generated|op_3~12_combout\ = ((\aluu|Mult1|auto_generated|le3a\(5) $ (\aluu|Mult1|auto_generated|op_1~8_combout\ $ (!\aluu|Mult1|auto_generated|op_3~11\)))) # (GND)
-- \aluu|Mult1|auto_generated|op_3~13\ = CARRY((\aluu|Mult1|auto_generated|le3a\(5) & ((\aluu|Mult1|auto_generated|op_1~8_combout\) # (!\aluu|Mult1|auto_generated|op_3~11\))) # (!\aluu|Mult1|auto_generated|le3a\(5) & 
-- (\aluu|Mult1|auto_generated|op_1~8_combout\ & !\aluu|Mult1|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult1|auto_generated|le3a\(5),
	datab => \aluu|Mult1|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \aluu|Mult1|auto_generated|op_3~11\,
	combout => \aluu|Mult1|auto_generated|op_3~12_combout\,
	cout => \aluu|Mult1|auto_generated|op_3~13\);

-- Location: LCCOMB_X21_Y12_N30
\aluu|Mult0|auto_generated|le4a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult0|auto_generated|le4a\(4) = (\acc|accReg\(3) & (!\ir|dBus[3]~29_combout\ & (\ir|dBus[2]~28_combout\ $ (!\aluu|Mult0|auto_generated|le3a\(5))))) # (!\acc|accReg\(3) & (\ir|dBus[3]~29_combout\ $ (((\ir|dBus[2]~28_combout\) # 
-- (!\aluu|Mult0|auto_generated|le3a\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[2]~28_combout\,
	datab => \acc|accReg\(3),
	datac => \ir|dBus[3]~29_combout\,
	datad => \aluu|Mult0|auto_generated|le3a\(5),
	combout => \aluu|Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X18_Y12_N20
\aluu|Mult0|auto_generated|le5a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult0|auto_generated|le5a\(2) = (\acc|accReg\(2) & (((!\ir|dBus[2]~28_combout\ & \aluu|Mult0|auto_generated|le3a\(5))) # (!\ir|dBus[3]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|accReg\(2),
	datab => \ir|dBus[3]~29_combout\,
	datac => \ir|dBus[2]~28_combout\,
	datad => \aluu|Mult0|auto_generated|le3a\(5),
	combout => \aluu|Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X21_Y12_N26
\aluu|Mult0|auto_generated|le4a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult0|auto_generated|le4a\(3) = (\aluu|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\acc|accReg\(3) $ (\aluu|Mult0|auto_generated|le4a\(5))))) # (!\aluu|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\acc|accReg\(2) & 
-- ((\aluu|Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|accReg\(2),
	datab => \acc|accReg\(3),
	datac => \aluu|Mult0|auto_generated|le4a\(5),
	datad => \aluu|Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \aluu|Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X21_Y12_N0
\aluu|Mult0|auto_generated|le5a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult0|auto_generated|le5a\(1) = (\acc|accReg\(1) & (((!\ir|dBus[2]~28_combout\ & \aluu|Mult0|auto_generated|le3a\(5))) # (!\ir|dBus[3]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|accReg\(1),
	datab => \ir|dBus[3]~29_combout\,
	datac => \ir|dBus[2]~28_combout\,
	datad => \aluu|Mult0|auto_generated|le3a\(5),
	combout => \aluu|Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X21_Y12_N2
\aluu|Mult0|auto_generated|le3a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult0|auto_generated|le3a\(4) = (\aluu|Mult0|auto_generated|le3a\(5) & ((!\ir|dBus[0]~26_combout\) # (!\acc|accReg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \acc|accReg\(3),
	datac => \ir|dBus[0]~26_combout\,
	datad => \aluu|Mult0|auto_generated|le3a\(5),
	combout => \aluu|Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X21_Y12_N28
\aluu|Mult0|auto_generated|le4a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult0|auto_generated|le4a\(2) = (\aluu|Mult0|auto_generated|cs2a[1]~0_combout\ & (\acc|accReg\(2) $ (((\aluu|Mult0|auto_generated|le4a\(5)))))) # (!\aluu|Mult0|auto_generated|cs2a[1]~0_combout\ & (((!\acc|accReg\(1) & 
-- \aluu|Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|accReg\(2),
	datab => \acc|accReg\(1),
	datac => \aluu|Mult0|auto_generated|le4a\(5),
	datad => \aluu|Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \aluu|Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X21_Y12_N10
\aluu|Mult0|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult0|auto_generated|op_1~4_combout\ = ((\aluu|Mult0|auto_generated|le3a\(4) $ (\aluu|Mult0|auto_generated|le4a\(2) $ (!\aluu|Mult0|auto_generated|op_1~3\)))) # (GND)
-- \aluu|Mult0|auto_generated|op_1~5\ = CARRY((\aluu|Mult0|auto_generated|le3a\(4) & ((\aluu|Mult0|auto_generated|le4a\(2)) # (!\aluu|Mult0|auto_generated|op_1~3\))) # (!\aluu|Mult0|auto_generated|le3a\(4) & (\aluu|Mult0|auto_generated|le4a\(2) & 
-- !\aluu|Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|le3a\(4),
	datab => \aluu|Mult0|auto_generated|le4a\(2),
	datad => VCC,
	cin => \aluu|Mult0|auto_generated|op_1~3\,
	combout => \aluu|Mult0|auto_generated|op_1~4_combout\,
	cout => \aluu|Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X21_Y12_N12
\aluu|Mult0|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult0|auto_generated|op_1~6_combout\ = (\aluu|Mult0|auto_generated|le4a\(3) & ((\aluu|Mult0|auto_generated|le5a\(1) & (\aluu|Mult0|auto_generated|op_1~5\ & VCC)) # (!\aluu|Mult0|auto_generated|le5a\(1) & (!\aluu|Mult0|auto_generated|op_1~5\)))) # 
-- (!\aluu|Mult0|auto_generated|le4a\(3) & ((\aluu|Mult0|auto_generated|le5a\(1) & (!\aluu|Mult0|auto_generated|op_1~5\)) # (!\aluu|Mult0|auto_generated|le5a\(1) & ((\aluu|Mult0|auto_generated|op_1~5\) # (GND)))))
-- \aluu|Mult0|auto_generated|op_1~7\ = CARRY((\aluu|Mult0|auto_generated|le4a\(3) & (!\aluu|Mult0|auto_generated|le5a\(1) & !\aluu|Mult0|auto_generated|op_1~5\)) # (!\aluu|Mult0|auto_generated|le4a\(3) & ((!\aluu|Mult0|auto_generated|op_1~5\) # 
-- (!\aluu|Mult0|auto_generated|le5a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|le4a\(3),
	datab => \aluu|Mult0|auto_generated|le5a\(1),
	datad => VCC,
	cin => \aluu|Mult0|auto_generated|op_1~5\,
	combout => \aluu|Mult0|auto_generated|op_1~6_combout\,
	cout => \aluu|Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X21_Y12_N14
\aluu|Mult0|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult0|auto_generated|op_1~8_combout\ = ((\aluu|Mult0|auto_generated|le4a\(4) $ (\aluu|Mult0|auto_generated|le5a\(2) $ (!\aluu|Mult0|auto_generated|op_1~7\)))) # (GND)
-- \aluu|Mult0|auto_generated|op_1~9\ = CARRY((\aluu|Mult0|auto_generated|le4a\(4) & ((\aluu|Mult0|auto_generated|le5a\(2)) # (!\aluu|Mult0|auto_generated|op_1~7\))) # (!\aluu|Mult0|auto_generated|le4a\(4) & (\aluu|Mult0|auto_generated|le5a\(2) & 
-- !\aluu|Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|le4a\(4),
	datab => \aluu|Mult0|auto_generated|le5a\(2),
	datad => VCC,
	cin => \aluu|Mult0|auto_generated|op_1~7\,
	combout => \aluu|Mult0|auto_generated|op_1~8_combout\,
	cout => \aluu|Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X19_Y12_N12
\aluu|Mult0|auto_generated|le5a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult0|auto_generated|le5a\(0) = (\acc|accReg\(0) & (((!\ir|dBus[2]~28_combout\ & \aluu|Mult0|auto_generated|le3a\(5))) # (!\ir|dBus[3]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|accReg\(0),
	datab => \ir|dBus[2]~28_combout\,
	datac => \aluu|Mult0|auto_generated|le3a\(5),
	datad => \ir|dBus[3]~29_combout\,
	combout => \aluu|Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X22_Y12_N8
\aluu|Mult0|auto_generated|op_3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult0|auto_generated|op_3~8_combout\ = ((\aluu|Mult0|auto_generated|op_1~4_combout\ $ (\aluu|Mult0|auto_generated|le5a\(0) $ (!\aluu|Mult0|auto_generated|op_3~7\)))) # (GND)
-- \aluu|Mult0|auto_generated|op_3~9\ = CARRY((\aluu|Mult0|auto_generated|op_1~4_combout\ & ((\aluu|Mult0|auto_generated|le5a\(0)) # (!\aluu|Mult0|auto_generated|op_3~7\))) # (!\aluu|Mult0|auto_generated|op_1~4_combout\ & (\aluu|Mult0|auto_generated|le5a\(0) 
-- & !\aluu|Mult0|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|op_1~4_combout\,
	datab => \aluu|Mult0|auto_generated|le5a\(0),
	datad => VCC,
	cin => \aluu|Mult0|auto_generated|op_3~7\,
	combout => \aluu|Mult0|auto_generated|op_3~8_combout\,
	cout => \aluu|Mult0|auto_generated|op_3~9\);

-- Location: LCCOMB_X22_Y12_N10
\aluu|Mult0|auto_generated|op_3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult0|auto_generated|op_3~10_combout\ = (\aluu|Mult0|auto_generated|op_1~6_combout\ & ((\aluu|Mult0|auto_generated|le3a\(5) & (\aluu|Mult0|auto_generated|op_3~9\ & VCC)) # (!\aluu|Mult0|auto_generated|le3a\(5) & 
-- (!\aluu|Mult0|auto_generated|op_3~9\)))) # (!\aluu|Mult0|auto_generated|op_1~6_combout\ & ((\aluu|Mult0|auto_generated|le3a\(5) & (!\aluu|Mult0|auto_generated|op_3~9\)) # (!\aluu|Mult0|auto_generated|le3a\(5) & ((\aluu|Mult0|auto_generated|op_3~9\) # 
-- (GND)))))
-- \aluu|Mult0|auto_generated|op_3~11\ = CARRY((\aluu|Mult0|auto_generated|op_1~6_combout\ & (!\aluu|Mult0|auto_generated|le3a\(5) & !\aluu|Mult0|auto_generated|op_3~9\)) # (!\aluu|Mult0|auto_generated|op_1~6_combout\ & ((!\aluu|Mult0|auto_generated|op_3~9\) 
-- # (!\aluu|Mult0|auto_generated|le3a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|op_1~6_combout\,
	datab => \aluu|Mult0|auto_generated|le3a\(5),
	datad => VCC,
	cin => \aluu|Mult0|auto_generated|op_3~9\,
	combout => \aluu|Mult0|auto_generated|op_3~10_combout\,
	cout => \aluu|Mult0|auto_generated|op_3~11\);

-- Location: LCCOMB_X22_Y12_N12
\aluu|Mult0|auto_generated|op_3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult0|auto_generated|op_3~12_combout\ = ((\aluu|Mult0|auto_generated|op_1~8_combout\ $ (\aluu|Mult0|auto_generated|le3a\(5) $ (!\aluu|Mult0|auto_generated|op_3~11\)))) # (GND)
-- \aluu|Mult0|auto_generated|op_3~13\ = CARRY((\aluu|Mult0|auto_generated|op_1~8_combout\ & ((\aluu|Mult0|auto_generated|le3a\(5)) # (!\aluu|Mult0|auto_generated|op_3~11\))) # (!\aluu|Mult0|auto_generated|op_1~8_combout\ & 
-- (\aluu|Mult0|auto_generated|le3a\(5) & !\aluu|Mult0|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|op_1~8_combout\,
	datab => \aluu|Mult0|auto_generated|le3a\(5),
	datad => VCC,
	cin => \aluu|Mult0|auto_generated|op_3~11\,
	combout => \aluu|Mult0|auto_generated|op_3~12_combout\,
	cout => \aluu|Mult0|auto_generated|op_3~13\);

-- Location: LCCOMB_X24_Y12_N20
\aluu|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Add0~28_combout\ = \acc|accReg\(6) $ (((\ctl|alu_op\(0)) # (\ctl|alu_op\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|alu_op\(0),
	datac => \acc|accReg\(6),
	datad => \ctl|alu_op\(1),
	combout => \aluu|Add0~28_combout\);

-- Location: LCCOMB_X24_Y12_N18
\aluu|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Add0~27_combout\ = (\ctl|alu_op\(1) & (((!\ir|dBus[6]~32_combout\)))) # (!\ctl|alu_op\(1) & (\ctl|alu_op\(2) $ (((\ctl|alu_op\(0) & \ir|dBus[6]~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|alu_op\(2),
	datab => \ctl|alu_op\(1),
	datac => \ctl|alu_op\(0),
	datad => \ir|dBus[6]~32_combout\,
	combout => \aluu|Add0~27_combout\);

-- Location: LCCOMB_X23_Y12_N28
\aluu|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Add0~23_combout\ = (\ctl|alu_op\(1) & (((!\ir|dBus[5]~31_combout\)))) # (!\ctl|alu_op\(1) & (\ctl|alu_op\(2) $ (((\ctl|alu_op\(0) & \ir|dBus[5]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|alu_op\(1),
	datab => \ctl|alu_op\(0),
	datac => \ctl|alu_op\(2),
	datad => \ir|dBus[5]~31_combout\,
	combout => \aluu|Add0~23_combout\);

-- Location: LCCOMB_X24_Y12_N30
\aluu|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Add0~20_combout\ = \acc|accReg\(4) $ (((\ctl|alu_op\(0)) # (\ctl|alu_op\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|alu_op\(0),
	datac => \acc|accReg\(4),
	datad => \ctl|alu_op\(1),
	combout => \aluu|Add0~20_combout\);

-- Location: LCCOMB_X24_Y12_N16
\aluu|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Add0~19_combout\ = (\ctl|alu_op\(1) & (((!\ir|dBus[4]~30_combout\)))) # (!\ctl|alu_op\(1) & (\ctl|alu_op\(2) $ (((\ctl|alu_op\(0) & \ir|dBus[4]~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|alu_op\(2),
	datab => \ctl|alu_op\(1),
	datac => \ctl|alu_op\(0),
	datad => \ir|dBus[4]~30_combout\,
	combout => \aluu|Add0~19_combout\);

-- Location: LCCOMB_X23_Y12_N10
\aluu|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Add0~21_combout\ = (\aluu|Add0~20_combout\ & ((\aluu|Add0~19_combout\ & (!\aluu|Add0~18\)) # (!\aluu|Add0~19_combout\ & ((\aluu|Add0~18\) # (GND))))) # (!\aluu|Add0~20_combout\ & ((\aluu|Add0~19_combout\ & (\aluu|Add0~18\ & VCC)) # 
-- (!\aluu|Add0~19_combout\ & (!\aluu|Add0~18\))))
-- \aluu|Add0~22\ = CARRY((\aluu|Add0~20_combout\ & ((!\aluu|Add0~18\) # (!\aluu|Add0~19_combout\))) # (!\aluu|Add0~20_combout\ & (!\aluu|Add0~19_combout\ & !\aluu|Add0~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Add0~20_combout\,
	datab => \aluu|Add0~19_combout\,
	datad => VCC,
	cin => \aluu|Add0~18\,
	combout => \aluu|Add0~21_combout\,
	cout => \aluu|Add0~22\);

-- Location: LCCOMB_X23_Y12_N12
\aluu|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Add0~25_combout\ = ((\aluu|Add0~24_combout\ $ (\aluu|Add0~23_combout\ $ (\aluu|Add0~22\)))) # (GND)
-- \aluu|Add0~26\ = CARRY((\aluu|Add0~24_combout\ & (\aluu|Add0~23_combout\ & !\aluu|Add0~22\)) # (!\aluu|Add0~24_combout\ & ((\aluu|Add0~23_combout\) # (!\aluu|Add0~22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Add0~24_combout\,
	datab => \aluu|Add0~23_combout\,
	datad => VCC,
	cin => \aluu|Add0~22\,
	combout => \aluu|Add0~25_combout\,
	cout => \aluu|Add0~26\);

-- Location: LCCOMB_X23_Y12_N26
\acc|accReg~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg~21_combout\ = (\acc|accReg[6]~2_combout\ & (((\acc|accReg[6]~3_combout\)))) # (!\acc|accReg[6]~2_combout\ & ((\acc|accReg[6]~3_combout\ & ((\aluu|Add0~25_combout\))) # (!\acc|accReg[6]~3_combout\ & (\ir|dBus[5]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|accReg[6]~2_combout\,
	datab => \ir|dBus[5]~31_combout\,
	datac => \acc|accReg[6]~3_combout\,
	datad => \aluu|Add0~25_combout\,
	combout => \acc|accReg~21_combout\);

-- Location: LCCOMB_X22_Y12_N22
\acc|accReg~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg~22_combout\ = (\aluu|Equal13~0_combout\ & ((\acc|accReg~21_combout\ & (\aluu|Mult1|auto_generated|op_3~10_combout\)) # (!\acc|accReg~21_combout\ & ((\aluu|Mult0|auto_generated|op_3~10_combout\))))) # (!\aluu|Equal13~0_combout\ & 
-- (\acc|accReg~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Equal13~0_combout\,
	datab => \acc|accReg~21_combout\,
	datac => \aluu|Mult1|auto_generated|op_3~10_combout\,
	datad => \aluu|Mult0|auto_generated|op_3~10_combout\,
	combout => \acc|accReg~22_combout\);

-- Location: LCCOMB_X22_Y12_N30
\acc|accReg~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg~23_combout\ = (\ctl|acc_ld~0_combout\ & ((\ir|dBus[5]~31_combout\))) # (!\ctl|acc_ld~0_combout\ & (\acc|accReg~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctl|acc_ld~0_combout\,
	datac => \acc|accReg~22_combout\,
	datad => \ir|dBus[5]~31_combout\,
	combout => \acc|accReg~23_combout\);

-- Location: FF_X22_Y12_N31
\acc|accReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \acc|accReg~23_combout\,
	sclr => \reset~input_o\,
	ena => \acc|accReg~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acc|accReg\(5));

-- Location: LCCOMB_X24_Y12_N4
\aluu|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Add0~24_combout\ = \acc|accReg\(5) $ (((\ctl|alu_op\(0)) # (\ctl|alu_op\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|alu_op\(0),
	datac => \acc|accReg\(5),
	datad => \ctl|alu_op\(1),
	combout => \aluu|Add0~24_combout\);

-- Location: LCCOMB_X23_Y12_N14
\aluu|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Add0~29_combout\ = (\aluu|Add0~28_combout\ & ((\aluu|Add0~27_combout\ & (!\aluu|Add0~26\)) # (!\aluu|Add0~27_combout\ & ((\aluu|Add0~26\) # (GND))))) # (!\aluu|Add0~28_combout\ & ((\aluu|Add0~27_combout\ & (\aluu|Add0~26\ & VCC)) # 
-- (!\aluu|Add0~27_combout\ & (!\aluu|Add0~26\))))
-- \aluu|Add0~30\ = CARRY((\aluu|Add0~28_combout\ & ((!\aluu|Add0~26\) # (!\aluu|Add0~27_combout\))) # (!\aluu|Add0~28_combout\ & (!\aluu|Add0~27_combout\ & !\aluu|Add0~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Add0~28_combout\,
	datab => \aluu|Add0~27_combout\,
	datad => VCC,
	cin => \aluu|Add0~26\,
	combout => \aluu|Add0~29_combout\,
	cout => \aluu|Add0~30\);

-- Location: LCCOMB_X23_Y14_N12
\acc|accReg~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg~24_combout\ = (\acc|accReg[6]~2_combout\ & (\acc|accReg[6]~3_combout\)) # (!\acc|accReg[6]~2_combout\ & ((\acc|accReg[6]~3_combout\ & ((\aluu|Add0~29_combout\))) # (!\acc|accReg[6]~3_combout\ & (\ir|dBus[6]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|accReg[6]~2_combout\,
	datab => \acc|accReg[6]~3_combout\,
	datac => \ir|dBus[6]~32_combout\,
	datad => \aluu|Add0~29_combout\,
	combout => \acc|accReg~24_combout\);

-- Location: LCCOMB_X23_Y14_N18
\acc|accReg~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg~25_combout\ = (\aluu|Equal13~0_combout\ & ((\acc|accReg~24_combout\ & (\aluu|Mult1|auto_generated|op_3~12_combout\)) # (!\acc|accReg~24_combout\ & ((\aluu|Mult0|auto_generated|op_3~12_combout\))))) # (!\aluu|Equal13~0_combout\ & 
-- (((\acc|accReg~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult1|auto_generated|op_3~12_combout\,
	datab => \aluu|Equal13~0_combout\,
	datac => \aluu|Mult0|auto_generated|op_3~12_combout\,
	datad => \acc|accReg~24_combout\,
	combout => \acc|accReg~25_combout\);

-- Location: LCCOMB_X23_Y14_N14
\acc|accReg~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg~26_combout\ = (\ctl|acc_ld~0_combout\ & (\ir|dBus[6]~32_combout\)) # (!\ctl|acc_ld~0_combout\ & ((\acc|accReg~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|acc_ld~0_combout\,
	datac => \ir|dBus[6]~32_combout\,
	datad => \acc|accReg~25_combout\,
	combout => \acc|accReg~26_combout\);

-- Location: FF_X23_Y14_N15
\acc|accReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \acc|accReg~26_combout\,
	sclr => \reset~input_o\,
	ena => \acc|accReg~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acc|accReg\(6));

-- Location: LCCOMB_X13_Y11_N28
\ir|dBus[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[6]~22_combout\ = (!\ctl|state.branch0~q\ & ((\acc|accReg\(6)) # ((!\ctl|state.store0~q\ & !\ctl|state.store1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|state.store0~q\,
	datab => \acc|accReg\(6),
	datac => \ctl|state.store1~q\,
	datad => \ctl|state.branch0~q\,
	combout => \ir|dBus[6]~22_combout\);

-- Location: LCCOMB_X11_Y13_N12
\mem|ram[59][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[59][6]~combout\ = (\mem|ram[59][0]~47_combout\ & ((\ir|dBus[6]~32_combout\))) # (!\mem|ram[59][0]~47_combout\ & (\mem|ram[59][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[59][6]~combout\,
	datab => \ir|dBus[6]~32_combout\,
	datad => \mem|ram[59][0]~47_combout\,
	combout => \mem|ram[59][6]~combout\);

-- Location: LCCOMB_X11_Y13_N16
\mem|ram[58][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[58][6]~combout\ = (\mem|ram[58][0]~45_combout\ & ((\ir|dBus[6]~32_combout\))) # (!\mem|ram[58][0]~45_combout\ & (\mem|ram[58][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[58][6]~combout\,
	datac => \ir|dBus[6]~32_combout\,
	datad => \mem|ram[58][0]~45_combout\,
	combout => \mem|ram[58][6]~combout\);

-- Location: LCCOMB_X11_Y13_N26
\mem|ram[51][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[51][6]~combout\ = (\mem|ram[51][0]~55_combout\ & ((\ir|dBus[6]~32_combout\))) # (!\mem|ram[51][0]~55_combout\ & (\mem|ram[51][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[51][6]~combout\,
	datac => \ir|dBus[6]~32_combout\,
	datad => \mem|ram[51][0]~55_combout\,
	combout => \mem|ram[51][6]~combout\);

-- Location: LCCOMB_X11_Y13_N2
\mem|ram[50][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[50][6]~combout\ = (\mem|ram[50][0]~52_combout\ & (\ir|dBus[6]~32_combout\)) # (!\mem|ram[50][0]~52_combout\ & ((\mem|ram[50][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[6]~32_combout\,
	datab => \mem|ram[50][6]~combout\,
	datac => \mem|ram[50][0]~52_combout\,
	combout => \mem|ram[50][6]~combout\);

-- Location: LCCOMB_X11_Y13_N28
\mem|Mux1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~31_combout\ = (\pc|aBus[3]~9_combout\ & (((\pc|aBus[0]~6_combout\)))) # (!\pc|aBus[3]~9_combout\ & ((\pc|aBus[0]~6_combout\ & (\mem|ram[51][6]~combout\)) # (!\pc|aBus[0]~6_combout\ & ((\mem|ram[50][6]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[51][6]~combout\,
	datab => \mem|ram[50][6]~combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Mux1~31_combout\);

-- Location: LCCOMB_X11_Y13_N14
\mem|Mux1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~32_combout\ = (\pc|aBus[3]~9_combout\ & ((\mem|Mux1~31_combout\ & (\mem|ram[59][6]~combout\)) # (!\mem|Mux1~31_combout\ & ((\mem|ram[58][6]~combout\))))) # (!\pc|aBus[3]~9_combout\ & (((\mem|Mux1~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[59][6]~combout\,
	datab => \mem|ram[58][6]~combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \mem|Mux1~31_combout\,
	combout => \mem|Mux1~32_combout\);

-- Location: LCCOMB_X11_Y16_N18
\mem|ram[56][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[56][6]~combout\ = (\mem|ram[56][0]~46_combout\ & (\ir|dBus[6]~32_combout\)) # (!\mem|ram[56][0]~46_combout\ & ((\mem|ram[56][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[6]~32_combout\,
	datac => \mem|ram[56][6]~combout\,
	datad => \mem|ram[56][0]~46_combout\,
	combout => \mem|ram[56][6]~combout\);

-- Location: LCCOMB_X11_Y16_N22
\mem|ram[57][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[57][6]~combout\ = (\mem|ram[57][0]~44_combout\ & (\ir|dBus[6]~32_combout\)) # (!\mem|ram[57][0]~44_combout\ & ((\mem|ram[57][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[6]~32_combout\,
	datac => \mem|ram[57][0]~44_combout\,
	datad => \mem|ram[57][6]~combout\,
	combout => \mem|ram[57][6]~combout\);

-- Location: LCCOMB_X11_Y16_N12
\mem|ram[49][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[49][6]~combout\ = (\mem|ram[49][0]~53_combout\ & (\ir|dBus[6]~32_combout\)) # (!\mem|ram[49][0]~53_combout\ & ((\mem|ram[49][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[6]~32_combout\,
	datac => \mem|ram[49][0]~53_combout\,
	datad => \mem|ram[49][6]~combout\,
	combout => \mem|ram[49][6]~combout\);

-- Location: LCCOMB_X11_Y16_N26
\mem|ram[48][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[48][6]~combout\ = (\mem|ram[48][0]~54_combout\ & (\ir|dBus[6]~32_combout\)) # (!\mem|ram[48][0]~54_combout\ & ((\mem|ram[48][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[6]~32_combout\,
	datac => \mem|ram[48][6]~combout\,
	datad => \mem|ram[48][0]~54_combout\,
	combout => \mem|ram[48][6]~combout\);

-- Location: LCCOMB_X11_Y16_N24
\mem|Mux1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~35_combout\ = (\pc|aBus[3]~9_combout\ & (((\pc|aBus[0]~6_combout\)))) # (!\pc|aBus[3]~9_combout\ & ((\pc|aBus[0]~6_combout\ & (\mem|ram[49][6]~combout\)) # (!\pc|aBus[0]~6_combout\ & ((\mem|ram[48][6]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[49][6]~combout\,
	datab => \mem|ram[48][6]~combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Mux1~35_combout\);

-- Location: LCCOMB_X11_Y16_N30
\mem|Mux1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~36_combout\ = (\pc|aBus[3]~9_combout\ & ((\mem|Mux1~35_combout\ & ((\mem|ram[57][6]~combout\))) # (!\mem|Mux1~35_combout\ & (\mem|ram[56][6]~combout\)))) # (!\pc|aBus[3]~9_combout\ & (((\mem|Mux1~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[56][6]~combout\,
	datab => \mem|ram[57][6]~combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \mem|Mux1~35_combout\,
	combout => \mem|Mux1~36_combout\);

-- Location: LCCOMB_X14_Y13_N2
\mem|ram[60][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[60][6]~combout\ = (\mem|ram[60][0]~58_combout\ & ((\ir|dBus[6]~32_combout\))) # (!\mem|ram[60][0]~58_combout\ & (\mem|ram[60][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[60][6]~combout\,
	datac => \ir|dBus[6]~32_combout\,
	datad => \mem|ram[60][0]~58_combout\,
	combout => \mem|ram[60][6]~combout\);

-- Location: LCCOMB_X11_Y16_N28
\mem|ram[61][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[61][6]~combout\ = (\mem|ram[61][0]~57_combout\ & (\ir|dBus[6]~32_combout\)) # (!\mem|ram[61][0]~57_combout\ & ((\mem|ram[61][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[6]~32_combout\,
	datab => \mem|ram[61][6]~combout\,
	datad => \mem|ram[61][0]~57_combout\,
	combout => \mem|ram[61][6]~combout\);

-- Location: LCCOMB_X11_Y16_N20
\mem|ram[53][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[53][6]~combout\ = (\mem|ram[53][0]~49_combout\ & ((\ir|dBus[6]~32_combout\))) # (!\mem|ram[53][0]~49_combout\ & (\mem|ram[53][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[53][6]~combout\,
	datac => \ir|dBus[6]~32_combout\,
	datad => \mem|ram[53][0]~49_combout\,
	combout => \mem|ram[53][6]~combout\);

-- Location: LCCOMB_X11_Y16_N14
\mem|ram[52][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[52][6]~combout\ = (\mem|ram[52][0]~50_combout\ & (\ir|dBus[6]~32_combout\)) # (!\mem|ram[52][0]~50_combout\ & ((\mem|ram[52][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[6]~32_combout\,
	datac => \mem|ram[52][6]~combout\,
	datad => \mem|ram[52][0]~50_combout\,
	combout => \mem|ram[52][6]~combout\);

-- Location: LCCOMB_X11_Y16_N10
\mem|Mux1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~33_combout\ = (\pc|aBus[3]~9_combout\ & (((\pc|aBus[0]~6_combout\)))) # (!\pc|aBus[3]~9_combout\ & ((\pc|aBus[0]~6_combout\ & (\mem|ram[53][6]~combout\)) # (!\pc|aBus[0]~6_combout\ & ((\mem|ram[52][6]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[53][6]~combout\,
	datab => \mem|ram[52][6]~combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Mux1~33_combout\);

-- Location: LCCOMB_X11_Y16_N16
\mem|Mux1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~34_combout\ = (\pc|aBus[3]~9_combout\ & ((\mem|Mux1~33_combout\ & ((\mem|ram[61][6]~combout\))) # (!\mem|Mux1~33_combout\ & (\mem|ram[60][6]~combout\)))) # (!\pc|aBus[3]~9_combout\ & (((\mem|Mux1~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[60][6]~combout\,
	datab => \mem|ram[61][6]~combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \mem|Mux1~33_combout\,
	combout => \mem|Mux1~34_combout\);

-- Location: LCCOMB_X11_Y16_N6
\mem|Mux1~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~37_combout\ = (\pc|aBus[2]~8_combout\ & ((\pc|aBus[1]~7_combout\) # ((\mem|Mux1~34_combout\)))) # (!\pc|aBus[2]~8_combout\ & (!\pc|aBus[1]~7_combout\ & (\mem|Mux1~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \pc|aBus[1]~7_combout\,
	datac => \mem|Mux1~36_combout\,
	datad => \mem|Mux1~34_combout\,
	combout => \mem|Mux1~37_combout\);

-- Location: LCCOMB_X12_Y16_N18
\mem|ram[63][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[63][6]~combout\ = (\mem|ram[63][1]~59_combout\ & ((\ir|dBus[6]~32_combout\))) # (!\mem|ram[63][1]~59_combout\ & (\mem|ram[63][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[63][6]~combout\,
	datac => \mem|ram[63][1]~59_combout\,
	datad => \ir|dBus[6]~32_combout\,
	combout => \mem|ram[63][6]~combout\);

-- Location: LCCOMB_X12_Y16_N14
\mem|ram[62][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[62][6]~combout\ = (\mem|ram[62][0]~56_combout\ & (\ir|dBus[6]~32_combout\)) # (!\mem|ram[62][0]~56_combout\ & ((\mem|ram[62][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[6]~32_combout\,
	datac => \mem|ram[62][0]~56_combout\,
	datad => \mem|ram[62][6]~combout\,
	combout => \mem|ram[62][6]~combout\);

-- Location: LCCOMB_X12_Y16_N2
\mem|ram[54][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[54][6]~combout\ = (\mem|ram[54][0]~48_combout\ & (\ir|dBus[6]~32_combout\)) # (!\mem|ram[54][0]~48_combout\ & ((\mem|ram[54][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[6]~32_combout\,
	datac => \mem|ram[54][6]~combout\,
	datad => \mem|ram[54][0]~48_combout\,
	combout => \mem|ram[54][6]~combout\);

-- Location: LCCOMB_X12_Y16_N4
\mem|ram[55][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[55][6]~combout\ = (\mem|ram[55][0]~51_combout\ & (\ir|dBus[6]~32_combout\)) # (!\mem|ram[55][0]~51_combout\ & ((\mem|ram[55][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[6]~32_combout\,
	datab => \mem|ram[55][6]~combout\,
	datad => \mem|ram[55][0]~51_combout\,
	combout => \mem|ram[55][6]~combout\);

-- Location: LCCOMB_X12_Y16_N0
\mem|Mux1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~38_combout\ = (\pc|aBus[3]~9_combout\ & (((\pc|aBus[0]~6_combout\)))) # (!\pc|aBus[3]~9_combout\ & ((\pc|aBus[0]~6_combout\ & ((\mem|ram[55][6]~combout\))) # (!\pc|aBus[0]~6_combout\ & (\mem|ram[54][6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[54][6]~combout\,
	datab => \mem|ram[55][6]~combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Mux1~38_combout\);

-- Location: LCCOMB_X12_Y16_N6
\mem|Mux1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~39_combout\ = (\pc|aBus[3]~9_combout\ & ((\mem|Mux1~38_combout\ & (\mem|ram[63][6]~combout\)) # (!\mem|Mux1~38_combout\ & ((\mem|ram[62][6]~combout\))))) # (!\pc|aBus[3]~9_combout\ & (((\mem|Mux1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[3]~9_combout\,
	datab => \mem|ram[63][6]~combout\,
	datac => \mem|ram[62][6]~combout\,
	datad => \mem|Mux1~38_combout\,
	combout => \mem|Mux1~39_combout\);

-- Location: LCCOMB_X12_Y12_N30
\mem|Mux1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~40_combout\ = (\pc|aBus[1]~7_combout\ & ((\mem|Mux1~37_combout\ & ((\mem|Mux1~39_combout\))) # (!\mem|Mux1~37_combout\ & (\mem|Mux1~32_combout\)))) # (!\pc|aBus[1]~7_combout\ & (((\mem|Mux1~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux1~32_combout\,
	datab => \pc|aBus[1]~7_combout\,
	datac => \mem|Mux1~37_combout\,
	datad => \mem|Mux1~39_combout\,
	combout => \mem|Mux1~40_combout\);

-- Location: LCCOMB_X13_Y10_N10
\mem|ram[47][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[47][6]~combout\ = (\mem|ram[47][0]~17_combout\ & ((\ir|dBus[6]~32_combout\))) # (!\mem|ram[47][0]~17_combout\ & (\mem|ram[47][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[47][6]~combout\,
	datac => \ir|dBus[6]~32_combout\,
	datad => \mem|ram[47][0]~17_combout\,
	combout => \mem|ram[47][6]~combout\);

-- Location: LCCOMB_X13_Y10_N16
\mem|ram[43][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[43][6]~combout\ = (\mem|ram[43][0]~15_combout\ & (\ir|dBus[6]~32_combout\)) # (!\mem|ram[43][0]~15_combout\ & ((\mem|ram[43][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[6]~32_combout\,
	datac => \mem|ram[43][0]~15_combout\,
	datad => \mem|ram[43][6]~combout\,
	combout => \mem|ram[43][6]~combout\);

-- Location: LCCOMB_X13_Y10_N26
\mem|ram[39][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[39][6]~combout\ = (\mem|ram[39][0]~9_combout\ & (\ir|dBus[6]~32_combout\)) # (!\mem|ram[39][0]~9_combout\ & ((\mem|ram[39][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[6]~32_combout\,
	datac => \mem|ram[39][6]~combout\,
	datad => \mem|ram[39][0]~9_combout\,
	combout => \mem|ram[39][6]~combout\);

-- Location: LCCOMB_X13_Y10_N12
\mem|ram[35][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[35][6]~combout\ = (\mem|ram[35][0]~7_combout\ & ((\ir|dBus[6]~32_combout\))) # (!\mem|ram[35][0]~7_combout\ & (\mem|ram[35][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[35][6]~combout\,
	datab => \ir|dBus[6]~32_combout\,
	datac => \mem|ram[35][0]~7_combout\,
	combout => \mem|ram[35][6]~combout\);

-- Location: LCCOMB_X13_Y10_N8
\mem|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~7_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|ram[39][6]~combout\) # ((\pc|aBus[3]~9_combout\)))) # (!\pc|aBus[2]~8_combout\ & (((\mem|ram[35][6]~combout\ & !\pc|aBus[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[39][6]~combout\,
	datab => \mem|ram[35][6]~combout\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \pc|aBus[3]~9_combout\,
	combout => \mem|Mux1~7_combout\);

-- Location: LCCOMB_X13_Y10_N6
\mem|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~8_combout\ = (\mem|Mux1~7_combout\ & ((\mem|ram[47][6]~combout\) # ((!\pc|aBus[3]~9_combout\)))) # (!\mem|Mux1~7_combout\ & (((\mem|ram[43][6]~combout\ & \pc|aBus[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[47][6]~combout\,
	datab => \mem|ram[43][6]~combout\,
	datac => \mem|Mux1~7_combout\,
	datad => \pc|aBus[3]~9_combout\,
	combout => \mem|Mux1~8_combout\);

-- Location: LCCOMB_X13_Y10_N30
\mem|ram[45][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[45][6]~combout\ = (\mem|ram[45][0]~4_combout\ & ((\ir|dBus[6]~32_combout\))) # (!\mem|ram[45][0]~4_combout\ & (\mem|ram[45][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[45][6]~combout\,
	datac => \mem|ram[45][0]~4_combout\,
	datad => \ir|dBus[6]~32_combout\,
	combout => \mem|ram[45][6]~combout\);

-- Location: LCCOMB_X16_Y13_N6
\mem|ram[41][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[41][6]~combout\ = (\mem|ram[41][0]~1_combout\ & ((\ir|dBus[6]~32_combout\))) # (!\mem|ram[41][0]~1_combout\ & (\mem|ram[41][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[41][6]~combout\,
	datac => \ir|dBus[6]~32_combout\,
	datad => \mem|ram[41][0]~1_combout\,
	combout => \mem|ram[41][6]~combout\);

-- Location: LCCOMB_X12_Y10_N4
\mem|ram[33][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[33][6]~combout\ = (\mem|ram[33][0]~10_combout\ & (\ir|dBus[6]~32_combout\)) # (!\mem|ram[33][0]~10_combout\ & ((\mem|ram[33][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[6]~32_combout\,
	datac => \mem|ram[33][0]~10_combout\,
	datad => \mem|ram[33][6]~combout\,
	combout => \mem|ram[33][6]~combout\);

-- Location: LCCOMB_X13_Y10_N20
\mem|ram[37][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[37][6]~combout\ = (\mem|ram[37][0]~13_combout\ & (\ir|dBus[6]~32_combout\)) # (!\mem|ram[37][0]~13_combout\ & ((\mem|ram[37][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[6]~32_combout\,
	datac => \mem|ram[37][0]~13_combout\,
	datad => \mem|ram[37][6]~combout\,
	combout => \mem|ram[37][6]~combout\);

-- Location: LCCOMB_X13_Y10_N28
\mem|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~0_combout\ = (\pc|aBus[2]~8_combout\ & (((\mem|ram[37][6]~combout\) # (\pc|aBus[3]~9_combout\)))) # (!\pc|aBus[2]~8_combout\ & (\mem|ram[33][6]~combout\ & ((!\pc|aBus[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[33][6]~combout\,
	datab => \mem|ram[37][6]~combout\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \pc|aBus[3]~9_combout\,
	combout => \mem|Mux1~0_combout\);

-- Location: LCCOMB_X13_Y10_N2
\mem|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~1_combout\ = (\pc|aBus[3]~9_combout\ & ((\mem|Mux1~0_combout\ & (\mem|ram[45][6]~combout\)) # (!\mem|Mux1~0_combout\ & ((\mem|ram[41][6]~combout\))))) # (!\pc|aBus[3]~9_combout\ & (((\mem|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[45][6]~combout\,
	datab => \pc|aBus[3]~9_combout\,
	datac => \mem|ram[41][6]~combout\,
	datad => \mem|Mux1~0_combout\,
	combout => \mem|Mux1~1_combout\);

-- Location: LCCOMB_X16_Y16_N22
\mem|ram[42][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[42][6]~combout\ = (\mem|ram[42][0]~16_combout\ & ((\ir|dBus[6]~32_combout\))) # (!\mem|ram[42][0]~16_combout\ & (\mem|ram[42][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[42][6]~combout\,
	datac => \ir|dBus[6]~32_combout\,
	datad => \mem|ram[42][0]~16_combout\,
	combout => \mem|ram[42][6]~combout\);

-- Location: LCCOMB_X16_Y16_N20
\mem|ram[46][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[46][6]~combout\ = (\mem|ram[46][0]~14_combout\ & ((\ir|dBus[6]~32_combout\))) # (!\mem|ram[46][0]~14_combout\ & (\mem|ram[46][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[46][6]~combout\,
	datac => \ir|dBus[6]~32_combout\,
	datad => \mem|ram[46][0]~14_combout\,
	combout => \mem|ram[46][6]~combout\);

-- Location: LCCOMB_X16_Y16_N10
\mem|ram[34][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[34][6]~combout\ = (\mem|ram[34][0]~8_combout\ & ((\ir|dBus[6]~32_combout\))) # (!\mem|ram[34][0]~8_combout\ & (\mem|ram[34][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[34][6]~combout\,
	datac => \ir|dBus[6]~32_combout\,
	datad => \mem|ram[34][0]~8_combout\,
	combout => \mem|ram[34][6]~combout\);

-- Location: LCCOMB_X16_Y16_N6
\mem|ram[38][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[38][6]~combout\ = (\mem|ram[38][0]~6_combout\ & ((\ir|dBus[6]~32_combout\))) # (!\mem|ram[38][0]~6_combout\ & (\mem|ram[38][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[38][6]~combout\,
	datac => \ir|dBus[6]~32_combout\,
	datad => \mem|ram[38][0]~6_combout\,
	combout => \mem|ram[38][6]~combout\);

-- Location: LCCOMB_X16_Y16_N2
\mem|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~2_combout\ = (\pc|aBus[2]~8_combout\ & (((\mem|ram[38][6]~combout\) # (\pc|aBus[3]~9_combout\)))) # (!\pc|aBus[2]~8_combout\ & (\mem|ram[34][6]~combout\ & ((!\pc|aBus[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[34][6]~combout\,
	datab => \mem|ram[38][6]~combout\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \pc|aBus[3]~9_combout\,
	combout => \mem|Mux1~2_combout\);

-- Location: LCCOMB_X16_Y16_N4
\mem|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~3_combout\ = (\pc|aBus[3]~9_combout\ & ((\mem|Mux1~2_combout\ & ((\mem|ram[46][6]~combout\))) # (!\mem|Mux1~2_combout\ & (\mem|ram[42][6]~combout\)))) # (!\pc|aBus[3]~9_combout\ & (((\mem|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[42][6]~combout\,
	datab => \pc|aBus[3]~9_combout\,
	datac => \mem|ram[46][6]~combout\,
	datad => \mem|Mux1~2_combout\,
	combout => \mem|Mux1~3_combout\);

-- Location: LCCOMB_X16_Y16_N14
\mem|ram[40][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[40][6]~combout\ = (\mem|ram[40][0]~3_combout\ & (\ir|dBus[6]~32_combout\)) # (!\mem|ram[40][0]~3_combout\ & ((\mem|ram[40][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[6]~32_combout\,
	datac => \mem|ram[40][6]~combout\,
	datad => \mem|ram[40][0]~3_combout\,
	combout => \mem|ram[40][6]~combout\);

-- Location: LCCOMB_X16_Y16_N30
\mem|ram[44][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[44][6]~combout\ = (\mem|ram[44][0]~2_combout\ & ((\ir|dBus[6]~32_combout\))) # (!\mem|ram[44][0]~2_combout\ & (\mem|ram[44][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[44][6]~combout\,
	datac => \ir|dBus[6]~32_combout\,
	datad => \mem|ram[44][0]~2_combout\,
	combout => \mem|ram[44][6]~combout\);

-- Location: LCCOMB_X16_Y16_N12
\mem|ram[36][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[36][6]~combout\ = (\mem|ram[36][0]~11_combout\ & ((\ir|dBus[6]~32_combout\))) # (!\mem|ram[36][0]~11_combout\ & (\mem|ram[36][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[36][6]~combout\,
	datac => \ir|dBus[6]~32_combout\,
	datad => \mem|ram[36][0]~11_combout\,
	combout => \mem|ram[36][6]~combout\);

-- Location: LCCOMB_X16_Y16_N28
\mem|ram[32][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[32][6]~combout\ = (\mem|ram[32][0]~12_combout\ & (\ir|dBus[6]~32_combout\)) # (!\mem|ram[32][0]~12_combout\ & ((\mem|ram[32][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[6]~32_combout\,
	datac => \mem|ram[32][6]~combout\,
	datad => \mem|ram[32][0]~12_combout\,
	combout => \mem|ram[32][6]~combout\);

-- Location: LCCOMB_X16_Y16_N18
\mem|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~4_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|ram[36][6]~combout\) # ((\pc|aBus[3]~9_combout\)))) # (!\pc|aBus[2]~8_combout\ & (((\mem|ram[32][6]~combout\ & !\pc|aBus[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[36][6]~combout\,
	datab => \mem|ram[32][6]~combout\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \pc|aBus[3]~9_combout\,
	combout => \mem|Mux1~4_combout\);

-- Location: LCCOMB_X16_Y16_N24
\mem|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~5_combout\ = (\pc|aBus[3]~9_combout\ & ((\mem|Mux1~4_combout\ & ((\mem|ram[44][6]~combout\))) # (!\mem|Mux1~4_combout\ & (\mem|ram[40][6]~combout\)))) # (!\pc|aBus[3]~9_combout\ & (((\mem|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[40][6]~combout\,
	datab => \pc|aBus[3]~9_combout\,
	datac => \mem|ram[44][6]~combout\,
	datad => \mem|Mux1~4_combout\,
	combout => \mem|Mux1~5_combout\);

-- Location: LCCOMB_X16_Y16_N8
\mem|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~6_combout\ = (\pc|aBus[0]~6_combout\ & (\pc|aBus[1]~7_combout\)) # (!\pc|aBus[0]~6_combout\ & ((\pc|aBus[1]~7_combout\ & (\mem|Mux1~3_combout\)) # (!\pc|aBus[1]~7_combout\ & ((\mem|Mux1~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[0]~6_combout\,
	datab => \pc|aBus[1]~7_combout\,
	datac => \mem|Mux1~3_combout\,
	datad => \mem|Mux1~5_combout\,
	combout => \mem|Mux1~6_combout\);

-- Location: LCCOMB_X12_Y12_N4
\mem|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~9_combout\ = (\pc|aBus[0]~6_combout\ & ((\mem|Mux1~6_combout\ & (\mem|Mux1~8_combout\)) # (!\mem|Mux1~6_combout\ & ((\mem|Mux1~1_combout\))))) # (!\pc|aBus[0]~6_combout\ & (((\mem|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[0]~6_combout\,
	datab => \mem|Mux1~8_combout\,
	datac => \mem|Mux1~1_combout\,
	datad => \mem|Mux1~6_combout\,
	combout => \mem|Mux1~9_combout\);

-- Location: LCCOMB_X13_Y12_N10
\mem|ram[28][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[28][6]~combout\ = (\mem|ram[28][0]~19_combout\ & ((\ir|dBus[6]~32_combout\))) # (!\mem|ram[28][0]~19_combout\ & (\mem|ram[28][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[28][6]~combout\,
	datab => \ir|dBus[6]~32_combout\,
	datac => \mem|ram[28][0]~19_combout\,
	combout => \mem|ram[28][6]~combout\);

-- Location: LCCOMB_X13_Y12_N16
\mem|ram[30][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[30][6]~combout\ = (\mem|ram[30][0]~22_combout\ & (\ir|dBus[6]~32_combout\)) # (!\mem|ram[30][0]~22_combout\ & ((\mem|ram[30][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[6]~32_combout\,
	datab => \mem|ram[30][6]~combout\,
	datac => \mem|ram[30][0]~22_combout\,
	combout => \mem|ram[30][6]~combout\);

-- Location: LCCOMB_X13_Y12_N24
\mem|ram[20][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[20][6]~combout\ = (\mem|ram[20][0]~27_combout\ & ((\ir|dBus[6]~32_combout\))) # (!\mem|ram[20][0]~27_combout\ & (\mem|ram[20][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[20][6]~combout\,
	datac => \ir|dBus[6]~32_combout\,
	datad => \mem|ram[20][0]~27_combout\,
	combout => \mem|ram[20][6]~combout\);

-- Location: LCCOMB_X13_Y12_N28
\mem|ram[22][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[22][6]~combout\ = (\mem|ram[22][0]~30_combout\ & (\ir|dBus[6]~32_combout\)) # (!\mem|ram[22][0]~30_combout\ & ((\mem|ram[22][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[6]~32_combout\,
	datab => \mem|ram[22][6]~combout\,
	datac => \mem|ram[22][0]~30_combout\,
	combout => \mem|ram[22][6]~combout\);

-- Location: LCCOMB_X13_Y12_N18
\mem|Mux1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~10_combout\ = (\pc|aBus[3]~9_combout\ & (((\pc|aBus[1]~7_combout\)))) # (!\pc|aBus[3]~9_combout\ & ((\pc|aBus[1]~7_combout\ & ((\mem|ram[22][6]~combout\))) # (!\pc|aBus[1]~7_combout\ & (\mem|ram[20][6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[3]~9_combout\,
	datab => \mem|ram[20][6]~combout\,
	datac => \pc|aBus[1]~7_combout\,
	datad => \mem|ram[22][6]~combout\,
	combout => \mem|Mux1~10_combout\);

-- Location: LCCOMB_X13_Y12_N2
\mem|Mux1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~11_combout\ = (\pc|aBus[3]~9_combout\ & ((\mem|Mux1~10_combout\ & ((\mem|ram[30][6]~combout\))) # (!\mem|Mux1~10_combout\ & (\mem|ram[28][6]~combout\)))) # (!\pc|aBus[3]~9_combout\ & (((\mem|Mux1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[28][6]~combout\,
	datab => \mem|ram[30][6]~combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \mem|Mux1~10_combout\,
	combout => \mem|Mux1~11_combout\);

-- Location: LCCOMB_X19_Y12_N14
\mem|ram[31][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[31][6]~combout\ = (\mem|ram[31][0]~34_combout\ & (\ir|dBus[6]~32_combout\)) # (!\mem|ram[31][0]~34_combout\ & ((\mem|ram[31][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[6]~32_combout\,
	datac => \mem|ram[31][6]~combout\,
	datad => \mem|ram[31][0]~34_combout\,
	combout => \mem|ram[31][6]~combout\);

-- Location: LCCOMB_X19_Y12_N8
\mem|ram[29][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[29][6]~combout\ = (\mem|ram[29][0]~31_combout\ & ((\ir|dBus[6]~32_combout\))) # (!\mem|ram[29][0]~31_combout\ & (\mem|ram[29][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[29][6]~combout\,
	datac => \ir|dBus[6]~32_combout\,
	datad => \mem|ram[29][0]~31_combout\,
	combout => \mem|ram[29][6]~combout\);

-- Location: LCCOMB_X19_Y12_N30
\mem|ram[21][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[21][6]~combout\ = (\mem|ram[21][0]~23_combout\ & ((\ir|dBus[6]~32_combout\))) # (!\mem|ram[21][0]~23_combout\ & (\mem|ram[21][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[21][6]~combout\,
	datac => \ir|dBus[6]~32_combout\,
	datad => \mem|ram[21][0]~23_combout\,
	combout => \mem|ram[21][6]~combout\);

-- Location: LCCOMB_X19_Y12_N28
\mem|ram[23][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[23][6]~combout\ = (\mem|ram[23][0]~26_combout\ & (\ir|dBus[6]~32_combout\)) # (!\mem|ram[23][0]~26_combout\ & ((\mem|ram[23][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[6]~32_combout\,
	datac => \mem|ram[23][0]~26_combout\,
	datad => \mem|ram[23][6]~combout\,
	combout => \mem|ram[23][6]~combout\);

-- Location: LCCOMB_X19_Y12_N10
\mem|Mux1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~17_combout\ = (\pc|aBus[3]~9_combout\ & (\pc|aBus[1]~7_combout\)) # (!\pc|aBus[3]~9_combout\ & ((\pc|aBus[1]~7_combout\ & ((\mem|ram[23][6]~combout\))) # (!\pc|aBus[1]~7_combout\ & (\mem|ram[21][6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[3]~9_combout\,
	datab => \pc|aBus[1]~7_combout\,
	datac => \mem|ram[21][6]~combout\,
	datad => \mem|ram[23][6]~combout\,
	combout => \mem|Mux1~17_combout\);

-- Location: LCCOMB_X19_Y12_N20
\mem|Mux1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~18_combout\ = (\pc|aBus[3]~9_combout\ & ((\mem|Mux1~17_combout\ & (\mem|ram[31][6]~combout\)) # (!\mem|Mux1~17_combout\ & ((\mem|ram[29][6]~combout\))))) # (!\pc|aBus[3]~9_combout\ & (((\mem|Mux1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[3]~9_combout\,
	datab => \mem|ram[31][6]~combout\,
	datac => \mem|ram[29][6]~combout\,
	datad => \mem|Mux1~17_combout\,
	combout => \mem|Mux1~18_combout\);

-- Location: LCCOMB_X11_Y12_N16
\mem|ram[24][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[24][6]~combout\ = (\mem|ram[24][0]~21_combout\ & (\ir|dBus[6]~32_combout\)) # (!\mem|ram[24][0]~21_combout\ & ((\mem|ram[24][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[6]~32_combout\,
	datac => \mem|ram[24][6]~combout\,
	datad => \mem|ram[24][0]~21_combout\,
	combout => \mem|ram[24][6]~combout\);

-- Location: LCCOMB_X13_Y11_N22
\mem|ram[26][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[26][6]~combout\ = (\mem|ram[26][0]~20_combout\ & (\ir|dBus[6]~32_combout\)) # (!\mem|ram[26][0]~20_combout\ & ((\mem|ram[26][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[6]~32_combout\,
	datac => \mem|ram[26][6]~combout\,
	datad => \mem|ram[26][0]~20_combout\,
	combout => \mem|ram[26][6]~combout\);

-- Location: LCCOMB_X11_Y12_N2
\mem|ram[18][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[18][6]~combout\ = (\mem|ram[18][0]~28_combout\ & (\ir|dBus[6]~32_combout\)) # (!\mem|ram[18][0]~28_combout\ & ((\mem|ram[18][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[6]~32_combout\,
	datac => \mem|ram[18][6]~combout\,
	datad => \mem|ram[18][0]~28_combout\,
	combout => \mem|ram[18][6]~combout\);

-- Location: LCCOMB_X12_Y10_N18
\mem|ram[16][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[16][6]~combout\ = (\mem|ram[16][0]~29_combout\ & (\ir|dBus[6]~32_combout\)) # (!\mem|ram[16][0]~29_combout\ & ((\mem|ram[16][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[6]~32_combout\,
	datac => \mem|ram[16][0]~29_combout\,
	datad => \mem|ram[16][6]~combout\,
	combout => \mem|ram[16][6]~combout\);

-- Location: LCCOMB_X12_Y12_N20
\mem|Mux1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~14_combout\ = (\pc|aBus[1]~7_combout\ & ((\mem|ram[18][6]~combout\) # ((\pc|aBus[3]~9_combout\)))) # (!\pc|aBus[1]~7_combout\ & (((\mem|ram[16][6]~combout\ & !\pc|aBus[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[18][6]~combout\,
	datab => \mem|ram[16][6]~combout\,
	datac => \pc|aBus[1]~7_combout\,
	datad => \pc|aBus[3]~9_combout\,
	combout => \mem|Mux1~14_combout\);

-- Location: LCCOMB_X12_Y12_N26
\mem|Mux1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~15_combout\ = (\pc|aBus[3]~9_combout\ & ((\mem|Mux1~14_combout\ & ((\mem|ram[26][6]~combout\))) # (!\mem|Mux1~14_combout\ & (\mem|ram[24][6]~combout\)))) # (!\pc|aBus[3]~9_combout\ & (((\mem|Mux1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[24][6]~combout\,
	datab => \pc|aBus[3]~9_combout\,
	datac => \mem|ram[26][6]~combout\,
	datad => \mem|Mux1~14_combout\,
	combout => \mem|Mux1~15_combout\);

-- Location: LCCOMB_X10_Y12_N14
\mem|ram[25][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[25][6]~combout\ = (\mem|ram[25][0]~33_combout\ & (\ir|dBus[6]~32_combout\)) # (!\mem|ram[25][0]~33_combout\ & ((\mem|ram[25][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[6]~32_combout\,
	datac => \mem|ram[25][0]~33_combout\,
	datad => \mem|ram[25][6]~combout\,
	combout => \mem|ram[25][6]~combout\);

-- Location: LCCOMB_X14_Y12_N8
\mem|ram[27][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[27][6]~combout\ = (\mem|ram[27][0]~32_combout\ & (\ir|dBus[6]~32_combout\)) # (!\mem|ram[27][0]~32_combout\ & ((\mem|ram[27][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[6]~32_combout\,
	datab => \mem|ram[27][0]~32_combout\,
	datac => \mem|ram[27][6]~combout\,
	combout => \mem|ram[27][6]~combout\);

-- Location: LCCOMB_X10_Y12_N4
\mem|ram[19][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[19][6]~combout\ = (\mem|ram[19][0]~24_combout\ & (\ir|dBus[6]~32_combout\)) # (!\mem|ram[19][0]~24_combout\ & ((\mem|ram[19][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[6]~32_combout\,
	datac => \mem|ram[19][6]~combout\,
	datad => \mem|ram[19][0]~24_combout\,
	combout => \mem|ram[19][6]~combout\);

-- Location: LCCOMB_X10_Y12_N8
\mem|ram[17][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[17][6]~combout\ = (\mem|ram[17][0]~25_combout\ & (\ir|dBus[6]~32_combout\)) # (!\mem|ram[17][0]~25_combout\ & ((\mem|ram[17][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[6]~32_combout\,
	datac => \mem|ram[17][6]~combout\,
	datad => \mem|ram[17][0]~25_combout\,
	combout => \mem|ram[17][6]~combout\);

-- Location: LCCOMB_X10_Y12_N16
\mem|Mux1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~12_combout\ = (\pc|aBus[1]~7_combout\ & ((\mem|ram[19][6]~combout\) # ((\pc|aBus[3]~9_combout\)))) # (!\pc|aBus[1]~7_combout\ & (((\mem|ram[17][6]~combout\ & !\pc|aBus[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[19][6]~combout\,
	datab => \mem|ram[17][6]~combout\,
	datac => \pc|aBus[1]~7_combout\,
	datad => \pc|aBus[3]~9_combout\,
	combout => \mem|Mux1~12_combout\);

-- Location: LCCOMB_X12_Y12_N2
\mem|Mux1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~13_combout\ = (\pc|aBus[3]~9_combout\ & ((\mem|Mux1~12_combout\ & ((\mem|ram[27][6]~combout\))) # (!\mem|Mux1~12_combout\ & (\mem|ram[25][6]~combout\)))) # (!\pc|aBus[3]~9_combout\ & (((\mem|Mux1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[25][6]~combout\,
	datab => \pc|aBus[3]~9_combout\,
	datac => \mem|ram[27][6]~combout\,
	datad => \mem|Mux1~12_combout\,
	combout => \mem|Mux1~13_combout\);

-- Location: LCCOMB_X12_Y12_N0
\mem|Mux1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~16_combout\ = (\pc|aBus[0]~6_combout\ & ((\pc|aBus[2]~8_combout\) # ((\mem|Mux1~13_combout\)))) # (!\pc|aBus[0]~6_combout\ & (!\pc|aBus[2]~8_combout\ & (\mem|Mux1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[0]~6_combout\,
	datab => \pc|aBus[2]~8_combout\,
	datac => \mem|Mux1~15_combout\,
	datad => \mem|Mux1~13_combout\,
	combout => \mem|Mux1~16_combout\);

-- Location: LCCOMB_X12_Y12_N14
\mem|Mux1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~19_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|Mux1~16_combout\ & ((\mem|Mux1~18_combout\))) # (!\mem|Mux1~16_combout\ & (\mem|Mux1~11_combout\)))) # (!\pc|aBus[2]~8_combout\ & (((\mem|Mux1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux1~11_combout\,
	datab => \pc|aBus[2]~8_combout\,
	datac => \mem|Mux1~18_combout\,
	datad => \mem|Mux1~16_combout\,
	combout => \mem|Mux1~19_combout\);

-- Location: LCCOMB_X13_Y12_N30
\mem|ram[14][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[14][6]~combout\ = (\mem|ram[14][0]~39_combout\ & ((\ir|dBus[6]~32_combout\))) # (!\mem|ram[14][0]~39_combout\ & (\mem|ram[14][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[14][6]~combout\,
	datac => \ir|dBus[6]~32_combout\,
	datad => \mem|ram[14][0]~39_combout\,
	combout => \mem|ram[14][6]~combout\);

-- Location: LCCOMB_X13_Y12_N4
\mem|ram[15][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[15][6]~combout\ = (\mem|ram[15][0]~42_combout\ & ((\ir|dBus[6]~32_combout\))) # (!\mem|ram[15][0]~42_combout\ & (\mem|ram[15][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[15][6]~combout\,
	datac => \ir|dBus[6]~32_combout\,
	datad => \mem|ram[15][0]~42_combout\,
	combout => \mem|ram[15][6]~combout\);

-- Location: LCCOMB_X12_Y12_N22
\ir|dBus[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[6]~41_combout\ = ((\ir|dBus[6]~22_combout\ & ((\mem|Mux1~41_combout\) # (!\mem|dBus~1_combout\)))) # (!\ir|dBus[0]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[0]~34_combout\,
	datab => \mem|dBus~1_combout\,
	datac => \ir|dBus[6]~22_combout\,
	datad => \mem|Mux1~41_combout\,
	combout => \ir|dBus[6]~41_combout\);

-- Location: LCCOMB_X14_Y12_N16
\mem|ram[6][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[6][6]~combout\ = (\reset~input_o\) # ((GLOBAL(\mem|Decoder0~10clkctrl_outclk\) & (\ir|dBus[6]~41_combout\)) # (!GLOBAL(\mem|Decoder0~10clkctrl_outclk\) & ((\mem|ram[6][6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ir|dBus[6]~41_combout\,
	datac => \mem|ram[6][6]~combout\,
	datad => \mem|Decoder0~10clkctrl_outclk\,
	combout => \mem|ram[6][6]~combout\);

-- Location: LCCOMB_X14_Y12_N14
\mem|ram[7][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[7][6]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~12clkctrl_outclk\) & ((\ir|dBus[6]~41_combout\))) # (!GLOBAL(\mem|Decoder0~12clkctrl_outclk\) & (\mem|ram[7][6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \mem|ram[7][6]~combout\,
	datac => \ir|dBus[6]~41_combout\,
	datad => \mem|Decoder0~12clkctrl_outclk\,
	combout => \mem|ram[7][6]~combout\);

-- Location: LCCOMB_X14_Y12_N28
\mem|Mux1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~27_combout\ = (\pc|aBus[3]~9_combout\ & (((\pc|aBus[0]~6_combout\)))) # (!\pc|aBus[3]~9_combout\ & ((\pc|aBus[0]~6_combout\ & ((\mem|ram[7][6]~combout\))) # (!\pc|aBus[0]~6_combout\ & (\mem|ram[6][6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[6][6]~combout\,
	datab => \mem|ram[7][6]~combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Mux1~27_combout\);

-- Location: LCCOMB_X13_Y12_N6
\mem|Mux1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~28_combout\ = (\pc|aBus[3]~9_combout\ & ((\mem|Mux1~27_combout\ & ((\mem|ram[15][6]~combout\))) # (!\mem|Mux1~27_combout\ & (\mem|ram[14][6]~combout\)))) # (!\pc|aBus[3]~9_combout\ & (((\mem|Mux1~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[14][6]~combout\,
	datab => \mem|ram[15][6]~combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \mem|Mux1~27_combout\,
	combout => \mem|Mux1~28_combout\);

-- Location: LCCOMB_X18_Y12_N30
\mem|ram[12][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[12][6]~combout\ = (\mem|ram[12][0]~41_combout\ & (\ir|dBus[6]~32_combout\)) # (!\mem|ram[12][0]~41_combout\ & ((\mem|ram[12][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[6]~32_combout\,
	datac => \mem|ram[12][6]~combout\,
	datad => \mem|ram[12][0]~41_combout\,
	combout => \mem|ram[12][6]~combout\);

-- Location: LCCOMB_X18_Y13_N14
\mem|ram[13][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[13][6]~combout\ = (\mem|ram[13][0]~40_combout\ & (\ir|dBus[6]~32_combout\)) # (!\mem|ram[13][0]~40_combout\ & ((\mem|ram[13][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[6]~32_combout\,
	datac => \mem|ram[13][6]~combout\,
	datad => \mem|ram[13][0]~40_combout\,
	combout => \mem|ram[13][6]~combout\);

-- Location: LCCOMB_X11_Y12_N22
\mem|ram[4][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[4][6]~combout\ = (\reset~input_o\) # ((GLOBAL(\mem|Decoder0~11clkctrl_outclk\) & ((\ir|dBus[6]~41_combout\))) # (!GLOBAL(\mem|Decoder0~11clkctrl_outclk\) & (\mem|ram[4][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[4][6]~combout\,
	datab => \reset~input_o\,
	datac => \mem|Decoder0~11clkctrl_outclk\,
	datad => \ir|dBus[6]~41_combout\,
	combout => \mem|ram[4][6]~combout\);

-- Location: LCCOMB_X11_Y12_N24
\mem|ram[5][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[5][6]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~9clkctrl_outclk\) & (\ir|dBus[6]~41_combout\)) # (!GLOBAL(\mem|Decoder0~9clkctrl_outclk\) & ((\mem|ram[5][6]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ir|dBus[6]~41_combout\,
	datac => \mem|Decoder0~9clkctrl_outclk\,
	datad => \mem|ram[5][6]~combout\,
	combout => \mem|ram[5][6]~combout\);

-- Location: LCCOMB_X11_Y12_N18
\mem|Mux1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~22_combout\ = (\pc|aBus[3]~9_combout\ & (((\pc|aBus[0]~6_combout\)))) # (!\pc|aBus[3]~9_combout\ & ((\pc|aBus[0]~6_combout\ & ((\mem|ram[5][6]~combout\))) # (!\pc|aBus[0]~6_combout\ & (\mem|ram[4][6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[4][6]~combout\,
	datab => \mem|ram[5][6]~combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Mux1~22_combout\);

-- Location: LCCOMB_X12_Y12_N16
\mem|Mux1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~23_combout\ = (\pc|aBus[3]~9_combout\ & ((\mem|Mux1~22_combout\ & ((\mem|ram[13][6]~combout\))) # (!\mem|Mux1~22_combout\ & (\mem|ram[12][6]~combout\)))) # (!\pc|aBus[3]~9_combout\ & (((\mem|Mux1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[12][6]~combout\,
	datab => \pc|aBus[3]~9_combout\,
	datac => \mem|ram[13][6]~combout\,
	datad => \mem|Mux1~22_combout\,
	combout => \mem|Mux1~23_combout\);

-- Location: LCCOMB_X11_Y12_N28
\mem|ram[9][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[9][6]~combout\ = (\mem|ram[9][0]~36_combout\ & (\ir|dBus[6]~32_combout\)) # (!\mem|ram[9][0]~36_combout\ & ((\mem|ram[9][6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[6]~32_combout\,
	datab => \mem|ram[9][6]~combout\,
	datad => \mem|ram[9][0]~36_combout\,
	combout => \mem|ram[9][6]~combout\);

-- Location: LCCOMB_X11_Y12_N12
\mem|ram[8][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[8][6]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~8clkctrl_outclk\) & ((\ir|dBus[6]~41_combout\))) # (!GLOBAL(\mem|Decoder0~8clkctrl_outclk\) & (\mem|ram[8][6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[8][6]~combout\,
	datab => \ir|dBus[6]~41_combout\,
	datac => \reset~input_o\,
	datad => \mem|Decoder0~8clkctrl_outclk\,
	combout => \mem|ram[8][6]~combout\);

-- Location: LCCOMB_X16_Y13_N22
\mem|ram[0][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[0][6]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~15clkctrl_outclk\) & ((\ir|dBus[6]~41_combout\))) # (!GLOBAL(\mem|Decoder0~15clkctrl_outclk\) & (\mem|ram[0][6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[0][6]~combout\,
	datab => \reset~input_o\,
	datac => \ir|dBus[6]~41_combout\,
	datad => \mem|Decoder0~15clkctrl_outclk\,
	combout => \mem|ram[0][6]~combout\);

-- Location: LCCOMB_X16_Y13_N0
\mem|ram[1][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[1][6]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~13clkctrl_outclk\) & (\ir|dBus[6]~41_combout\)) # (!GLOBAL(\mem|Decoder0~13clkctrl_outclk\) & ((\mem|ram[1][6]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ir|dBus[6]~41_combout\,
	datac => \mem|Decoder0~13clkctrl_outclk\,
	datad => \mem|ram[1][6]~combout\,
	combout => \mem|ram[1][6]~combout\);

-- Location: LCCOMB_X16_Y13_N16
\mem|Mux1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~24_combout\ = (\pc|aBus[3]~9_combout\ & (((\pc|aBus[0]~6_combout\)))) # (!\pc|aBus[3]~9_combout\ & ((\pc|aBus[0]~6_combout\ & ((\mem|ram[1][6]~combout\))) # (!\pc|aBus[0]~6_combout\ & (\mem|ram[0][6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[0][6]~combout\,
	datab => \mem|ram[1][6]~combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Mux1~24_combout\);

-- Location: LCCOMB_X12_Y12_N6
\mem|Mux1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~25_combout\ = (\pc|aBus[3]~9_combout\ & ((\mem|Mux1~24_combout\ & (\mem|ram[9][6]~combout\)) # (!\mem|Mux1~24_combout\ & ((\mem|ram[8][6]~combout\))))) # (!\pc|aBus[3]~9_combout\ & (((\mem|Mux1~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[9][6]~combout\,
	datab => \pc|aBus[3]~9_combout\,
	datac => \mem|ram[8][6]~combout\,
	datad => \mem|Mux1~24_combout\,
	combout => \mem|Mux1~25_combout\);

-- Location: LCCOMB_X12_Y12_N8
\mem|Mux1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~26_combout\ = (\pc|aBus[1]~7_combout\ & (((\pc|aBus[2]~8_combout\)))) # (!\pc|aBus[1]~7_combout\ & ((\pc|aBus[2]~8_combout\ & (\mem|Mux1~23_combout\)) # (!\pc|aBus[2]~8_combout\ & ((\mem|Mux1~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \mem|Mux1~23_combout\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \mem|Mux1~25_combout\,
	combout => \mem|Mux1~26_combout\);

-- Location: LCCOMB_X21_Y13_N22
\mem|ram[11][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[11][6]~combout\ = (\mem|ram[11][0]~38_combout\ & ((\ir|dBus[6]~32_combout\))) # (!\mem|ram[11][0]~38_combout\ & (\mem|ram[11][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[11][6]~combout\,
	datac => \ir|dBus[6]~32_combout\,
	datad => \mem|ram[11][0]~38_combout\,
	combout => \mem|ram[11][6]~combout\);

-- Location: LCCOMB_X21_Y13_N18
\mem|ram[3][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[3][6]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~16clkctrl_outclk\) & (\ir|dBus[6]~41_combout\)) # (!GLOBAL(\mem|Decoder0~16clkctrl_outclk\) & ((\mem|ram[3][6]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ir|dBus[6]~41_combout\,
	datac => \mem|Decoder0~16clkctrl_outclk\,
	datad => \mem|ram[3][6]~combout\,
	combout => \mem|ram[3][6]~combout\);

-- Location: LCCOMB_X21_Y13_N14
\mem|ram[2][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[2][6]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~14clkctrl_outclk\) & ((\ir|dBus[6]~41_combout\))) # (!GLOBAL(\mem|Decoder0~14clkctrl_outclk\) & (\mem|ram[2][6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[2][6]~combout\,
	datab => \ir|dBus[6]~41_combout\,
	datac => \reset~input_o\,
	datad => \mem|Decoder0~14clkctrl_outclk\,
	combout => \mem|ram[2][6]~combout\);

-- Location: LCCOMB_X21_Y13_N8
\mem|Mux1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~20_combout\ = (\pc|aBus[0]~6_combout\ & ((\mem|ram[3][6]~combout\) # ((\pc|aBus[3]~9_combout\)))) # (!\pc|aBus[0]~6_combout\ & (((\mem|ram[2][6]~combout\ & !\pc|aBus[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[0]~6_combout\,
	datab => \mem|ram[3][6]~combout\,
	datac => \mem|ram[2][6]~combout\,
	datad => \pc|aBus[3]~9_combout\,
	combout => \mem|Mux1~20_combout\);

-- Location: LCCOMB_X14_Y12_N0
\mem|ram[10][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[10][6]~combout\ = (\mem|ram[10][0]~37_combout\ & ((\ir|dBus[6]~32_combout\))) # (!\mem|ram[10][0]~37_combout\ & (\mem|ram[10][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[10][6]~combout\,
	datac => \ir|dBus[6]~32_combout\,
	datad => \mem|ram[10][0]~37_combout\,
	combout => \mem|ram[10][6]~combout\);

-- Location: LCCOMB_X21_Y13_N30
\mem|Mux1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~21_combout\ = (\pc|aBus[3]~9_combout\ & ((\mem|Mux1~20_combout\ & (\mem|ram[11][6]~combout\)) # (!\mem|Mux1~20_combout\ & ((\mem|ram[10][6]~combout\))))) # (!\pc|aBus[3]~9_combout\ & (((\mem|Mux1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[3]~9_combout\,
	datab => \mem|ram[11][6]~combout\,
	datac => \mem|Mux1~20_combout\,
	datad => \mem|ram[10][6]~combout\,
	combout => \mem|Mux1~21_combout\);

-- Location: LCCOMB_X12_Y12_N10
\mem|Mux1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~29_combout\ = (\pc|aBus[1]~7_combout\ & ((\mem|Mux1~26_combout\ & (\mem|Mux1~28_combout\)) # (!\mem|Mux1~26_combout\ & ((\mem|Mux1~21_combout\))))) # (!\pc|aBus[1]~7_combout\ & (((\mem|Mux1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux1~28_combout\,
	datab => \pc|aBus[1]~7_combout\,
	datac => \mem|Mux1~26_combout\,
	datad => \mem|Mux1~21_combout\,
	combout => \mem|Mux1~29_combout\);

-- Location: LCCOMB_X12_Y12_N12
\mem|Mux1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~30_combout\ = (\ir|aBus[4]~4_combout\ & ((\ir|aBus[5]~5_combout\) # ((\mem|Mux1~19_combout\)))) # (!\ir|aBus[4]~4_combout\ & (!\ir|aBus[5]~5_combout\ & ((\mem|Mux1~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[4]~4_combout\,
	datab => \ir|aBus[5]~5_combout\,
	datac => \mem|Mux1~19_combout\,
	datad => \mem|Mux1~29_combout\,
	combout => \mem|Mux1~30_combout\);

-- Location: LCCOMB_X12_Y12_N28
\mem|Mux1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux1~41_combout\ = (\ir|aBus[5]~5_combout\ & ((\mem|Mux1~30_combout\ & (\mem|Mux1~40_combout\)) # (!\mem|Mux1~30_combout\ & ((\mem|Mux1~9_combout\))))) # (!\ir|aBus[5]~5_combout\ & (((\mem|Mux1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux1~40_combout\,
	datab => \ir|aBus[5]~5_combout\,
	datac => \mem|Mux1~9_combout\,
	datad => \mem|Mux1~30_combout\,
	combout => \mem|Mux1~41_combout\);

-- Location: LCCOMB_X12_Y12_N24
\ir|dBus[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[6]~32_combout\ = ((\ir|dBus[6]~22_combout\ & ((\mem|Mux1~41_combout\) # (!\mem|dBus~0_combout\)))) # (!\ir|dBus[0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|dBus~0_combout\,
	datab => \ir|dBus[0]~11_combout\,
	datac => \ir|dBus[6]~22_combout\,
	datad => \mem|Mux1~41_combout\,
	combout => \ir|dBus[6]~32_combout\);

-- Location: LCCOMB_X12_Y12_N18
\ir|irReg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|irReg~9_combout\ = (\ir|dBus[6]~32_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[6]~32_combout\,
	datad => \reset~input_o\,
	combout => \ir|irReg~9_combout\);

-- Location: LCCOMB_X9_Y11_N8
\ir|irReg[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|irReg[7]~5_combout\ = (\reset~input_o\) # (\ctl|state.fetch1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \ctl|state.fetch1~q\,
	combout => \ir|irReg[7]~5_combout\);

-- Location: FF_X12_Y12_N19
\ir|irReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \ir|irReg~9_combout\,
	ena => \ir|irReg[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|irReg\(6));

-- Location: LCCOMB_X19_Y10_N2
\ctl|state~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|state~57_combout\ = (!\reset~input_o\ & (\ctl|state.fetch1~q\ & (\ir|irReg\(7) & !\ir|irReg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ctl|state.fetch1~q\,
	datac => \ir|irReg\(7),
	datad => \ir|irReg\(6),
	combout => \ctl|state~57_combout\);

-- Location: LCCOMB_X18_Y13_N10
\ctl|state~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|state~58_combout\ = (!\ir|irReg\(5) & (!\ir|irReg\(4) & \ctl|state~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|irReg\(5),
	datac => \ir|irReg\(4),
	datad => \ctl|state~57_combout\,
	combout => \ctl|state~58_combout\);

-- Location: FF_X18_Y14_N7
\ctl|state.not0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \ctl|state~58_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|state.not0~q\);

-- Location: LCCOMB_X19_Y11_N24
\ctl|state~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|state~60_combout\ = (!\reset~input_o\ & \ctl|state.branch0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \ctl|state.branch0~q\,
	combout => \ctl|state~60_combout\);

-- Location: FF_X18_Y14_N23
\ctl|state.branch1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \ctl|state~60_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|state.branch1~q\);

-- Location: LCCOMB_X17_Y16_N24
\ctl|state.reset_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|state.reset_state~0_combout\ = !\reset~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	combout => \ctl|state.reset_state~0_combout\);

-- Location: FF_X18_Y14_N5
\ctl|state.reset_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \ctl|state.reset_state~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|state.reset_state~q\);

-- Location: LCCOMB_X18_Y14_N4
\ctl|ir_enA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|ir_enA~0_combout\ = (!\ctl|state.not0~q\ & (!\ctl|state.branch1~q\ & (\ctl|state.reset_state~q\ & !\ctl|state.not1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|state.not0~q\,
	datab => \ctl|state.branch1~q\,
	datac => \ctl|state.reset_state~q\,
	datad => \ctl|state.not1~q\,
	combout => \ctl|ir_enA~0_combout\);

-- Location: LCCOMB_X17_Y11_N24
\ctl|mem_enD\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|mem_enD~combout\ = ((\ctl|acc_enD~0_combout\ & (\ctl|ir_enA~0_combout\ & \ctl|ir_enA~1_combout\))) # (!\ctl|pc_enA~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|acc_enD~0_combout\,
	datab => \ctl|ir_enA~0_combout\,
	datac => \ctl|pc_enA~0_combout\,
	datad => \ctl|ir_enA~1_combout\,
	combout => \ctl|mem_enD~combout\);

-- Location: LCCOMB_X13_Y11_N2
\mem|dBus~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|dBus~0_combout\ = (\ctl|mem_rw~q\ & (!\reset~input_o\ & \ctl|mem_enD~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctl|mem_rw~q\,
	datac => \reset~input_o\,
	datad => \ctl|mem_enD~combout\,
	combout => \mem|dBus~0_combout\);

-- Location: LCCOMB_X13_Y10_N14
\mem|ram[63][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[63][4]~combout\ = (\mem|ram[63][1]~59_combout\ & ((\ir|dBus[4]~30_combout\))) # (!\mem|ram[63][1]~59_combout\ & (\mem|ram[63][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[63][4]~combout\,
	datac => \mem|ram[63][1]~59_combout\,
	datad => \ir|dBus[4]~30_combout\,
	combout => \mem|ram[63][4]~combout\);

-- Location: LCCOMB_X13_Y10_N4
\mem|ram[61][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[61][4]~combout\ = (\mem|ram[61][0]~57_combout\ & (\ir|dBus[4]~30_combout\)) # (!\mem|ram[61][0]~57_combout\ & ((\mem|ram[61][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[4]~30_combout\,
	datac => \mem|ram[61][4]~combout\,
	datad => \mem|ram[61][0]~57_combout\,
	combout => \mem|ram[61][4]~combout\);

-- Location: LCCOMB_X13_Y10_N0
\mem|ram[45][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[45][4]~combout\ = (\mem|ram[45][0]~4_combout\ & ((\ir|dBus[4]~30_combout\))) # (!\mem|ram[45][0]~4_combout\ & (\mem|ram[45][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[45][4]~combout\,
	datac => \mem|ram[45][0]~4_combout\,
	datad => \ir|dBus[4]~30_combout\,
	combout => \mem|ram[45][4]~combout\);

-- Location: LCCOMB_X13_Y10_N18
\mem|ram[47][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[47][4]~combout\ = (\mem|ram[47][0]~17_combout\ & ((\ir|dBus[4]~30_combout\))) # (!\mem|ram[47][0]~17_combout\ & (\mem|ram[47][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[47][4]~combout\,
	datac => \ir|dBus[4]~30_combout\,
	datad => \mem|ram[47][0]~17_combout\,
	combout => \mem|ram[47][4]~combout\);

-- Location: LCCOMB_X13_Y10_N24
\mem|Mux3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~38_combout\ = (\ir|aBus[4]~4_combout\ & (((\pc|aBus[1]~7_combout\)))) # (!\ir|aBus[4]~4_combout\ & ((\pc|aBus[1]~7_combout\ & ((\mem|ram[47][4]~combout\))) # (!\pc|aBus[1]~7_combout\ & (\mem|ram[45][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[4]~4_combout\,
	datab => \mem|ram[45][4]~combout\,
	datac => \pc|aBus[1]~7_combout\,
	datad => \mem|ram[47][4]~combout\,
	combout => \mem|Mux3~38_combout\);

-- Location: LCCOMB_X13_Y10_N22
\mem|Mux3~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~39_combout\ = (\ir|aBus[4]~4_combout\ & ((\mem|Mux3~38_combout\ & (\mem|ram[63][4]~combout\)) # (!\mem|Mux3~38_combout\ & ((\mem|ram[61][4]~combout\))))) # (!\ir|aBus[4]~4_combout\ & (((\mem|Mux3~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[63][4]~combout\,
	datab => \mem|ram[61][4]~combout\,
	datac => \ir|aBus[4]~4_combout\,
	datad => \mem|Mux3~38_combout\,
	combout => \mem|Mux3~39_combout\);

-- Location: LCCOMB_X14_Y14_N20
\mem|ram[59][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[59][4]~combout\ = (\mem|ram[59][0]~47_combout\ & (\ir|dBus[4]~30_combout\)) # (!\mem|ram[59][0]~47_combout\ & ((\mem|ram[59][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[4]~30_combout\,
	datac => \mem|ram[59][0]~47_combout\,
	datad => \mem|ram[59][4]~combout\,
	combout => \mem|ram[59][4]~combout\);

-- Location: LCCOMB_X14_Y14_N8
\mem|ram[57][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[57][4]~combout\ = (\mem|ram[57][0]~44_combout\ & (\ir|dBus[4]~30_combout\)) # (!\mem|ram[57][0]~44_combout\ & ((\mem|ram[57][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[4]~30_combout\,
	datac => \mem|ram[57][4]~combout\,
	datad => \mem|ram[57][0]~44_combout\,
	combout => \mem|ram[57][4]~combout\);

-- Location: LCCOMB_X14_Y14_N10
\mem|ram[43][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[43][4]~combout\ = (\mem|ram[43][0]~15_combout\ & ((\ir|dBus[4]~30_combout\))) # (!\mem|ram[43][0]~15_combout\ & (\mem|ram[43][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[43][4]~combout\,
	datac => \ir|dBus[4]~30_combout\,
	datad => \mem|ram[43][0]~15_combout\,
	combout => \mem|ram[43][4]~combout\);

-- Location: LCCOMB_X21_Y15_N20
\mem|ram[41][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[41][4]~combout\ = (\mem|ram[41][0]~1_combout\ & ((\ir|dBus[4]~30_combout\))) # (!\mem|ram[41][0]~1_combout\ & (\mem|ram[41][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[41][4]~combout\,
	datac => \ir|dBus[4]~30_combout\,
	datad => \mem|ram[41][0]~1_combout\,
	combout => \mem|ram[41][4]~combout\);

-- Location: LCCOMB_X14_Y14_N24
\mem|Mux3~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~31_combout\ = (\pc|aBus[1]~7_combout\ & ((\ir|aBus[4]~4_combout\) # ((\mem|ram[43][4]~combout\)))) # (!\pc|aBus[1]~7_combout\ & (!\ir|aBus[4]~4_combout\ & ((\mem|ram[41][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \ir|aBus[4]~4_combout\,
	datac => \mem|ram[43][4]~combout\,
	datad => \mem|ram[41][4]~combout\,
	combout => \mem|Mux3~31_combout\);

-- Location: LCCOMB_X14_Y14_N6
\mem|Mux3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~32_combout\ = (\ir|aBus[4]~4_combout\ & ((\mem|Mux3~31_combout\ & (\mem|ram[59][4]~combout\)) # (!\mem|Mux3~31_combout\ & ((\mem|ram[57][4]~combout\))))) # (!\ir|aBus[4]~4_combout\ & (((\mem|Mux3~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[4]~4_combout\,
	datab => \mem|ram[59][4]~combout\,
	datac => \mem|ram[57][4]~combout\,
	datad => \mem|Mux3~31_combout\,
	combout => \mem|Mux3~32_combout\);

-- Location: LCCOMB_X16_Y17_N16
\mem|ram[60][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[60][4]~combout\ = (\mem|ram[60][0]~58_combout\ & (\ir|dBus[4]~30_combout\)) # (!\mem|ram[60][0]~58_combout\ & ((\mem|ram[60][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[4]~30_combout\,
	datab => \mem|ram[60][4]~combout\,
	datad => \mem|ram[60][0]~58_combout\,
	combout => \mem|ram[60][4]~combout\);

-- Location: LCCOMB_X16_Y17_N22
\mem|ram[46][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[46][4]~combout\ = (\mem|ram[46][0]~14_combout\ & ((\ir|dBus[4]~30_combout\))) # (!\mem|ram[46][0]~14_combout\ & (\mem|ram[46][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[46][4]~combout\,
	datac => \ir|dBus[4]~30_combout\,
	datad => \mem|ram[46][0]~14_combout\,
	combout => \mem|ram[46][4]~combout\);

-- Location: LCCOMB_X16_Y17_N28
\mem|ram[44][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[44][4]~combout\ = (\mem|ram[44][0]~2_combout\ & ((\ir|dBus[4]~30_combout\))) # (!\mem|ram[44][0]~2_combout\ & (\mem|ram[44][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[44][4]~combout\,
	datac => \ir|dBus[4]~30_combout\,
	datad => \mem|ram[44][0]~2_combout\,
	combout => \mem|ram[44][4]~combout\);

-- Location: LCCOMB_X16_Y17_N4
\mem|Mux3~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~33_combout\ = (\ir|aBus[4]~4_combout\ & (((\pc|aBus[1]~7_combout\)))) # (!\ir|aBus[4]~4_combout\ & ((\pc|aBus[1]~7_combout\ & (\mem|ram[46][4]~combout\)) # (!\pc|aBus[1]~7_combout\ & ((\mem|ram[44][4]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[46][4]~combout\,
	datab => \mem|ram[44][4]~combout\,
	datac => \ir|aBus[4]~4_combout\,
	datad => \pc|aBus[1]~7_combout\,
	combout => \mem|Mux3~33_combout\);

-- Location: LCCOMB_X16_Y17_N6
\mem|ram[62][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[62][4]~combout\ = (\mem|ram[62][0]~56_combout\ & ((\ir|dBus[4]~30_combout\))) # (!\mem|ram[62][0]~56_combout\ & (\mem|ram[62][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[62][4]~combout\,
	datac => \ir|dBus[4]~30_combout\,
	datad => \mem|ram[62][0]~56_combout\,
	combout => \mem|ram[62][4]~combout\);

-- Location: LCCOMB_X16_Y17_N30
\mem|Mux3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~34_combout\ = (\ir|aBus[4]~4_combout\ & ((\mem|Mux3~33_combout\ & ((\mem|ram[62][4]~combout\))) # (!\mem|Mux3~33_combout\ & (\mem|ram[60][4]~combout\)))) # (!\ir|aBus[4]~4_combout\ & (((\mem|Mux3~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[4]~4_combout\,
	datab => \mem|ram[60][4]~combout\,
	datac => \mem|Mux3~33_combout\,
	datad => \mem|ram[62][4]~combout\,
	combout => \mem|Mux3~34_combout\);

-- Location: LCCOMB_X16_Y17_N8
\mem|ram[56][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[56][4]~combout\ = (\mem|ram[56][0]~46_combout\ & ((\ir|dBus[4]~30_combout\))) # (!\mem|ram[56][0]~46_combout\ & (\mem|ram[56][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[56][4]~combout\,
	datac => \mem|ram[56][0]~46_combout\,
	datad => \ir|dBus[4]~30_combout\,
	combout => \mem|ram[56][4]~combout\);

-- Location: LCCOMB_X16_Y17_N26
\mem|ram[58][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[58][4]~combout\ = (\mem|ram[58][0]~45_combout\ & (\ir|dBus[4]~30_combout\)) # (!\mem|ram[58][0]~45_combout\ & ((\mem|ram[58][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[4]~30_combout\,
	datac => \mem|ram[58][4]~combout\,
	datad => \mem|ram[58][0]~45_combout\,
	combout => \mem|ram[58][4]~combout\);

-- Location: LCCOMB_X16_Y17_N12
\mem|ram[40][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[40][4]~combout\ = (\mem|ram[40][0]~3_combout\ & (\ir|dBus[4]~30_combout\)) # (!\mem|ram[40][0]~3_combout\ & ((\mem|ram[40][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[4]~30_combout\,
	datac => \mem|ram[40][0]~3_combout\,
	datad => \mem|ram[40][4]~combout\,
	combout => \mem|ram[40][4]~combout\);

-- Location: LCCOMB_X16_Y17_N18
\mem|ram[42][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[42][4]~combout\ = (\mem|ram[42][0]~16_combout\ & ((\ir|dBus[4]~30_combout\))) # (!\mem|ram[42][0]~16_combout\ & (\mem|ram[42][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[42][4]~combout\,
	datac => \ir|dBus[4]~30_combout\,
	datad => \mem|ram[42][0]~16_combout\,
	combout => \mem|ram[42][4]~combout\);

-- Location: LCCOMB_X16_Y17_N24
\mem|Mux3~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~35_combout\ = (\ir|aBus[4]~4_combout\ & (((\pc|aBus[1]~7_combout\)))) # (!\ir|aBus[4]~4_combout\ & ((\pc|aBus[1]~7_combout\ & ((\mem|ram[42][4]~combout\))) # (!\pc|aBus[1]~7_combout\ & (\mem|ram[40][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[40][4]~combout\,
	datab => \mem|ram[42][4]~combout\,
	datac => \ir|aBus[4]~4_combout\,
	datad => \pc|aBus[1]~7_combout\,
	combout => \mem|Mux3~35_combout\);

-- Location: LCCOMB_X16_Y17_N10
\mem|Mux3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~36_combout\ = (\ir|aBus[4]~4_combout\ & ((\mem|Mux3~35_combout\ & ((\mem|ram[58][4]~combout\))) # (!\mem|Mux3~35_combout\ & (\mem|ram[56][4]~combout\)))) # (!\ir|aBus[4]~4_combout\ & (((\mem|Mux3~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[4]~4_combout\,
	datab => \mem|ram[56][4]~combout\,
	datac => \mem|ram[58][4]~combout\,
	datad => \mem|Mux3~35_combout\,
	combout => \mem|Mux3~36_combout\);

-- Location: LCCOMB_X16_Y17_N20
\mem|Mux3~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~37_combout\ = (\pc|aBus[2]~8_combout\ & ((\pc|aBus[0]~6_combout\) # ((\mem|Mux3~34_combout\)))) # (!\pc|aBus[2]~8_combout\ & (!\pc|aBus[0]~6_combout\ & ((\mem|Mux3~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \pc|aBus[0]~6_combout\,
	datac => \mem|Mux3~34_combout\,
	datad => \mem|Mux3~36_combout\,
	combout => \mem|Mux3~37_combout\);

-- Location: LCCOMB_X14_Y11_N4
\mem|Mux3~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~40_combout\ = (\pc|aBus[0]~6_combout\ & ((\mem|Mux3~37_combout\ & (\mem|Mux3~39_combout\)) # (!\mem|Mux3~37_combout\ & ((\mem|Mux3~32_combout\))))) # (!\pc|aBus[0]~6_combout\ & (((\mem|Mux3~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[0]~6_combout\,
	datab => \mem|Mux3~39_combout\,
	datac => \mem|Mux3~32_combout\,
	datad => \mem|Mux3~37_combout\,
	combout => \mem|Mux3~40_combout\);

-- Location: LCCOMB_X16_Y11_N2
\mem|ram[23][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[23][4]~combout\ = (\mem|ram[23][0]~26_combout\ & (\ir|dBus[4]~30_combout\)) # (!\mem|ram[23][0]~26_combout\ & ((\mem|ram[23][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[4]~30_combout\,
	datac => \mem|ram[23][0]~26_combout\,
	datad => \mem|ram[23][4]~combout\,
	combout => \mem|ram[23][4]~combout\);

-- Location: LCCOMB_X16_Y11_N14
\mem|ram[19][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[19][4]~combout\ = (\mem|ram[19][0]~24_combout\ & (\ir|dBus[4]~30_combout\)) # (!\mem|ram[19][0]~24_combout\ & ((\mem|ram[19][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[4]~30_combout\,
	datab => \mem|ram[19][4]~combout\,
	datad => \mem|ram[19][0]~24_combout\,
	combout => \mem|ram[19][4]~combout\);

-- Location: LCCOMB_X14_Y11_N12
\ir|dBus[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[4]~39_combout\ = ((\ir|dBus[4]~18_combout\ & ((\mem|Mux3~41_combout\) # (!\mem|dBus~1_combout\)))) # (!\ir|dBus[0]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[0]~34_combout\,
	datab => \ir|dBus[4]~18_combout\,
	datac => \mem|dBus~1_combout\,
	datad => \mem|Mux3~41_combout\,
	combout => \ir|dBus[4]~39_combout\);

-- Location: LCCOMB_X16_Y11_N4
\mem|ram[3][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[3][4]~combout\ = (\reset~input_o\) # ((GLOBAL(\mem|Decoder0~16clkctrl_outclk\) & (\ir|dBus[4]~39_combout\)) # (!GLOBAL(\mem|Decoder0~16clkctrl_outclk\) & ((\mem|ram[3][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[4]~39_combout\,
	datab => \mem|ram[3][4]~combout\,
	datac => \reset~input_o\,
	datad => \mem|Decoder0~16clkctrl_outclk\,
	combout => \mem|ram[3][4]~combout\);

-- Location: LCCOMB_X21_Y11_N22
\mem|ram[7][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[7][4]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~12clkctrl_outclk\) & (\ir|dBus[4]~39_combout\)) # (!GLOBAL(\mem|Decoder0~12clkctrl_outclk\) & ((\mem|ram[7][4]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ir|dBus[4]~39_combout\,
	datac => \mem|Decoder0~12clkctrl_outclk\,
	datad => \mem|ram[7][4]~combout\,
	combout => \mem|ram[7][4]~combout\);

-- Location: LCCOMB_X16_Y11_N6
\mem|Mux3~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~27_combout\ = (\ir|aBus[4]~4_combout\ & (((\pc|aBus[2]~8_combout\)))) # (!\ir|aBus[4]~4_combout\ & ((\pc|aBus[2]~8_combout\ & ((\mem|ram[7][4]~combout\))) # (!\pc|aBus[2]~8_combout\ & (\mem|ram[3][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[4]~4_combout\,
	datab => \mem|ram[3][4]~combout\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \mem|ram[7][4]~combout\,
	combout => \mem|Mux3~27_combout\);

-- Location: LCCOMB_X16_Y11_N24
\mem|Mux3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~28_combout\ = (\ir|aBus[4]~4_combout\ & ((\mem|Mux3~27_combout\ & (\mem|ram[23][4]~combout\)) # (!\mem|Mux3~27_combout\ & ((\mem|ram[19][4]~combout\))))) # (!\ir|aBus[4]~4_combout\ & (((\mem|Mux3~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[23][4]~combout\,
	datab => \ir|aBus[4]~4_combout\,
	datac => \mem|ram[19][4]~combout\,
	datad => \mem|Mux3~27_combout\,
	combout => \mem|Mux3~28_combout\);

-- Location: LCCOMB_X14_Y14_N30
\mem|ram[22][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[22][4]~combout\ = (\mem|ram[22][0]~30_combout\ & (\ir|dBus[4]~30_combout\)) # (!\mem|ram[22][0]~30_combout\ & ((\mem|ram[22][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[4]~30_combout\,
	datac => \mem|ram[22][4]~combout\,
	datad => \mem|ram[22][0]~30_combout\,
	combout => \mem|ram[22][4]~combout\);

-- Location: LCCOMB_X14_Y14_N16
\mem|ram[18][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[18][4]~combout\ = (\mem|ram[18][0]~28_combout\ & ((\ir|dBus[4]~30_combout\))) # (!\mem|ram[18][0]~28_combout\ & (\mem|ram[18][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[18][4]~combout\,
	datac => \ir|dBus[4]~30_combout\,
	datad => \mem|ram[18][0]~28_combout\,
	combout => \mem|ram[18][4]~combout\);

-- Location: LCCOMB_X14_Y14_N4
\mem|ram[2][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[2][4]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~14clkctrl_outclk\) & ((\ir|dBus[4]~39_combout\))) # (!GLOBAL(\mem|Decoder0~14clkctrl_outclk\) & (\mem|ram[2][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[2][4]~combout\,
	datab => \ir|dBus[4]~39_combout\,
	datac => \reset~input_o\,
	datad => \mem|Decoder0~14clkctrl_outclk\,
	combout => \mem|ram[2][4]~combout\);

-- Location: LCCOMB_X14_Y14_N28
\mem|ram[6][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[6][4]~combout\ = (\reset~input_o\) # ((GLOBAL(\mem|Decoder0~10clkctrl_outclk\) & (\ir|dBus[4]~39_combout\)) # (!GLOBAL(\mem|Decoder0~10clkctrl_outclk\) & ((\mem|ram[6][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ir|dBus[4]~39_combout\,
	datac => \mem|Decoder0~10clkctrl_outclk\,
	datad => \mem|ram[6][4]~combout\,
	combout => \mem|ram[6][4]~combout\);

-- Location: LCCOMB_X14_Y14_N22
\mem|Mux3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~22_combout\ = (\ir|aBus[4]~4_combout\ & (((\pc|aBus[2]~8_combout\)))) # (!\ir|aBus[4]~4_combout\ & ((\pc|aBus[2]~8_combout\ & ((\mem|ram[6][4]~combout\))) # (!\pc|aBus[2]~8_combout\ & (\mem|ram[2][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[2][4]~combout\,
	datab => \mem|ram[6][4]~combout\,
	datac => \ir|aBus[4]~4_combout\,
	datad => \pc|aBus[2]~8_combout\,
	combout => \mem|Mux3~22_combout\);

-- Location: LCCOMB_X14_Y14_N18
\mem|Mux3~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~23_combout\ = (\ir|aBus[4]~4_combout\ & ((\mem|Mux3~22_combout\ & (\mem|ram[22][4]~combout\)) # (!\mem|Mux3~22_combout\ & ((\mem|ram[18][4]~combout\))))) # (!\ir|aBus[4]~4_combout\ & (((\mem|Mux3~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[22][4]~combout\,
	datab => \ir|aBus[4]~4_combout\,
	datac => \mem|ram[18][4]~combout\,
	datad => \mem|Mux3~22_combout\,
	combout => \mem|Mux3~23_combout\);

-- Location: LCCOMB_X14_Y10_N14
\mem|ram[16][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[16][4]~combout\ = (\mem|ram[16][0]~29_combout\ & (\ir|dBus[4]~30_combout\)) # (!\mem|ram[16][0]~29_combout\ & ((\mem|ram[16][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[4]~30_combout\,
	datac => \mem|ram[16][4]~combout\,
	datad => \mem|ram[16][0]~29_combout\,
	combout => \mem|ram[16][4]~combout\);

-- Location: LCCOMB_X14_Y10_N30
\mem|ram[20][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[20][4]~combout\ = (\mem|ram[20][0]~27_combout\ & (\ir|dBus[4]~30_combout\)) # (!\mem|ram[20][0]~27_combout\ & ((\mem|ram[20][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[4]~30_combout\,
	datac => \mem|ram[20][4]~combout\,
	datad => \mem|ram[20][0]~27_combout\,
	combout => \mem|ram[20][4]~combout\);

-- Location: LCCOMB_X14_Y10_N28
\mem|ram[4][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[4][4]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~11clkctrl_outclk\) & (\ir|dBus[4]~39_combout\)) # (!GLOBAL(\mem|Decoder0~11clkctrl_outclk\) & ((\mem|ram[4][4]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[4]~39_combout\,
	datab => \reset~input_o\,
	datac => \mem|Decoder0~11clkctrl_outclk\,
	datad => \mem|ram[4][4]~combout\,
	combout => \mem|ram[4][4]~combout\);

-- Location: LCCOMB_X14_Y10_N8
\mem|ram[0][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[0][4]~combout\ = (\reset~input_o\) # ((GLOBAL(\mem|Decoder0~15clkctrl_outclk\) & (\ir|dBus[4]~39_combout\)) # (!GLOBAL(\mem|Decoder0~15clkctrl_outclk\) & ((\mem|ram[0][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[4]~39_combout\,
	datab => \reset~input_o\,
	datac => \mem|ram[0][4]~combout\,
	datad => \mem|Decoder0~15clkctrl_outclk\,
	combout => \mem|ram[0][4]~combout\);

-- Location: LCCOMB_X14_Y10_N18
\mem|Mux3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~24_combout\ = (\ir|aBus[4]~4_combout\ & (((\pc|aBus[2]~8_combout\)))) # (!\ir|aBus[4]~4_combout\ & ((\pc|aBus[2]~8_combout\ & (\mem|ram[4][4]~combout\)) # (!\pc|aBus[2]~8_combout\ & ((\mem|ram[0][4]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[4]~4_combout\,
	datab => \mem|ram[4][4]~combout\,
	datac => \mem|ram[0][4]~combout\,
	datad => \pc|aBus[2]~8_combout\,
	combout => \mem|Mux3~24_combout\);

-- Location: LCCOMB_X14_Y10_N0
\mem|Mux3~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~25_combout\ = (\ir|aBus[4]~4_combout\ & ((\mem|Mux3~24_combout\ & ((\mem|ram[20][4]~combout\))) # (!\mem|Mux3~24_combout\ & (\mem|ram[16][4]~combout\)))) # (!\ir|aBus[4]~4_combout\ & (((\mem|Mux3~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[4]~4_combout\,
	datab => \mem|ram[16][4]~combout\,
	datac => \mem|ram[20][4]~combout\,
	datad => \mem|Mux3~24_combout\,
	combout => \mem|Mux3~25_combout\);

-- Location: LCCOMB_X14_Y11_N14
\mem|Mux3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~26_combout\ = (\pc|aBus[1]~7_combout\ & ((\pc|aBus[0]~6_combout\) # ((\mem|Mux3~23_combout\)))) # (!\pc|aBus[1]~7_combout\ & (!\pc|aBus[0]~6_combout\ & ((\mem|Mux3~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \pc|aBus[0]~6_combout\,
	datac => \mem|Mux3~23_combout\,
	datad => \mem|Mux3~25_combout\,
	combout => \mem|Mux3~26_combout\);

-- Location: LCCOMB_X16_Y11_N22
\mem|ram[21][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[21][4]~combout\ = (\mem|ram[21][0]~23_combout\ & (\ir|dBus[4]~30_combout\)) # (!\mem|ram[21][0]~23_combout\ & ((\mem|ram[21][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[4]~30_combout\,
	datac => \mem|ram[21][4]~combout\,
	datad => \mem|ram[21][0]~23_combout\,
	combout => \mem|ram[21][4]~combout\);

-- Location: LCCOMB_X16_Y11_N20
\mem|ram[17][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[17][4]~combout\ = (\mem|ram[17][0]~25_combout\ & ((\ir|dBus[4]~30_combout\))) # (!\mem|ram[17][0]~25_combout\ & (\mem|ram[17][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[17][4]~combout\,
	datac => \ir|dBus[4]~30_combout\,
	datad => \mem|ram[17][0]~25_combout\,
	combout => \mem|ram[17][4]~combout\);

-- Location: LCCOMB_X17_Y11_N26
\mem|ram[1][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[1][4]~combout\ = (\reset~input_o\) # ((GLOBAL(\mem|Decoder0~13clkctrl_outclk\) & (\ir|dBus[4]~39_combout\)) # (!GLOBAL(\mem|Decoder0~13clkctrl_outclk\) & ((\mem|ram[1][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[4]~39_combout\,
	datab => \reset~input_o\,
	datac => \mem|ram[1][4]~combout\,
	datad => \mem|Decoder0~13clkctrl_outclk\,
	combout => \mem|ram[1][4]~combout\);

-- Location: LCCOMB_X21_Y15_N22
\mem|ram[5][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[5][4]~combout\ = (\reset~input_o\) # ((GLOBAL(\mem|Decoder0~9clkctrl_outclk\) & (\ir|dBus[4]~39_combout\)) # (!GLOBAL(\mem|Decoder0~9clkctrl_outclk\) & ((\mem|ram[5][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[4]~39_combout\,
	datab => \mem|ram[5][4]~combout\,
	datac => \reset~input_o\,
	datad => \mem|Decoder0~9clkctrl_outclk\,
	combout => \mem|ram[5][4]~combout\);

-- Location: LCCOMB_X17_Y11_N2
\mem|Mux3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~20_combout\ = (\ir|aBus[4]~4_combout\ & (((\pc|aBus[2]~8_combout\)))) # (!\ir|aBus[4]~4_combout\ & ((\pc|aBus[2]~8_combout\ & ((\mem|ram[5][4]~combout\))) # (!\pc|aBus[2]~8_combout\ & (\mem|ram[1][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[1][4]~combout\,
	datab => \ir|aBus[4]~4_combout\,
	datac => \mem|ram[5][4]~combout\,
	datad => \pc|aBus[2]~8_combout\,
	combout => \mem|Mux3~20_combout\);

-- Location: LCCOMB_X16_Y11_N12
\mem|Mux3~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~21_combout\ = (\ir|aBus[4]~4_combout\ & ((\mem|Mux3~20_combout\ & (\mem|ram[21][4]~combout\)) # (!\mem|Mux3~20_combout\ & ((\mem|ram[17][4]~combout\))))) # (!\ir|aBus[4]~4_combout\ & (((\mem|Mux3~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[21][4]~combout\,
	datab => \mem|ram[17][4]~combout\,
	datac => \ir|aBus[4]~4_combout\,
	datad => \mem|Mux3~20_combout\,
	combout => \mem|Mux3~21_combout\);

-- Location: LCCOMB_X14_Y11_N0
\mem|Mux3~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~29_combout\ = (\pc|aBus[0]~6_combout\ & ((\mem|Mux3~26_combout\ & (\mem|Mux3~28_combout\)) # (!\mem|Mux3~26_combout\ & ((\mem|Mux3~21_combout\))))) # (!\pc|aBus[0]~6_combout\ & (((\mem|Mux3~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux3~28_combout\,
	datab => \pc|aBus[0]~6_combout\,
	datac => \mem|Mux3~26_combout\,
	datad => \mem|Mux3~21_combout\,
	combout => \mem|Mux3~29_combout\);

-- Location: LCCOMB_X18_Y11_N10
\mem|ram[31][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[31][4]~combout\ = (\mem|ram[31][0]~34_combout\ & (\ir|dBus[4]~30_combout\)) # (!\mem|ram[31][0]~34_combout\ & ((\mem|ram[31][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[4]~30_combout\,
	datac => \mem|ram[31][4]~combout\,
	datad => \mem|ram[31][0]~34_combout\,
	combout => \mem|ram[31][4]~combout\);

-- Location: LCCOMB_X18_Y11_N20
\mem|ram[27][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[27][4]~combout\ = (\mem|ram[27][0]~32_combout\ & (\ir|dBus[4]~30_combout\)) # (!\mem|ram[27][0]~32_combout\ & ((\mem|ram[27][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[4]~30_combout\,
	datac => \mem|ram[27][4]~combout\,
	datad => \mem|ram[27][0]~32_combout\,
	combout => \mem|ram[27][4]~combout\);

-- Location: LCCOMB_X18_Y11_N24
\mem|ram[26][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[26][4]~combout\ = (\mem|ram[26][0]~20_combout\ & ((\ir|dBus[4]~30_combout\))) # (!\mem|ram[26][0]~20_combout\ & (\mem|ram[26][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[26][4]~combout\,
	datac => \mem|ram[26][0]~20_combout\,
	datad => \ir|dBus[4]~30_combout\,
	combout => \mem|ram[26][4]~combout\);

-- Location: LCCOMB_X18_Y11_N12
\mem|ram[30][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[30][4]~combout\ = (\mem|ram[30][0]~22_combout\ & (\ir|dBus[4]~30_combout\)) # (!\mem|ram[30][0]~22_combout\ & ((\mem|ram[30][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[4]~30_combout\,
	datac => \mem|ram[30][4]~combout\,
	datad => \mem|ram[30][0]~22_combout\,
	combout => \mem|ram[30][4]~combout\);

-- Location: LCCOMB_X18_Y11_N2
\mem|Mux3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~17_combout\ = (\pc|aBus[2]~8_combout\ & (((\pc|aBus[0]~6_combout\) # (\mem|ram[30][4]~combout\)))) # (!\pc|aBus[2]~8_combout\ & (\mem|ram[26][4]~combout\ & (!\pc|aBus[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \mem|ram[26][4]~combout\,
	datac => \pc|aBus[0]~6_combout\,
	datad => \mem|ram[30][4]~combout\,
	combout => \mem|Mux3~17_combout\);

-- Location: LCCOMB_X18_Y11_N22
\mem|Mux3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~18_combout\ = (\pc|aBus[0]~6_combout\ & ((\mem|Mux3~17_combout\ & (\mem|ram[31][4]~combout\)) # (!\mem|Mux3~17_combout\ & ((\mem|ram[27][4]~combout\))))) # (!\pc|aBus[0]~6_combout\ & (((\mem|Mux3~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[31][4]~combout\,
	datab => \pc|aBus[0]~6_combout\,
	datac => \mem|ram[27][4]~combout\,
	datad => \mem|Mux3~17_combout\,
	combout => \mem|Mux3~18_combout\);

-- Location: LCCOMB_X19_Y11_N28
\mem|ram[25][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[25][4]~combout\ = (\mem|ram[25][0]~33_combout\ & ((\ir|dBus[4]~30_combout\))) # (!\mem|ram[25][0]~33_combout\ & (\mem|ram[25][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[25][4]~combout\,
	datac => \ir|dBus[4]~30_combout\,
	datad => \mem|ram[25][0]~33_combout\,
	combout => \mem|ram[25][4]~combout\);

-- Location: LCCOMB_X19_Y11_N8
\mem|ram[29][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[29][4]~combout\ = (\mem|ram[29][0]~31_combout\ & (\ir|dBus[4]~30_combout\)) # (!\mem|ram[29][0]~31_combout\ & ((\mem|ram[29][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[4]~30_combout\,
	datac => \mem|ram[29][4]~combout\,
	datad => \mem|ram[29][0]~31_combout\,
	combout => \mem|ram[29][4]~combout\);

-- Location: LCCOMB_X19_Y11_N26
\mem|ram[28][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[28][4]~combout\ = (\mem|ram[28][0]~19_combout\ & ((\ir|dBus[4]~30_combout\))) # (!\mem|ram[28][0]~19_combout\ & (\mem|ram[28][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[28][4]~combout\,
	datac => \ir|dBus[4]~30_combout\,
	datad => \mem|ram[28][0]~19_combout\,
	combout => \mem|ram[28][4]~combout\);

-- Location: LCCOMB_X19_Y11_N10
\mem|ram[24][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[24][4]~combout\ = (\mem|ram[24][0]~21_combout\ & (\ir|dBus[4]~30_combout\)) # (!\mem|ram[24][0]~21_combout\ & ((\mem|ram[24][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[4]~30_combout\,
	datac => \mem|ram[24][0]~21_combout\,
	datad => \mem|ram[24][4]~combout\,
	combout => \mem|ram[24][4]~combout\);

-- Location: LCCOMB_X19_Y11_N16
\mem|Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~10_combout\ = (\pc|aBus[2]~8_combout\ & ((\pc|aBus[0]~6_combout\) # ((\mem|ram[28][4]~combout\)))) # (!\pc|aBus[2]~8_combout\ & (!\pc|aBus[0]~6_combout\ & ((\mem|ram[24][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \pc|aBus[0]~6_combout\,
	datac => \mem|ram[28][4]~combout\,
	datad => \mem|ram[24][4]~combout\,
	combout => \mem|Mux3~10_combout\);

-- Location: LCCOMB_X19_Y11_N6
\mem|Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~11_combout\ = (\pc|aBus[0]~6_combout\ & ((\mem|Mux3~10_combout\ & ((\mem|ram[29][4]~combout\))) # (!\mem|Mux3~10_combout\ & (\mem|ram[25][4]~combout\)))) # (!\pc|aBus[0]~6_combout\ & (((\mem|Mux3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[25][4]~combout\,
	datab => \pc|aBus[0]~6_combout\,
	datac => \mem|ram[29][4]~combout\,
	datad => \mem|Mux3~10_combout\,
	combout => \mem|Mux3~11_combout\);

-- Location: LCCOMB_X14_Y13_N14
\mem|ram[13][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[13][4]~combout\ = (\mem|ram[13][0]~40_combout\ & (\ir|dBus[4]~30_combout\)) # (!\mem|ram[13][0]~40_combout\ & ((\mem|ram[13][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[4]~30_combout\,
	datac => \mem|ram[13][4]~combout\,
	datad => \mem|ram[13][0]~40_combout\,
	combout => \mem|ram[13][4]~combout\);

-- Location: LCCOMB_X14_Y11_N22
\mem|ram[9][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[9][4]~combout\ = (\mem|ram[9][0]~36_combout\ & ((\ir|dBus[4]~30_combout\))) # (!\mem|ram[9][0]~36_combout\ & (\mem|ram[9][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[9][4]~combout\,
	datac => \ir|dBus[4]~30_combout\,
	datad => \mem|ram[9][0]~36_combout\,
	combout => \mem|ram[9][4]~combout\);

-- Location: LCCOMB_X14_Y10_N26
\mem|ram[8][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[8][4]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~8clkctrl_outclk\) & (\ir|dBus[4]~39_combout\)) # (!GLOBAL(\mem|Decoder0~8clkctrl_outclk\) & ((\mem|ram[8][4]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[4]~39_combout\,
	datab => \reset~input_o\,
	datac => \mem|ram[8][4]~combout\,
	datad => \mem|Decoder0~8clkctrl_outclk\,
	combout => \mem|ram[8][4]~combout\);

-- Location: LCCOMB_X14_Y11_N30
\mem|Mux3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~14_combout\ = (\pc|aBus[0]~6_combout\ & ((\mem|ram[9][4]~combout\) # ((\pc|aBus[2]~8_combout\)))) # (!\pc|aBus[0]~6_combout\ & (((!\pc|aBus[2]~8_combout\ & \mem|ram[8][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[9][4]~combout\,
	datab => \pc|aBus[0]~6_combout\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \mem|ram[8][4]~combout\,
	combout => \mem|Mux3~14_combout\);

-- Location: LCCOMB_X19_Y11_N12
\mem|ram[12][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[12][4]~combout\ = (\mem|ram[12][0]~41_combout\ & (\ir|dBus[4]~30_combout\)) # (!\mem|ram[12][0]~41_combout\ & ((\mem|ram[12][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[4]~30_combout\,
	datac => \mem|ram[12][0]~41_combout\,
	datad => \mem|ram[12][4]~combout\,
	combout => \mem|ram[12][4]~combout\);

-- Location: LCCOMB_X14_Y11_N8
\mem|Mux3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~15_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|Mux3~14_combout\ & (\mem|ram[13][4]~combout\)) # (!\mem|Mux3~14_combout\ & ((\mem|ram[12][4]~combout\))))) # (!\pc|aBus[2]~8_combout\ & (((\mem|Mux3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \mem|ram[13][4]~combout\,
	datac => \mem|Mux3~14_combout\,
	datad => \mem|ram[12][4]~combout\,
	combout => \mem|Mux3~15_combout\);

-- Location: LCCOMB_X17_Y13_N26
\mem|ram[14][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[14][4]~combout\ = (\mem|ram[14][0]~39_combout\ & ((\ir|dBus[4]~30_combout\))) # (!\mem|ram[14][0]~39_combout\ & (\mem|ram[14][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[14][4]~combout\,
	datac => \ir|dBus[4]~30_combout\,
	datad => \mem|ram[14][0]~39_combout\,
	combout => \mem|ram[14][4]~combout\);

-- Location: LCCOMB_X17_Y13_N12
\mem|ram[15][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[15][4]~combout\ = (\mem|ram[15][0]~42_combout\ & ((\ir|dBus[4]~30_combout\))) # (!\mem|ram[15][0]~42_combout\ & (\mem|ram[15][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[15][4]~combout\,
	datac => \ir|dBus[4]~30_combout\,
	datad => \mem|ram[15][0]~42_combout\,
	combout => \mem|ram[15][4]~combout\);

-- Location: LCCOMB_X17_Y15_N2
\mem|ram[10][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[10][4]~combout\ = (\mem|ram[10][0]~37_combout\ & ((\ir|dBus[4]~30_combout\))) # (!\mem|ram[10][0]~37_combout\ & (\mem|ram[10][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[10][4]~combout\,
	datac => \mem|ram[10][0]~37_combout\,
	datad => \ir|dBus[4]~30_combout\,
	combout => \mem|ram[10][4]~combout\);

-- Location: LCCOMB_X21_Y11_N28
\mem|ram[11][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[11][4]~combout\ = (\mem|ram[11][0]~38_combout\ & ((\ir|dBus[4]~30_combout\))) # (!\mem|ram[11][0]~38_combout\ & (\mem|ram[11][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[11][4]~combout\,
	datac => \ir|dBus[4]~30_combout\,
	datad => \mem|ram[11][0]~38_combout\,
	combout => \mem|ram[11][4]~combout\);

-- Location: LCCOMB_X14_Y11_N10
\mem|Mux3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~12_combout\ = (\pc|aBus[2]~8_combout\ & (((\pc|aBus[0]~6_combout\)))) # (!\pc|aBus[2]~8_combout\ & ((\pc|aBus[0]~6_combout\ & ((\mem|ram[11][4]~combout\))) # (!\pc|aBus[0]~6_combout\ & (\mem|ram[10][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[10][4]~combout\,
	datab => \pc|aBus[2]~8_combout\,
	datac => \pc|aBus[0]~6_combout\,
	datad => \mem|ram[11][4]~combout\,
	combout => \mem|Mux3~12_combout\);

-- Location: LCCOMB_X14_Y11_N20
\mem|Mux3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~13_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|Mux3~12_combout\ & ((\mem|ram[15][4]~combout\))) # (!\mem|Mux3~12_combout\ & (\mem|ram[14][4]~combout\)))) # (!\pc|aBus[2]~8_combout\ & (((\mem|Mux3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \mem|ram[14][4]~combout\,
	datac => \mem|ram[15][4]~combout\,
	datad => \mem|Mux3~12_combout\,
	combout => \mem|Mux3~13_combout\);

-- Location: LCCOMB_X14_Y11_N6
\mem|Mux3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~16_combout\ = (\pc|aBus[1]~7_combout\ & ((\ir|aBus[4]~4_combout\) # ((\mem|Mux3~13_combout\)))) # (!\pc|aBus[1]~7_combout\ & (!\ir|aBus[4]~4_combout\ & (\mem|Mux3~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \ir|aBus[4]~4_combout\,
	datac => \mem|Mux3~15_combout\,
	datad => \mem|Mux3~13_combout\,
	combout => \mem|Mux3~16_combout\);

-- Location: LCCOMB_X14_Y11_N24
\mem|Mux3~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~19_combout\ = (\ir|aBus[4]~4_combout\ & ((\mem|Mux3~16_combout\ & (\mem|Mux3~18_combout\)) # (!\mem|Mux3~16_combout\ & ((\mem|Mux3~11_combout\))))) # (!\ir|aBus[4]~4_combout\ & (((\mem|Mux3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux3~18_combout\,
	datab => \ir|aBus[4]~4_combout\,
	datac => \mem|Mux3~11_combout\,
	datad => \mem|Mux3~16_combout\,
	combout => \mem|Mux3~19_combout\);

-- Location: LCCOMB_X14_Y11_N26
\mem|Mux3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~30_combout\ = (\ir|aBus[5]~5_combout\ & (((\pc|aBus[3]~9_combout\)))) # (!\ir|aBus[5]~5_combout\ & ((\pc|aBus[3]~9_combout\ & ((\mem|Mux3~19_combout\))) # (!\pc|aBus[3]~9_combout\ & (\mem|Mux3~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[5]~5_combout\,
	datab => \mem|Mux3~29_combout\,
	datac => \pc|aBus[3]~9_combout\,
	datad => \mem|Mux3~19_combout\,
	combout => \mem|Mux3~30_combout\);

-- Location: LCCOMB_X11_Y11_N2
\mem|ram[52][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[52][4]~combout\ = (\mem|ram[52][0]~50_combout\ & ((\ir|dBus[4]~30_combout\))) # (!\mem|ram[52][0]~50_combout\ & (\mem|ram[52][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[52][4]~combout\,
	datac => \ir|dBus[4]~30_combout\,
	datad => \mem|ram[52][0]~50_combout\,
	combout => \mem|ram[52][4]~combout\);

-- Location: LCCOMB_X11_Y11_N8
\mem|ram[54][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[54][4]~combout\ = (\mem|ram[54][0]~48_combout\ & (\ir|dBus[4]~30_combout\)) # (!\mem|ram[54][0]~48_combout\ & ((\mem|ram[54][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[4]~30_combout\,
	datac => \mem|ram[54][4]~combout\,
	datad => \mem|ram[54][0]~48_combout\,
	combout => \mem|ram[54][4]~combout\);

-- Location: LCCOMB_X11_Y11_N6
\mem|ram[36][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[36][4]~combout\ = (\mem|ram[36][0]~11_combout\ & ((\ir|dBus[4]~30_combout\))) # (!\mem|ram[36][0]~11_combout\ & (\mem|ram[36][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[36][4]~combout\,
	datac => \mem|ram[36][0]~11_combout\,
	datad => \ir|dBus[4]~30_combout\,
	combout => \mem|ram[36][4]~combout\);

-- Location: LCCOMB_X11_Y11_N28
\mem|ram[38][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[38][4]~combout\ = (\mem|ram[38][0]~6_combout\ & (\ir|dBus[4]~30_combout\)) # (!\mem|ram[38][0]~6_combout\ & ((\mem|ram[38][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[4]~30_combout\,
	datab => \mem|ram[38][4]~combout\,
	datad => \mem|ram[38][0]~6_combout\,
	combout => \mem|ram[38][4]~combout\);

-- Location: LCCOMB_X11_Y11_N20
\mem|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~0_combout\ = (\pc|aBus[1]~7_combout\ & (((\mem|ram[38][4]~combout\) # (\ir|aBus[4]~4_combout\)))) # (!\pc|aBus[1]~7_combout\ & (\mem|ram[36][4]~combout\ & ((!\ir|aBus[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[36][4]~combout\,
	datab => \mem|ram[38][4]~combout\,
	datac => \pc|aBus[1]~7_combout\,
	datad => \ir|aBus[4]~4_combout\,
	combout => \mem|Mux3~0_combout\);

-- Location: LCCOMB_X11_Y11_N26
\mem|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~1_combout\ = (\ir|aBus[4]~4_combout\ & ((\mem|Mux3~0_combout\ & ((\mem|ram[54][4]~combout\))) # (!\mem|Mux3~0_combout\ & (\mem|ram[52][4]~combout\)))) # (!\ir|aBus[4]~4_combout\ & (((\mem|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[4]~4_combout\,
	datab => \mem|ram[52][4]~combout\,
	datac => \mem|ram[54][4]~combout\,
	datad => \mem|Mux3~0_combout\,
	combout => \mem|Mux3~1_combout\);

-- Location: LCCOMB_X13_Y15_N4
\mem|ram[49][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[49][4]~combout\ = (\mem|ram[49][0]~53_combout\ & (\ir|dBus[4]~30_combout\)) # (!\mem|ram[49][0]~53_combout\ & ((\mem|ram[49][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[4]~30_combout\,
	datac => \mem|ram[49][4]~combout\,
	datad => \mem|ram[49][0]~53_combout\,
	combout => \mem|ram[49][4]~combout\);

-- Location: LCCOMB_X13_Y15_N14
\mem|ram[51][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[51][4]~combout\ = (\mem|ram[51][0]~55_combout\ & (\ir|dBus[4]~30_combout\)) # (!\mem|ram[51][0]~55_combout\ & ((\mem|ram[51][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[4]~30_combout\,
	datab => \mem|ram[51][4]~combout\,
	datac => \mem|ram[51][0]~55_combout\,
	combout => \mem|ram[51][4]~combout\);

-- Location: LCCOMB_X13_Y15_N12
\mem|ram[33][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[33][4]~combout\ = (\mem|ram[33][0]~10_combout\ & (\ir|dBus[4]~30_combout\)) # (!\mem|ram[33][0]~10_combout\ & ((\mem|ram[33][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[4]~30_combout\,
	datac => \mem|ram[33][0]~10_combout\,
	datad => \mem|ram[33][4]~combout\,
	combout => \mem|ram[33][4]~combout\);

-- Location: LCCOMB_X13_Y15_N18
\mem|ram[35][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[35][4]~combout\ = (\mem|ram[35][0]~7_combout\ & (\ir|dBus[4]~30_combout\)) # (!\mem|ram[35][0]~7_combout\ & ((\mem|ram[35][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[4]~30_combout\,
	datac => \mem|ram[35][0]~7_combout\,
	datad => \mem|ram[35][4]~combout\,
	combout => \mem|ram[35][4]~combout\);

-- Location: LCCOMB_X13_Y15_N16
\mem|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~2_combout\ = (\pc|aBus[1]~7_combout\ & (((\mem|ram[35][4]~combout\) # (\ir|aBus[4]~4_combout\)))) # (!\pc|aBus[1]~7_combout\ & (\mem|ram[33][4]~combout\ & ((!\ir|aBus[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[33][4]~combout\,
	datab => \mem|ram[35][4]~combout\,
	datac => \pc|aBus[1]~7_combout\,
	datad => \ir|aBus[4]~4_combout\,
	combout => \mem|Mux3~2_combout\);

-- Location: LCCOMB_X13_Y15_N30
\mem|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~3_combout\ = (\ir|aBus[4]~4_combout\ & ((\mem|Mux3~2_combout\ & ((\mem|ram[51][4]~combout\))) # (!\mem|Mux3~2_combout\ & (\mem|ram[49][4]~combout\)))) # (!\ir|aBus[4]~4_combout\ & (((\mem|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[49][4]~combout\,
	datab => \ir|aBus[4]~4_combout\,
	datac => \mem|ram[51][4]~combout\,
	datad => \mem|Mux3~2_combout\,
	combout => \mem|Mux3~3_combout\);

-- Location: LCCOMB_X13_Y15_N10
\mem|ram[50][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[50][4]~combout\ = (\mem|ram[50][0]~52_combout\ & ((\ir|dBus[4]~30_combout\))) # (!\mem|ram[50][0]~52_combout\ & (\mem|ram[50][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[50][4]~combout\,
	datac => \ir|dBus[4]~30_combout\,
	datad => \mem|ram[50][0]~52_combout\,
	combout => \mem|ram[50][4]~combout\);

-- Location: LCCOMB_X13_Y15_N8
\mem|ram[48][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[48][4]~combout\ = (\mem|ram[48][0]~54_combout\ & (\ir|dBus[4]~30_combout\)) # (!\mem|ram[48][0]~54_combout\ & ((\mem|ram[48][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[4]~30_combout\,
	datac => \mem|ram[48][4]~combout\,
	datad => \mem|ram[48][0]~54_combout\,
	combout => \mem|ram[48][4]~combout\);

-- Location: LCCOMB_X13_Y15_N6
\mem|ram[34][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[34][4]~combout\ = (\mem|ram[34][0]~8_combout\ & ((\ir|dBus[4]~30_combout\))) # (!\mem|ram[34][0]~8_combout\ & (\mem|ram[34][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[34][4]~combout\,
	datab => \ir|dBus[4]~30_combout\,
	datac => \mem|ram[34][0]~8_combout\,
	combout => \mem|ram[34][4]~combout\);

-- Location: LCCOMB_X13_Y15_N0
\mem|ram[32][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[32][4]~combout\ = (\mem|ram[32][0]~12_combout\ & ((\ir|dBus[4]~30_combout\))) # (!\mem|ram[32][0]~12_combout\ & (\mem|ram[32][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[32][4]~combout\,
	datac => \ir|dBus[4]~30_combout\,
	datad => \mem|ram[32][0]~12_combout\,
	combout => \mem|ram[32][4]~combout\);

-- Location: LCCOMB_X13_Y15_N24
\mem|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~4_combout\ = (\pc|aBus[1]~7_combout\ & ((\mem|ram[34][4]~combout\) # ((\ir|aBus[4]~4_combout\)))) # (!\pc|aBus[1]~7_combout\ & (((\mem|ram[32][4]~combout\ & !\ir|aBus[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[34][4]~combout\,
	datab => \mem|ram[32][4]~combout\,
	datac => \pc|aBus[1]~7_combout\,
	datad => \ir|aBus[4]~4_combout\,
	combout => \mem|Mux3~4_combout\);

-- Location: LCCOMB_X13_Y15_N2
\mem|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~5_combout\ = (\ir|aBus[4]~4_combout\ & ((\mem|Mux3~4_combout\ & (\mem|ram[50][4]~combout\)) # (!\mem|Mux3~4_combout\ & ((\mem|ram[48][4]~combout\))))) # (!\ir|aBus[4]~4_combout\ & (((\mem|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[50][4]~combout\,
	datab => \mem|ram[48][4]~combout\,
	datac => \ir|aBus[4]~4_combout\,
	datad => \mem|Mux3~4_combout\,
	combout => \mem|Mux3~5_combout\);

-- Location: LCCOMB_X13_Y15_N20
\mem|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~6_combout\ = (\pc|aBus[0]~6_combout\ & ((\pc|aBus[2]~8_combout\) # ((\mem|Mux3~3_combout\)))) # (!\pc|aBus[0]~6_combout\ & (!\pc|aBus[2]~8_combout\ & ((\mem|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[0]~6_combout\,
	datab => \pc|aBus[2]~8_combout\,
	datac => \mem|Mux3~3_combout\,
	datad => \mem|Mux3~5_combout\,
	combout => \mem|Mux3~6_combout\);

-- Location: LCCOMB_X13_Y17_N26
\mem|ram[55][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[55][4]~combout\ = (\mem|ram[55][0]~51_combout\ & (\ir|dBus[4]~30_combout\)) # (!\mem|ram[55][0]~51_combout\ & ((\mem|ram[55][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[4]~30_combout\,
	datac => \mem|ram[55][4]~combout\,
	datad => \mem|ram[55][0]~51_combout\,
	combout => \mem|ram[55][4]~combout\);

-- Location: LCCOMB_X13_Y17_N0
\mem|ram[53][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[53][4]~combout\ = (\mem|ram[53][0]~49_combout\ & (\ir|dBus[4]~30_combout\)) # (!\mem|ram[53][0]~49_combout\ & ((\mem|ram[53][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[4]~30_combout\,
	datac => \mem|ram[53][0]~49_combout\,
	datad => \mem|ram[53][4]~combout\,
	combout => \mem|ram[53][4]~combout\);

-- Location: LCCOMB_X13_Y17_N8
\mem|ram[37][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[37][4]~combout\ = (\mem|ram[37][0]~13_combout\ & ((\ir|dBus[4]~30_combout\))) # (!\mem|ram[37][0]~13_combout\ & (\mem|ram[37][4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[37][4]~combout\,
	datac => \ir|dBus[4]~30_combout\,
	datad => \mem|ram[37][0]~13_combout\,
	combout => \mem|ram[37][4]~combout\);

-- Location: LCCOMB_X13_Y17_N18
\mem|ram[39][4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[39][4]~combout\ = (\mem|ram[39][0]~9_combout\ & (\ir|dBus[4]~30_combout\)) # (!\mem|ram[39][0]~9_combout\ & ((\mem|ram[39][4]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[4]~30_combout\,
	datac => \mem|ram[39][4]~combout\,
	datad => \mem|ram[39][0]~9_combout\,
	combout => \mem|ram[39][4]~combout\);

-- Location: LCCOMB_X13_Y17_N20
\mem|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~7_combout\ = (\ir|aBus[4]~4_combout\ & (((\pc|aBus[1]~7_combout\)))) # (!\ir|aBus[4]~4_combout\ & ((\pc|aBus[1]~7_combout\ & ((\mem|ram[39][4]~combout\))) # (!\pc|aBus[1]~7_combout\ & (\mem|ram[37][4]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[37][4]~combout\,
	datab => \ir|aBus[4]~4_combout\,
	datac => \pc|aBus[1]~7_combout\,
	datad => \mem|ram[39][4]~combout\,
	combout => \mem|Mux3~7_combout\);

-- Location: LCCOMB_X13_Y17_N12
\mem|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~8_combout\ = (\ir|aBus[4]~4_combout\ & ((\mem|Mux3~7_combout\ & (\mem|ram[55][4]~combout\)) # (!\mem|Mux3~7_combout\ & ((\mem|ram[53][4]~combout\))))) # (!\ir|aBus[4]~4_combout\ & (((\mem|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[55][4]~combout\,
	datab => \mem|ram[53][4]~combout\,
	datac => \ir|aBus[4]~4_combout\,
	datad => \mem|Mux3~7_combout\,
	combout => \mem|Mux3~8_combout\);

-- Location: LCCOMB_X14_Y11_N16
\mem|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~9_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|Mux3~6_combout\ & ((\mem|Mux3~8_combout\))) # (!\mem|Mux3~6_combout\ & (\mem|Mux3~1_combout\)))) # (!\pc|aBus[2]~8_combout\ & (((\mem|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \mem|Mux3~1_combout\,
	datac => \mem|Mux3~6_combout\,
	datad => \mem|Mux3~8_combout\,
	combout => \mem|Mux3~9_combout\);

-- Location: LCCOMB_X14_Y11_N2
\mem|Mux3~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux3~41_combout\ = (\ir|aBus[5]~5_combout\ & ((\mem|Mux3~30_combout\ & (\mem|Mux3~40_combout\)) # (!\mem|Mux3~30_combout\ & ((\mem|Mux3~9_combout\))))) # (!\ir|aBus[5]~5_combout\ & (((\mem|Mux3~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[5]~5_combout\,
	datab => \mem|Mux3~40_combout\,
	datac => \mem|Mux3~30_combout\,
	datad => \mem|Mux3~9_combout\,
	combout => \mem|Mux3~41_combout\);

-- Location: LCCOMB_X14_Y11_N18
\ir|dBus[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[4]~30_combout\ = ((\ir|dBus[4]~18_combout\ & ((\mem|Mux3~41_combout\) # (!\mem|dBus~0_combout\)))) # (!\ir|dBus[0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[0]~11_combout\,
	datab => \ir|dBus[4]~18_combout\,
	datac => \mem|dBus~0_combout\,
	datad => \mem|Mux3~41_combout\,
	combout => \ir|dBus[4]~30_combout\);

-- Location: LCCOMB_X23_Y12_N18
\acc|accReg~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg~18_combout\ = (\acc|accReg[6]~2_combout\ & (((\acc|accReg[6]~3_combout\)))) # (!\acc|accReg[6]~2_combout\ & ((\acc|accReg[6]~3_combout\ & ((\aluu|Add0~21_combout\))) # (!\acc|accReg[6]~3_combout\ & (\ir|dBus[4]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[4]~30_combout\,
	datab => \acc|accReg[6]~2_combout\,
	datac => \acc|accReg[6]~3_combout\,
	datad => \aluu|Add0~21_combout\,
	combout => \acc|accReg~18_combout\);

-- Location: LCCOMB_X22_Y12_N28
\acc|accReg~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg~19_combout\ = (\aluu|Equal13~0_combout\ & ((\acc|accReg~18_combout\ & ((\aluu|Mult1|auto_generated|op_3~8_combout\))) # (!\acc|accReg~18_combout\ & (\aluu|Mult0|auto_generated|op_3~8_combout\)))) # (!\aluu|Equal13~0_combout\ & 
-- (\acc|accReg~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Equal13~0_combout\,
	datab => \acc|accReg~18_combout\,
	datac => \aluu|Mult0|auto_generated|op_3~8_combout\,
	datad => \aluu|Mult1|auto_generated|op_3~8_combout\,
	combout => \acc|accReg~19_combout\);

-- Location: LCCOMB_X22_Y12_N20
\acc|accReg~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg~20_combout\ = (\ctl|acc_ld~0_combout\ & (\ir|dBus[4]~30_combout\)) # (!\ctl|acc_ld~0_combout\ & ((\acc|accReg~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[4]~30_combout\,
	datac => \ctl|acc_ld~0_combout\,
	datad => \acc|accReg~19_combout\,
	combout => \acc|accReg~20_combout\);

-- Location: FF_X22_Y12_N21
\acc|accReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \acc|accReg~20_combout\,
	sclr => \reset~input_o\,
	ena => \acc|accReg~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acc|accReg\(4));

-- Location: LCCOMB_X12_Y11_N16
\ir|dBus[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[4]~18_combout\ = (!\ctl|state.branch0~q\ & ((\acc|accReg\(4)) # ((!\ctl|state.store0~q\ & !\ctl|state.store1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|state.store0~q\,
	datab => \ctl|state.store1~q\,
	datac => \ctl|state.branch0~q\,
	datad => \acc|accReg\(4),
	combout => \ir|dBus[4]~18_combout\);

-- Location: LCCOMB_X13_Y11_N26
\ir|irReg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|irReg~6_combout\ = (!\reset~input_o\ & ((\ir|dBus[4]~18_combout\) # (!\ir|dBus[0]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ir|dBus[0]~11_combout\,
	datac => \ir|dBus[4]~18_combout\,
	combout => \ir|irReg~6_combout\);

-- Location: LCCOMB_X14_Y11_N28
\ir|irReg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|irReg~7_combout\ = (\ir|irReg~6_combout\ & (((\mem|Mux3~41_combout\) # (!\mem|dBus~0_combout\)) # (!\ir|dBus[0]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|irReg~6_combout\,
	datab => \ir|dBus[0]~11_combout\,
	datac => \mem|dBus~0_combout\,
	datad => \mem|Mux3~41_combout\,
	combout => \ir|irReg~7_combout\);

-- Location: FF_X14_Y11_N29
\ir|irReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \ir|irReg~7_combout\,
	ena => \ir|irReg[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|irReg\(4));

-- Location: LCCOMB_X18_Y13_N22
\ctl|state~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|state~63_combout\ = (\ir|irReg\(5) & (\ir|irReg\(4) & \ctl|state~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|irReg\(5),
	datac => \ir|irReg\(4),
	datad => \ctl|state~57_combout\,
	combout => \ctl|state~63_combout\);

-- Location: FF_X18_Y14_N15
\ctl|state.branch0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \ctl|state~63_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|state.branch0~q\);

-- Location: LCCOMB_X13_Y11_N6
\ir|dBus[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[0]~10_combout\ = (!\ctl|state.store0~q\ & (!\ctl|state.store1~q\ & !\ctl|state.branch0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|state.store0~q\,
	datac => \ctl|state.store1~q\,
	datad => \ctl|state.branch0~q\,
	combout => \ir|dBus[0]~10_combout\);

-- Location: LCCOMB_X13_Y11_N24
\ir|dBus[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[0]~11_combout\ = ((\ctl|mem_rw~q\ & (!\reset~input_o\ & \ctl|mem_enD~combout\))) # (!\ir|dBus[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[0]~10_combout\,
	datab => \ctl|mem_rw~q\,
	datac => \reset~input_o\,
	datad => \ctl|mem_enD~combout\,
	combout => \ir|dBus[0]~11_combout\);

-- Location: LCCOMB_X22_Y10_N28
\acc|accReg~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg~27_combout\ = (!\ctl|alu_op\(2) & (\ctl|alu_op\(1) & !\ctl|acc_ld~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|alu_op\(2),
	datab => \ctl|alu_op\(1),
	datad => \ctl|acc_ld~0_combout\,
	combout => \acc|accReg~27_combout\);

-- Location: LCCOMB_X21_Y10_N16
\acc|accReg~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg~28_combout\ = (\acc|accReg~27_combout\ & ((\ctl|alu_op\(0) & ((!\ir|dBus[7]~33_combout\))) # (!\ctl|alu_op\(0) & (!\acc|accReg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|alu_op\(0),
	datab => \acc|accReg~27_combout\,
	datac => \acc|accReg\(7),
	datad => \ir|dBus[7]~33_combout\,
	combout => \acc|accReg~28_combout\);

-- Location: LCCOMB_X21_Y10_N14
\acc|accReg~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg~29_combout\ = (\acc|accReg~1_combout\ & ((\ctl|state.load1~q\) # (!\ctl|acc_ld~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctl|state.load1~q\,
	datac => \acc|accReg~1_combout\,
	datad => \ctl|acc_ld~0_combout\,
	combout => \acc|accReg~29_combout\);

-- Location: LCCOMB_X21_Y10_N24
\acc|accReg~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg~30_combout\ = (\ctl|acc_ld~0_combout\ & ((\acc|accReg~29_combout\ & ((\ir|dBus[7]~33_combout\))) # (!\acc|accReg~29_combout\ & (\acc|accReg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|acc_ld~0_combout\,
	datab => \acc|accReg~29_combout\,
	datac => \acc|accReg\(7),
	datad => \ir|dBus[7]~33_combout\,
	combout => \acc|accReg~30_combout\);

-- Location: LCCOMB_X24_Y12_N14
\aluu|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Add0~31_combout\ = (\ctl|alu_op\(1) & (\acc|accReg\(7))) # (!\ctl|alu_op\(1) & ((\acc|accReg\(7) & (\ctl|alu_op\(0))) # (!\acc|accReg\(7) & (!\ctl|alu_op\(0) & \ctl|alu_op\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|alu_op\(1),
	datab => \acc|accReg\(7),
	datac => \ctl|alu_op\(0),
	datad => \ctl|alu_op\(2),
	combout => \aluu|Add0~31_combout\);

-- Location: LCCOMB_X24_Y12_N28
\aluu|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Add0~32_combout\ = (\ctl|alu_op\(1) & (((!\ir|dBus[7]~33_combout\)))) # (!\ctl|alu_op\(1) & (\ctl|alu_op\(2) $ (((\ctl|alu_op\(0) & \ir|dBus[7]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|alu_op\(2),
	datab => \ctl|alu_op\(1),
	datac => \ctl|alu_op\(0),
	datad => \ir|dBus[7]~33_combout\,
	combout => \aluu|Add0~32_combout\);

-- Location: LCCOMB_X23_Y12_N16
\aluu|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Add0~33_combout\ = \aluu|Add0~31_combout\ $ (\aluu|Add0~30\ $ (!\aluu|Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aluu|Add0~31_combout\,
	datad => \aluu|Add0~32_combout\,
	cin => \aluu|Add0~30\,
	combout => \aluu|Add0~33_combout\);

-- Location: LCCOMB_X21_Y14_N26
\aluu|Mult0|auto_generated|le5a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult0|auto_generated|le5a\(3) = (\acc|accReg\(3) & (((\aluu|Mult0|auto_generated|le3a\(5) & !\ir|dBus[2]~28_combout\)) # (!\ir|dBus[3]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|accReg\(3),
	datab => \aluu|Mult0|auto_generated|le3a\(5),
	datac => \ir|dBus[2]~28_combout\,
	datad => \ir|dBus[3]~29_combout\,
	combout => \aluu|Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X21_Y12_N16
\aluu|Mult0|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult0|auto_generated|op_1~10_combout\ = \aluu|Mult0|auto_generated|le4a\(5) $ (\aluu|Mult0|auto_generated|op_1~9\ $ (!\aluu|Mult0|auto_generated|le5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult0|auto_generated|le4a\(5),
	datad => \aluu|Mult0|auto_generated|le5a\(3),
	cin => \aluu|Mult0|auto_generated|op_1~9\,
	combout => \aluu|Mult0|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X22_Y12_N14
\aluu|Mult0|auto_generated|op_3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult0|auto_generated|op_3~14_combout\ = \aluu|Mult0|auto_generated|le3a\(5) $ (\aluu|Mult0|auto_generated|op_3~13\ $ (!\aluu|Mult0|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aluu|Mult0|auto_generated|le3a\(5),
	datad => \aluu|Mult0|auto_generated|op_1~10_combout\,
	cin => \aluu|Mult0|auto_generated|op_3~13\,
	combout => \aluu|Mult0|auto_generated|op_3~14_combout\);

-- Location: LCCOMB_X21_Y14_N24
\aluu|Mult1|auto_generated|le5a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult1|auto_generated|le5a\(3) = (\acc|accReg\(3) & ((\ir|dBus[3]~29_combout\) # ((!\aluu|Mult0|auto_generated|le3a\(5) & \ir|dBus[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|accReg\(3),
	datab => \aluu|Mult0|auto_generated|le3a\(5),
	datac => \ir|dBus[2]~28_combout\,
	datad => \ir|dBus[3]~29_combout\,
	combout => \aluu|Mult1|auto_generated|le5a\(3));

-- Location: LCCOMB_X22_Y14_N10
\aluu|Mult1|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult1|auto_generated|op_1~10_combout\ = \aluu|Mult1|auto_generated|le5a\(3) $ (\aluu|Mult1|auto_generated|le4a\(5) $ (!\aluu|Mult1|auto_generated|op_1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \aluu|Mult1|auto_generated|le5a\(3),
	datab => \aluu|Mult1|auto_generated|le4a\(5),
	cin => \aluu|Mult1|auto_generated|op_1~9\,
	combout => \aluu|Mult1|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X22_Y14_N28
\aluu|Mult1|auto_generated|op_3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|Mult1|auto_generated|op_3~14_combout\ = \aluu|Mult1|auto_generated|le3a\(5) $ (\aluu|Mult1|auto_generated|op_3~13\ $ (!\aluu|Mult1|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \aluu|Mult1|auto_generated|le3a\(5),
	datad => \aluu|Mult1|auto_generated|op_1~10_combout\,
	cin => \aluu|Mult1|auto_generated|op_3~13\,
	combout => \aluu|Mult1|auto_generated|op_3~14_combout\);

-- Location: LCCOMB_X22_Y12_N24
\acc|accReg~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg~31_combout\ = (\ctl|alu_op\(0) & (\aluu|Mult0|auto_generated|op_3~14_combout\)) # (!\ctl|alu_op\(0) & ((\aluu|Mult1|auto_generated|op_3~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|alu_op\(0),
	datac => \aluu|Mult0|auto_generated|op_3~14_combout\,
	datad => \aluu|Mult1|auto_generated|op_3~14_combout\,
	combout => \acc|accReg~31_combout\);

-- Location: LCCOMB_X22_Y12_N18
\acc|accReg~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg~32_combout\ = (\ctl|alu_op\(1) & (((\ctl|alu_op\(2) & \acc|accReg~31_combout\)))) # (!\ctl|alu_op\(1) & (\aluu|Add0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|alu_op\(1),
	datab => \aluu|Add0~33_combout\,
	datac => \ctl|alu_op\(2),
	datad => \acc|accReg~31_combout\,
	combout => \acc|accReg~32_combout\);

-- Location: LCCOMB_X22_Y12_N16
\acc|accReg~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg~33_combout\ = (\acc|accReg~28_combout\) # ((\acc|accReg~30_combout\) # ((!\ctl|acc_ld~0_combout\ & \acc|accReg~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|acc_ld~0_combout\,
	datab => \acc|accReg~28_combout\,
	datac => \acc|accReg~30_combout\,
	datad => \acc|accReg~32_combout\,
	combout => \acc|accReg~33_combout\);

-- Location: FF_X22_Y12_N17
\acc|accReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \acc|accReg~33_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \acc|accReg\(7));

-- Location: LCCOMB_X13_Y11_N0
\ir|dBus[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[7]~24_combout\ = (!\ctl|state.branch0~q\ & ((\acc|accReg\(7)) # ((!\ctl|state.store0~q\ & !\ctl|state.store1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|state.store0~q\,
	datab => \acc|accReg\(7),
	datac => \ctl|state.store1~q\,
	datad => \ctl|state.branch0~q\,
	combout => \ir|dBus[7]~24_combout\);

-- Location: LCCOMB_X16_Y15_N30
\mem|ram[44][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[44][7]~combout\ = (\mem|ram[44][0]~2_combout\ & (\ir|dBus[7]~33_combout\)) # (!\mem|ram[44][0]~2_combout\ & ((\mem|ram[44][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[7]~33_combout\,
	datac => \mem|ram[44][7]~combout\,
	datad => \mem|ram[44][0]~2_combout\,
	combout => \mem|ram[44][7]~combout\);

-- Location: LCCOMB_X16_Y15_N20
\mem|ram[46][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[46][7]~combout\ = (\mem|ram[46][0]~14_combout\ & (\ir|dBus[7]~33_combout\)) # (!\mem|ram[46][0]~14_combout\ & ((\mem|ram[46][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[7]~33_combout\,
	datac => \mem|ram[46][7]~combout\,
	datad => \mem|ram[46][0]~14_combout\,
	combout => \mem|ram[46][7]~combout\);

-- Location: LCCOMB_X16_Y15_N6
\mem|Mux0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~31_combout\ = (\pc|aBus[1]~7_combout\ & (((\mem|ram[46][7]~combout\) # (\ir|aBus[4]~4_combout\)))) # (!\pc|aBus[1]~7_combout\ & (\mem|ram[44][7]~combout\ & ((!\ir|aBus[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[44][7]~combout\,
	datab => \mem|ram[46][7]~combout\,
	datac => \pc|aBus[1]~7_combout\,
	datad => \ir|aBus[4]~4_combout\,
	combout => \mem|Mux0~31_combout\);

-- Location: LCCOMB_X16_Y15_N8
\mem|ram[62][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[62][7]~combout\ = (\mem|ram[62][0]~56_combout\ & (\ir|dBus[7]~33_combout\)) # (!\mem|ram[62][0]~56_combout\ & ((\mem|ram[62][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[7]~33_combout\,
	datac => \mem|ram[62][7]~combout\,
	datad => \mem|ram[62][0]~56_combout\,
	combout => \mem|ram[62][7]~combout\);

-- Location: LCCOMB_X16_Y15_N2
\mem|ram[60][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[60][7]~combout\ = (\mem|ram[60][0]~58_combout\ & (\ir|dBus[7]~33_combout\)) # (!\mem|ram[60][0]~58_combout\ & ((\mem|ram[60][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[7]~33_combout\,
	datac => \mem|ram[60][0]~58_combout\,
	datad => \mem|ram[60][7]~combout\,
	combout => \mem|ram[60][7]~combout\);

-- Location: LCCOMB_X16_Y15_N4
\mem|Mux0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~32_combout\ = (\ir|aBus[4]~4_combout\ & ((\mem|Mux0~31_combout\ & (\mem|ram[62][7]~combout\)) # (!\mem|Mux0~31_combout\ & ((\mem|ram[60][7]~combout\))))) # (!\ir|aBus[4]~4_combout\ & (\mem|Mux0~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[4]~4_combout\,
	datab => \mem|Mux0~31_combout\,
	datac => \mem|ram[62][7]~combout\,
	datad => \mem|ram[60][7]~combout\,
	combout => \mem|Mux0~32_combout\);

-- Location: LCCOMB_X11_Y15_N10
\mem|ram[58][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[58][7]~combout\ = (\mem|ram[58][0]~45_combout\ & ((\ir|dBus[7]~33_combout\))) # (!\mem|ram[58][0]~45_combout\ & (\mem|ram[58][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[58][7]~combout\,
	datab => \ir|dBus[7]~33_combout\,
	datad => \mem|ram[58][0]~45_combout\,
	combout => \mem|ram[58][7]~combout\);

-- Location: LCCOMB_X11_Y15_N28
\mem|ram[56][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[56][7]~combout\ = (\mem|ram[56][0]~46_combout\ & ((\ir|dBus[7]~33_combout\))) # (!\mem|ram[56][0]~46_combout\ & (\mem|ram[56][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[56][7]~combout\,
	datac => \ir|dBus[7]~33_combout\,
	datad => \mem|ram[56][0]~46_combout\,
	combout => \mem|ram[56][7]~combout\);

-- Location: LCCOMB_X11_Y15_N2
\mem|ram[42][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[42][7]~combout\ = (\mem|ram[42][0]~16_combout\ & (\ir|dBus[7]~33_combout\)) # (!\mem|ram[42][0]~16_combout\ & ((\mem|ram[42][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[7]~33_combout\,
	datac => \mem|ram[42][7]~combout\,
	datad => \mem|ram[42][0]~16_combout\,
	combout => \mem|ram[42][7]~combout\);

-- Location: LCCOMB_X11_Y15_N8
\mem|ram[40][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[40][7]~combout\ = (\mem|ram[40][0]~3_combout\ & (\ir|dBus[7]~33_combout\)) # (!\mem|ram[40][0]~3_combout\ & ((\mem|ram[40][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[7]~33_combout\,
	datab => \mem|ram[40][7]~combout\,
	datad => \mem|ram[40][0]~3_combout\,
	combout => \mem|ram[40][7]~combout\);

-- Location: LCCOMB_X11_Y15_N24
\mem|Mux0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~35_combout\ = (\ir|aBus[4]~4_combout\ & (((\pc|aBus[1]~7_combout\)))) # (!\ir|aBus[4]~4_combout\ & ((\pc|aBus[1]~7_combout\ & (\mem|ram[42][7]~combout\)) # (!\pc|aBus[1]~7_combout\ & ((\mem|ram[40][7]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[4]~4_combout\,
	datab => \mem|ram[42][7]~combout\,
	datac => \mem|ram[40][7]~combout\,
	datad => \pc|aBus[1]~7_combout\,
	combout => \mem|Mux0~35_combout\);

-- Location: LCCOMB_X11_Y15_N14
\mem|Mux0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~36_combout\ = (\ir|aBus[4]~4_combout\ & ((\mem|Mux0~35_combout\ & (\mem|ram[58][7]~combout\)) # (!\mem|Mux0~35_combout\ & ((\mem|ram[56][7]~combout\))))) # (!\ir|aBus[4]~4_combout\ & (((\mem|Mux0~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[58][7]~combout\,
	datab => \mem|ram[56][7]~combout\,
	datac => \ir|aBus[4]~4_combout\,
	datad => \mem|Mux0~35_combout\,
	combout => \mem|Mux0~36_combout\);

-- Location: LCCOMB_X11_Y15_N12
\mem|ram[57][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[57][7]~combout\ = (\mem|ram[57][0]~44_combout\ & ((\ir|dBus[7]~33_combout\))) # (!\mem|ram[57][0]~44_combout\ & (\mem|ram[57][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[57][7]~combout\,
	datac => \mem|ram[57][0]~44_combout\,
	datad => \ir|dBus[7]~33_combout\,
	combout => \mem|ram[57][7]~combout\);

-- Location: LCCOMB_X11_Y15_N22
\mem|ram[59][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[59][7]~combout\ = (\mem|ram[59][0]~47_combout\ & (\ir|dBus[7]~33_combout\)) # (!\mem|ram[59][0]~47_combout\ & ((\mem|ram[59][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[7]~33_combout\,
	datac => \mem|ram[59][7]~combout\,
	datad => \mem|ram[59][0]~47_combout\,
	combout => \mem|ram[59][7]~combout\);

-- Location: LCCOMB_X11_Y15_N4
\mem|ram[41][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[41][7]~combout\ = (\mem|ram[41][0]~1_combout\ & (\ir|dBus[7]~33_combout\)) # (!\mem|ram[41][0]~1_combout\ & ((\mem|ram[41][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[7]~33_combout\,
	datab => \mem|ram[41][7]~combout\,
	datad => \mem|ram[41][0]~1_combout\,
	combout => \mem|ram[41][7]~combout\);

-- Location: LCCOMB_X11_Y15_N26
\mem|ram[43][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[43][7]~combout\ = (\mem|ram[43][0]~15_combout\ & ((\ir|dBus[7]~33_combout\))) # (!\mem|ram[43][0]~15_combout\ & (\mem|ram[43][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[43][7]~combout\,
	datab => \ir|dBus[7]~33_combout\,
	datac => \mem|ram[43][0]~15_combout\,
	combout => \mem|ram[43][7]~combout\);

-- Location: LCCOMB_X11_Y15_N0
\mem|Mux0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~33_combout\ = (\ir|aBus[4]~4_combout\ & (((\pc|aBus[1]~7_combout\)))) # (!\ir|aBus[4]~4_combout\ & ((\pc|aBus[1]~7_combout\ & ((\mem|ram[43][7]~combout\))) # (!\pc|aBus[1]~7_combout\ & (\mem|ram[41][7]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[4]~4_combout\,
	datab => \mem|ram[41][7]~combout\,
	datac => \mem|ram[43][7]~combout\,
	datad => \pc|aBus[1]~7_combout\,
	combout => \mem|Mux0~33_combout\);

-- Location: LCCOMB_X11_Y15_N18
\mem|Mux0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~34_combout\ = (\ir|aBus[4]~4_combout\ & ((\mem|Mux0~33_combout\ & ((\mem|ram[59][7]~combout\))) # (!\mem|Mux0~33_combout\ & (\mem|ram[57][7]~combout\)))) # (!\ir|aBus[4]~4_combout\ & (((\mem|Mux0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[57][7]~combout\,
	datab => \ir|aBus[4]~4_combout\,
	datac => \mem|ram[59][7]~combout\,
	datad => \mem|Mux0~33_combout\,
	combout => \mem|Mux0~34_combout\);

-- Location: LCCOMB_X11_Y15_N16
\mem|Mux0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~37_combout\ = (\pc|aBus[0]~6_combout\ & ((\pc|aBus[2]~8_combout\) # ((\mem|Mux0~34_combout\)))) # (!\pc|aBus[0]~6_combout\ & (!\pc|aBus[2]~8_combout\ & (\mem|Mux0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[0]~6_combout\,
	datab => \pc|aBus[2]~8_combout\,
	datac => \mem|Mux0~36_combout\,
	datad => \mem|Mux0~34_combout\,
	combout => \mem|Mux0~37_combout\);

-- Location: LCCOMB_X16_Y15_N0
\mem|ram[63][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[63][7]~combout\ = (\mem|ram[63][1]~59_combout\ & (\ir|dBus[7]~33_combout\)) # (!\mem|ram[63][1]~59_combout\ & ((\mem|ram[63][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[7]~33_combout\,
	datac => \mem|ram[63][1]~59_combout\,
	datad => \mem|ram[63][7]~combout\,
	combout => \mem|ram[63][7]~combout\);

-- Location: LCCOMB_X16_Y15_N28
\mem|ram[61][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[61][7]~combout\ = (\mem|ram[61][0]~57_combout\ & (\ir|dBus[7]~33_combout\)) # (!\mem|ram[61][0]~57_combout\ & ((\mem|ram[61][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[7]~33_combout\,
	datab => \mem|ram[61][7]~combout\,
	datad => \mem|ram[61][0]~57_combout\,
	combout => \mem|ram[61][7]~combout\);

-- Location: LCCOMB_X16_Y15_N22
\mem|ram[45][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[45][7]~combout\ = (\mem|ram[45][0]~4_combout\ & (\ir|dBus[7]~33_combout\)) # (!\mem|ram[45][0]~4_combout\ & ((\mem|ram[45][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[7]~33_combout\,
	datac => \mem|ram[45][7]~combout\,
	datad => \mem|ram[45][0]~4_combout\,
	combout => \mem|ram[45][7]~combout\);

-- Location: LCCOMB_X16_Y15_N18
\mem|ram[47][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[47][7]~combout\ = (\mem|ram[47][0]~17_combout\ & ((\ir|dBus[7]~33_combout\))) # (!\mem|ram[47][0]~17_combout\ & (\mem|ram[47][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[47][7]~combout\,
	datac => \ir|dBus[7]~33_combout\,
	datad => \mem|ram[47][0]~17_combout\,
	combout => \mem|ram[47][7]~combout\);

-- Location: LCCOMB_X16_Y15_N16
\mem|Mux0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~38_combout\ = (\pc|aBus[1]~7_combout\ & (((\ir|aBus[4]~4_combout\) # (\mem|ram[47][7]~combout\)))) # (!\pc|aBus[1]~7_combout\ & (\mem|ram[45][7]~combout\ & (!\ir|aBus[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[45][7]~combout\,
	datab => \pc|aBus[1]~7_combout\,
	datac => \ir|aBus[4]~4_combout\,
	datad => \mem|ram[47][7]~combout\,
	combout => \mem|Mux0~38_combout\);

-- Location: LCCOMB_X16_Y15_N14
\mem|Mux0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~39_combout\ = (\ir|aBus[4]~4_combout\ & ((\mem|Mux0~38_combout\ & (\mem|ram[63][7]~combout\)) # (!\mem|Mux0~38_combout\ & ((\mem|ram[61][7]~combout\))))) # (!\ir|aBus[4]~4_combout\ & (((\mem|Mux0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[63][7]~combout\,
	datab => \mem|ram[61][7]~combout\,
	datac => \ir|aBus[4]~4_combout\,
	datad => \mem|Mux0~38_combout\,
	combout => \mem|Mux0~39_combout\);

-- Location: LCCOMB_X12_Y15_N20
\mem|Mux0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~40_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|Mux0~37_combout\ & ((\mem|Mux0~39_combout\))) # (!\mem|Mux0~37_combout\ & (\mem|Mux0~32_combout\)))) # (!\pc|aBus[2]~8_combout\ & (((\mem|Mux0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \mem|Mux0~32_combout\,
	datac => \mem|Mux0~37_combout\,
	datad => \mem|Mux0~39_combout\,
	combout => \mem|Mux0~40_combout\);

-- Location: LCCOMB_X12_Y16_N16
\mem|ram[51][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[51][7]~combout\ = (\mem|ram[51][0]~55_combout\ & ((\ir|dBus[7]~33_combout\))) # (!\mem|ram[51][0]~55_combout\ & (\mem|ram[51][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[51][7]~combout\,
	datac => \ir|dBus[7]~33_combout\,
	datad => \mem|ram[51][0]~55_combout\,
	combout => \mem|ram[51][7]~combout\);

-- Location: LCCOMB_X12_Y16_N26
\mem|ram[55][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[55][7]~combout\ = (\mem|ram[55][0]~51_combout\ & (\ir|dBus[7]~33_combout\)) # (!\mem|ram[55][0]~51_combout\ & ((\mem|ram[55][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[7]~33_combout\,
	datac => \mem|ram[55][7]~combout\,
	datad => \mem|ram[55][0]~51_combout\,
	combout => \mem|ram[55][7]~combout\);

-- Location: LCCOMB_X12_Y16_N22
\mem|ram[35][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[35][7]~combout\ = (\mem|ram[35][0]~7_combout\ & ((\ir|dBus[7]~33_combout\))) # (!\mem|ram[35][0]~7_combout\ & (\mem|ram[35][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[35][7]~combout\,
	datab => \ir|dBus[7]~33_combout\,
	datac => \mem|ram[35][0]~7_combout\,
	combout => \mem|ram[35][7]~combout\);

-- Location: LCCOMB_X12_Y16_N12
\mem|ram[39][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[39][7]~combout\ = (\mem|ram[39][0]~9_combout\ & (\ir|dBus[7]~33_combout\)) # (!\mem|ram[39][0]~9_combout\ & ((\mem|ram[39][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[7]~33_combout\,
	datac => \mem|ram[39][0]~9_combout\,
	datad => \mem|ram[39][7]~combout\,
	combout => \mem|ram[39][7]~combout\);

-- Location: LCCOMB_X12_Y16_N24
\mem|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~7_combout\ = (\ir|aBus[4]~4_combout\ & (((\pc|aBus[2]~8_combout\)))) # (!\ir|aBus[4]~4_combout\ & ((\pc|aBus[2]~8_combout\ & ((\mem|ram[39][7]~combout\))) # (!\pc|aBus[2]~8_combout\ & (\mem|ram[35][7]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[35][7]~combout\,
	datab => \ir|aBus[4]~4_combout\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \mem|ram[39][7]~combout\,
	combout => \mem|Mux0~7_combout\);

-- Location: LCCOMB_X12_Y16_N28
\mem|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~8_combout\ = (\ir|aBus[4]~4_combout\ & ((\mem|Mux0~7_combout\ & ((\mem|ram[55][7]~combout\))) # (!\mem|Mux0~7_combout\ & (\mem|ram[51][7]~combout\)))) # (!\ir|aBus[4]~4_combout\ & (((\mem|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[4]~4_combout\,
	datab => \mem|ram[51][7]~combout\,
	datac => \mem|ram[55][7]~combout\,
	datad => \mem|Mux0~7_combout\,
	combout => \mem|Mux0~8_combout\);

-- Location: LCCOMB_X12_Y14_N14
\mem|ram[49][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[49][7]~combout\ = (\mem|ram[49][0]~53_combout\ & (\ir|dBus[7]~33_combout\)) # (!\mem|ram[49][0]~53_combout\ & ((\mem|ram[49][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[7]~33_combout\,
	datac => \mem|ram[49][7]~combout\,
	datad => \mem|ram[49][0]~53_combout\,
	combout => \mem|ram[49][7]~combout\);

-- Location: LCCOMB_X13_Y17_N16
\mem|ram[53][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[53][7]~combout\ = (\mem|ram[53][0]~49_combout\ & (\ir|dBus[7]~33_combout\)) # (!\mem|ram[53][0]~49_combout\ & ((\mem|ram[53][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[7]~33_combout\,
	datac => \mem|ram[53][0]~49_combout\,
	datad => \mem|ram[53][7]~combout\,
	combout => \mem|ram[53][7]~combout\);

-- Location: LCCOMB_X13_Y17_N6
\mem|ram[33][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[33][7]~combout\ = (\mem|ram[33][0]~10_combout\ & (\ir|dBus[7]~33_combout\)) # (!\mem|ram[33][0]~10_combout\ & ((\mem|ram[33][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[7]~33_combout\,
	datac => \mem|ram[33][0]~10_combout\,
	datad => \mem|ram[33][7]~combout\,
	combout => \mem|ram[33][7]~combout\);

-- Location: LCCOMB_X13_Y17_N14
\mem|ram[37][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[37][7]~combout\ = (\mem|ram[37][0]~13_combout\ & (\ir|dBus[7]~33_combout\)) # (!\mem|ram[37][0]~13_combout\ & ((\mem|ram[37][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[7]~33_combout\,
	datab => \mem|ram[37][7]~combout\,
	datac => \mem|ram[37][0]~13_combout\,
	combout => \mem|ram[37][7]~combout\);

-- Location: LCCOMB_X13_Y17_N2
\mem|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~0_combout\ = (\ir|aBus[4]~4_combout\ & (((\pc|aBus[2]~8_combout\)))) # (!\ir|aBus[4]~4_combout\ & ((\pc|aBus[2]~8_combout\ & ((\mem|ram[37][7]~combout\))) # (!\pc|aBus[2]~8_combout\ & (\mem|ram[33][7]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[33][7]~combout\,
	datab => \ir|aBus[4]~4_combout\,
	datac => \mem|ram[37][7]~combout\,
	datad => \pc|aBus[2]~8_combout\,
	combout => \mem|Mux0~0_combout\);

-- Location: LCCOMB_X13_Y17_N28
\mem|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~1_combout\ = (\ir|aBus[4]~4_combout\ & ((\mem|Mux0~0_combout\ & ((\mem|ram[53][7]~combout\))) # (!\mem|Mux0~0_combout\ & (\mem|ram[49][7]~combout\)))) # (!\ir|aBus[4]~4_combout\ & (((\mem|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[49][7]~combout\,
	datab => \mem|ram[53][7]~combout\,
	datac => \ir|aBus[4]~4_combout\,
	datad => \mem|Mux0~0_combout\,
	combout => \mem|Mux0~1_combout\);

-- Location: LCCOMB_X12_Y11_N10
\mem|ram[50][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[50][7]~combout\ = (\mem|ram[50][0]~52_combout\ & (\ir|dBus[7]~33_combout\)) # (!\mem|ram[50][0]~52_combout\ & ((\mem|ram[50][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[7]~33_combout\,
	datac => \mem|ram[50][0]~52_combout\,
	datad => \mem|ram[50][7]~combout\,
	combout => \mem|ram[50][7]~combout\);

-- Location: LCCOMB_X11_Y11_N22
\mem|ram[54][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[54][7]~combout\ = (\mem|ram[54][0]~48_combout\ & (\ir|dBus[7]~33_combout\)) # (!\mem|ram[54][0]~48_combout\ & ((\mem|ram[54][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[7]~33_combout\,
	datac => \mem|ram[54][7]~combout\,
	datad => \mem|ram[54][0]~48_combout\,
	combout => \mem|ram[54][7]~combout\);

-- Location: LCCOMB_X11_Y11_N16
\mem|ram[34][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[34][7]~combout\ = (\mem|ram[34][0]~8_combout\ & ((\ir|dBus[7]~33_combout\))) # (!\mem|ram[34][0]~8_combout\ & (\mem|ram[34][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[34][7]~combout\,
	datac => \ir|dBus[7]~33_combout\,
	datad => \mem|ram[34][0]~8_combout\,
	combout => \mem|ram[34][7]~combout\);

-- Location: LCCOMB_X11_Y11_N30
\mem|ram[38][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[38][7]~combout\ = (\mem|ram[38][0]~6_combout\ & (\ir|dBus[7]~33_combout\)) # (!\mem|ram[38][0]~6_combout\ & ((\mem|ram[38][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[7]~33_combout\,
	datac => \mem|ram[38][7]~combout\,
	datad => \mem|ram[38][0]~6_combout\,
	combout => \mem|ram[38][7]~combout\);

-- Location: LCCOMB_X11_Y11_N24
\mem|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~2_combout\ = (\ir|aBus[4]~4_combout\ & (((\pc|aBus[2]~8_combout\)))) # (!\ir|aBus[4]~4_combout\ & ((\pc|aBus[2]~8_combout\ & ((\mem|ram[38][7]~combout\))) # (!\pc|aBus[2]~8_combout\ & (\mem|ram[34][7]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[4]~4_combout\,
	datab => \mem|ram[34][7]~combout\,
	datac => \mem|ram[38][7]~combout\,
	datad => \pc|aBus[2]~8_combout\,
	combout => \mem|Mux0~2_combout\);

-- Location: LCCOMB_X11_Y11_N14
\mem|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~3_combout\ = (\ir|aBus[4]~4_combout\ & ((\mem|Mux0~2_combout\ & ((\mem|ram[54][7]~combout\))) # (!\mem|Mux0~2_combout\ & (\mem|ram[50][7]~combout\)))) # (!\ir|aBus[4]~4_combout\ & (((\mem|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[4]~4_combout\,
	datab => \mem|ram[50][7]~combout\,
	datac => \mem|ram[54][7]~combout\,
	datad => \mem|Mux0~2_combout\,
	combout => \mem|Mux0~3_combout\);

-- Location: LCCOMB_X11_Y11_N12
\mem|ram[52][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[52][7]~combout\ = (\mem|ram[52][0]~50_combout\ & ((\ir|dBus[7]~33_combout\))) # (!\mem|ram[52][0]~50_combout\ & (\mem|ram[52][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[52][7]~combout\,
	datac => \ir|dBus[7]~33_combout\,
	datad => \mem|ram[52][0]~50_combout\,
	combout => \mem|ram[52][7]~combout\);

-- Location: LCCOMB_X12_Y14_N6
\mem|ram[48][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[48][7]~combout\ = (\mem|ram[48][0]~54_combout\ & ((\ir|dBus[7]~33_combout\))) # (!\mem|ram[48][0]~54_combout\ & (\mem|ram[48][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[48][7]~combout\,
	datac => \ir|dBus[7]~33_combout\,
	datad => \mem|ram[48][0]~54_combout\,
	combout => \mem|ram[48][7]~combout\);

-- Location: LCCOMB_X11_Y13_N18
\mem|ram[36][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[36][7]~combout\ = (\mem|ram[36][0]~11_combout\ & (\ir|dBus[7]~33_combout\)) # (!\mem|ram[36][0]~11_combout\ & ((\mem|ram[36][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[7]~33_combout\,
	datac => \mem|ram[36][7]~combout\,
	datad => \mem|ram[36][0]~11_combout\,
	combout => \mem|ram[36][7]~combout\);

-- Location: LCCOMB_X11_Y15_N6
\mem|ram[32][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[32][7]~combout\ = (\mem|ram[32][0]~12_combout\ & ((\ir|dBus[7]~33_combout\))) # (!\mem|ram[32][0]~12_combout\ & (\mem|ram[32][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[32][7]~combout\,
	datac => \ir|dBus[7]~33_combout\,
	datad => \mem|ram[32][0]~12_combout\,
	combout => \mem|ram[32][7]~combout\);

-- Location: LCCOMB_X11_Y11_N0
\mem|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~4_combout\ = (\ir|aBus[4]~4_combout\ & (((\pc|aBus[2]~8_combout\)))) # (!\ir|aBus[4]~4_combout\ & ((\pc|aBus[2]~8_combout\ & (\mem|ram[36][7]~combout\)) # (!\pc|aBus[2]~8_combout\ & ((\mem|ram[32][7]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[4]~4_combout\,
	datab => \mem|ram[36][7]~combout\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \mem|ram[32][7]~combout\,
	combout => \mem|Mux0~4_combout\);

-- Location: LCCOMB_X11_Y11_N18
\mem|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~5_combout\ = (\ir|aBus[4]~4_combout\ & ((\mem|Mux0~4_combout\ & (\mem|ram[52][7]~combout\)) # (!\mem|Mux0~4_combout\ & ((\mem|ram[48][7]~combout\))))) # (!\ir|aBus[4]~4_combout\ & (((\mem|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[52][7]~combout\,
	datab => \ir|aBus[4]~4_combout\,
	datac => \mem|ram[48][7]~combout\,
	datad => \mem|Mux0~4_combout\,
	combout => \mem|Mux0~5_combout\);

-- Location: LCCOMB_X11_Y11_N4
\mem|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~6_combout\ = (\pc|aBus[1]~7_combout\ & ((\pc|aBus[0]~6_combout\) # ((\mem|Mux0~3_combout\)))) # (!\pc|aBus[1]~7_combout\ & (!\pc|aBus[0]~6_combout\ & ((\mem|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \pc|aBus[0]~6_combout\,
	datac => \mem|Mux0~3_combout\,
	datad => \mem|Mux0~5_combout\,
	combout => \mem|Mux0~6_combout\);

-- Location: LCCOMB_X12_Y15_N8
\mem|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~9_combout\ = (\pc|aBus[0]~6_combout\ & ((\mem|Mux0~6_combout\ & (\mem|Mux0~8_combout\)) # (!\mem|Mux0~6_combout\ & ((\mem|Mux0~1_combout\))))) # (!\pc|aBus[0]~6_combout\ & (((\mem|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux0~8_combout\,
	datab => \pc|aBus[0]~6_combout\,
	datac => \mem|Mux0~1_combout\,
	datad => \mem|Mux0~6_combout\,
	combout => \mem|Mux0~9_combout\);

-- Location: LCCOMB_X17_Y15_N22
\mem|ram[31][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[31][7]~combout\ = (\mem|ram[31][0]~34_combout\ & ((\ir|dBus[7]~33_combout\))) # (!\mem|ram[31][0]~34_combout\ & (\mem|ram[31][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[31][7]~combout\,
	datac => \ir|dBus[7]~33_combout\,
	datad => \mem|ram[31][0]~34_combout\,
	combout => \mem|ram[31][7]~combout\);

-- Location: LCCOMB_X17_Y15_N4
\mem|ram[30][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[30][7]~combout\ = (\mem|ram[30][0]~22_combout\ & (\ir|dBus[7]~33_combout\)) # (!\mem|ram[30][0]~22_combout\ & ((\mem|ram[30][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[7]~33_combout\,
	datac => \mem|ram[30][7]~combout\,
	datad => \mem|ram[30][0]~22_combout\,
	combout => \mem|ram[30][7]~combout\);

-- Location: LCCOMB_X17_Y15_N20
\mem|ram[14][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[14][7]~combout\ = (\mem|ram[14][0]~39_combout\ & (\ir|dBus[7]~33_combout\)) # (!\mem|ram[14][0]~39_combout\ & ((\mem|ram[14][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[7]~33_combout\,
	datac => \mem|ram[14][0]~39_combout\,
	datad => \mem|ram[14][7]~combout\,
	combout => \mem|ram[14][7]~combout\);

-- Location: LCCOMB_X17_Y15_N16
\mem|ram[15][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[15][7]~combout\ = (\mem|ram[15][0]~42_combout\ & (\ir|dBus[7]~33_combout\)) # (!\mem|ram[15][0]~42_combout\ & ((\mem|ram[15][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[7]~33_combout\,
	datac => \mem|ram[15][0]~42_combout\,
	datad => \mem|ram[15][7]~combout\,
	combout => \mem|ram[15][7]~combout\);

-- Location: LCCOMB_X17_Y15_N8
\mem|Mux0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~17_combout\ = (\ir|aBus[4]~4_combout\ & (((\pc|aBus[0]~6_combout\)))) # (!\ir|aBus[4]~4_combout\ & ((\pc|aBus[0]~6_combout\ & ((\mem|ram[15][7]~combout\))) # (!\pc|aBus[0]~6_combout\ & (\mem|ram[14][7]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[14][7]~combout\,
	datab => \mem|ram[15][7]~combout\,
	datac => \ir|aBus[4]~4_combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Mux0~17_combout\);

-- Location: LCCOMB_X17_Y15_N24
\mem|Mux0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~18_combout\ = (\mem|Mux0~17_combout\ & ((\mem|ram[31][7]~combout\) # ((!\ir|aBus[4]~4_combout\)))) # (!\mem|Mux0~17_combout\ & (((\mem|ram[30][7]~combout\ & \ir|aBus[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[31][7]~combout\,
	datab => \mem|ram[30][7]~combout\,
	datac => \mem|Mux0~17_combout\,
	datad => \ir|aBus[4]~4_combout\,
	combout => \mem|Mux0~18_combout\);

-- Location: LCCOMB_X17_Y15_N12
\mem|ram[11][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[11][7]~combout\ = (\mem|ram[11][0]~38_combout\ & (\ir|dBus[7]~33_combout\)) # (!\mem|ram[11][0]~38_combout\ & ((\mem|ram[11][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[7]~33_combout\,
	datac => \mem|ram[11][0]~38_combout\,
	datad => \mem|ram[11][7]~combout\,
	combout => \mem|ram[11][7]~combout\);

-- Location: LCCOMB_X17_Y15_N14
\mem|ram[10][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[10][7]~combout\ = (\mem|ram[10][0]~37_combout\ & ((\ir|dBus[7]~33_combout\))) # (!\mem|ram[10][0]~37_combout\ & (\mem|ram[10][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[10][7]~combout\,
	datac => \mem|ram[10][0]~37_combout\,
	datad => \ir|dBus[7]~33_combout\,
	combout => \mem|ram[10][7]~combout\);

-- Location: LCCOMB_X17_Y15_N0
\mem|Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~10_combout\ = (\ir|aBus[4]~4_combout\ & (((\pc|aBus[0]~6_combout\)))) # (!\ir|aBus[4]~4_combout\ & ((\pc|aBus[0]~6_combout\ & (\mem|ram[11][7]~combout\)) # (!\pc|aBus[0]~6_combout\ & ((\mem|ram[10][7]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[11][7]~combout\,
	datab => \mem|ram[10][7]~combout\,
	datac => \ir|aBus[4]~4_combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Mux0~10_combout\);

-- Location: LCCOMB_X17_Y15_N18
\mem|ram[27][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[27][7]~combout\ = (\mem|ram[27][0]~32_combout\ & ((\ir|dBus[7]~33_combout\))) # (!\mem|ram[27][0]~32_combout\ & (\mem|ram[27][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[27][7]~combout\,
	datac => \ir|dBus[7]~33_combout\,
	datad => \mem|ram[27][0]~32_combout\,
	combout => \mem|ram[27][7]~combout\);

-- Location: LCCOMB_X17_Y15_N6
\mem|ram[26][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[26][7]~combout\ = (\mem|ram[26][0]~20_combout\ & ((\ir|dBus[7]~33_combout\))) # (!\mem|ram[26][0]~20_combout\ & (\mem|ram[26][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[26][7]~combout\,
	datab => \ir|dBus[7]~33_combout\,
	datad => \mem|ram[26][0]~20_combout\,
	combout => \mem|ram[26][7]~combout\);

-- Location: LCCOMB_X17_Y15_N28
\mem|Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~11_combout\ = (\ir|aBus[4]~4_combout\ & ((\mem|Mux0~10_combout\ & (\mem|ram[27][7]~combout\)) # (!\mem|Mux0~10_combout\ & ((\mem|ram[26][7]~combout\))))) # (!\ir|aBus[4]~4_combout\ & (\mem|Mux0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[4]~4_combout\,
	datab => \mem|Mux0~10_combout\,
	datac => \mem|ram[27][7]~combout\,
	datad => \mem|ram[26][7]~combout\,
	combout => \mem|Mux0~11_combout\);

-- Location: LCCOMB_X21_Y15_N14
\mem|ram[29][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[29][7]~combout\ = (\mem|ram[29][0]~31_combout\ & (\ir|dBus[7]~33_combout\)) # (!\mem|ram[29][0]~31_combout\ & ((\mem|ram[29][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[7]~33_combout\,
	datac => \mem|ram[29][7]~combout\,
	datad => \mem|ram[29][0]~31_combout\,
	combout => \mem|ram[29][7]~combout\);

-- Location: LCCOMB_X18_Y15_N8
\mem|ram[13][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[13][7]~combout\ = (\mem|ram[13][0]~40_combout\ & (\ir|dBus[7]~33_combout\)) # (!\mem|ram[13][0]~40_combout\ & ((\mem|ram[13][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[7]~33_combout\,
	datac => \mem|ram[13][0]~40_combout\,
	datad => \mem|ram[13][7]~combout\,
	combout => \mem|ram[13][7]~combout\);

-- Location: LCCOMB_X18_Y15_N2
\mem|ram[12][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[12][7]~combout\ = (\mem|ram[12][0]~41_combout\ & ((\ir|dBus[7]~33_combout\))) # (!\mem|ram[12][0]~41_combout\ & (\mem|ram[12][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[12][7]~combout\,
	datac => \ir|dBus[7]~33_combout\,
	datad => \mem|ram[12][0]~41_combout\,
	combout => \mem|ram[12][7]~combout\);

-- Location: LCCOMB_X18_Y15_N0
\mem|Mux0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~12_combout\ = (\ir|aBus[4]~4_combout\ & (((\pc|aBus[0]~6_combout\)))) # (!\ir|aBus[4]~4_combout\ & ((\pc|aBus[0]~6_combout\ & (\mem|ram[13][7]~combout\)) # (!\pc|aBus[0]~6_combout\ & ((\mem|ram[12][7]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[4]~4_combout\,
	datab => \mem|ram[13][7]~combout\,
	datac => \pc|aBus[0]~6_combout\,
	datad => \mem|ram[12][7]~combout\,
	combout => \mem|Mux0~12_combout\);

-- Location: LCCOMB_X21_Y11_N24
\mem|ram[28][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[28][7]~combout\ = (\mem|ram[28][0]~19_combout\ & ((\ir|dBus[7]~33_combout\))) # (!\mem|ram[28][0]~19_combout\ & (\mem|ram[28][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[28][7]~combout\,
	datac => \ir|dBus[7]~33_combout\,
	datad => \mem|ram[28][0]~19_combout\,
	combout => \mem|ram[28][7]~combout\);

-- Location: LCCOMB_X12_Y15_N30
\mem|Mux0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~13_combout\ = (\ir|aBus[4]~4_combout\ & ((\mem|Mux0~12_combout\ & (\mem|ram[29][7]~combout\)) # (!\mem|Mux0~12_combout\ & ((\mem|ram[28][7]~combout\))))) # (!\ir|aBus[4]~4_combout\ & (((\mem|Mux0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[4]~4_combout\,
	datab => \mem|ram[29][7]~combout\,
	datac => \mem|Mux0~12_combout\,
	datad => \mem|ram[28][7]~combout\,
	combout => \mem|Mux0~13_combout\);

-- Location: LCCOMB_X11_Y15_N20
\mem|ram[25][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[25][7]~combout\ = (\mem|ram[25][0]~33_combout\ & ((\ir|dBus[7]~33_combout\))) # (!\mem|ram[25][0]~33_combout\ & (\mem|ram[25][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[25][7]~combout\,
	datac => \ir|dBus[7]~33_combout\,
	datad => \mem|ram[25][0]~33_combout\,
	combout => \mem|ram[25][7]~combout\);

-- Location: LCCOMB_X11_Y12_N30
\mem|ram[24][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[24][7]~combout\ = (\mem|ram[24][0]~21_combout\ & ((\ir|dBus[7]~33_combout\))) # (!\mem|ram[24][0]~21_combout\ & (\mem|ram[24][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[24][7]~combout\,
	datab => \mem|ram[24][0]~21_combout\,
	datad => \ir|dBus[7]~33_combout\,
	combout => \mem|ram[24][7]~combout\);

-- Location: LCCOMB_X11_Y12_N8
\mem|ram[9][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[9][7]~combout\ = (\mem|ram[9][0]~36_combout\ & (\ir|dBus[7]~33_combout\)) # (!\mem|ram[9][0]~36_combout\ & ((\mem|ram[9][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[7]~33_combout\,
	datac => \mem|ram[9][7]~combout\,
	datad => \mem|ram[9][0]~36_combout\,
	combout => \mem|ram[9][7]~combout\);

-- Location: LCCOMB_X12_Y15_N16
\ir|dBus[7]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[7]~42_combout\ = ((\ir|dBus[7]~24_combout\ & ((\mem|Mux0~41_combout\) # (!\mem|dBus~1_combout\)))) # (!\ir|dBus[0]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux0~41_combout\,
	datab => \ir|dBus[7]~24_combout\,
	datac => \ir|dBus[0]~34_combout\,
	datad => \mem|dBus~1_combout\,
	combout => \ir|dBus[7]~42_combout\);

-- Location: LCCOMB_X13_Y16_N12
\mem|ram[8][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[8][7]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~8clkctrl_outclk\) & (\ir|dBus[7]~42_combout\)) # (!GLOBAL(\mem|Decoder0~8clkctrl_outclk\) & ((\mem|ram[8][7]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ir|dBus[7]~42_combout\,
	datac => \mem|Decoder0~8clkctrl_outclk\,
	datad => \mem|ram[8][7]~combout\,
	combout => \mem|ram[8][7]~combout\);

-- Location: LCCOMB_X11_Y12_N14
\mem|Mux0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~14_combout\ = (\ir|aBus[4]~4_combout\ & (((\pc|aBus[0]~6_combout\)))) # (!\ir|aBus[4]~4_combout\ & ((\pc|aBus[0]~6_combout\ & (\mem|ram[9][7]~combout\)) # (!\pc|aBus[0]~6_combout\ & ((\mem|ram[8][7]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[4]~4_combout\,
	datab => \mem|ram[9][7]~combout\,
	datac => \mem|ram[8][7]~combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Mux0~14_combout\);

-- Location: LCCOMB_X12_Y15_N28
\mem|Mux0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~15_combout\ = (\ir|aBus[4]~4_combout\ & ((\mem|Mux0~14_combout\ & (\mem|ram[25][7]~combout\)) # (!\mem|Mux0~14_combout\ & ((\mem|ram[24][7]~combout\))))) # (!\ir|aBus[4]~4_combout\ & (((\mem|Mux0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[4]~4_combout\,
	datab => \mem|ram[25][7]~combout\,
	datac => \mem|ram[24][7]~combout\,
	datad => \mem|Mux0~14_combout\,
	combout => \mem|Mux0~15_combout\);

-- Location: LCCOMB_X12_Y15_N18
\mem|Mux0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~16_combout\ = (\pc|aBus[2]~8_combout\ & ((\pc|aBus[1]~7_combout\) # ((\mem|Mux0~13_combout\)))) # (!\pc|aBus[2]~8_combout\ & (!\pc|aBus[1]~7_combout\ & ((\mem|Mux0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \pc|aBus[1]~7_combout\,
	datac => \mem|Mux0~13_combout\,
	datad => \mem|Mux0~15_combout\,
	combout => \mem|Mux0~16_combout\);

-- Location: LCCOMB_X12_Y15_N4
\mem|Mux0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~19_combout\ = (\pc|aBus[1]~7_combout\ & ((\mem|Mux0~16_combout\ & (\mem|Mux0~18_combout\)) # (!\mem|Mux0~16_combout\ & ((\mem|Mux0~11_combout\))))) # (!\pc|aBus[1]~7_combout\ & (((\mem|Mux0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux0~18_combout\,
	datab => \pc|aBus[1]~7_combout\,
	datac => \mem|Mux0~11_combout\,
	datad => \mem|Mux0~16_combout\,
	combout => \mem|Mux0~19_combout\);

-- Location: LCCOMB_X12_Y13_N10
\mem|ram[23][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[23][7]~combout\ = (\mem|ram[23][0]~26_combout\ & ((\ir|dBus[7]~33_combout\))) # (!\mem|ram[23][0]~26_combout\ & (\mem|ram[23][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[23][7]~combout\,
	datac => \mem|ram[23][0]~26_combout\,
	datad => \ir|dBus[7]~33_combout\,
	combout => \mem|ram[23][7]~combout\);

-- Location: LCCOMB_X12_Y13_N28
\mem|ram[5][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[5][7]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~9clkctrl_outclk\) & (\ir|dBus[7]~42_combout\)) # (!GLOBAL(\mem|Decoder0~9clkctrl_outclk\) & ((\mem|ram[5][7]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ir|dBus[7]~42_combout\,
	datac => \mem|Decoder0~9clkctrl_outclk\,
	datad => \mem|ram[5][7]~combout\,
	combout => \mem|ram[5][7]~combout\);

-- Location: LCCOMB_X12_Y13_N18
\mem|ram[7][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[7][7]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~12clkctrl_outclk\) & ((\ir|dBus[7]~42_combout\))) # (!GLOBAL(\mem|Decoder0~12clkctrl_outclk\) & (\mem|ram[7][7]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \mem|ram[7][7]~combout\,
	datac => \ir|dBus[7]~42_combout\,
	datad => \mem|Decoder0~12clkctrl_outclk\,
	combout => \mem|ram[7][7]~combout\);

-- Location: LCCOMB_X12_Y13_N22
\mem|Mux0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~27_combout\ = (\ir|aBus[4]~4_combout\ & (((\pc|aBus[1]~7_combout\)))) # (!\ir|aBus[4]~4_combout\ & ((\pc|aBus[1]~7_combout\ & ((\mem|ram[7][7]~combout\))) # (!\pc|aBus[1]~7_combout\ & (\mem|ram[5][7]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[5][7]~combout\,
	datab => \mem|ram[7][7]~combout\,
	datac => \ir|aBus[4]~4_combout\,
	datad => \pc|aBus[1]~7_combout\,
	combout => \mem|Mux0~27_combout\);

-- Location: LCCOMB_X12_Y13_N20
\mem|ram[21][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[21][7]~combout\ = (\mem|ram[21][0]~23_combout\ & (\ir|dBus[7]~33_combout\)) # (!\mem|ram[21][0]~23_combout\ & ((\mem|ram[21][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[7]~33_combout\,
	datab => \mem|ram[21][7]~combout\,
	datad => \mem|ram[21][0]~23_combout\,
	combout => \mem|ram[21][7]~combout\);

-- Location: LCCOMB_X12_Y13_N0
\mem|Mux0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~28_combout\ = (\ir|aBus[4]~4_combout\ & ((\mem|Mux0~27_combout\ & (\mem|ram[23][7]~combout\)) # (!\mem|Mux0~27_combout\ & ((\mem|ram[21][7]~combout\))))) # (!\ir|aBus[4]~4_combout\ & (((\mem|Mux0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[23][7]~combout\,
	datab => \ir|aBus[4]~4_combout\,
	datac => \mem|Mux0~27_combout\,
	datad => \mem|ram[21][7]~combout\,
	combout => \mem|Mux0~28_combout\);

-- Location: LCCOMB_X12_Y13_N8
\mem|ram[20][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[20][7]~combout\ = (\mem|ram[20][0]~27_combout\ & (\ir|dBus[7]~33_combout\)) # (!\mem|ram[20][0]~27_combout\ & ((\mem|ram[20][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[7]~33_combout\,
	datac => \mem|ram[20][7]~combout\,
	datad => \mem|ram[20][0]~27_combout\,
	combout => \mem|ram[20][7]~combout\);

-- Location: LCCOMB_X12_Y13_N26
\mem|ram[22][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[22][7]~combout\ = (\mem|ram[22][0]~30_combout\ & ((\ir|dBus[7]~33_combout\))) # (!\mem|ram[22][0]~30_combout\ & (\mem|ram[22][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[22][7]~combout\,
	datac => \mem|ram[22][0]~30_combout\,
	datad => \ir|dBus[7]~33_combout\,
	combout => \mem|ram[22][7]~combout\);

-- Location: LCCOMB_X11_Y15_N30
\mem|ram[6][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[6][7]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~10clkctrl_outclk\) & ((\ir|dBus[7]~42_combout\))) # (!GLOBAL(\mem|Decoder0~10clkctrl_outclk\) & (\mem|ram[6][7]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[6][7]~combout\,
	datab => \ir|dBus[7]~42_combout\,
	datac => \reset~input_o\,
	datad => \mem|Decoder0~10clkctrl_outclk\,
	combout => \mem|ram[6][7]~combout\);

-- Location: LCCOMB_X12_Y13_N12
\mem|ram[4][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[4][7]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~11clkctrl_outclk\) & (\ir|dBus[7]~42_combout\)) # (!GLOBAL(\mem|Decoder0~11clkctrl_outclk\) & ((\mem|ram[4][7]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[7]~42_combout\,
	datab => \reset~input_o\,
	datac => \mem|ram[4][7]~combout\,
	datad => \mem|Decoder0~11clkctrl_outclk\,
	combout => \mem|ram[4][7]~combout\);

-- Location: LCCOMB_X12_Y13_N24
\mem|Mux0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~20_combout\ = (\ir|aBus[4]~4_combout\ & (((\pc|aBus[1]~7_combout\)))) # (!\ir|aBus[4]~4_combout\ & ((\pc|aBus[1]~7_combout\ & (\mem|ram[6][7]~combout\)) # (!\pc|aBus[1]~7_combout\ & ((\mem|ram[4][7]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[6][7]~combout\,
	datab => \mem|ram[4][7]~combout\,
	datac => \ir|aBus[4]~4_combout\,
	datad => \pc|aBus[1]~7_combout\,
	combout => \mem|Mux0~20_combout\);

-- Location: LCCOMB_X12_Y13_N14
\mem|Mux0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~21_combout\ = (\ir|aBus[4]~4_combout\ & ((\mem|Mux0~20_combout\ & ((\mem|ram[22][7]~combout\))) # (!\mem|Mux0~20_combout\ & (\mem|ram[20][7]~combout\)))) # (!\ir|aBus[4]~4_combout\ & (((\mem|Mux0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[4]~4_combout\,
	datab => \mem|ram[20][7]~combout\,
	datac => \mem|ram[22][7]~combout\,
	datad => \mem|Mux0~20_combout\,
	combout => \mem|Mux0~21_combout\);

-- Location: LCCOMB_X13_Y11_N10
\mem|ram[17][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[17][7]~combout\ = (\mem|ram[17][0]~25_combout\ & (\ir|dBus[7]~33_combout\)) # (!\mem|ram[17][0]~25_combout\ & ((\mem|ram[17][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[7]~33_combout\,
	datac => \mem|ram[17][0]~25_combout\,
	datad => \mem|ram[17][7]~combout\,
	combout => \mem|ram[17][7]~combout\);

-- Location: LCCOMB_X13_Y12_N12
\mem|ram[19][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[19][7]~combout\ = (\mem|ram[19][0]~24_combout\ & ((\ir|dBus[7]~33_combout\))) # (!\mem|ram[19][0]~24_combout\ & (\mem|ram[19][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[19][7]~combout\,
	datac => \ir|dBus[7]~33_combout\,
	datad => \mem|ram[19][0]~24_combout\,
	combout => \mem|ram[19][7]~combout\);

-- Location: LCCOMB_X11_Y11_N10
\mem|ram[3][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[3][7]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~16clkctrl_outclk\) & ((\ir|dBus[7]~42_combout\))) # (!GLOBAL(\mem|Decoder0~16clkctrl_outclk\) & (\mem|ram[3][7]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[3][7]~combout\,
	datab => \ir|dBus[7]~42_combout\,
	datac => \reset~input_o\,
	datad => \mem|Decoder0~16clkctrl_outclk\,
	combout => \mem|ram[3][7]~combout\);

-- Location: LCCOMB_X10_Y11_N30
\mem|ram[1][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[1][7]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~13clkctrl_outclk\) & (\ir|dBus[7]~42_combout\)) # (!GLOBAL(\mem|Decoder0~13clkctrl_outclk\) & ((\mem|ram[1][7]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ir|dBus[7]~42_combout\,
	datac => \mem|ram[1][7]~combout\,
	datad => \mem|Decoder0~13clkctrl_outclk\,
	combout => \mem|ram[1][7]~combout\);

-- Location: LCCOMB_X10_Y11_N8
\mem|Mux0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~22_combout\ = (\ir|aBus[4]~4_combout\ & (((\pc|aBus[1]~7_combout\)))) # (!\ir|aBus[4]~4_combout\ & ((\pc|aBus[1]~7_combout\ & (\mem|ram[3][7]~combout\)) # (!\pc|aBus[1]~7_combout\ & ((\mem|ram[1][7]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[4]~4_combout\,
	datab => \mem|ram[3][7]~combout\,
	datac => \mem|ram[1][7]~combout\,
	datad => \pc|aBus[1]~7_combout\,
	combout => \mem|Mux0~22_combout\);

-- Location: LCCOMB_X12_Y15_N26
\mem|Mux0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~23_combout\ = (\ir|aBus[4]~4_combout\ & ((\mem|Mux0~22_combout\ & ((\mem|ram[19][7]~combout\))) # (!\mem|Mux0~22_combout\ & (\mem|ram[17][7]~combout\)))) # (!\ir|aBus[4]~4_combout\ & (((\mem|Mux0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[4]~4_combout\,
	datab => \mem|ram[17][7]~combout\,
	datac => \mem|ram[19][7]~combout\,
	datad => \mem|Mux0~22_combout\,
	combout => \mem|Mux0~23_combout\);

-- Location: LCCOMB_X12_Y15_N14
\mem|ram[18][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[18][7]~combout\ = (\mem|ram[18][0]~28_combout\ & (\ir|dBus[7]~33_combout\)) # (!\mem|ram[18][0]~28_combout\ & ((\mem|ram[18][7]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[7]~33_combout\,
	datac => \mem|ram[18][0]~28_combout\,
	datad => \mem|ram[18][7]~combout\,
	combout => \mem|ram[18][7]~combout\);

-- Location: LCCOMB_X13_Y11_N20
\mem|ram[16][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[16][7]~combout\ = (\mem|ram[16][0]~29_combout\ & ((\ir|dBus[7]~33_combout\))) # (!\mem|ram[16][0]~29_combout\ & (\mem|ram[16][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[16][7]~combout\,
	datac => \ir|dBus[7]~33_combout\,
	datad => \mem|ram[16][0]~29_combout\,
	combout => \mem|ram[16][7]~combout\);

-- Location: LCCOMB_X17_Y16_N12
\mem|ram[2][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[2][7]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~14clkctrl_outclk\) & ((\ir|dBus[7]~42_combout\))) # (!GLOBAL(\mem|Decoder0~14clkctrl_outclk\) & (\mem|ram[2][7]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[2][7]~combout\,
	datab => \ir|dBus[7]~42_combout\,
	datac => \mem|Decoder0~14clkctrl_outclk\,
	datad => \reset~input_o\,
	combout => \mem|ram[2][7]~combout\);

-- Location: LCCOMB_X13_Y16_N28
\mem|ram[0][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[0][7]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~15clkctrl_outclk\) & ((\ir|dBus[7]~42_combout\))) # (!GLOBAL(\mem|Decoder0~15clkctrl_outclk\) & (\mem|ram[0][7]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \mem|ram[0][7]~combout\,
	datac => \ir|dBus[7]~42_combout\,
	datad => \mem|Decoder0~15clkctrl_outclk\,
	combout => \mem|ram[0][7]~combout\);

-- Location: LCCOMB_X17_Y16_N22
\mem|Mux0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~24_combout\ = (\ir|aBus[4]~4_combout\ & (((\pc|aBus[1]~7_combout\)))) # (!\ir|aBus[4]~4_combout\ & ((\pc|aBus[1]~7_combout\ & (\mem|ram[2][7]~combout\)) # (!\pc|aBus[1]~7_combout\ & ((\mem|ram[0][7]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[2][7]~combout\,
	datab => \ir|aBus[4]~4_combout\,
	datac => \pc|aBus[1]~7_combout\,
	datad => \mem|ram[0][7]~combout\,
	combout => \mem|Mux0~24_combout\);

-- Location: LCCOMB_X12_Y15_N24
\mem|Mux0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~25_combout\ = (\ir|aBus[4]~4_combout\ & ((\mem|Mux0~24_combout\ & (\mem|ram[18][7]~combout\)) # (!\mem|Mux0~24_combout\ & ((\mem|ram[16][7]~combout\))))) # (!\ir|aBus[4]~4_combout\ & (((\mem|Mux0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[4]~4_combout\,
	datab => \mem|ram[18][7]~combout\,
	datac => \mem|ram[16][7]~combout\,
	datad => \mem|Mux0~24_combout\,
	combout => \mem|Mux0~25_combout\);

-- Location: LCCOMB_X12_Y15_N6
\mem|Mux0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~26_combout\ = (\pc|aBus[2]~8_combout\ & (\pc|aBus[0]~6_combout\)) # (!\pc|aBus[2]~8_combout\ & ((\pc|aBus[0]~6_combout\ & (\mem|Mux0~23_combout\)) # (!\pc|aBus[0]~6_combout\ & ((\mem|Mux0~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \pc|aBus[0]~6_combout\,
	datac => \mem|Mux0~23_combout\,
	datad => \mem|Mux0~25_combout\,
	combout => \mem|Mux0~26_combout\);

-- Location: LCCOMB_X12_Y15_N0
\mem|Mux0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~29_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|Mux0~26_combout\ & (\mem|Mux0~28_combout\)) # (!\mem|Mux0~26_combout\ & ((\mem|Mux0~21_combout\))))) # (!\pc|aBus[2]~8_combout\ & (((\mem|Mux0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \mem|Mux0~28_combout\,
	datac => \mem|Mux0~21_combout\,
	datad => \mem|Mux0~26_combout\,
	combout => \mem|Mux0~29_combout\);

-- Location: LCCOMB_X12_Y15_N2
\mem|Mux0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~30_combout\ = (\ir|aBus[5]~5_combout\ & (\pc|aBus[3]~9_combout\)) # (!\ir|aBus[5]~5_combout\ & ((\pc|aBus[3]~9_combout\ & (\mem|Mux0~19_combout\)) # (!\pc|aBus[3]~9_combout\ & ((\mem|Mux0~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[5]~5_combout\,
	datab => \pc|aBus[3]~9_combout\,
	datac => \mem|Mux0~19_combout\,
	datad => \mem|Mux0~29_combout\,
	combout => \mem|Mux0~30_combout\);

-- Location: LCCOMB_X12_Y15_N10
\mem|Mux0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux0~41_combout\ = (\ir|aBus[5]~5_combout\ & ((\mem|Mux0~30_combout\ & (\mem|Mux0~40_combout\)) # (!\mem|Mux0~30_combout\ & ((\mem|Mux0~9_combout\))))) # (!\ir|aBus[5]~5_combout\ & (((\mem|Mux0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[5]~5_combout\,
	datab => \mem|Mux0~40_combout\,
	datac => \mem|Mux0~9_combout\,
	datad => \mem|Mux0~30_combout\,
	combout => \mem|Mux0~41_combout\);

-- Location: LCCOMB_X12_Y15_N22
\ir|dBus[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[7]~33_combout\ = ((\ir|dBus[7]~24_combout\ & ((\mem|Mux0~41_combout\) # (!\mem|dBus~0_combout\)))) # (!\ir|dBus[0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[0]~11_combout\,
	datab => \ir|dBus[7]~24_combout\,
	datac => \mem|dBus~0_combout\,
	datad => \mem|Mux0~41_combout\,
	combout => \ir|dBus[7]~33_combout\);

-- Location: LCCOMB_X12_Y15_N12
\ir|irReg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|irReg~4_combout\ = (!\reset~input_o\ & \ir|dBus[7]~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \ir|dBus[7]~33_combout\,
	combout => \ir|irReg~4_combout\);

-- Location: FF_X12_Y15_N13
\ir|irReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \ir|irReg~4_combout\,
	ena => \ir|irReg[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|irReg\(7));

-- Location: LCCOMB_X19_Y10_N12
\ctl|state~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|state~54_combout\ = (!\reset~input_o\ & (!\ir|irReg\(7) & \ctl|state.fetch1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \ir|irReg\(7),
	datad => \ctl|state.fetch1~q\,
	combout => \ctl|state~54_combout\);

-- Location: LCCOMB_X19_Y11_N20
\ctl|state~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|state~55_combout\ = (!\ir|irReg\(5) & (\ctl|state~54_combout\ & (!\ir|irReg\(6) & \ir|irReg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|irReg\(5),
	datab => \ctl|state~54_combout\,
	datac => \ir|irReg\(6),
	datad => \ir|irReg\(4),
	combout => \ctl|state~55_combout\);

-- Location: FF_X16_Y11_N15
\ctl|state.store0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ctl|state~55_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|state.store0~q\);

-- Location: LCCOMB_X13_Y11_N14
\ir|dBus[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[5]~20_combout\ = (!\ctl|state.branch0~q\ & ((\acc|accReg\(5)) # ((!\ctl|state.store0~q\ & !\ctl|state.store1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|state.store0~q\,
	datab => \acc|accReg\(5),
	datac => \ctl|state.store1~q\,
	datad => \ctl|state.branch0~q\,
	combout => \ir|dBus[5]~20_combout\);

-- Location: LCCOMB_X13_Y16_N20
\mem|ram[46][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[46][5]~combout\ = (\mem|ram[46][0]~14_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[46][0]~14_combout\ & ((\mem|ram[46][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[46][0]~14_combout\,
	datad => \mem|ram[46][5]~combout\,
	combout => \mem|ram[46][5]~combout\);

-- Location: LCCOMB_X13_Y16_N8
\mem|ram[44][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[44][5]~combout\ = (\mem|ram[44][0]~2_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[44][0]~2_combout\ & ((\mem|ram[44][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[44][5]~combout\,
	datad => \mem|ram[44][0]~2_combout\,
	combout => \mem|ram[44][5]~combout\);

-- Location: LCCOMB_X13_Y16_N22
\mem|ram[14][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[14][5]~combout\ = (\mem|ram[14][0]~39_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[14][0]~39_combout\ & ((\mem|ram[14][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[14][5]~combout\,
	datad => \mem|ram[14][0]~39_combout\,
	combout => \mem|ram[14][5]~combout\);

-- Location: LCCOMB_X13_Y16_N24
\mem|ram[12][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[12][5]~combout\ = (\mem|ram[12][0]~41_combout\ & ((\ir|dBus[5]~31_combout\))) # (!\mem|ram[12][0]~41_combout\ & (\mem|ram[12][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[12][5]~combout\,
	datac => \ir|dBus[5]~31_combout\,
	datad => \mem|ram[12][0]~41_combout\,
	combout => \mem|ram[12][5]~combout\);

-- Location: LCCOMB_X13_Y16_N10
\mem|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~0_combout\ = (\ir|aBus[5]~5_combout\ & (((\pc|aBus[1]~7_combout\)))) # (!\ir|aBus[5]~5_combout\ & ((\pc|aBus[1]~7_combout\ & (\mem|ram[14][5]~combout\)) # (!\pc|aBus[1]~7_combout\ & ((\mem|ram[12][5]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[14][5]~combout\,
	datab => \ir|aBus[5]~5_combout\,
	datac => \pc|aBus[1]~7_combout\,
	datad => \mem|ram[12][5]~combout\,
	combout => \mem|Mux2~0_combout\);

-- Location: LCCOMB_X13_Y16_N14
\mem|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~1_combout\ = (\ir|aBus[5]~5_combout\ & ((\mem|Mux2~0_combout\ & (\mem|ram[46][5]~combout\)) # (!\mem|Mux2~0_combout\ & ((\mem|ram[44][5]~combout\))))) # (!\ir|aBus[5]~5_combout\ & (((\mem|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[5]~5_combout\,
	datab => \mem|ram[46][5]~combout\,
	datac => \mem|ram[44][5]~combout\,
	datad => \mem|Mux2~0_combout\,
	combout => \mem|Mux2~1_combout\);

-- Location: LCCOMB_X14_Y16_N24
\mem|ram[45][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[45][5]~combout\ = (\mem|ram[45][0]~4_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[45][0]~4_combout\ & ((\mem|ram[45][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[45][0]~4_combout\,
	datad => \mem|ram[45][5]~combout\,
	combout => \mem|ram[45][5]~combout\);

-- Location: LCCOMB_X14_Y16_N18
\mem|ram[13][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[13][5]~combout\ = (\mem|ram[13][0]~40_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[13][0]~40_combout\ & ((\mem|ram[13][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[5]~31_combout\,
	datab => \mem|ram[13][5]~combout\,
	datad => \mem|ram[13][0]~40_combout\,
	combout => \mem|ram[13][5]~combout\);

-- Location: LCCOMB_X14_Y12_N30
\mem|ram[15][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[15][5]~combout\ = (\mem|ram[15][0]~42_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[15][0]~42_combout\ & ((\mem|ram[15][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[15][5]~combout\,
	datad => \mem|ram[15][0]~42_combout\,
	combout => \mem|ram[15][5]~combout\);

-- Location: LCCOMB_X14_Y16_N22
\mem|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~7_combout\ = (\ir|aBus[5]~5_combout\ & (((\pc|aBus[1]~7_combout\)))) # (!\ir|aBus[5]~5_combout\ & ((\pc|aBus[1]~7_combout\ & ((\mem|ram[15][5]~combout\))) # (!\pc|aBus[1]~7_combout\ & (\mem|ram[13][5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[5]~5_combout\,
	datab => \mem|ram[13][5]~combout\,
	datac => \mem|ram[15][5]~combout\,
	datad => \pc|aBus[1]~7_combout\,
	combout => \mem|Mux2~7_combout\);

-- Location: LCCOMB_X22_Y13_N22
\mem|ram[47][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[47][5]~combout\ = (\mem|ram[47][0]~17_combout\ & ((\ir|dBus[5]~31_combout\))) # (!\mem|ram[47][0]~17_combout\ & (\mem|ram[47][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[47][5]~combout\,
	datac => \ir|dBus[5]~31_combout\,
	datad => \mem|ram[47][0]~17_combout\,
	combout => \mem|ram[47][5]~combout\);

-- Location: LCCOMB_X14_Y16_N8
\mem|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~8_combout\ = (\ir|aBus[5]~5_combout\ & ((\mem|Mux2~7_combout\ & ((\mem|ram[47][5]~combout\))) # (!\mem|Mux2~7_combout\ & (\mem|ram[45][5]~combout\)))) # (!\ir|aBus[5]~5_combout\ & (((\mem|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[5]~5_combout\,
	datab => \mem|ram[45][5]~combout\,
	datac => \mem|Mux2~7_combout\,
	datad => \mem|ram[47][5]~combout\,
	combout => \mem|Mux2~8_combout\);

-- Location: LCCOMB_X14_Y16_N6
\mem|ram[40][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[40][5]~combout\ = (\mem|ram[40][0]~3_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[40][0]~3_combout\ & ((\mem|ram[40][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[40][0]~3_combout\,
	datad => \mem|ram[40][5]~combout\,
	combout => \mem|ram[40][5]~combout\);

-- Location: LCCOMB_X14_Y16_N30
\mem|ram[42][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[42][5]~combout\ = (\mem|ram[42][0]~16_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[42][0]~16_combout\ & ((\mem|ram[42][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[42][5]~combout\,
	datad => \mem|ram[42][0]~16_combout\,
	combout => \mem|ram[42][5]~combout\);

-- Location: LCCOMB_X13_Y13_N20
\ir|dBus[5]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[5]~40_combout\ = ((\ir|dBus[5]~20_combout\ & ((\mem|Mux2~41_combout\) # (!\mem|dBus~1_combout\)))) # (!\ir|dBus[0]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[5]~20_combout\,
	datab => \ir|dBus[0]~34_combout\,
	datac => \mem|dBus~1_combout\,
	datad => \mem|Mux2~41_combout\,
	combout => \ir|dBus[5]~40_combout\);

-- Location: LCCOMB_X13_Y16_N6
\mem|ram[8][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[8][5]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~8clkctrl_outclk\) & (\ir|dBus[5]~40_combout\)) # (!GLOBAL(\mem|Decoder0~8clkctrl_outclk\) & ((\mem|ram[8][5]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ir|dBus[5]~40_combout\,
	datac => \mem|Decoder0~8clkctrl_outclk\,
	datad => \mem|ram[8][5]~combout\,
	combout => \mem|ram[8][5]~combout\);

-- Location: LCCOMB_X14_Y16_N0
\mem|ram[10][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[10][5]~combout\ = (\mem|ram[10][0]~37_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[10][0]~37_combout\ & ((\mem|ram[10][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[10][0]~37_combout\,
	datad => \mem|ram[10][5]~combout\,
	combout => \mem|ram[10][5]~combout\);

-- Location: LCCOMB_X14_Y16_N16
\mem|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~4_combout\ = (\ir|aBus[5]~5_combout\ & (((\pc|aBus[1]~7_combout\)))) # (!\ir|aBus[5]~5_combout\ & ((\pc|aBus[1]~7_combout\ & ((\mem|ram[10][5]~combout\))) # (!\pc|aBus[1]~7_combout\ & (\mem|ram[8][5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[5]~5_combout\,
	datab => \mem|ram[8][5]~combout\,
	datac => \pc|aBus[1]~7_combout\,
	datad => \mem|ram[10][5]~combout\,
	combout => \mem|Mux2~4_combout\);

-- Location: LCCOMB_X14_Y16_N26
\mem|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~5_combout\ = (\ir|aBus[5]~5_combout\ & ((\mem|Mux2~4_combout\ & ((\mem|ram[42][5]~combout\))) # (!\mem|Mux2~4_combout\ & (\mem|ram[40][5]~combout\)))) # (!\ir|aBus[5]~5_combout\ & (((\mem|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[40][5]~combout\,
	datab => \ir|aBus[5]~5_combout\,
	datac => \mem|ram[42][5]~combout\,
	datad => \mem|Mux2~4_combout\,
	combout => \mem|Mux2~5_combout\);

-- Location: LCCOMB_X14_Y16_N14
\mem|ram[41][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[41][5]~combout\ = (\mem|ram[41][0]~1_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[41][0]~1_combout\ & ((\mem|ram[41][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[5]~31_combout\,
	datab => \mem|ram[41][5]~combout\,
	datac => \mem|ram[41][0]~1_combout\,
	combout => \mem|ram[41][5]~combout\);

-- Location: LCCOMB_X14_Y16_N4
\mem|ram[43][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[43][5]~combout\ = (\mem|ram[43][0]~15_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[43][0]~15_combout\ & ((\mem|ram[43][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[43][5]~combout\,
	datad => \mem|ram[43][0]~15_combout\,
	combout => \mem|ram[43][5]~combout\);

-- Location: LCCOMB_X14_Y16_N2
\mem|ram[9][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[9][5]~combout\ = (\mem|ram[9][0]~36_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[9][0]~36_combout\ & ((\mem|ram[9][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[9][0]~36_combout\,
	datad => \mem|ram[9][5]~combout\,
	combout => \mem|ram[9][5]~combout\);

-- Location: LCCOMB_X14_Y16_N12
\mem|ram[11][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[11][5]~combout\ = (\mem|ram[11][0]~38_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[11][0]~38_combout\ & ((\mem|ram[11][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[11][0]~38_combout\,
	datad => \mem|ram[11][5]~combout\,
	combout => \mem|ram[11][5]~combout\);

-- Location: LCCOMB_X14_Y16_N28
\mem|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~2_combout\ = (\ir|aBus[5]~5_combout\ & (((\pc|aBus[1]~7_combout\)))) # (!\ir|aBus[5]~5_combout\ & ((\pc|aBus[1]~7_combout\ & ((\mem|ram[11][5]~combout\))) # (!\pc|aBus[1]~7_combout\ & (\mem|ram[9][5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[5]~5_combout\,
	datab => \mem|ram[9][5]~combout\,
	datac => \pc|aBus[1]~7_combout\,
	datad => \mem|ram[11][5]~combout\,
	combout => \mem|Mux2~2_combout\);

-- Location: LCCOMB_X14_Y16_N10
\mem|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~3_combout\ = (\ir|aBus[5]~5_combout\ & ((\mem|Mux2~2_combout\ & ((\mem|ram[43][5]~combout\))) # (!\mem|Mux2~2_combout\ & (\mem|ram[41][5]~combout\)))) # (!\ir|aBus[5]~5_combout\ & (((\mem|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[5]~5_combout\,
	datab => \mem|ram[41][5]~combout\,
	datac => \mem|ram[43][5]~combout\,
	datad => \mem|Mux2~2_combout\,
	combout => \mem|Mux2~3_combout\);

-- Location: LCCOMB_X14_Y16_N20
\mem|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~6_combout\ = (\pc|aBus[2]~8_combout\ & (\pc|aBus[0]~6_combout\)) # (!\pc|aBus[2]~8_combout\ & ((\pc|aBus[0]~6_combout\ & ((\mem|Mux2~3_combout\))) # (!\pc|aBus[0]~6_combout\ & (\mem|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \pc|aBus[0]~6_combout\,
	datac => \mem|Mux2~5_combout\,
	datad => \mem|Mux2~3_combout\,
	combout => \mem|Mux2~6_combout\);

-- Location: LCCOMB_X13_Y13_N16
\mem|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~9_combout\ = (\pc|aBus[2]~8_combout\ & ((\mem|Mux2~6_combout\ & ((\mem|Mux2~8_combout\))) # (!\mem|Mux2~6_combout\ & (\mem|Mux2~1_combout\)))) # (!\pc|aBus[2]~8_combout\ & (((\mem|Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[2]~8_combout\,
	datab => \mem|Mux2~1_combout\,
	datac => \mem|Mux2~8_combout\,
	datad => \mem|Mux2~6_combout\,
	combout => \mem|Mux2~9_combout\);

-- Location: LCCOMB_X10_Y13_N30
\mem|ram[25][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[25][5]~combout\ = (\mem|ram[25][0]~33_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[25][0]~33_combout\ & ((\mem|ram[25][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[25][5]~combout\,
	datad => \mem|ram[25][0]~33_combout\,
	combout => \mem|ram[25][5]~combout\);

-- Location: LCCOMB_X10_Y13_N16
\mem|ram[29][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[29][5]~combout\ = (\mem|ram[29][0]~31_combout\ & ((\ir|dBus[5]~31_combout\))) # (!\mem|ram[29][0]~31_combout\ & (\mem|ram[29][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[29][5]~combout\,
	datac => \ir|dBus[5]~31_combout\,
	datad => \mem|ram[29][0]~31_combout\,
	combout => \mem|ram[29][5]~combout\);

-- Location: LCCOMB_X10_Y13_N12
\mem|Mux2~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~31_combout\ = (\ir|aBus[5]~5_combout\ & (((\pc|aBus[2]~8_combout\)))) # (!\ir|aBus[5]~5_combout\ & ((\pc|aBus[2]~8_combout\ & ((\mem|ram[29][5]~combout\))) # (!\pc|aBus[2]~8_combout\ & (\mem|ram[25][5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[25][5]~combout\,
	datab => \ir|aBus[5]~5_combout\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \mem|ram[29][5]~combout\,
	combout => \mem|Mux2~31_combout\);

-- Location: LCCOMB_X13_Y16_N18
\mem|ram[61][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[61][5]~combout\ = (\mem|ram[61][0]~57_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[61][0]~57_combout\ & ((\mem|ram[61][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[5]~31_combout\,
	datab => \mem|ram[61][5]~combout\,
	datac => \mem|ram[61][0]~57_combout\,
	combout => \mem|ram[61][5]~combout\);

-- Location: LCCOMB_X10_Y13_N22
\mem|ram[57][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[57][5]~combout\ = (\mem|ram[57][0]~44_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[57][0]~44_combout\ & ((\mem|ram[57][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[57][5]~combout\,
	datad => \mem|ram[57][0]~44_combout\,
	combout => \mem|ram[57][5]~combout\);

-- Location: LCCOMB_X10_Y13_N18
\mem|Mux2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~32_combout\ = (\mem|Mux2~31_combout\ & (((\mem|ram[61][5]~combout\)) # (!\ir|aBus[5]~5_combout\))) # (!\mem|Mux2~31_combout\ & (\ir|aBus[5]~5_combout\ & ((\mem|ram[57][5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux2~31_combout\,
	datab => \ir|aBus[5]~5_combout\,
	datac => \mem|ram[61][5]~combout\,
	datad => \mem|ram[57][5]~combout\,
	combout => \mem|Mux2~32_combout\);

-- Location: LCCOMB_X11_Y13_N6
\mem|ram[59][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[59][5]~combout\ = (\mem|ram[59][0]~47_combout\ & ((\ir|dBus[5]~31_combout\))) # (!\mem|ram[59][0]~47_combout\ & (\mem|ram[59][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[59][5]~combout\,
	datab => \ir|dBus[5]~31_combout\,
	datad => \mem|ram[59][0]~47_combout\,
	combout => \mem|ram[59][5]~combout\);

-- Location: LCCOMB_X11_Y13_N4
\mem|ram[63][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[63][5]~combout\ = (\mem|ram[63][1]~59_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[63][1]~59_combout\ & ((\mem|ram[63][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[63][5]~combout\,
	datad => \mem|ram[63][1]~59_combout\,
	combout => \mem|ram[63][5]~combout\);

-- Location: LCCOMB_X11_Y13_N8
\mem|ram[31][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[31][5]~combout\ = (\mem|ram[31][0]~34_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[31][0]~34_combout\ & ((\mem|ram[31][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[31][5]~combout\,
	datad => \mem|ram[31][0]~34_combout\,
	combout => \mem|ram[31][5]~combout\);

-- Location: LCCOMB_X11_Y13_N10
\mem|ram[27][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[27][5]~combout\ = (\mem|ram[27][0]~32_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[27][0]~32_combout\ & ((\mem|ram[27][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[27][0]~32_combout\,
	datad => \mem|ram[27][5]~combout\,
	combout => \mem|ram[27][5]~combout\);

-- Location: LCCOMB_X11_Y13_N22
\mem|Mux2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~38_combout\ = (\ir|aBus[5]~5_combout\ & (((\pc|aBus[2]~8_combout\)))) # (!\ir|aBus[5]~5_combout\ & ((\pc|aBus[2]~8_combout\ & (\mem|ram[31][5]~combout\)) # (!\pc|aBus[2]~8_combout\ & ((\mem|ram[27][5]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[5]~5_combout\,
	datab => \mem|ram[31][5]~combout\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \mem|ram[27][5]~combout\,
	combout => \mem|Mux2~38_combout\);

-- Location: LCCOMB_X12_Y13_N4
\mem|Mux2~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~39_combout\ = (\ir|aBus[5]~5_combout\ & ((\mem|Mux2~38_combout\ & ((\mem|ram[63][5]~combout\))) # (!\mem|Mux2~38_combout\ & (\mem|ram[59][5]~combout\)))) # (!\ir|aBus[5]~5_combout\ & (((\mem|Mux2~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[59][5]~combout\,
	datab => \mem|ram[63][5]~combout\,
	datac => \ir|aBus[5]~5_combout\,
	datad => \mem|Mux2~38_combout\,
	combout => \mem|Mux2~39_combout\);

-- Location: LCCOMB_X13_Y16_N16
\mem|ram[56][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[56][5]~combout\ = (\mem|ram[56][0]~46_combout\ & ((\ir|dBus[5]~31_combout\))) # (!\mem|ram[56][0]~46_combout\ & (\mem|ram[56][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[56][5]~combout\,
	datac => \ir|dBus[5]~31_combout\,
	datad => \mem|ram[56][0]~46_combout\,
	combout => \mem|ram[56][5]~combout\);

-- Location: LCCOMB_X10_Y13_N14
\mem|ram[60][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[60][5]~combout\ = (\mem|ram[60][0]~58_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[60][0]~58_combout\ & ((\mem|ram[60][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[60][5]~combout\,
	datad => \mem|ram[60][0]~58_combout\,
	combout => \mem|ram[60][5]~combout\);

-- Location: LCCOMB_X10_Y13_N8
\mem|ram[24][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[24][5]~combout\ = (\mem|ram[24][0]~21_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[24][0]~21_combout\ & ((\mem|ram[24][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[24][5]~combout\,
	datad => \mem|ram[24][0]~21_combout\,
	combout => \mem|ram[24][5]~combout\);

-- Location: LCCOMB_X10_Y13_N2
\mem|ram[28][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[28][5]~combout\ = (\mem|ram[28][0]~19_combout\ & ((\ir|dBus[5]~31_combout\))) # (!\mem|ram[28][0]~19_combout\ & (\mem|ram[28][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[28][5]~combout\,
	datac => \ir|dBus[5]~31_combout\,
	datad => \mem|ram[28][0]~19_combout\,
	combout => \mem|ram[28][5]~combout\);

-- Location: LCCOMB_X10_Y13_N28
\mem|Mux2~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~35_combout\ = (\ir|aBus[5]~5_combout\ & (((\pc|aBus[2]~8_combout\)))) # (!\ir|aBus[5]~5_combout\ & ((\pc|aBus[2]~8_combout\ & ((\mem|ram[28][5]~combout\))) # (!\pc|aBus[2]~8_combout\ & (\mem|ram[24][5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[24][5]~combout\,
	datab => \ir|aBus[5]~5_combout\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \mem|ram[28][5]~combout\,
	combout => \mem|Mux2~35_combout\);

-- Location: LCCOMB_X10_Y13_N26
\mem|Mux2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~36_combout\ = (\ir|aBus[5]~5_combout\ & ((\mem|Mux2~35_combout\ & ((\mem|ram[60][5]~combout\))) # (!\mem|Mux2~35_combout\ & (\mem|ram[56][5]~combout\)))) # (!\ir|aBus[5]~5_combout\ & (((\mem|Mux2~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[56][5]~combout\,
	datab => \mem|ram[60][5]~combout\,
	datac => \ir|aBus[5]~5_combout\,
	datad => \mem|Mux2~35_combout\,
	combout => \mem|Mux2~36_combout\);

-- Location: LCCOMB_X10_Y13_N20
\mem|ram[62][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[62][5]~combout\ = (\mem|ram[62][0]~56_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[62][0]~56_combout\ & ((\mem|ram[62][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[62][0]~56_combout\,
	datad => \mem|ram[62][5]~combout\,
	combout => \mem|ram[62][5]~combout\);

-- Location: LCCOMB_X12_Y17_N12
\mem|ram[58][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[58][5]~combout\ = (\mem|ram[58][0]~45_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[58][0]~45_combout\ & ((\mem|ram[58][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[58][0]~45_combout\,
	datad => \mem|ram[58][5]~combout\,
	combout => \mem|ram[58][5]~combout\);

-- Location: LCCOMB_X10_Y13_N24
\mem|ram[30][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[30][5]~combout\ = (\mem|ram[30][0]~22_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[30][0]~22_combout\ & ((\mem|ram[30][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[5]~31_combout\,
	datab => \mem|ram[30][5]~combout\,
	datad => \mem|ram[30][0]~22_combout\,
	combout => \mem|ram[30][5]~combout\);

-- Location: LCCOMB_X10_Y13_N6
\mem|ram[26][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[26][5]~combout\ = (\mem|ram[26][0]~20_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[26][0]~20_combout\ & ((\mem|ram[26][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[26][0]~20_combout\,
	datad => \mem|ram[26][5]~combout\,
	combout => \mem|ram[26][5]~combout\);

-- Location: LCCOMB_X10_Y13_N0
\mem|Mux2~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~33_combout\ = (\ir|aBus[5]~5_combout\ & (((\pc|aBus[2]~8_combout\)))) # (!\ir|aBus[5]~5_combout\ & ((\pc|aBus[2]~8_combout\ & (\mem|ram[30][5]~combout\)) # (!\pc|aBus[2]~8_combout\ & ((\mem|ram[26][5]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[5]~5_combout\,
	datab => \mem|ram[30][5]~combout\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \mem|ram[26][5]~combout\,
	combout => \mem|Mux2~33_combout\);

-- Location: LCCOMB_X10_Y13_N10
\mem|Mux2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~34_combout\ = (\ir|aBus[5]~5_combout\ & ((\mem|Mux2~33_combout\ & (\mem|ram[62][5]~combout\)) # (!\mem|Mux2~33_combout\ & ((\mem|ram[58][5]~combout\))))) # (!\ir|aBus[5]~5_combout\ & (((\mem|Mux2~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[5]~5_combout\,
	datab => \mem|ram[62][5]~combout\,
	datac => \mem|ram[58][5]~combout\,
	datad => \mem|Mux2~33_combout\,
	combout => \mem|Mux2~34_combout\);

-- Location: LCCOMB_X10_Y13_N4
\mem|Mux2~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~37_combout\ = (\pc|aBus[1]~7_combout\ & ((\pc|aBus[0]~6_combout\) # ((\mem|Mux2~34_combout\)))) # (!\pc|aBus[1]~7_combout\ & (!\pc|aBus[0]~6_combout\ & (\mem|Mux2~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \pc|aBus[0]~6_combout\,
	datac => \mem|Mux2~36_combout\,
	datad => \mem|Mux2~34_combout\,
	combout => \mem|Mux2~37_combout\);

-- Location: LCCOMB_X13_Y13_N8
\mem|Mux2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~40_combout\ = (\pc|aBus[0]~6_combout\ & ((\mem|Mux2~37_combout\ & ((\mem|Mux2~39_combout\))) # (!\mem|Mux2~37_combout\ & (\mem|Mux2~32_combout\)))) # (!\pc|aBus[0]~6_combout\ & (((\mem|Mux2~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux2~32_combout\,
	datab => \pc|aBus[0]~6_combout\,
	datac => \mem|Mux2~39_combout\,
	datad => \mem|Mux2~37_combout\,
	combout => \mem|Mux2~40_combout\);

-- Location: LCCOMB_X14_Y15_N28
\mem|ram[35][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[35][5]~combout\ = (\mem|ram[35][0]~7_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[35][0]~7_combout\ & ((\mem|ram[35][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[35][0]~7_combout\,
	datad => \mem|ram[35][5]~combout\,
	combout => \mem|ram[35][5]~combout\);

-- Location: LCCOMB_X14_Y15_N12
\mem|ram[3][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[3][5]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~16clkctrl_outclk\) & (\ir|dBus[5]~40_combout\)) # (!GLOBAL(\mem|Decoder0~16clkctrl_outclk\) & ((\mem|ram[3][5]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ir|dBus[5]~40_combout\,
	datac => \mem|Decoder0~16clkctrl_outclk\,
	datad => \mem|ram[3][5]~combout\,
	combout => \mem|ram[3][5]~combout\);

-- Location: LCCOMB_X13_Y15_N22
\mem|ram[7][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[7][5]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~12clkctrl_outclk\) & ((\ir|dBus[5]~40_combout\))) # (!GLOBAL(\mem|Decoder0~12clkctrl_outclk\) & (\mem|ram[7][5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[7][5]~combout\,
	datab => \reset~input_o\,
	datac => \ir|dBus[5]~40_combout\,
	datad => \mem|Decoder0~12clkctrl_outclk\,
	combout => \mem|ram[7][5]~combout\);

-- Location: LCCOMB_X14_Y15_N30
\mem|Mux2~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~27_combout\ = (\ir|aBus[5]~5_combout\ & (((\pc|aBus[2]~8_combout\)))) # (!\ir|aBus[5]~5_combout\ & ((\pc|aBus[2]~8_combout\ & ((\mem|ram[7][5]~combout\))) # (!\pc|aBus[2]~8_combout\ & (\mem|ram[3][5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[3][5]~combout\,
	datab => \mem|ram[7][5]~combout\,
	datac => \ir|aBus[5]~5_combout\,
	datad => \pc|aBus[2]~8_combout\,
	combout => \mem|Mux2~27_combout\);

-- Location: LCCOMB_X14_Y15_N18
\mem|ram[39][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[39][5]~combout\ = (\mem|ram[39][0]~9_combout\ & ((\ir|dBus[5]~31_combout\))) # (!\mem|ram[39][0]~9_combout\ & (\mem|ram[39][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[39][5]~combout\,
	datac => \ir|dBus[5]~31_combout\,
	datad => \mem|ram[39][0]~9_combout\,
	combout => \mem|ram[39][5]~combout\);

-- Location: LCCOMB_X14_Y15_N10
\mem|Mux2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~28_combout\ = (\ir|aBus[5]~5_combout\ & ((\mem|Mux2~27_combout\ & ((\mem|ram[39][5]~combout\))) # (!\mem|Mux2~27_combout\ & (\mem|ram[35][5]~combout\)))) # (!\ir|aBus[5]~5_combout\ & (((\mem|Mux2~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[5]~5_combout\,
	datab => \mem|ram[35][5]~combout\,
	datac => \mem|Mux2~27_combout\,
	datad => \mem|ram[39][5]~combout\,
	combout => \mem|Mux2~28_combout\);

-- Location: LCCOMB_X13_Y17_N10
\mem|ram[33][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[33][5]~combout\ = (\mem|ram[33][0]~10_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[33][0]~10_combout\ & ((\mem|ram[33][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[33][0]~10_combout\,
	datad => \mem|ram[33][5]~combout\,
	combout => \mem|ram[33][5]~combout\);

-- Location: LCCOMB_X21_Y15_N26
\mem|ram[5][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[5][5]~combout\ = (\reset~input_o\) # ((GLOBAL(\mem|Decoder0~9clkctrl_outclk\) & ((\ir|dBus[5]~40_combout\))) # (!GLOBAL(\mem|Decoder0~9clkctrl_outclk\) & (\mem|ram[5][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[5][5]~combout\,
	datab => \ir|dBus[5]~40_combout\,
	datac => \reset~input_o\,
	datad => \mem|Decoder0~9clkctrl_outclk\,
	combout => \mem|ram[5][5]~combout\);

-- Location: LCCOMB_X21_Y15_N4
\mem|ram[1][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[1][5]~combout\ = (\reset~input_o\) # ((GLOBAL(\mem|Decoder0~13clkctrl_outclk\) & (\ir|dBus[5]~40_combout\)) # (!GLOBAL(\mem|Decoder0~13clkctrl_outclk\) & ((\mem|ram[1][5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[5]~40_combout\,
	datab => \reset~input_o\,
	datac => \mem|ram[1][5]~combout\,
	datad => \mem|Decoder0~13clkctrl_outclk\,
	combout => \mem|ram[1][5]~combout\);

-- Location: LCCOMB_X21_Y15_N16
\mem|Mux2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~22_combout\ = (\ir|aBus[5]~5_combout\ & (((\pc|aBus[2]~8_combout\)))) # (!\ir|aBus[5]~5_combout\ & ((\pc|aBus[2]~8_combout\ & (\mem|ram[5][5]~combout\)) # (!\pc|aBus[2]~8_combout\ & ((\mem|ram[1][5]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[5]~5_combout\,
	datab => \mem|ram[5][5]~combout\,
	datac => \mem|ram[1][5]~combout\,
	datad => \pc|aBus[2]~8_combout\,
	combout => \mem|Mux2~22_combout\);

-- Location: LCCOMB_X13_Y13_N22
\mem|ram[37][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[37][5]~combout\ = (\mem|ram[37][0]~13_combout\ & ((\ir|dBus[5]~31_combout\))) # (!\mem|ram[37][0]~13_combout\ & (\mem|ram[37][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[37][5]~combout\,
	datab => \ir|dBus[5]~31_combout\,
	datad => \mem|ram[37][0]~13_combout\,
	combout => \mem|ram[37][5]~combout\);

-- Location: LCCOMB_X13_Y13_N14
\mem|Mux2~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~23_combout\ = (\mem|Mux2~22_combout\ & (((\mem|ram[37][5]~combout\) # (!\ir|aBus[5]~5_combout\)))) # (!\mem|Mux2~22_combout\ & (\mem|ram[33][5]~combout\ & ((\ir|aBus[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[33][5]~combout\,
	datab => \mem|Mux2~22_combout\,
	datac => \mem|ram[37][5]~combout\,
	datad => \ir|aBus[5]~5_combout\,
	combout => \mem|Mux2~23_combout\);

-- Location: LCCOMB_X14_Y17_N30
\mem|ram[32][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[32][5]~combout\ = (\mem|ram[32][0]~12_combout\ & ((\ir|dBus[5]~31_combout\))) # (!\mem|ram[32][0]~12_combout\ & (\mem|ram[32][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[32][5]~combout\,
	datac => \ir|dBus[5]~31_combout\,
	datad => \mem|ram[32][0]~12_combout\,
	combout => \mem|ram[32][5]~combout\);

-- Location: LCCOMB_X12_Y10_N22
\mem|ram[0][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[0][5]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~15clkctrl_outclk\) & (\ir|dBus[5]~40_combout\)) # (!GLOBAL(\mem|Decoder0~15clkctrl_outclk\) & ((\mem|ram[0][5]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[5]~40_combout\,
	datab => \reset~input_o\,
	datac => \mem|ram[0][5]~combout\,
	datad => \mem|Decoder0~15clkctrl_outclk\,
	combout => \mem|ram[0][5]~combout\);

-- Location: LCCOMB_X12_Y10_N8
\mem|ram[4][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[4][5]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~11clkctrl_outclk\) & (\ir|dBus[5]~40_combout\)) # (!GLOBAL(\mem|Decoder0~11clkctrl_outclk\) & ((\mem|ram[4][5]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[5]~40_combout\,
	datab => \reset~input_o\,
	datac => \mem|ram[4][5]~combout\,
	datad => \mem|Decoder0~11clkctrl_outclk\,
	combout => \mem|ram[4][5]~combout\);

-- Location: LCCOMB_X12_Y10_N24
\mem|Mux2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~24_combout\ = (\ir|aBus[5]~5_combout\ & (((\pc|aBus[2]~8_combout\)))) # (!\ir|aBus[5]~5_combout\ & ((\pc|aBus[2]~8_combout\ & ((\mem|ram[4][5]~combout\))) # (!\pc|aBus[2]~8_combout\ & (\mem|ram[0][5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[0][5]~combout\,
	datab => \mem|ram[4][5]~combout\,
	datac => \ir|aBus[5]~5_combout\,
	datad => \pc|aBus[2]~8_combout\,
	combout => \mem|Mux2~24_combout\);

-- Location: LCCOMB_X13_Y15_N28
\mem|ram[36][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[36][5]~combout\ = (\mem|ram[36][0]~11_combout\ & ((\ir|dBus[5]~31_combout\))) # (!\mem|ram[36][0]~11_combout\ & (\mem|ram[36][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[36][5]~combout\,
	datac => \mem|ram[36][0]~11_combout\,
	datad => \ir|dBus[5]~31_combout\,
	combout => \mem|ram[36][5]~combout\);

-- Location: LCCOMB_X13_Y13_N28
\mem|Mux2~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~25_combout\ = (\mem|Mux2~24_combout\ & (((\mem|ram[36][5]~combout\) # (!\ir|aBus[5]~5_combout\)))) # (!\mem|Mux2~24_combout\ & (\mem|ram[32][5]~combout\ & ((\ir|aBus[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[32][5]~combout\,
	datab => \mem|Mux2~24_combout\,
	datac => \mem|ram[36][5]~combout\,
	datad => \ir|aBus[5]~5_combout\,
	combout => \mem|Mux2~25_combout\);

-- Location: LCCOMB_X13_Y13_N26
\mem|Mux2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~26_combout\ = (\pc|aBus[1]~7_combout\ & (\pc|aBus[0]~6_combout\)) # (!\pc|aBus[1]~7_combout\ & ((\pc|aBus[0]~6_combout\ & (\mem|Mux2~23_combout\)) # (!\pc|aBus[0]~6_combout\ & ((\mem|Mux2~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \pc|aBus[0]~6_combout\,
	datac => \mem|Mux2~23_combout\,
	datad => \mem|Mux2~25_combout\,
	combout => \mem|Mux2~26_combout\);

-- Location: LCCOMB_X14_Y15_N22
\mem|ram[38][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[38][5]~combout\ = (\mem|ram[38][0]~6_combout\ & ((\ir|dBus[5]~31_combout\))) # (!\mem|ram[38][0]~6_combout\ & (\mem|ram[38][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[38][5]~combout\,
	datab => \mem|ram[38][0]~6_combout\,
	datad => \ir|dBus[5]~31_combout\,
	combout => \mem|ram[38][5]~combout\);

-- Location: LCCOMB_X14_Y15_N16
\mem|ram[34][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[34][5]~combout\ = (\mem|ram[34][0]~8_combout\ & ((\ir|dBus[5]~31_combout\))) # (!\mem|ram[34][0]~8_combout\ & (\mem|ram[34][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[34][5]~combout\,
	datac => \mem|ram[34][0]~8_combout\,
	datad => \ir|dBus[5]~31_combout\,
	combout => \mem|ram[34][5]~combout\);

-- Location: LCCOMB_X14_Y15_N20
\mem|ram[2][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[2][5]~combout\ = (\reset~input_o\) # ((GLOBAL(\mem|Decoder0~14clkctrl_outclk\) & (\ir|dBus[5]~40_combout\)) # (!GLOBAL(\mem|Decoder0~14clkctrl_outclk\) & ((\mem|ram[2][5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[5]~40_combout\,
	datab => \reset~input_o\,
	datac => \mem|Decoder0~14clkctrl_outclk\,
	datad => \mem|ram[2][5]~combout\,
	combout => \mem|ram[2][5]~combout\);

-- Location: LCCOMB_X14_Y15_N26
\mem|ram[6][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[6][5]~combout\ = (!\reset~input_o\ & ((GLOBAL(\mem|Decoder0~10clkctrl_outclk\) & (\ir|dBus[5]~40_combout\)) # (!GLOBAL(\mem|Decoder0~10clkctrl_outclk\) & ((\mem|ram[6][5]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ir|dBus[5]~40_combout\,
	datac => \mem|ram[6][5]~combout\,
	datad => \mem|Decoder0~10clkctrl_outclk\,
	combout => \mem|ram[6][5]~combout\);

-- Location: LCCOMB_X14_Y15_N6
\mem|Mux2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~20_combout\ = (\ir|aBus[5]~5_combout\ & (((\pc|aBus[2]~8_combout\)))) # (!\ir|aBus[5]~5_combout\ & ((\pc|aBus[2]~8_combout\ & ((\mem|ram[6][5]~combout\))) # (!\pc|aBus[2]~8_combout\ & (\mem|ram[2][5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[5]~5_combout\,
	datab => \mem|ram[2][5]~combout\,
	datac => \mem|ram[6][5]~combout\,
	datad => \pc|aBus[2]~8_combout\,
	combout => \mem|Mux2~20_combout\);

-- Location: LCCOMB_X14_Y15_N24
\mem|Mux2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~21_combout\ = (\ir|aBus[5]~5_combout\ & ((\mem|Mux2~20_combout\ & (\mem|ram[38][5]~combout\)) # (!\mem|Mux2~20_combout\ & ((\mem|ram[34][5]~combout\))))) # (!\ir|aBus[5]~5_combout\ & (((\mem|Mux2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[38][5]~combout\,
	datab => \mem|ram[34][5]~combout\,
	datac => \ir|aBus[5]~5_combout\,
	datad => \mem|Mux2~20_combout\,
	combout => \mem|Mux2~21_combout\);

-- Location: LCCOMB_X13_Y13_N4
\mem|Mux2~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~29_combout\ = (\pc|aBus[1]~7_combout\ & ((\mem|Mux2~26_combout\ & (\mem|Mux2~28_combout\)) # (!\mem|Mux2~26_combout\ & ((\mem|Mux2~21_combout\))))) # (!\pc|aBus[1]~7_combout\ & (((\mem|Mux2~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \mem|Mux2~28_combout\,
	datac => \mem|Mux2~26_combout\,
	datad => \mem|Mux2~21_combout\,
	combout => \mem|Mux2~29_combout\);

-- Location: LCCOMB_X12_Y11_N14
\mem|ram[50][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[50][5]~combout\ = (\mem|ram[50][0]~52_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[50][0]~52_combout\ & ((\mem|ram[50][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[50][0]~52_combout\,
	datad => \mem|ram[50][5]~combout\,
	combout => \mem|ram[50][5]~combout\);

-- Location: LCCOMB_X12_Y11_N4
\mem|ram[51][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[51][5]~combout\ = (\mem|ram[51][0]~55_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[51][0]~55_combout\ & ((\mem|ram[51][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[51][5]~combout\,
	datad => \mem|ram[51][0]~55_combout\,
	combout => \mem|ram[51][5]~combout\);

-- Location: LCCOMB_X12_Y11_N18
\mem|ram[18][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[18][5]~combout\ = (\mem|ram[18][0]~28_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[18][0]~28_combout\ & ((\mem|ram[18][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[18][0]~28_combout\,
	datad => \mem|ram[18][5]~combout\,
	combout => \mem|ram[18][5]~combout\);

-- Location: LCCOMB_X12_Y11_N26
\mem|ram[19][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[19][5]~combout\ = (\mem|ram[19][0]~24_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[19][0]~24_combout\ & ((\mem|ram[19][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[19][5]~combout\,
	datad => \mem|ram[19][0]~24_combout\,
	combout => \mem|ram[19][5]~combout\);

-- Location: LCCOMB_X12_Y11_N2
\mem|Mux2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~10_combout\ = (\ir|aBus[5]~5_combout\ & (((\pc|aBus[0]~6_combout\)))) # (!\ir|aBus[5]~5_combout\ & ((\pc|aBus[0]~6_combout\ & ((\mem|ram[19][5]~combout\))) # (!\pc|aBus[0]~6_combout\ & (\mem|ram[18][5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[5]~5_combout\,
	datab => \mem|ram[18][5]~combout\,
	datac => \mem|ram[19][5]~combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Mux2~10_combout\);

-- Location: LCCOMB_X12_Y11_N24
\mem|Mux2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~11_combout\ = (\ir|aBus[5]~5_combout\ & ((\mem|Mux2~10_combout\ & ((\mem|ram[51][5]~combout\))) # (!\mem|Mux2~10_combout\ & (\mem|ram[50][5]~combout\)))) # (!\ir|aBus[5]~5_combout\ & (((\mem|Mux2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[50][5]~combout\,
	datab => \ir|aBus[5]~5_combout\,
	datac => \mem|ram[51][5]~combout\,
	datad => \mem|Mux2~10_combout\,
	combout => \mem|Mux2~11_combout\);

-- Location: LCCOMB_X17_Y10_N20
\mem|ram[55][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[55][5]~combout\ = (\mem|ram[55][0]~51_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[55][0]~51_combout\ & ((\mem|ram[55][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[55][0]~51_combout\,
	datad => \mem|ram[55][5]~combout\,
	combout => \mem|ram[55][5]~combout\);

-- Location: LCCOMB_X17_Y10_N28
\mem|ram[23][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[23][5]~combout\ = (\mem|ram[23][0]~26_combout\ & ((\ir|dBus[5]~31_combout\))) # (!\mem|ram[23][0]~26_combout\ & (\mem|ram[23][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[23][5]~combout\,
	datac => \ir|dBus[5]~31_combout\,
	datad => \mem|ram[23][0]~26_combout\,
	combout => \mem|ram[23][5]~combout\);

-- Location: LCCOMB_X17_Y10_N26
\mem|ram[22][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[22][5]~combout\ = (\mem|ram[22][0]~30_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[22][0]~30_combout\ & ((\mem|ram[22][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[22][5]~combout\,
	datad => \mem|ram[22][0]~30_combout\,
	combout => \mem|ram[22][5]~combout\);

-- Location: LCCOMB_X17_Y10_N8
\mem|Mux2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~17_combout\ = (\ir|aBus[5]~5_combout\ & (((\pc|aBus[0]~6_combout\)))) # (!\ir|aBus[5]~5_combout\ & ((\pc|aBus[0]~6_combout\ & (\mem|ram[23][5]~combout\)) # (!\pc|aBus[0]~6_combout\ & ((\mem|ram[22][5]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[5]~5_combout\,
	datab => \mem|ram[23][5]~combout\,
	datac => \mem|ram[22][5]~combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Mux2~17_combout\);

-- Location: LCCOMB_X12_Y10_N14
\mem|ram[54][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[54][5]~combout\ = (\mem|ram[54][0]~48_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[54][0]~48_combout\ & ((\mem|ram[54][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[54][5]~combout\,
	datad => \mem|ram[54][0]~48_combout\,
	combout => \mem|ram[54][5]~combout\);

-- Location: LCCOMB_X17_Y10_N14
\mem|Mux2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~18_combout\ = (\ir|aBus[5]~5_combout\ & ((\mem|Mux2~17_combout\ & (\mem|ram[55][5]~combout\)) # (!\mem|Mux2~17_combout\ & ((\mem|ram[54][5]~combout\))))) # (!\ir|aBus[5]~5_combout\ & (((\mem|Mux2~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[5]~5_combout\,
	datab => \mem|ram[55][5]~combout\,
	datac => \mem|Mux2~17_combout\,
	datad => \mem|ram[54][5]~combout\,
	combout => \mem|Mux2~18_combout\);

-- Location: LCCOMB_X12_Y14_N12
\mem|ram[48][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[48][5]~combout\ = (\mem|ram[48][0]~54_combout\ & ((\ir|dBus[5]~31_combout\))) # (!\mem|ram[48][0]~54_combout\ & (\mem|ram[48][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[48][5]~combout\,
	datac => \ir|dBus[5]~31_combout\,
	datad => \mem|ram[48][0]~54_combout\,
	combout => \mem|ram[48][5]~combout\);

-- Location: LCCOMB_X14_Y10_N4
\mem|ram[16][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[16][5]~combout\ = (\mem|ram[16][0]~29_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[16][0]~29_combout\ & ((\mem|ram[16][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[16][5]~combout\,
	datad => \mem|ram[16][0]~29_combout\,
	combout => \mem|ram[16][5]~combout\);

-- Location: LCCOMB_X14_Y10_N22
\mem|ram[17][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[17][5]~combout\ = (\mem|ram[17][0]~25_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[17][0]~25_combout\ & ((\mem|ram[17][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[17][5]~combout\,
	datad => \mem|ram[17][0]~25_combout\,
	combout => \mem|ram[17][5]~combout\);

-- Location: LCCOMB_X14_Y10_N16
\mem|Mux2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~14_combout\ = (\ir|aBus[5]~5_combout\ & (((\pc|aBus[0]~6_combout\)))) # (!\ir|aBus[5]~5_combout\ & ((\pc|aBus[0]~6_combout\ & ((\mem|ram[17][5]~combout\))) # (!\pc|aBus[0]~6_combout\ & (\mem|ram[16][5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[5]~5_combout\,
	datab => \mem|ram[16][5]~combout\,
	datac => \mem|ram[17][5]~combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Mux2~14_combout\);

-- Location: LCCOMB_X13_Y11_N30
\mem|ram[49][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[49][5]~combout\ = (\mem|ram[49][0]~53_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[49][0]~53_combout\ & ((\mem|ram[49][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[49][5]~combout\,
	datad => \mem|ram[49][0]~53_combout\,
	combout => \mem|ram[49][5]~combout\);

-- Location: LCCOMB_X13_Y13_N12
\mem|Mux2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~15_combout\ = (\mem|Mux2~14_combout\ & (((\mem|ram[49][5]~combout\) # (!\ir|aBus[5]~5_combout\)))) # (!\mem|Mux2~14_combout\ & (\mem|ram[48][5]~combout\ & ((\ir|aBus[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[48][5]~combout\,
	datab => \mem|Mux2~14_combout\,
	datac => \mem|ram[49][5]~combout\,
	datad => \ir|aBus[5]~5_combout\,
	combout => \mem|Mux2~15_combout\);

-- Location: LCCOMB_X11_Y16_N8
\mem|ram[53][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[53][5]~combout\ = (\mem|ram[53][0]~49_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[53][0]~49_combout\ & ((\mem|ram[53][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[53][5]~combout\,
	datad => \mem|ram[53][0]~49_combout\,
	combout => \mem|ram[53][5]~combout\);

-- Location: LCCOMB_X17_Y10_N0
\mem|ram[21][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[21][5]~combout\ = (\mem|ram[21][0]~23_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[21][0]~23_combout\ & ((\mem|ram[21][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[21][0]~23_combout\,
	datad => \mem|ram[21][5]~combout\,
	combout => \mem|ram[21][5]~combout\);

-- Location: LCCOMB_X17_Y10_N30
\mem|ram[20][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[20][5]~combout\ = (\mem|ram[20][0]~27_combout\ & (\ir|dBus[5]~31_combout\)) # (!\mem|ram[20][0]~27_combout\ & ((\mem|ram[20][5]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[5]~31_combout\,
	datac => \mem|ram[20][5]~combout\,
	datad => \mem|ram[20][0]~27_combout\,
	combout => \mem|ram[20][5]~combout\);

-- Location: LCCOMB_X17_Y10_N6
\mem|Mux2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~12_combout\ = (\ir|aBus[5]~5_combout\ & (((\pc|aBus[0]~6_combout\)))) # (!\ir|aBus[5]~5_combout\ & ((\pc|aBus[0]~6_combout\ & (\mem|ram[21][5]~combout\)) # (!\pc|aBus[0]~6_combout\ & ((\mem|ram[20][5]~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|aBus[5]~5_combout\,
	datab => \mem|ram[21][5]~combout\,
	datac => \mem|ram[20][5]~combout\,
	datad => \pc|aBus[0]~6_combout\,
	combout => \mem|Mux2~12_combout\);

-- Location: LCCOMB_X11_Y16_N2
\mem|ram[52][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|ram[52][5]~combout\ = (\mem|ram[52][0]~50_combout\ & ((\ir|dBus[5]~31_combout\))) # (!\mem|ram[52][0]~50_combout\ & (\mem|ram[52][5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|ram[52][5]~combout\,
	datac => \ir|dBus[5]~31_combout\,
	datad => \mem|ram[52][0]~50_combout\,
	combout => \mem|ram[52][5]~combout\);

-- Location: LCCOMB_X13_Y13_N6
\mem|Mux2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~13_combout\ = (\mem|Mux2~12_combout\ & ((\mem|ram[53][5]~combout\) # ((!\ir|aBus[5]~5_combout\)))) # (!\mem|Mux2~12_combout\ & (((\mem|ram[52][5]~combout\ & \ir|aBus[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|ram[53][5]~combout\,
	datab => \mem|Mux2~12_combout\,
	datac => \mem|ram[52][5]~combout\,
	datad => \ir|aBus[5]~5_combout\,
	combout => \mem|Mux2~13_combout\);

-- Location: LCCOMB_X13_Y13_N10
\mem|Mux2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~16_combout\ = (\pc|aBus[1]~7_combout\ & (((\pc|aBus[2]~8_combout\)))) # (!\pc|aBus[1]~7_combout\ & ((\pc|aBus[2]~8_combout\ & ((\mem|Mux2~13_combout\))) # (!\pc|aBus[2]~8_combout\ & (\mem|Mux2~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|Mux2~15_combout\,
	datab => \pc|aBus[1]~7_combout\,
	datac => \pc|aBus[2]~8_combout\,
	datad => \mem|Mux2~13_combout\,
	combout => \mem|Mux2~16_combout\);

-- Location: LCCOMB_X13_Y13_N0
\mem|Mux2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~19_combout\ = (\pc|aBus[1]~7_combout\ & ((\mem|Mux2~16_combout\ & ((\mem|Mux2~18_combout\))) # (!\mem|Mux2~16_combout\ & (\mem|Mux2~11_combout\)))) # (!\pc|aBus[1]~7_combout\ & (((\mem|Mux2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[1]~7_combout\,
	datab => \mem|Mux2~11_combout\,
	datac => \mem|Mux2~18_combout\,
	datad => \mem|Mux2~16_combout\,
	combout => \mem|Mux2~19_combout\);

-- Location: LCCOMB_X13_Y13_N18
\mem|Mux2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~30_combout\ = (\pc|aBus[3]~9_combout\ & (\ir|aBus[4]~4_combout\)) # (!\pc|aBus[3]~9_combout\ & ((\ir|aBus[4]~4_combout\ & ((\mem|Mux2~19_combout\))) # (!\ir|aBus[4]~4_combout\ & (\mem|Mux2~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[3]~9_combout\,
	datab => \ir|aBus[4]~4_combout\,
	datac => \mem|Mux2~29_combout\,
	datad => \mem|Mux2~19_combout\,
	combout => \mem|Mux2~30_combout\);

-- Location: LCCOMB_X13_Y13_N2
\mem|Mux2~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem|Mux2~41_combout\ = (\pc|aBus[3]~9_combout\ & ((\mem|Mux2~30_combout\ & ((\mem|Mux2~40_combout\))) # (!\mem|Mux2~30_combout\ & (\mem|Mux2~9_combout\)))) # (!\pc|aBus[3]~9_combout\ & (((\mem|Mux2~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|aBus[3]~9_combout\,
	datab => \mem|Mux2~9_combout\,
	datac => \mem|Mux2~40_combout\,
	datad => \mem|Mux2~30_combout\,
	combout => \mem|Mux2~41_combout\);

-- Location: LCCOMB_X13_Y13_N30
\ir|dBus[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[5]~31_combout\ = ((\ir|dBus[5]~20_combout\ & ((\mem|Mux2~41_combout\) # (!\mem|dBus~0_combout\)))) # (!\ir|dBus[0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[5]~20_combout\,
	datab => \mem|dBus~0_combout\,
	datac => \ir|dBus[0]~11_combout\,
	datad => \mem|Mux2~41_combout\,
	combout => \ir|dBus[5]~31_combout\);

-- Location: LCCOMB_X13_Y13_N24
\ir|irReg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|irReg~8_combout\ = (\ir|dBus[5]~31_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[5]~31_combout\,
	datad => \reset~input_o\,
	combout => \ir|irReg~8_combout\);

-- Location: FF_X13_Y13_N25
\ir|irReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \ir|irReg~8_combout\,
	ena => \ir|irReg[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ir|irReg\(5));

-- Location: LCCOMB_X18_Y13_N24
\ctl|state~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|state~61_combout\ = (!\ir|irReg\(5) & (\ir|irReg\(4) & \ctl|state~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|irReg\(5),
	datac => \ir|irReg\(4),
	datad => \ctl|state~57_combout\,
	combout => \ctl|state~61_combout\);

-- Location: FF_X18_Y14_N21
\ctl|state.negate0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \ctl|state~61_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|state.negate0~q\);

-- Location: LCCOMB_X18_Y14_N28
\ctl|state~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|state~62_combout\ = (!\reset~input_o\ & \ctl|state.negate0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \ctl|state.negate0~q\,
	combout => \ctl|state~62_combout\);

-- Location: FF_X18_Y14_N27
\ctl|state.negate1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \ctl|state~62_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|state.negate1~q\);

-- Location: LCCOMB_X21_Y10_N8
\acc|accReg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc|accReg~1_combout\ = (!\ctl|state.negate1~q\ & (!\ctl|state.or1~q\ & \acc|accReg~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctl|state.negate1~q\,
	datac => \ctl|state.or1~q\,
	datad => \acc|accReg~0_combout\,
	combout => \acc|accReg~1_combout\);

-- Location: LCCOMB_X21_Y10_N4
\ctl|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|Selector0~0_combout\ = ((\ctl|state.branch1~q\) # ((\ctl|state.not1~q\) # (\ctl|state.load1~q\))) # (!\ctl|state.reset_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|state.reset_state~q\,
	datab => \ctl|state.branch1~q\,
	datac => \ctl|state.not1~q\,
	datad => \ctl|state.load1~q\,
	combout => \ctl|Selector0~0_combout\);

-- Location: LCCOMB_X19_Y11_N30
\ctl|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|Selector0~1_combout\ = ((\ctl|Selector0~0_combout\) # ((\ctl|state.store1~q\) # (\ctl|state.and1~q\))) # (!\acc|accReg~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|accReg~1_combout\,
	datab => \ctl|Selector0~0_combout\,
	datac => \ctl|state.store1~q\,
	datad => \ctl|state.and1~q\,
	combout => \ctl|Selector0~1_combout\);

-- Location: FF_X19_Y11_N31
\ctl|state.fetch0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ctl|Selector0~1_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|state.fetch0~q\);

-- Location: LCCOMB_X19_Y10_N18
\ctl|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|Selector1~0_combout\ = (\ir|irReg\(7) & ((\ir|irReg\(6)) # ((\ir|irReg\(5) & !\ir|irReg\(4))))) # (!\ir|irReg\(7) & (\ir|irReg\(6) & (\ir|irReg\(5) & !\ir|irReg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|irReg\(7),
	datab => \ir|irReg\(6),
	datac => \ir|irReg\(5),
	datad => \ir|irReg\(4),
	combout => \ctl|Selector1~0_combout\);

-- Location: LCCOMB_X19_Y10_N0
\ctl|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|Selector1~1_combout\ = (\ctl|Selector1~0_combout\ & (((\ir|irReg\(0)) # (\ir|irReg\(7))) # (!\ir|Equal10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|Equal10~1_combout\,
	datab => \ir|irReg\(0),
	datac => \ir|irReg\(7),
	datad => \ctl|Selector1~0_combout\,
	combout => \ctl|Selector1~1_combout\);

-- Location: LCCOMB_X19_Y11_N0
\ctl|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|Selector1~2_combout\ = (\ctl|state.fetch0~q\) # ((!\ir|Equal10~2_combout\ & (\ctl|state.fetch1~q\ & \ctl|Selector1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|state.fetch0~q\,
	datab => \ir|Equal10~2_combout\,
	datac => \ctl|state.fetch1~q\,
	datad => \ctl|Selector1~1_combout\,
	combout => \ctl|Selector1~2_combout\);

-- Location: FF_X19_Y11_N1
\ctl|state.fetch1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ctl|Selector1~2_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctl|state.fetch1~q\);

-- Location: LCCOMB_X18_Y14_N10
\ctl|pc_enA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|pc_enA~0_combout\ = (!\ctl|state.fetch1~q\ & !\ctl|state.fetch0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctl|state.fetch1~q\,
	datac => \ctl|state.fetch0~q\,
	combout => \ctl|pc_enA~0_combout\);

-- Location: LCCOMB_X18_Y14_N18
\pc|aBus[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|aBus[0]~6_combout\ = (\ctl|pc_enA~0_combout\ & ((\ctl|ir_enA~2_combout\) # ((\ir|irReg\(0))))) # (!\ctl|pc_enA~0_combout\ & (\pc|pcReg\(0) & ((\ctl|ir_enA~2_combout\) # (\ir|irReg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|pc_enA~0_combout\,
	datab => \ctl|ir_enA~2_combout\,
	datac => \pc|pcReg\(0),
	datad => \ir|irReg\(0),
	combout => \pc|aBus[0]~6_combout\);

-- Location: LCCOMB_X17_Y11_N20
\pc|aBus[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|aBus[0]~10_combout\ = (\ctl|state.fetch1~q\) # ((\ctl|state.fetch0~q\) # ((\ctl|ir_enA~0_combout\ & \ctl|ir_enA~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|ir_enA~0_combout\,
	datab => \ctl|state.fetch1~q\,
	datac => \ctl|ir_enA~1_combout\,
	datad => \ctl|state.fetch0~q\,
	combout => \pc|aBus[0]~10_combout\);

-- Location: LCCOMB_X17_Y11_N16
\pc|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|Add0~12_combout\ = (\pc|pcReg\(6) & (\pc|Add0~11\ $ (GND))) # (!\pc|pcReg\(6) & (!\pc|Add0~11\ & VCC))
-- \pc|Add0~13\ = CARRY((\pc|pcReg\(6) & !\pc|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc|pcReg\(6),
	datad => VCC,
	cin => \pc|Add0~11\,
	combout => \pc|Add0~12_combout\,
	cout => \pc|Add0~13\);

-- Location: FF_X17_Y11_N17
\pc|pcReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|Add0~12_combout\,
	asdata => \ir|dBus[6]~32_combout\,
	sclr => \reset~input_o\,
	sload => \ctl|state.branch0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pcReg\(6));

-- Location: LCCOMB_X17_Y11_N30
\ir|aBus[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|aBus[6]~6_combout\ = (\ctl|pc_enA~0_combout\ & (((!\ctl|ir_enA~1_combout\)) # (!\ctl|ir_enA~0_combout\))) # (!\ctl|pc_enA~0_combout\ & (((\pc|pcReg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|ir_enA~0_combout\,
	datab => \pc|pcReg\(6),
	datac => \ctl|ir_enA~1_combout\,
	datad => \ctl|pc_enA~0_combout\,
	combout => \ir|aBus[6]~6_combout\);

-- Location: LCCOMB_X17_Y11_N18
\pc|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc|Add0~14_combout\ = \pc|Add0~13\ $ (\pc|pcReg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pc|pcReg\(7),
	cin => \pc|Add0~13\,
	combout => \pc|Add0~14_combout\);

-- Location: FF_X17_Y11_N19
\pc|pcReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc|Add0~14_combout\,
	asdata => \ir|dBus[7]~33_combout\,
	sclr => \reset~input_o\,
	sload => \ctl|state.branch0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|pcReg\(7));

-- Location: LCCOMB_X17_Y11_N28
\ir|aBus[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|aBus[7]~7_combout\ = (\ctl|pc_enA~0_combout\ & (((!\ctl|ir_enA~0_combout\)) # (!\ctl|ir_enA~1_combout\))) # (!\ctl|pc_enA~0_combout\ & (((\pc|pcReg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|ir_enA~1_combout\,
	datab => \pc|pcReg\(7),
	datac => \ctl|pc_enA~0_combout\,
	datad => \ctl|ir_enA~0_combout\,
	combout => \ir|aBus[7]~7_combout\);

-- Location: LCCOMB_X13_Y16_N26
\ir|dBus[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[0]~9_combout\ = (\ir|dBus[0]~8_combout\ & ((\mem|Mux7~41_combout\) # (!\mem|dBus~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[0]~8_combout\,
	datac => \mem|Mux7~41_combout\,
	datad => \mem|dBus~0_combout\,
	combout => \ir|dBus[0]~9_combout\);

-- Location: LCCOMB_X18_Y14_N6
\ir|dBus[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[1]~13_combout\ = (\ir|dBus[1]~12_combout\ & ((\mem|Mux6~41_combout\) # (!\mem|dBus~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|dBus~0_combout\,
	datab => \ir|dBus[1]~12_combout\,
	datad => \mem|Mux6~41_combout\,
	combout => \ir|dBus[1]~13_combout\);

-- Location: LCCOMB_X11_Y14_N10
\ir|dBus[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[2]~15_combout\ = (\ir|dBus[2]~14_combout\ & ((\mem|Mux5~41_combout\) # (!\mem|dBus~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[2]~14_combout\,
	datac => \mem|dBus~0_combout\,
	datad => \mem|Mux5~41_combout\,
	combout => \ir|dBus[2]~15_combout\);

-- Location: LCCOMB_X17_Y16_N20
\ir|dBus[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[3]~17_combout\ = (\ir|dBus[3]~16_combout\ & ((\mem|Mux4~41_combout\) # (!\mem|dBus~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|dBus[3]~16_combout\,
	datac => \mem|Mux4~41_combout\,
	datad => \mem|dBus~0_combout\,
	combout => \ir|dBus[3]~17_combout\);

-- Location: LCCOMB_X12_Y11_N0
\ir|dBus[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[4]~19_combout\ = (\ir|dBus[4]~18_combout\ & ((\mem|Mux3~41_combout\) # (!\mem|dBus~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|dBus[4]~18_combout\,
	datac => \mem|Mux3~41_combout\,
	datad => \mem|dBus~0_combout\,
	combout => \ir|dBus[4]~19_combout\);

-- Location: LCCOMB_X10_Y12_N26
\ir|dBus[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[5]~21_combout\ = (\ir|dBus[5]~20_combout\ & ((\mem|Mux2~41_combout\) # (!\mem|dBus~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|Mux2~41_combout\,
	datac => \ir|dBus[5]~20_combout\,
	datad => \mem|dBus~0_combout\,
	combout => \ir|dBus[5]~21_combout\);

-- Location: LCCOMB_X12_Y11_N20
\ir|dBus[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[6]~23_combout\ = (\ir|dBus[6]~22_combout\ & ((\mem|Mux1~41_combout\) # (!\mem|dBus~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem|Mux1~41_combout\,
	datac => \ir|dBus[6]~22_combout\,
	datad => \mem|dBus~0_combout\,
	combout => \ir|dBus[6]~23_combout\);

-- Location: LCCOMB_X13_Y15_N26
\ir|dBus[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir|dBus[7]~25_combout\ = (\ir|dBus[7]~24_combout\ & ((\mem|Mux0~41_combout\) # (!\mem|dBus~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|dBus~0_combout\,
	datab => \mem|Mux0~41_combout\,
	datac => \ir|dBus[7]~24_combout\,
	combout => \ir|dBus[7]~25_combout\);

-- Location: LCCOMB_X22_Y10_N14
\ctl|acc_ld~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctl|acc_ld~1_combout\ = (\ctl|state.load1~q\) # (!\ctl|acc_ld~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctl|acc_ld~0_combout\,
	datad => \ctl|state.load1~q\,
	combout => \ctl|acc_ld~1_combout\);

-- Location: LCCOMB_X16_Y7_N28
\aluu|accZ~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|accZ~1_combout\ = (\acc|accReg\(5)) # ((\acc|accReg\(7)) # ((\acc|accReg\(4)) # (\acc|accReg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|accReg\(5),
	datab => \acc|accReg\(7),
	datac => \acc|accReg\(4),
	datad => \acc|accReg\(6),
	combout => \aluu|accZ~1_combout\);

-- Location: LCCOMB_X24_Y12_N0
\aluu|accZ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|accZ~0_combout\ = (\acc|accReg\(0)) # ((\acc|accReg\(3)) # ((\acc|accReg\(2)) # (\acc|accReg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc|accReg\(0),
	datab => \acc|accReg\(3),
	datac => \acc|accReg\(2),
	datad => \acc|accReg\(1),
	combout => \aluu|accZ~0_combout\);

-- Location: LCCOMB_X16_Y7_N2
\aluu|accZ~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \aluu|accZ~2_combout\ = (\aluu|accZ~1_combout\) # (\aluu|accZ~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \aluu|accZ~1_combout\,
	datad => \aluu|accZ~0_combout\,
	combout => \aluu|accZ~2_combout\);

ww_abusX(0) <= \abusX[0]~output_o\;

ww_abusX(1) <= \abusX[1]~output_o\;

ww_abusX(2) <= \abusX[2]~output_o\;

ww_abusX(3) <= \abusX[3]~output_o\;

ww_abusX(4) <= \abusX[4]~output_o\;

ww_abusX(5) <= \abusX[5]~output_o\;

ww_abusX(6) <= \abusX[6]~output_o\;

ww_abusX(7) <= \abusX[7]~output_o\;

ww_dbusX(0) <= \dbusX[0]~output_o\;

ww_dbusX(1) <= \dbusX[1]~output_o\;

ww_dbusX(2) <= \dbusX[2]~output_o\;

ww_dbusX(3) <= \dbusX[3]~output_o\;

ww_dbusX(4) <= \dbusX[4]~output_o\;

ww_dbusX(5) <= \dbusX[5]~output_o\;

ww_dbusX(6) <= \dbusX[6]~output_o\;

ww_dbusX(7) <= \dbusX[7]~output_o\;

ww_mem_enDX <= \mem_enDX~output_o\;

ww_mem_rwX <= \mem_rwX~output_o\;

ww_pc_enAX <= \pc_enAX~output_o\;

ww_pc_ldX <= \pc_ldX~output_o\;

ww_pc_incX <= \pc_incX~output_o\;

ww_ir_enAX <= \ir_enAX~output_o\;

ww_ir_enDX <= \ir_enDX~output_o\;

ww_ir_ldX <= \ir_ldX~output_o\;

ww_acc_enDX <= \acc_enDX~output_o\;

ww_acc_ldX <= \acc_ldX~output_o\;

ww_acc_selAluX <= \acc_selAluX~output_o\;

ww_acc_QX(0) <= \acc_QX[0]~output_o\;

ww_acc_QX(1) <= \acc_QX[1]~output_o\;

ww_acc_QX(2) <= \acc_QX[2]~output_o\;

ww_acc_QX(3) <= \acc_QX[3]~output_o\;

ww_acc_QX(4) <= \acc_QX[4]~output_o\;

ww_acc_QX(5) <= \acc_QX[5]~output_o\;

ww_acc_QX(6) <= \acc_QX[6]~output_o\;

ww_acc_QX(7) <= \acc_QX[7]~output_o\;

ww_alu_accZX <= \alu_accZX~output_o\;

ww_alu_opX(0) <= \alu_opX[0]~output_o\;

ww_alu_opX(1) <= \alu_opX[1]~output_o\;

ww_alu_opX(2) <= \alu_opX[2]~output_o\;

ww_alu_opX(3) <= \alu_opX[3]~output_o\;
END structure;


