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

-- DATE "12/19/2020 14:30:45"

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

ENTITY 	accumulator IS
    PORT (
	clk : IN std_logic;
	en_D : IN std_logic;
	ld : IN std_logic;
	selAlu : IN std_logic;
	reset : IN std_logic;
	aluD : IN std_logic_vector(7 DOWNTO 0);
	dBus : INOUT std_logic_vector(7 DOWNTO 0);
	q : OUT std_logic_vector(7 DOWNTO 0)
	);
END accumulator;

-- Design Ports Information
-- q[0]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[6]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[7]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[0]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[1]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[2]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[3]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[4]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[5]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[6]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[7]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluD[0]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selAlu	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluD[1]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluD[2]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluD[3]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluD[4]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluD[5]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluD[6]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluD[7]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_D	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF accumulator IS
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
SIGNAL ww_en_D : std_logic;
SIGNAL ww_ld : std_logic;
SIGNAL ww_selAlu : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_aluD : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_q : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dBus[0]~output_o\ : std_logic;
SIGNAL \dBus[1]~output_o\ : std_logic;
SIGNAL \dBus[2]~output_o\ : std_logic;
SIGNAL \dBus[3]~output_o\ : std_logic;
SIGNAL \dBus[4]~output_o\ : std_logic;
SIGNAL \dBus[5]~output_o\ : std_logic;
SIGNAL \dBus[6]~output_o\ : std_logic;
SIGNAL \dBus[7]~output_o\ : std_logic;
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[4]~output_o\ : std_logic;
SIGNAL \q[5]~output_o\ : std_logic;
SIGNAL \q[6]~output_o\ : std_logic;
SIGNAL \q[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \selAlu~input_o\ : std_logic;
SIGNAL \ld~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \accReg~0_combout\ : std_logic;
SIGNAL \accReg~1_combout\ : std_logic;
SIGNAL \dBus[0]~input_o\ : std_logic;
SIGNAL \aluD[0]~input_o\ : std_logic;
SIGNAL \accReg~2_combout\ : std_logic;
SIGNAL \accReg~3_combout\ : std_logic;
SIGNAL \en_D~input_o\ : std_logic;
SIGNAL \aluD[1]~input_o\ : std_logic;
SIGNAL \dBus[1]~input_o\ : std_logic;
SIGNAL \accReg~4_combout\ : std_logic;
SIGNAL \aluD[2]~input_o\ : std_logic;
SIGNAL \dBus[2]~input_o\ : std_logic;
SIGNAL \accReg~5_combout\ : std_logic;
SIGNAL \aluD[3]~input_o\ : std_logic;
SIGNAL \dBus[3]~input_o\ : std_logic;
SIGNAL \accReg~6_combout\ : std_logic;
SIGNAL \aluD[4]~input_o\ : std_logic;
SIGNAL \dBus[4]~input_o\ : std_logic;
SIGNAL \accReg~7_combout\ : std_logic;
SIGNAL \dBus[5]~input_o\ : std_logic;
SIGNAL \aluD[5]~input_o\ : std_logic;
SIGNAL \accReg~8_combout\ : std_logic;
SIGNAL \dBus[6]~input_o\ : std_logic;
SIGNAL \aluD[6]~input_o\ : std_logic;
SIGNAL \accReg~9_combout\ : std_logic;
SIGNAL \dBus[7]~input_o\ : std_logic;
SIGNAL \aluD[7]~input_o\ : std_logic;
SIGNAL \accReg~10_combout\ : std_logic;
SIGNAL accReg : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_en_D <= en_D;
ww_ld <= ld;
ww_selAlu <= selAlu;
ww_reset <= reset;
ww_aluD <= aluD;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y0_N23
\dBus[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => accReg(0),
	oe => \en_D~input_o\,
	devoe => ww_devoe,
	o => \dBus[0]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\dBus[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => accReg(1),
	oe => \en_D~input_o\,
	devoe => ww_devoe,
	o => \dBus[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\dBus[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => accReg(2),
	oe => \en_D~input_o\,
	devoe => ww_devoe,
	o => \dBus[2]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\dBus[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => accReg(3),
	oe => \en_D~input_o\,
	devoe => ww_devoe,
	o => \dBus[3]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\dBus[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => accReg(4),
	oe => \en_D~input_o\,
	devoe => ww_devoe,
	o => \dBus[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\dBus[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => accReg(5),
	oe => \en_D~input_o\,
	devoe => ww_devoe,
	o => \dBus[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\dBus[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => accReg(6),
	oe => \en_D~input_o\,
	devoe => ww_devoe,
	o => \dBus[6]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\dBus[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => accReg(7),
	oe => \en_D~input_o\,
	devoe => ww_devoe,
	o => \dBus[7]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => accReg(0),
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => accReg(1),
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => accReg(2),
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => accReg(3),
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\q[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => accReg(4),
	devoe => ww_devoe,
	o => \q[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\q[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => accReg(5),
	devoe => ww_devoe,
	o => \q[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\q[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => accReg(6),
	devoe => ww_devoe,
	o => \q[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\q[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => accReg(7),
	devoe => ww_devoe,
	o => \q[7]~output_o\);

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

-- Location: IOIBUF_X21_Y0_N8
\selAlu~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selAlu,
	o => \selAlu~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\ld~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ld,
	o => \ld~input_o\);

-- Location: IOIBUF_X23_Y24_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X24_Y4_N10
\accReg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \accReg~0_combout\ = (!\reset~input_o\ & ((\selAlu~input_o\) # (!\ld~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selAlu~input_o\,
	datab => \ld~input_o\,
	datad => \reset~input_o\,
	combout => \accReg~0_combout\);

-- Location: LCCOMB_X24_Y4_N20
\accReg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \accReg~1_combout\ = (!\selAlu~input_o\ & (\ld~input_o\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selAlu~input_o\,
	datab => \ld~input_o\,
	datad => \reset~input_o\,
	combout => \accReg~1_combout\);

-- Location: IOIBUF_X16_Y0_N22
\dBus[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dBus(0),
	o => \dBus[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\aluD[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aluD(0),
	o => \aluD[0]~input_o\);

-- Location: LCCOMB_X24_Y4_N24
\accReg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \accReg~2_combout\ = (\accReg~0_combout\ & ((\aluD[0]~input_o\) # ((\accReg~1_combout\ & \dBus[0]~input_o\)))) # (!\accReg~0_combout\ & (\accReg~1_combout\ & (\dBus[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \accReg~0_combout\,
	datab => \accReg~1_combout\,
	datac => \dBus[0]~input_o\,
	datad => \aluD[0]~input_o\,
	combout => \accReg~2_combout\);

-- Location: LCCOMB_X24_Y4_N22
\accReg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \accReg~3_combout\ = (\reset~input_o\) # (\ld~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \ld~input_o\,
	combout => \accReg~3_combout\);

-- Location: FF_X24_Y4_N25
\accReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \accReg~2_combout\,
	ena => \accReg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accReg(0));

-- Location: IOIBUF_X34_Y12_N15
\en_D~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en_D,
	o => \en_D~input_o\);

-- Location: IOIBUF_X34_Y7_N8
\aluD[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aluD(1),
	o => \aluD[1]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\dBus[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dBus(1),
	o => \dBus[1]~input_o\);

-- Location: LCCOMB_X31_Y4_N24
\accReg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \accReg~4_combout\ = (\accReg~0_combout\ & ((\aluD[1]~input_o\) # ((\accReg~1_combout\ & \dBus[1]~input_o\)))) # (!\accReg~0_combout\ & (\accReg~1_combout\ & ((\dBus[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \accReg~0_combout\,
	datab => \accReg~1_combout\,
	datac => \aluD[1]~input_o\,
	datad => \dBus[1]~input_o\,
	combout => \accReg~4_combout\);

-- Location: FF_X31_Y4_N25
\accReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \accReg~4_combout\,
	ena => \accReg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accReg(1));

-- Location: IOIBUF_X25_Y0_N1
\aluD[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aluD(2),
	o => \aluD[2]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\dBus[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dBus(2),
	o => \dBus[2]~input_o\);

-- Location: LCCOMB_X24_Y4_N26
\accReg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \accReg~5_combout\ = (\accReg~0_combout\ & ((\aluD[2]~input_o\) # ((\accReg~1_combout\ & \dBus[2]~input_o\)))) # (!\accReg~0_combout\ & (\accReg~1_combout\ & ((\dBus[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \accReg~0_combout\,
	datab => \accReg~1_combout\,
	datac => \aluD[2]~input_o\,
	datad => \dBus[2]~input_o\,
	combout => \accReg~5_combout\);

-- Location: FF_X24_Y4_N27
\accReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \accReg~5_combout\,
	ena => \accReg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accReg(2));

-- Location: IOIBUF_X30_Y0_N22
\aluD[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aluD(3),
	o => \aluD[3]~input_o\);

-- Location: IOIBUF_X34_Y4_N15
\dBus[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dBus(3),
	o => \dBus[3]~input_o\);

-- Location: LCCOMB_X31_Y4_N10
\accReg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \accReg~6_combout\ = (\accReg~0_combout\ & ((\aluD[3]~input_o\) # ((\accReg~1_combout\ & \dBus[3]~input_o\)))) # (!\accReg~0_combout\ & (\accReg~1_combout\ & ((\dBus[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \accReg~0_combout\,
	datab => \accReg~1_combout\,
	datac => \aluD[3]~input_o\,
	datad => \dBus[3]~input_o\,
	combout => \accReg~6_combout\);

-- Location: FF_X31_Y4_N11
\accReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \accReg~6_combout\,
	ena => \accReg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accReg(3));

-- Location: IOIBUF_X32_Y0_N22
\aluD[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aluD(4),
	o => \aluD[4]~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\dBus[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dBus(4),
	o => \dBus[4]~input_o\);

-- Location: LCCOMB_X32_Y4_N24
\accReg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \accReg~7_combout\ = (\accReg~0_combout\ & ((\aluD[4]~input_o\) # ((\accReg~1_combout\ & \dBus[4]~input_o\)))) # (!\accReg~0_combout\ & (((\accReg~1_combout\ & \dBus[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \accReg~0_combout\,
	datab => \aluD[4]~input_o\,
	datac => \accReg~1_combout\,
	datad => \dBus[4]~input_o\,
	combout => \accReg~7_combout\);

-- Location: FF_X32_Y4_N25
\accReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \accReg~7_combout\,
	ena => \accReg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accReg(4));

-- Location: IOIBUF_X18_Y0_N22
\dBus[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dBus(5),
	o => \dBus[5]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\aluD[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aluD(5),
	o => \aluD[5]~input_o\);

-- Location: LCCOMB_X24_Y4_N4
\accReg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \accReg~8_combout\ = (\dBus[5]~input_o\ & ((\accReg~1_combout\) # ((\aluD[5]~input_o\ & \accReg~0_combout\)))) # (!\dBus[5]~input_o\ & (((\aluD[5]~input_o\ & \accReg~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dBus[5]~input_o\,
	datab => \accReg~1_combout\,
	datac => \aluD[5]~input_o\,
	datad => \accReg~0_combout\,
	combout => \accReg~8_combout\);

-- Location: FF_X24_Y4_N5
\accReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \accReg~8_combout\,
	ena => \accReg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accReg(5));

-- Location: IOIBUF_X16_Y0_N8
\dBus[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dBus(6),
	o => \dBus[6]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\aluD[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aluD(6),
	o => \aluD[6]~input_o\);

-- Location: LCCOMB_X24_Y4_N30
\accReg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \accReg~9_combout\ = (\accReg~0_combout\ & ((\aluD[6]~input_o\) # ((\accReg~1_combout\ & \dBus[6]~input_o\)))) # (!\accReg~0_combout\ & (\accReg~1_combout\ & (\dBus[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \accReg~0_combout\,
	datab => \accReg~1_combout\,
	datac => \dBus[6]~input_o\,
	datad => \aluD[6]~input_o\,
	combout => \accReg~9_combout\);

-- Location: FF_X24_Y4_N31
\accReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \accReg~9_combout\,
	ena => \accReg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accReg(6));

-- Location: IOIBUF_X23_Y0_N15
\dBus[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => dBus(7),
	o => \dBus[7]~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\aluD[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aluD(7),
	o => \aluD[7]~input_o\);

-- Location: LCCOMB_X24_Y4_N16
\accReg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \accReg~10_combout\ = (\accReg~0_combout\ & ((\aluD[7]~input_o\) # ((\accReg~1_combout\ & \dBus[7]~input_o\)))) # (!\accReg~0_combout\ & (\accReg~1_combout\ & (\dBus[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \accReg~0_combout\,
	datab => \accReg~1_combout\,
	datac => \dBus[7]~input_o\,
	datad => \aluD[7]~input_o\,
	combout => \accReg~10_combout\);

-- Location: FF_X24_Y4_N17
\accReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \accReg~10_combout\,
	ena => \accReg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => accReg(7));

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(3) <= \q[3]~output_o\;

ww_q(4) <= \q[4]~output_o\;

ww_q(5) <= \q[5]~output_o\;

ww_q(6) <= \q[6]~output_o\;

ww_q(7) <= \q[7]~output_o\;

dBus(0) <= \dBus[0]~output_o\;

dBus(1) <= \dBus[1]~output_o\;

dBus(2) <= \dBus[2]~output_o\;

dBus(3) <= \dBus[3]~output_o\;

dBus(4) <= \dBus[4]~output_o\;

dBus(5) <= \dBus[5]~output_o\;

dBus(6) <= \dBus[6]~output_o\;

dBus(7) <= \dBus[7]~output_o\;
END structure;


