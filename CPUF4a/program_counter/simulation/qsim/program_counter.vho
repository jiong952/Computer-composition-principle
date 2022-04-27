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

-- DATE "12/19/2020 14:10:50"

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

ENTITY 	program_counter IS
    PORT (
	clk : IN std_logic;
	en_A : IN std_logic;
	ld : IN std_logic;
	inc : IN std_logic;
	reset : IN std_logic;
	aBus : OUT std_logic_vector(7 DOWNTO 0);
	dBus : IN std_logic_vector(7 DOWNTO 0)
	);
END program_counter;

-- Design Ports Information
-- aBus[0]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aBus[1]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aBus[2]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aBus[3]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aBus[4]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aBus[5]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aBus[6]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aBus[7]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_A	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inc	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[0]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[1]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[2]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[3]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[4]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[5]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[6]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dBus[7]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF program_counter IS
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
SIGNAL ww_ld : std_logic;
SIGNAL ww_inc : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_aBus : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dBus : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \aBus[0]~output_o\ : std_logic;
SIGNAL \aBus[1]~output_o\ : std_logic;
SIGNAL \aBus[2]~output_o\ : std_logic;
SIGNAL \aBus[3]~output_o\ : std_logic;
SIGNAL \aBus[4]~output_o\ : std_logic;
SIGNAL \aBus[5]~output_o\ : std_logic;
SIGNAL \aBus[6]~output_o\ : std_logic;
SIGNAL \aBus[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inc~input_o\ : std_logic;
SIGNAL \pcReg[0]~8_combout\ : std_logic;
SIGNAL \dBus[0]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \ld~input_o\ : std_logic;
SIGNAL \en_A~input_o\ : std_logic;
SIGNAL \pcReg[0]~9\ : std_logic;
SIGNAL \pcReg[1]~10_combout\ : std_logic;
SIGNAL \dBus[1]~input_o\ : std_logic;
SIGNAL \pcReg[1]~11\ : std_logic;
SIGNAL \pcReg[2]~12_combout\ : std_logic;
SIGNAL \dBus[2]~input_o\ : std_logic;
SIGNAL \pcReg[2]~13\ : std_logic;
SIGNAL \pcReg[3]~14_combout\ : std_logic;
SIGNAL \dBus[3]~input_o\ : std_logic;
SIGNAL \pcReg[3]~15\ : std_logic;
SIGNAL \pcReg[4]~16_combout\ : std_logic;
SIGNAL \dBus[4]~input_o\ : std_logic;
SIGNAL \pcReg[4]~17\ : std_logic;
SIGNAL \pcReg[5]~18_combout\ : std_logic;
SIGNAL \dBus[5]~input_o\ : std_logic;
SIGNAL \pcReg[5]~19\ : std_logic;
SIGNAL \pcReg[6]~20_combout\ : std_logic;
SIGNAL \dBus[6]~input_o\ : std_logic;
SIGNAL \pcReg[6]~21\ : std_logic;
SIGNAL \pcReg[7]~22_combout\ : std_logic;
SIGNAL \dBus[7]~input_o\ : std_logic;
SIGNAL pcReg : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_en_A <= en_A;
ww_ld <= ld;
ww_inc <= inc;
ww_reset <= reset;
aBus <= ww_aBus;
ww_dBus <= dBus;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y4_N23
\aBus[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pcReg(0),
	oe => \en_A~input_o\,
	devoe => ww_devoe,
	o => \aBus[0]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\aBus[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pcReg(1),
	oe => \en_A~input_o\,
	devoe => ww_devoe,
	o => \aBus[1]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\aBus[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pcReg(2),
	oe => \en_A~input_o\,
	devoe => ww_devoe,
	o => \aBus[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\aBus[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pcReg(3),
	oe => \en_A~input_o\,
	devoe => ww_devoe,
	o => \aBus[3]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\aBus[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pcReg(4),
	oe => \en_A~input_o\,
	devoe => ww_devoe,
	o => \aBus[4]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\aBus[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pcReg(5),
	oe => \en_A~input_o\,
	devoe => ww_devoe,
	o => \aBus[5]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\aBus[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pcReg(6),
	oe => \en_A~input_o\,
	devoe => ww_devoe,
	o => \aBus[6]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\aBus[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => pcReg(7),
	oe => \en_A~input_o\,
	devoe => ww_devoe,
	o => \aBus[7]~output_o\);

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

-- Location: IOIBUF_X34_Y3_N22
\inc~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inc,
	o => \inc~input_o\);

-- Location: LCCOMB_X33_Y4_N10
\pcReg[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcReg[0]~8_combout\ = (pcReg(0) & (\inc~input_o\ $ (VCC))) # (!pcReg(0) & (\inc~input_o\ & VCC))
-- \pcReg[0]~9\ = CARRY((pcReg(0) & \inc~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pcReg(0),
	datab => \inc~input_o\,
	datad => VCC,
	combout => \pcReg[0]~8_combout\,
	cout => \pcReg[0]~9\);

-- Location: IOIBUF_X34_Y2_N15
\dBus[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dBus(0),
	o => \dBus[0]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\ld~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ld,
	o => \ld~input_o\);

-- Location: FF_X33_Y4_N11
\pcReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pcReg[0]~8_combout\,
	asdata => \dBus[0]~input_o\,
	sclr => \reset~input_o\,
	sload => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pcReg(0));

-- Location: IOIBUF_X34_Y17_N22
\en_A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en_A,
	o => \en_A~input_o\);

-- Location: LCCOMB_X33_Y4_N12
\pcReg[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcReg[1]~10_combout\ = (pcReg(1) & (!\pcReg[0]~9\)) # (!pcReg(1) & ((\pcReg[0]~9\) # (GND)))
-- \pcReg[1]~11\ = CARRY((!\pcReg[0]~9\) # (!pcReg(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pcReg(1),
	datad => VCC,
	cin => \pcReg[0]~9\,
	combout => \pcReg[1]~10_combout\,
	cout => \pcReg[1]~11\);

-- Location: IOIBUF_X32_Y0_N8
\dBus[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dBus(1),
	o => \dBus[1]~input_o\);

-- Location: FF_X33_Y4_N13
\pcReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pcReg[1]~10_combout\,
	asdata => \dBus[1]~input_o\,
	sclr => \reset~input_o\,
	sload => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pcReg(1));

-- Location: LCCOMB_X33_Y4_N14
\pcReg[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcReg[2]~12_combout\ = (pcReg(2) & (\pcReg[1]~11\ $ (GND))) # (!pcReg(2) & (!\pcReg[1]~11\ & VCC))
-- \pcReg[2]~13\ = CARRY((pcReg(2) & !\pcReg[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pcReg(2),
	datad => VCC,
	cin => \pcReg[1]~11\,
	combout => \pcReg[2]~12_combout\,
	cout => \pcReg[2]~13\);

-- Location: IOIBUF_X30_Y0_N8
\dBus[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dBus(2),
	o => \dBus[2]~input_o\);

-- Location: FF_X33_Y4_N15
\pcReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pcReg[2]~12_combout\,
	asdata => \dBus[2]~input_o\,
	sclr => \reset~input_o\,
	sload => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pcReg(2));

-- Location: LCCOMB_X33_Y4_N16
\pcReg[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcReg[3]~14_combout\ = (pcReg(3) & (!\pcReg[2]~13\)) # (!pcReg(3) & ((\pcReg[2]~13\) # (GND)))
-- \pcReg[3]~15\ = CARRY((!\pcReg[2]~13\) # (!pcReg(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pcReg(3),
	datad => VCC,
	cin => \pcReg[2]~13\,
	combout => \pcReg[3]~14_combout\,
	cout => \pcReg[3]~15\);

-- Location: IOIBUF_X32_Y0_N22
\dBus[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dBus(3),
	o => \dBus[3]~input_o\);

-- Location: FF_X33_Y4_N17
\pcReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pcReg[3]~14_combout\,
	asdata => \dBus[3]~input_o\,
	sclr => \reset~input_o\,
	sload => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pcReg(3));

-- Location: LCCOMB_X33_Y4_N18
\pcReg[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcReg[4]~16_combout\ = (pcReg(4) & (\pcReg[3]~15\ $ (GND))) # (!pcReg(4) & (!\pcReg[3]~15\ & VCC))
-- \pcReg[4]~17\ = CARRY((pcReg(4) & !\pcReg[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pcReg(4),
	datad => VCC,
	cin => \pcReg[3]~15\,
	combout => \pcReg[4]~16_combout\,
	cout => \pcReg[4]~17\);

-- Location: IOIBUF_X34_Y2_N22
\dBus[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dBus(4),
	o => \dBus[4]~input_o\);

-- Location: FF_X33_Y4_N19
\pcReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pcReg[4]~16_combout\,
	asdata => \dBus[4]~input_o\,
	sclr => \reset~input_o\,
	sload => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pcReg(4));

-- Location: LCCOMB_X33_Y4_N20
\pcReg[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcReg[5]~18_combout\ = (pcReg(5) & (!\pcReg[4]~17\)) # (!pcReg(5) & ((\pcReg[4]~17\) # (GND)))
-- \pcReg[5]~19\ = CARRY((!\pcReg[4]~17\) # (!pcReg(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pcReg(5),
	datad => VCC,
	cin => \pcReg[4]~17\,
	combout => \pcReg[5]~18_combout\,
	cout => \pcReg[5]~19\);

-- Location: IOIBUF_X30_Y0_N1
\dBus[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dBus(5),
	o => \dBus[5]~input_o\);

-- Location: FF_X33_Y4_N21
\pcReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pcReg[5]~18_combout\,
	asdata => \dBus[5]~input_o\,
	sclr => \reset~input_o\,
	sload => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pcReg(5));

-- Location: LCCOMB_X33_Y4_N22
\pcReg[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcReg[6]~20_combout\ = (pcReg(6) & (\pcReg[5]~19\ $ (GND))) # (!pcReg(6) & (!\pcReg[5]~19\ & VCC))
-- \pcReg[6]~21\ = CARRY((pcReg(6) & !\pcReg[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pcReg(6),
	datad => VCC,
	cin => \pcReg[5]~19\,
	combout => \pcReg[6]~20_combout\,
	cout => \pcReg[6]~21\);

-- Location: IOIBUF_X34_Y12_N22
\dBus[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dBus(6),
	o => \dBus[6]~input_o\);

-- Location: FF_X33_Y4_N23
\pcReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pcReg[6]~20_combout\,
	asdata => \dBus[6]~input_o\,
	sclr => \reset~input_o\,
	sload => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pcReg(6));

-- Location: LCCOMB_X33_Y4_N24
\pcReg[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcReg[7]~22_combout\ = \pcReg[6]~21\ $ (pcReg(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => pcReg(7),
	cin => \pcReg[6]~21\,
	combout => \pcReg[7]~22_combout\);

-- Location: IOIBUF_X34_Y12_N15
\dBus[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dBus(7),
	o => \dBus[7]~input_o\);

-- Location: FF_X33_Y4_N25
\pcReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pcReg[7]~22_combout\,
	asdata => \dBus[7]~input_o\,
	sclr => \reset~input_o\,
	sload => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pcReg(7));

ww_aBus(0) <= \aBus[0]~output_o\;

ww_aBus(1) <= \aBus[1]~output_o\;

ww_aBus(2) <= \aBus[2]~output_o\;

ww_aBus(3) <= \aBus[3]~output_o\;

ww_aBus(4) <= \aBus[4]~output_o\;

ww_aBus(5) <= \aBus[5]~output_o\;

ww_aBus(6) <= \aBus[6]~output_o\;

ww_aBus(7) <= \aBus[7]~output_o\;
END structure;


