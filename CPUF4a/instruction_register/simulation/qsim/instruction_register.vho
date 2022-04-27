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

-- DATE "12/19/2020 15:49:54"

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

ENTITY 	instruction_register IS
    PORT (
	clk : IN std_logic;
	en_A : IN std_logic;
	en_D : IN std_logic;
	ld : IN std_logic;
	reset : IN std_logic;
	aBus : OUT std_logic_vector(7 DOWNTO 0);
	dBus : INOUT std_logic_vector(7 DOWNTO 0);
	load : OUT std_logic;
	store : OUT std_logic;
	add : OUT std_logic;
	sub : OUT std_logic;
	mul : OUT std_logic;
	div : OUT std_logic;
	andd : OUT std_logic;
	orr : OUT std_logic;
	nott : OUT std_logic;
	neg : OUT std_logic;
	halt : OUT std_logic;
	branch : OUT std_logic
	);
END instruction_register;

-- Design Ports Information
-- aBus[0]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aBus[1]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aBus[2]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aBus[3]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aBus[4]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aBus[5]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aBus[6]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aBus[7]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- store	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sub	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mul	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- andd	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- orr	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nott	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- neg	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- halt	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[0]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[1]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[2]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[3]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[4]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[5]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[6]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[7]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_A	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_D	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF instruction_register IS
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
SIGNAL ww_en_A : std_logic;
SIGNAL ww_en_D : std_logic;
SIGNAL ww_ld : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_aBus : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_load : std_logic;
SIGNAL ww_store : std_logic;
SIGNAL ww_add : std_logic;
SIGNAL ww_sub : std_logic;
SIGNAL ww_mul : std_logic;
SIGNAL ww_div : std_logic;
SIGNAL ww_andd : std_logic;
SIGNAL ww_orr : std_logic;
SIGNAL ww_nott : std_logic;
SIGNAL ww_neg : std_logic;
SIGNAL ww_halt : std_logic;
SIGNAL ww_branch : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \aBus[0]~output_o\ : std_logic;
SIGNAL \aBus[1]~output_o\ : std_logic;
SIGNAL \aBus[2]~output_o\ : std_logic;
SIGNAL \aBus[3]~output_o\ : std_logic;
SIGNAL \aBus[4]~output_o\ : std_logic;
SIGNAL \aBus[5]~output_o\ : std_logic;
SIGNAL \aBus[6]~output_o\ : std_logic;
SIGNAL \aBus[7]~output_o\ : std_logic;
SIGNAL \dBus[0]~output_o\ : std_logic;
SIGNAL \dBus[1]~output_o\ : std_logic;
SIGNAL \dBus[2]~output_o\ : std_logic;
SIGNAL \dBus[3]~output_o\ : std_logic;
SIGNAL \dBus[4]~output_o\ : std_logic;
SIGNAL \dBus[5]~output_o\ : std_logic;
SIGNAL \dBus[6]~output_o\ : std_logic;
SIGNAL \dBus[7]~output_o\ : std_logic;
SIGNAL \load~output_o\ : std_logic;
SIGNAL \store~output_o\ : std_logic;
SIGNAL \add~output_o\ : std_logic;
SIGNAL \sub~output_o\ : std_logic;
SIGNAL \mul~output_o\ : std_logic;
SIGNAL \div~output_o\ : std_logic;
SIGNAL \andd~output_o\ : std_logic;
SIGNAL \orr~output_o\ : std_logic;
SIGNAL \nott~output_o\ : std_logic;
SIGNAL \neg~output_o\ : std_logic;
SIGNAL \halt~output_o\ : std_logic;
SIGNAL \branch~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \dBus[0]~input_o\ : std_logic;
SIGNAL \irReg~8_combout\ : std_logic;
SIGNAL \ld~input_o\ : std_logic;
SIGNAL \irReg[4]~1_combout\ : std_logic;
SIGNAL \en_A~input_o\ : std_logic;
SIGNAL \dBus[1]~input_o\ : std_logic;
SIGNAL \irReg~5_combout\ : std_logic;
SIGNAL \dBus[2]~input_o\ : std_logic;
SIGNAL \irReg~6_combout\ : std_logic;
SIGNAL \dBus[3]~input_o\ : std_logic;
SIGNAL \irReg~7_combout\ : std_logic;
SIGNAL \en_D~input_o\ : std_logic;
SIGNAL \dBus[4]~input_o\ : std_logic;
SIGNAL \irReg~4_combout\ : std_logic;
SIGNAL \dBus[6]~input_o\ : std_logic;
SIGNAL \irReg~2_combout\ : std_logic;
SIGNAL \dBus[5]~input_o\ : std_logic;
SIGNAL \irReg~3_combout\ : std_logic;
SIGNAL \dBus[7]~input_o\ : std_logic;
SIGNAL \irReg~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \load~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \Equal6~2_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL irReg : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_en_D~input_o\ : std_logic;
SIGNAL \ALT_INV_en_A~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_en_A <= en_A;
ww_en_D <= en_D;
ww_ld <= ld;
ww_reset <= reset;
aBus <= ww_aBus;
load <= ww_load;
store <= ww_store;
add <= ww_add;
sub <= ww_sub;
mul <= ww_mul;
div <= ww_div;
andd <= ww_andd;
orr <= ww_orr;
nott <= ww_nott;
neg <= ww_neg;
halt <= ww_halt;
branch <= ww_branch;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\ALT_INV_en_D~input_o\ <= NOT \en_D~input_o\;
\ALT_INV_en_A~input_o\ <= NOT \en_A~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X30_Y0_N23
\aBus[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => irReg(0),
	oe => \en_A~input_o\,
	devoe => ww_devoe,
	o => \aBus[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\aBus[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => irReg(1),
	oe => \en_A~input_o\,
	devoe => ww_devoe,
	o => \aBus[1]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\aBus[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => irReg(2),
	oe => \en_A~input_o\,
	devoe => ww_devoe,
	o => \aBus[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\aBus[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => irReg(3),
	oe => \en_A~input_o\,
	devoe => ww_devoe,
	o => \aBus[3]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\aBus[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_en_A~input_o\,
	devoe => ww_devoe,
	o => \aBus[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\aBus[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_en_A~input_o\,
	devoe => ww_devoe,
	o => \aBus[5]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\aBus[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_en_A~input_o\,
	devoe => ww_devoe,
	o => \aBus[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\aBus[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_en_A~input_o\,
	devoe => ww_devoe,
	o => \aBus[7]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\dBus[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => irReg(0),
	oe => \en_D~input_o\,
	devoe => ww_devoe,
	o => \dBus[0]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\dBus[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => irReg(1),
	oe => \en_D~input_o\,
	devoe => ww_devoe,
	o => \dBus[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\dBus[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => irReg(2),
	oe => \en_D~input_o\,
	devoe => ww_devoe,
	o => \dBus[2]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\dBus[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => irReg(3),
	oe => \en_D~input_o\,
	devoe => ww_devoe,
	o => \dBus[3]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\dBus[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_en_D~input_o\,
	oe => VCC,
	devoe => ww_devoe,
	o => \dBus[4]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\dBus[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_en_D~input_o\,
	oe => VCC,
	devoe => ww_devoe,
	o => \dBus[5]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\dBus[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_en_D~input_o\,
	oe => VCC,
	devoe => ww_devoe,
	o => \dBus[6]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\dBus[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_en_D~input_o\,
	oe => VCC,
	devoe => ww_devoe,
	o => \dBus[7]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\load~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \load~0_combout\,
	devoe => ww_devoe,
	o => \load~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\store~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~1_combout\,
	devoe => ww_devoe,
	o => \store~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\add~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~2_combout\,
	devoe => ww_devoe,
	o => \add~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\sub~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~3_combout\,
	devoe => ww_devoe,
	o => \sub~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\mul~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~4_combout\,
	devoe => ww_devoe,
	o => \mul~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\div~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~5_combout\,
	devoe => ww_devoe,
	o => \div~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\andd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~6_combout\,
	devoe => ww_devoe,
	o => \andd~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\orr~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~7_combout\,
	devoe => ww_devoe,
	o => \orr~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\nott~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~8_combout\,
	devoe => ww_devoe,
	o => \nott~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\neg~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal6~2_combout\,
	devoe => ww_devoe,
	o => \neg~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\halt~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal10~0_combout\,
	devoe => ww_devoe,
	o => \halt~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\branch~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~9_combout\,
	devoe => ww_devoe,
	o => \branch~output_o\);

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

-- Location: IOIBUF_X30_Y0_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\dBus[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dBus(0),
	o => \dBus[0]~input_o\);

-- Location: LCCOMB_X30_Y1_N24
\irReg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \irReg~8_combout\ = (!\reset~input_o\ & \dBus[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \dBus[0]~input_o\,
	combout => \irReg~8_combout\);

-- Location: IOIBUF_X28_Y0_N22
\ld~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ld,
	o => \ld~input_o\);

-- Location: LCCOMB_X30_Y1_N14
\irReg[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \irReg[4]~1_combout\ = (\reset~input_o\) # (\ld~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \ld~input_o\,
	combout => \irReg[4]~1_combout\);

-- Location: FF_X30_Y1_N25
\irReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \irReg~8_combout\,
	ena => \irReg[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => irReg(0));

-- Location: IOIBUF_X5_Y0_N15
\en_A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en_A,
	o => \en_A~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\dBus[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dBus(1),
	o => \dBus[1]~input_o\);

-- Location: LCCOMB_X30_Y1_N6
\irReg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \irReg~5_combout\ = (!\reset~input_o\ & \dBus[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \dBus[1]~input_o\,
	combout => \irReg~5_combout\);

-- Location: FF_X30_Y1_N7
\irReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \irReg~5_combout\,
	ena => \irReg[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => irReg(1));

-- Location: IOIBUF_X32_Y0_N15
\dBus[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dBus(2),
	o => \dBus[2]~input_o\);

-- Location: LCCOMB_X30_Y1_N16
\irReg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \irReg~6_combout\ = (!\reset~input_o\ & \dBus[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \dBus[2]~input_o\,
	combout => \irReg~6_combout\);

-- Location: FF_X30_Y1_N17
\irReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \irReg~6_combout\,
	ena => \irReg[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => irReg(2));

-- Location: IOIBUF_X34_Y2_N15
\dBus[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dBus(3),
	o => \dBus[3]~input_o\);

-- Location: LCCOMB_X30_Y1_N2
\irReg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \irReg~7_combout\ = (!\reset~input_o\ & \dBus[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \dBus[3]~input_o\,
	combout => \irReg~7_combout\);

-- Location: FF_X30_Y1_N3
\irReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \irReg~7_combout\,
	ena => \irReg[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => irReg(3));

-- Location: IOIBUF_X18_Y0_N15
\en_D~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en_D,
	o => \en_D~input_o\);

-- Location: IOIBUF_X34_Y3_N22
\dBus[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dBus(4),
	o => \dBus[4]~input_o\);

-- Location: LCCOMB_X30_Y1_N22
\irReg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \irReg~4_combout\ = (!\reset~input_o\ & \dBus[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \dBus[4]~input_o\,
	combout => \irReg~4_combout\);

-- Location: FF_X30_Y1_N23
\irReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \irReg~4_combout\,
	ena => \irReg[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => irReg(4));

-- Location: IOIBUF_X34_Y4_N22
\dBus[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dBus(6),
	o => \dBus[6]~input_o\);

-- Location: LCCOMB_X30_Y1_N18
\irReg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \irReg~2_combout\ = (\dBus[6]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dBus[6]~input_o\,
	datac => \reset~input_o\,
	combout => \irReg~2_combout\);

-- Location: FF_X30_Y1_N19
\irReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \irReg~2_combout\,
	ena => \irReg[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => irReg(6));

-- Location: IOIBUF_X34_Y2_N22
\dBus[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dBus(5),
	o => \dBus[5]~input_o\);

-- Location: LCCOMB_X30_Y1_N4
\irReg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \irReg~3_combout\ = (\dBus[5]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dBus[5]~input_o\,
	datac => \reset~input_o\,
	combout => \irReg~3_combout\);

-- Location: FF_X30_Y1_N5
\irReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \irReg~3_combout\,
	ena => \irReg[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => irReg(5));

-- Location: IOIBUF_X34_Y9_N1
\dBus[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dBus(7),
	o => \dBus[7]~input_o\);

-- Location: LCCOMB_X30_Y1_N0
\irReg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \irReg~0_combout\ = (!\reset~input_o\ & \dBus[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \dBus[7]~input_o\,
	combout => \irReg~0_combout\);

-- Location: FF_X30_Y1_N1
\irReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \irReg~0_combout\,
	ena => \irReg[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => irReg(7));

-- Location: LCCOMB_X30_Y1_N8
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!irReg(4) & (!irReg(6) & (!irReg(5) & !irReg(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => irReg(4),
	datab => irReg(6),
	datac => irReg(5),
	datad => irReg(7),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X30_Y1_N10
\load~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \load~0_combout\ = (\Equal0~0_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \reset~input_o\,
	combout => \load~0_combout\);

-- Location: LCCOMB_X24_Y6_N8
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!irReg(6) & (irReg(4) & (!irReg(5) & !irReg(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => irReg(6),
	datab => irReg(4),
	datac => irReg(5),
	datad => irReg(7),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X24_Y6_N10
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!irReg(6) & (!irReg(4) & (irReg(5) & !irReg(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => irReg(6),
	datab => irReg(4),
	datac => irReg(5),
	datad => irReg(7),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X24_Y6_N28
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!irReg(6) & (irReg(4) & (irReg(5) & !irReg(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => irReg(6),
	datab => irReg(4),
	datac => irReg(5),
	datad => irReg(7),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X24_Y6_N22
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (irReg(6) & (!irReg(4) & (!irReg(5) & !irReg(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => irReg(6),
	datab => irReg(4),
	datac => irReg(5),
	datad => irReg(7),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X24_Y6_N24
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (irReg(6) & (irReg(4) & (!irReg(5) & !irReg(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => irReg(6),
	datab => irReg(4),
	datac => irReg(5),
	datad => irReg(7),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X30_Y1_N20
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (irReg(4) & (irReg(6) & (irReg(5) & !irReg(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => irReg(4),
	datab => irReg(6),
	datac => irReg(5),
	datad => irReg(7),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X24_Y6_N26
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!irReg(6) & (!irReg(4) & (!irReg(5) & irReg(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => irReg(6),
	datab => irReg(4),
	datac => irReg(5),
	datad => irReg(7),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X24_Y6_N4
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!irReg(6) & (irReg(4) & (!irReg(5) & irReg(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => irReg(6),
	datab => irReg(4),
	datac => irReg(5),
	datad => irReg(7),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X30_Y1_N12
\Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!irReg(1) & (!irReg(3) & (!irReg(4) & !irReg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => irReg(1),
	datab => irReg(3),
	datac => irReg(4),
	datad => irReg(2),
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X30_Y1_N30
\Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (\Equal6~0_combout\ & irReg(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datac => irReg(5),
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X30_Y1_N26
\Equal6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~2_combout\ = (!irReg(0) & (irReg(6) & (\Equal6~1_combout\ & !irReg(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => irReg(0),
	datab => irReg(6),
	datac => \Equal6~1_combout\,
	datad => irReg(7),
	combout => \Equal6~2_combout\);

-- Location: LCCOMB_X30_Y1_N28
\Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (irReg(0) & (!irReg(6) & (\Equal6~1_combout\ & irReg(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => irReg(0),
	datab => irReg(6),
	datac => \Equal6~1_combout\,
	datad => irReg(7),
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X24_Y6_N6
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!irReg(6) & (irReg(4) & (irReg(5) & irReg(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => irReg(6),
	datab => irReg(4),
	datac => irReg(5),
	datad => irReg(7),
	combout => \Equal0~9_combout\);

ww_aBus(0) <= \aBus[0]~output_o\;

ww_aBus(1) <= \aBus[1]~output_o\;

ww_aBus(2) <= \aBus[2]~output_o\;

ww_aBus(3) <= \aBus[3]~output_o\;

ww_aBus(4) <= \aBus[4]~output_o\;

ww_aBus(5) <= \aBus[5]~output_o\;

ww_aBus(6) <= \aBus[6]~output_o\;

ww_aBus(7) <= \aBus[7]~output_o\;

ww_load <= \load~output_o\;

ww_store <= \store~output_o\;

ww_add <= \add~output_o\;

ww_sub <= \sub~output_o\;

ww_mul <= \mul~output_o\;

ww_div <= \div~output_o\;

ww_andd <= \andd~output_o\;

ww_orr <= \orr~output_o\;

ww_nott <= \nott~output_o\;

ww_neg <= \neg~output_o\;

ww_halt <= \halt~output_o\;

ww_branch <= \branch~output_o\;

dBus(0) <= \dBus[0]~output_o\;

dBus(1) <= \dBus[1]~output_o\;

dBus(2) <= \dBus[2]~output_o\;

dBus(3) <= \dBus[3]~output_o\;

dBus(4) <= \dBus[4]~output_o\;

dBus(5) <= \dBus[5]~output_o\;

dBus(6) <= \dBus[6]~output_o\;

dBus(7) <= \dBus[7]~output_o\;
END structure;


