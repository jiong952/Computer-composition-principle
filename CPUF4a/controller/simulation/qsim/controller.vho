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

-- DATE "12/19/2020 17:24:28"

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

ENTITY 	controller IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	mem_enD : OUT std_logic;
	mem_rw : OUT std_logic;
	pc_enA : OUT std_logic;
	pc_ld : OUT std_logic;
	pc_inc : OUT std_logic;
	ir_enA : OUT std_logic;
	ir_enD : OUT std_logic;
	ir_ld : OUT std_logic;
	ir_load : IN std_logic;
	ir_store : IN std_logic;
	ir_add : IN std_logic;
	ir_sub : IN std_logic;
	ir_mul : IN std_logic;
	ir_div : IN std_logic;
	ir_and : IN std_logic;
	ir_or : IN std_logic;
	ir_not : IN std_logic;
	ir_neg : IN std_logic;
	ir_halt : IN std_logic;
	ir_branch : IN std_logic;
	acc_enD : OUT std_logic;
	acc_ld : OUT std_logic;
	acc_selAlu : OUT std_logic;
	alu_op : OUT std_logic_vector(2 DOWNTO 0)
	);
END controller;

-- Design Ports Information
-- mem_enD	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_rw	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_enA	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_ld	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_inc	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_enA	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_enD	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_ld	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_enD	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_ld	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc_selAlu	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_op[0]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_op[1]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_op[2]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_store	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_load	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_mul	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_sub	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_add	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_or	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_and	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_div	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_not	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_halt	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_branch	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ir_neg	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF controller IS
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
SIGNAL ww_mem_enD : std_logic;
SIGNAL ww_mem_rw : std_logic;
SIGNAL ww_pc_enA : std_logic;
SIGNAL ww_pc_ld : std_logic;
SIGNAL ww_pc_inc : std_logic;
SIGNAL ww_ir_enA : std_logic;
SIGNAL ww_ir_enD : std_logic;
SIGNAL ww_ir_ld : std_logic;
SIGNAL ww_ir_load : std_logic;
SIGNAL ww_ir_store : std_logic;
SIGNAL ww_ir_add : std_logic;
SIGNAL ww_ir_sub : std_logic;
SIGNAL ww_ir_mul : std_logic;
SIGNAL ww_ir_div : std_logic;
SIGNAL ww_ir_and : std_logic;
SIGNAL ww_ir_or : std_logic;
SIGNAL ww_ir_not : std_logic;
SIGNAL ww_ir_neg : std_logic;
SIGNAL ww_ir_halt : std_logic;
SIGNAL ww_ir_branch : std_logic;
SIGNAL ww_acc_enD : std_logic;
SIGNAL ww_acc_ld : std_logic;
SIGNAL ww_acc_selAlu : std_logic;
SIGNAL ww_alu_op : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem_enD~output_o\ : std_logic;
SIGNAL \mem_rw~output_o\ : std_logic;
SIGNAL \pc_enA~output_o\ : std_logic;
SIGNAL \pc_ld~output_o\ : std_logic;
SIGNAL \pc_inc~output_o\ : std_logic;
SIGNAL \ir_enA~output_o\ : std_logic;
SIGNAL \ir_enD~output_o\ : std_logic;
SIGNAL \ir_ld~output_o\ : std_logic;
SIGNAL \acc_enD~output_o\ : std_logic;
SIGNAL \acc_ld~output_o\ : std_logic;
SIGNAL \acc_selAlu~output_o\ : std_logic;
SIGNAL \alu_op[0]~output_o\ : std_logic;
SIGNAL \alu_op[1]~output_o\ : std_logic;
SIGNAL \alu_op[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \ir_load~input_o\ : std_logic;
SIGNAL \ir_store~input_o\ : std_logic;
SIGNAL \ir_or~input_o\ : std_logic;
SIGNAL \ir_and~input_o\ : std_logic;
SIGNAL \ir_div~input_o\ : std_logic;
SIGNAL \ir_mul~input_o\ : std_logic;
SIGNAL \state~62_combout\ : std_logic;
SIGNAL \ir_add~input_o\ : std_logic;
SIGNAL \ir_sub~input_o\ : std_logic;
SIGNAL \state~61_combout\ : std_logic;
SIGNAL \ir_not~input_o\ : std_logic;
SIGNAL \ir_neg~input_o\ : std_logic;
SIGNAL \state~63_combout\ : std_logic;
SIGNAL \ir_halt~input_o\ : std_logic;
SIGNAL \ir_branch~input_o\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state~55_combout\ : std_logic;
SIGNAL \state~56_combout\ : std_logic;
SIGNAL \state~82_combout\ : std_logic;
SIGNAL \state.and0~q\ : std_logic;
SIGNAL \state~75_combout\ : std_logic;
SIGNAL \state.and1~q\ : std_logic;
SIGNAL \state~68_combout\ : std_logic;
SIGNAL \state.store1~q\ : std_logic;
SIGNAL \state.reset_state~0_combout\ : std_logic;
SIGNAL \state.reset_state~q\ : std_logic;
SIGNAL \state~60_combout\ : std_logic;
SIGNAL \state~64_combout\ : std_logic;
SIGNAL \state.branch0~q\ : std_logic;
SIGNAL \state~54_combout\ : std_logic;
SIGNAL \state.branch1~q\ : std_logic;
SIGNAL \ir_enA~2_combout\ : std_logic;
SIGNAL \state~76_combout\ : std_logic;
SIGNAL \state.load0~q\ : std_logic;
SIGNAL \state~69_combout\ : std_logic;
SIGNAL \state.load1~q\ : std_logic;
SIGNAL \state~57_combout\ : std_logic;
SIGNAL \state~58_combout\ : std_logic;
SIGNAL \state.not0~q\ : std_logic;
SIGNAL \state~59_combout\ : std_logic;
SIGNAL \state.not1~q\ : std_logic;
SIGNAL \state~65_combout\ : std_logic;
SIGNAL \state.negate0~q\ : std_logic;
SIGNAL \state~66_combout\ : std_logic;
SIGNAL \state.negate1~q\ : std_logic;
SIGNAL \state~81_combout\ : std_logic;
SIGNAL \state.or0~q\ : std_logic;
SIGNAL \state~74_combout\ : std_logic;
SIGNAL \state.or1~q\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \state~79_combout\ : std_logic;
SIGNAL \state.mul0~q\ : std_logic;
SIGNAL \state~72_combout\ : std_logic;
SIGNAL \state.mul1~q\ : std_logic;
SIGNAL \state~78_combout\ : std_logic;
SIGNAL \state.sub0~q\ : std_logic;
SIGNAL \state~71_combout\ : std_logic;
SIGNAL \state.sub1~q\ : std_logic;
SIGNAL \state~80_combout\ : std_logic;
SIGNAL \state.div0~q\ : std_logic;
SIGNAL \state~73_combout\ : std_logic;
SIGNAL \state.div1~q\ : std_logic;
SIGNAL \state~77_combout\ : std_logic;
SIGNAL \state.add0~q\ : std_logic;
SIGNAL \state~70_combout\ : std_logic;
SIGNAL \state.add1~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector0~4_combout\ : std_logic;
SIGNAL \state.fetch0~q\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \state.fetch1~q\ : std_logic;
SIGNAL \state~67_combout\ : std_logic;
SIGNAL \state.store0~q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \state.halt~q\ : std_logic;
SIGNAL \ir_enA~3_combout\ : std_logic;
SIGNAL \ir_enA~4_combout\ : std_logic;
SIGNAL \mem_enD~0_combout\ : std_logic;
SIGNAL \mem_enD~1_combout\ : std_logic;
SIGNAL \mem_rw~0_combout\ : std_logic;
SIGNAL \mem_rw~reg0_q\ : std_logic;
SIGNAL \ir_enA~5_combout\ : std_logic;
SIGNAL \acc_enD~0_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \alu_op[0]~4_combout\ : std_logic;
SIGNAL \alu_op[0]~3_combout\ : std_logic;
SIGNAL \alu_op[0]~5_combout\ : std_logic;
SIGNAL \alu_op[0]~6_combout\ : std_logic;
SIGNAL \alu_op[0]~7_combout\ : std_logic;
SIGNAL \alu_op[0]~8_combout\ : std_logic;
SIGNAL \alu_op[2]~1_combout\ : std_logic;
SIGNAL \alu_op[2]~0_combout\ : std_logic;
SIGNAL \alu_op[2]~2_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \alu_op[0]$latch~combout\ : std_logic;
SIGNAL \alu_op[1]~9_combout\ : std_logic;
SIGNAL \alu_op~10_combout\ : std_logic;
SIGNAL \alu_op[1]~11_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \alu_op[1]$latch~combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \alu_op[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_ir_enA~5_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~2_combout\ : std_logic;
SIGNAL \ALT_INV_acc_enD~0_combout\ : std_logic;
SIGNAL \ALT_INV_mem_enD~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
mem_enD <= ww_mem_enD;
mem_rw <= ww_mem_rw;
pc_enA <= ww_pc_enA;
pc_ld <= ww_pc_ld;
pc_inc <= ww_pc_inc;
ir_enA <= ww_ir_enA;
ir_enD <= ww_ir_enD;
ir_ld <= ww_ir_ld;
ww_ir_load <= ir_load;
ww_ir_store <= ir_store;
ww_ir_add <= ir_add;
ww_ir_sub <= ir_sub;
ww_ir_mul <= ir_mul;
ww_ir_div <= ir_div;
ww_ir_and <= ir_and;
ww_ir_or <= ir_or;
ww_ir_not <= ir_not;
ww_ir_neg <= ir_neg;
ww_ir_halt <= ir_halt;
ww_ir_branch <= ir_branch;
acc_enD <= ww_acc_enD;
acc_ld <= ww_acc_ld;
acc_selAlu <= ww_acc_selAlu;
alu_op <= ww_alu_op;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\ALT_INV_ir_enA~5_combout\ <= NOT \ir_enA~5_combout\;
\ALT_INV_Selector0~3_combout\ <= NOT \Selector0~3_combout\;
\ALT_INV_Selector0~2_combout\ <= NOT \Selector0~2_combout\;
\ALT_INV_acc_enD~0_combout\ <= NOT \acc_enD~0_combout\;
\ALT_INV_mem_enD~0_combout\ <= NOT \mem_enD~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X18_Y24_N23
\mem_enD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_enD~1_combout\,
	devoe => ww_devoe,
	o => \mem_enD~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\mem_rw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_rw~reg0_q\,
	devoe => ww_devoe,
	o => \mem_rw~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\pc_enA~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_mem_enD~0_combout\,
	devoe => ww_devoe,
	o => \pc_enA~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\pc_ld~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.branch0~q\,
	devoe => ww_devoe,
	o => \pc_ld~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\pc_inc~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.fetch1~q\,
	devoe => ww_devoe,
	o => \pc_inc~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\ir_enA~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ir_enA~5_combout\,
	devoe => ww_devoe,
	o => \ir_enA~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\ir_enD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.branch0~q\,
	devoe => ww_devoe,
	o => \ir_enD~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\ir_ld~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.fetch1~q\,
	devoe => ww_devoe,
	o => \ir_ld~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\acc_enD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_acc_enD~0_combout\,
	devoe => ww_devoe,
	o => \acc_enD~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\acc_ld~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Selector0~2_combout\,
	devoe => ww_devoe,
	o => \acc_ld~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\acc_selAlu~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Selector0~3_combout\,
	devoe => ww_devoe,
	o => \acc_selAlu~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\alu_op[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_op[0]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_op[0]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\alu_op[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_op[1]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_op[1]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\alu_op[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_op[2]$latch~combout\,
	devoe => ww_devoe,
	o => \alu_op[2]~output_o\);

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

-- Location: IOIBUF_X13_Y24_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X34_Y18_N15
\ir_load~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_load,
	o => \ir_load~input_o\);

-- Location: IOIBUF_X34_Y18_N1
\ir_store~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_store,
	o => \ir_store~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\ir_or~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_or,
	o => \ir_or~input_o\);

-- Location: IOIBUF_X23_Y24_N15
\ir_and~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_and,
	o => \ir_and~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\ir_div~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_div,
	o => \ir_div~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\ir_mul~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_mul,
	o => \ir_mul~input_o\);

-- Location: LCCOMB_X19_Y19_N30
\state~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~62_combout\ = (!\ir_or~input_o\ & (!\ir_and~input_o\ & (!\ir_div~input_o\ & !\ir_mul~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_or~input_o\,
	datab => \ir_and~input_o\,
	datac => \ir_div~input_o\,
	datad => \ir_mul~input_o\,
	combout => \state~62_combout\);

-- Location: IOIBUF_X28_Y24_N8
\ir_add~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_add,
	o => \ir_add~input_o\);

-- Location: IOIBUF_X23_Y24_N8
\ir_sub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_sub,
	o => \ir_sub~input_o\);

-- Location: LCCOMB_X19_Y19_N4
\state~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~61_combout\ = (!\ir_add~input_o\ & (!\ir_load~input_o\ & (!\ir_store~input_o\ & !\ir_sub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_add~input_o\,
	datab => \ir_load~input_o\,
	datac => \ir_store~input_o\,
	datad => \ir_sub~input_o\,
	combout => \state~61_combout\);

-- Location: IOIBUF_X3_Y24_N22
\ir_not~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_not,
	o => \ir_not~input_o\);

-- Location: IOIBUF_X23_Y24_N1
\ir_neg~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_neg,
	o => \ir_neg~input_o\);

-- Location: LCCOMB_X19_Y19_N24
\state~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~63_combout\ = (\state~62_combout\ & (\state~61_combout\ & (!\ir_not~input_o\ & !\ir_neg~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~62_combout\,
	datab => \state~61_combout\,
	datac => \ir_not~input_o\,
	datad => \ir_neg~input_o\,
	combout => \state~63_combout\);

-- Location: IOIBUF_X11_Y24_N15
\ir_halt~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_halt,
	o => \ir_halt~input_o\);

-- Location: IOIBUF_X18_Y24_N15
\ir_branch~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ir_branch,
	o => \ir_branch~input_o\);

-- Location: LCCOMB_X18_Y19_N14
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\ir_halt~input_o\ & !\ir_branch~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_halt~input_o\,
	datad => \ir_branch~input_o\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X19_Y19_N2
\state~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~55_combout\ = (!\reset~input_o\ & (!\ir_load~input_o\ & (!\ir_store~input_o\ & \state.fetch1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ir_load~input_o\,
	datac => \ir_store~input_o\,
	datad => \state.fetch1~q\,
	combout => \state~55_combout\);

-- Location: LCCOMB_X19_Y19_N20
\state~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~56_combout\ = (!\ir_sub~input_o\ & (!\ir_mul~input_o\ & (!\ir_add~input_o\ & \state~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_sub~input_o\,
	datab => \ir_mul~input_o\,
	datac => \ir_add~input_o\,
	datad => \state~55_combout\,
	combout => \state~56_combout\);

-- Location: LCCOMB_X19_Y19_N26
\state~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~82_combout\ = (!\ir_div~input_o\ & (\ir_and~input_o\ & \state~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_div~input_o\,
	datac => \ir_and~input_o\,
	datad => \state~56_combout\,
	combout => \state~82_combout\);

-- Location: FF_X19_Y19_N27
\state.and0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.and0~q\);

-- Location: LCCOMB_X16_Y19_N24
\state~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~75_combout\ = (!\reset~input_o\ & \state.and0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \state.and0~q\,
	combout => \state~75_combout\);

-- Location: FF_X16_Y19_N25
\state.and1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.and1~q\);

-- Location: LCCOMB_X18_Y19_N12
\state~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~68_combout\ = (!\reset~input_o\ & \state.store0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \state.store0~q\,
	combout => \state~68_combout\);

-- Location: FF_X18_Y19_N13
\state.store1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.store1~q\);

-- Location: LCCOMB_X17_Y19_N14
\state.reset_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.reset_state~0_combout\ = !\reset~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	combout => \state.reset_state~0_combout\);

-- Location: FF_X17_Y19_N15
\state.reset_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.reset_state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.reset_state~q\);

-- Location: LCCOMB_X18_Y19_N4
\state~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~60_combout\ = (\ir_halt~input_o\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_halt~input_o\,
	datac => \reset~input_o\,
	combout => \state~60_combout\);

-- Location: LCCOMB_X18_Y19_N2
\state~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~64_combout\ = (!\Selector1~0_combout\ & (\state~63_combout\ & (!\state~60_combout\ & \state.fetch1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \state~63_combout\,
	datac => \state~60_combout\,
	datad => \state.fetch1~q\,
	combout => \state~64_combout\);

-- Location: FF_X18_Y19_N3
\state.branch0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.branch0~q\);

-- Location: LCCOMB_X18_Y19_N6
\state~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~54_combout\ = (!\reset~input_o\ & \state.branch0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \state.branch0~q\,
	combout => \state~54_combout\);

-- Location: FF_X18_Y19_N7
\state.branch1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.branch1~q\);

-- Location: LCCOMB_X17_Y19_N8
\ir_enA~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_enA~2_combout\ = (\state.reset_state~q\ & !\state.branch1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.reset_state~q\,
	datad => \state.branch1~q\,
	combout => \ir_enA~2_combout\);

-- Location: LCCOMB_X18_Y19_N22
\state~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~76_combout\ = (\ir_load~input_o\ & (!\reset~input_o\ & \state.fetch1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_load~input_o\,
	datac => \reset~input_o\,
	datad => \state.fetch1~q\,
	combout => \state~76_combout\);

-- Location: FF_X18_Y19_N23
\state.load0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.load0~q\);

-- Location: LCCOMB_X17_Y19_N12
\state~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~69_combout\ = (!\reset~input_o\ & \state.load0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \state.load0~q\,
	combout => \state~69_combout\);

-- Location: FF_X17_Y19_N13
\state.load1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.load1~q\);

-- Location: LCCOMB_X19_Y19_N10
\state~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~57_combout\ = (!\ir_or~input_o\ & (!\ir_and~input_o\ & (!\ir_div~input_o\ & \state~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_or~input_o\,
	datab => \ir_and~input_o\,
	datac => \ir_div~input_o\,
	datad => \state~56_combout\,
	combout => \state~57_combout\);

-- Location: LCCOMB_X19_Y19_N18
\state~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~58_combout\ = (\ir_not~input_o\ & \state~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ir_not~input_o\,
	datad => \state~57_combout\,
	combout => \state~58_combout\);

-- Location: FF_X19_Y19_N19
\state.not0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.not0~q\);

-- Location: LCCOMB_X18_Y19_N24
\state~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~59_combout\ = (!\reset~input_o\ & \state.not0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \state.not0~q\,
	combout => \state~59_combout\);

-- Location: FF_X18_Y19_N25
\state.not1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.not1~q\);

-- Location: LCCOMB_X19_Y19_N8
\state~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~65_combout\ = (\ir_neg~input_o\ & (!\ir_not~input_o\ & \state~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir_neg~input_o\,
	datac => \ir_not~input_o\,
	datad => \state~57_combout\,
	combout => \state~65_combout\);

-- Location: FF_X19_Y19_N9
\state.negate0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.negate0~q\);

-- Location: LCCOMB_X17_Y19_N30
\state~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~66_combout\ = (!\reset~input_o\ & \state.negate0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \state.negate0~q\,
	combout => \state~66_combout\);

-- Location: FF_X17_Y19_N31
\state.negate1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.negate1~q\);

-- Location: LCCOMB_X19_Y19_N16
\state~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~81_combout\ = (\ir_or~input_o\ & (!\ir_and~input_o\ & (!\ir_div~input_o\ & \state~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_or~input_o\,
	datab => \ir_and~input_o\,
	datac => \ir_div~input_o\,
	datad => \state~56_combout\,
	combout => \state~81_combout\);

-- Location: FF_X19_Y19_N17
\state.or0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.or0~q\);

-- Location: LCCOMB_X17_Y19_N28
\state~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~74_combout\ = (!\reset~input_o\ & \state.or0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \state.or0~q\,
	combout => \state~74_combout\);

-- Location: FF_X17_Y19_N29
\state.or1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.or1~q\);

-- Location: LCCOMB_X17_Y19_N26
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\state.negate1~q\ & !\state.or1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.negate1~q\,
	datad => \state.or1~q\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X19_Y19_N12
\state~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~79_combout\ = (!\ir_add~input_o\ & (\ir_mul~input_o\ & (\state~55_combout\ & !\ir_sub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_add~input_o\,
	datab => \ir_mul~input_o\,
	datac => \state~55_combout\,
	datad => \ir_sub~input_o\,
	combout => \state~79_combout\);

-- Location: FF_X19_Y19_N13
\state.mul0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.mul0~q\);

-- Location: LCCOMB_X17_Y19_N22
\state~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~72_combout\ = (!\reset~input_o\ & \state.mul0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \state.mul0~q\,
	combout => \state~72_combout\);

-- Location: FF_X17_Y19_N23
\state.mul1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.mul1~q\);

-- Location: LCCOMB_X19_Y19_N14
\state~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~78_combout\ = (\ir_sub~input_o\ & (\state~55_combout\ & !\ir_add~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_sub~input_o\,
	datac => \state~55_combout\,
	datad => \ir_add~input_o\,
	combout => \state~78_combout\);

-- Location: FF_X19_Y19_N15
\state.sub0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.sub0~q\);

-- Location: LCCOMB_X17_Y19_N24
\state~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~71_combout\ = (!\reset~input_o\ & \state.sub0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \state.sub0~q\,
	combout => \state~71_combout\);

-- Location: FF_X17_Y19_N25
\state.sub1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.sub1~q\);

-- Location: LCCOMB_X19_Y19_N22
\state~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~80_combout\ = (\ir_div~input_o\ & \state~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ir_div~input_o\,
	datad => \state~56_combout\,
	combout => \state~80_combout\);

-- Location: FF_X19_Y19_N23
\state.div0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.div0~q\);

-- Location: LCCOMB_X17_Y19_N4
\state~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~73_combout\ = (!\reset~input_o\ & \state.div0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \state.div0~q\,
	combout => \state~73_combout\);

-- Location: FF_X17_Y19_N5
\state.div1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.div1~q\);

-- Location: LCCOMB_X18_Y19_N16
\state~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~77_combout\ = (\ir_add~input_o\ & \state~55_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ir_add~input_o\,
	datad => \state~55_combout\,
	combout => \state~77_combout\);

-- Location: FF_X18_Y19_N17
\state.add0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.add0~q\);

-- Location: LCCOMB_X17_Y19_N2
\state~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~70_combout\ = (!\reset~input_o\ & \state.add0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \state.add0~q\,
	combout => \state~70_combout\);

-- Location: FF_X17_Y19_N3
\state.add1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.add1~q\);

-- Location: LCCOMB_X17_Y19_N10
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\state.mul1~q\ & (!\state.sub1~q\ & (!\state.div1~q\ & !\state.add1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.mul1~q\,
	datab => \state.sub1~q\,
	datac => \state.div1~q\,
	datad => \state.add1~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X17_Y19_N20
\Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (!\state.load1~q\ & (!\state.not1~q\ & (\Selector0~1_combout\ & \Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.load1~q\,
	datab => \state.not1~q\,
	datac => \Selector0~1_combout\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X17_Y19_N16
\Selector0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~4_combout\ = (\state.and1~q\) # ((\state.store1~q\) # ((!\Selector0~2_combout\) # (!\ir_enA~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.and1~q\,
	datab => \state.store1~q\,
	datac => \ir_enA~2_combout\,
	datad => \Selector0~2_combout\,
	combout => \Selector0~4_combout\);

-- Location: FF_X17_Y19_N17
\state.fetch0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~4_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.fetch0~q\);

-- Location: LCCOMB_X19_Y19_N28
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\state.fetch0~q\) # ((\state~63_combout\ & (\Selector1~0_combout\ & \state.fetch1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~63_combout\,
	datab => \Selector1~0_combout\,
	datac => \state.fetch1~q\,
	datad => \state.fetch0~q\,
	combout => \Selector1~1_combout\);

-- Location: FF_X19_Y19_N29
\state.fetch1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.fetch1~q\);

-- Location: LCCOMB_X19_Y19_N6
\state~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~67_combout\ = (!\reset~input_o\ & (!\ir_load~input_o\ & (\ir_store~input_o\ & \state.fetch1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ir_load~input_o\,
	datac => \ir_store~input_o\,
	datad => \state.fetch1~q\,
	combout => \state~67_combout\);

-- Location: FF_X19_Y19_N7
\state.store0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.store0~q\);

-- Location: LCCOMB_X18_Y19_N8
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\state.halt~q\) # ((\ir_halt~input_o\ & (\state~63_combout\ & \state.fetch1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_halt~input_o\,
	datab => \state~63_combout\,
	datac => \state.halt~q\,
	datad => \state.fetch1~q\,
	combout => \Selector12~0_combout\);

-- Location: FF_X18_Y19_N9
\state.halt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector12~0_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.halt~q\);

-- Location: LCCOMB_X18_Y19_N20
\ir_enA~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_enA~3_combout\ = (!\state.not1~q\ & (!\state.branch0~q\ & (!\state.halt~q\ & !\state.not0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.not1~q\,
	datab => \state.branch0~q\,
	datac => \state.halt~q\,
	datad => \state.not0~q\,
	combout => \ir_enA~3_combout\);

-- Location: LCCOMB_X18_Y19_N18
\ir_enA~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_enA~4_combout\ = (\ir_enA~2_combout\ & (!\state.negate1~q\ & (!\state.negate0~q\ & \ir_enA~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir_enA~2_combout\,
	datab => \state.negate1~q\,
	datac => \state.negate0~q\,
	datad => \ir_enA~3_combout\,
	combout => \ir_enA~4_combout\);

-- Location: LCCOMB_X18_Y19_N30
\mem_enD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem_enD~0_combout\ = (!\state.fetch0~q\ & !\state.fetch1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.fetch0~q\,
	datad => \state.fetch1~q\,
	combout => \mem_enD~0_combout\);

-- Location: LCCOMB_X18_Y19_N0
\mem_enD~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem_enD~1_combout\ = ((!\state.store0~q\ & (\ir_enA~4_combout\ & !\state.store1~q\))) # (!\mem_enD~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.store0~q\,
	datab => \ir_enA~4_combout\,
	datac => \mem_enD~0_combout\,
	datad => \state.store1~q\,
	combout => \mem_enD~1_combout\);

-- Location: LCCOMB_X19_Y19_N0
\mem_rw~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem_rw~0_combout\ = !\state.store0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.store0~q\,
	combout => \mem_rw~0_combout\);

-- Location: FF_X19_Y19_N1
\mem_rw~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \mem_rw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_rw~reg0_q\);

-- Location: LCCOMB_X18_Y19_N26
\ir_enA~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ir_enA~5_combout\ = (\state.fetch1~q\) # ((\state.fetch0~q\) # (!\ir_enA~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.fetch1~q\,
	datac => \state.fetch0~q\,
	datad => \ir_enA~4_combout\,
	combout => \ir_enA~5_combout\);

-- Location: LCCOMB_X18_Y19_N10
\acc_enD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc_enD~0_combout\ = (!\state.store0~q\ & !\state.store1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.store0~q\,
	datad => \state.store1~q\,
	combout => \acc_enD~0_combout\);

-- Location: LCCOMB_X18_Y19_N28
\Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (\Selector0~0_combout\ & (!\state.negate1~q\ & (!\state.or1~q\ & !\state.not1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \state.negate1~q\,
	datac => \state.or1~q\,
	datad => \state.not1~q\,
	combout => \Selector0~3_combout\);

-- Location: LCCOMB_X16_Y19_N28
\alu_op[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_op[0]~4_combout\ = (!\state.mul1~q\ & !\state.mul0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.mul1~q\,
	datad => \state.mul0~q\,
	combout => \alu_op[0]~4_combout\);

-- Location: LCCOMB_X17_Y19_N18
\alu_op[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_op[0]~3_combout\ = (\state.and1~q\) # ((\state.and0~q\) # ((!\state.or1~q\ & !\state.or0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.and1~q\,
	datab => \state.or1~q\,
	datac => \state.or0~q\,
	datad => \state.and0~q\,
	combout => \alu_op[0]~3_combout\);

-- Location: LCCOMB_X17_Y19_N0
\alu_op[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_op[0]~5_combout\ = (!\state.negate1~q\ & (\alu_op[0]~4_combout\ & (\alu_op[0]~3_combout\ & !\state.negate0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.negate1~q\,
	datab => \alu_op[0]~4_combout\,
	datac => \alu_op[0]~3_combout\,
	datad => \state.negate0~q\,
	combout => \alu_op[0]~5_combout\);

-- Location: LCCOMB_X16_Y19_N26
\alu_op[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_op[0]~6_combout\ = (!\state.div1~q\ & !\state.div0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.div1~q\,
	datad => \state.div0~q\,
	combout => \alu_op[0]~6_combout\);

-- Location: LCCOMB_X16_Y19_N20
\alu_op[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_op[0]~7_combout\ = (\state.sub0~q\) # ((\state.sub1~q\) # ((\alu_op[0]~4_combout\ & !\alu_op[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.sub0~q\,
	datab => \alu_op[0]~4_combout\,
	datac => \alu_op[0]~6_combout\,
	datad => \state.sub1~q\,
	combout => \alu_op[0]~7_combout\);

-- Location: LCCOMB_X16_Y19_N18
\alu_op[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_op[0]~8_combout\ = (!\state.add1~q\ & (!\state.add0~q\ & ((\alu_op[0]~5_combout\) # (\alu_op[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.add1~q\,
	datab => \alu_op[0]~5_combout\,
	datac => \state.add0~q\,
	datad => \alu_op[0]~7_combout\,
	combout => \alu_op[0]~8_combout\);

-- Location: LCCOMB_X16_Y19_N0
\alu_op[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_op[2]~1_combout\ = (\state.mul0~q\) # ((\state.div0~q\) # ((\state.or0~q\) # (\state.sub0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.mul0~q\,
	datab => \state.div0~q\,
	datac => \state.or0~q\,
	datad => \state.sub0~q\,
	combout => \alu_op[2]~1_combout\);

-- Location: LCCOMB_X16_Y19_N22
\alu_op[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_op[2]~0_combout\ = (\state.negate0~q\) # ((\state.and1~q\) # ((\state.add0~q\) # (\state.and0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.negate0~q\,
	datab => \state.and1~q\,
	datac => \state.add0~q\,
	datad => \state.and0~q\,
	combout => \alu_op[2]~0_combout\);

-- Location: LCCOMB_X16_Y19_N2
\alu_op[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_op[2]~2_combout\ = (\alu_op[2]~1_combout\) # (((\alu_op[2]~0_combout\) # (\state.not0~q\)) # (!\Selector0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[2]~1_combout\,
	datab => \Selector0~3_combout\,
	datac => \alu_op[2]~0_combout\,
	datad => \state.not0~q\,
	combout => \alu_op[2]~2_combout\);

-- Location: LCCOMB_X16_Y23_N18
\comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\alu_op[0]~8_combout\ & \alu_op[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_op[0]~8_combout\,
	datad => \alu_op[2]~2_combout\,
	combout => \comb~1_combout\);

-- Location: LCCOMB_X16_Y23_N8
\comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (!\alu_op[0]~8_combout\ & \alu_op[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_op[0]~8_combout\,
	datad => \alu_op[2]~2_combout\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X16_Y23_N12
\alu_op[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_op[0]$latch~combout\ = (!\comb~0_combout\ & ((\comb~1_combout\) # (\alu_op[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~1_combout\,
	datac => \comb~0_combout\,
	datad => \alu_op[0]$latch~combout\,
	combout => \alu_op[0]$latch~combout\);

-- Location: LCCOMB_X16_Y19_N12
\alu_op[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_op[1]~9_combout\ = (!\state.add1~q\ & (!\state.sub1~q\ & (!\state.add0~q\ & !\state.sub0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.add1~q\,
	datab => \state.sub1~q\,
	datac => \state.add0~q\,
	datad => \state.sub0~q\,
	combout => \alu_op[1]~9_combout\);

-- Location: LCCOMB_X17_Y19_N6
\alu_op~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_op~10_combout\ = (!\state.negate0~q\ & (!\state.and0~q\ & (!\state.negate1~q\ & !\state.and1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.negate0~q\,
	datab => \state.and0~q\,
	datac => \state.negate1~q\,
	datad => \state.and1~q\,
	combout => \alu_op~10_combout\);

-- Location: LCCOMB_X16_Y19_N14
\alu_op[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_op[1]~11_combout\ = (\alu_op[1]~9_combout\ & (((\alu_op~10_combout\) # (!\alu_op[0]~6_combout\)) # (!\alu_op[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~9_combout\,
	datab => \alu_op[0]~4_combout\,
	datac => \alu_op[0]~6_combout\,
	datad => \alu_op~10_combout\,
	combout => \alu_op[1]~11_combout\);

-- Location: LCCOMB_X16_Y19_N6
\comb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (\alu_op[1]~11_combout\ & \alu_op[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_op[1]~11_combout\,
	datad => \alu_op[2]~2_combout\,
	combout => \comb~3_combout\);

-- Location: LCCOMB_X16_Y19_N8
\comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (!\alu_op[1]~11_combout\ & \alu_op[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_op[1]~11_combout\,
	datad => \alu_op[2]~2_combout\,
	combout => \comb~2_combout\);

-- Location: LCCOMB_X16_Y19_N16
\alu_op[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_op[1]$latch~combout\ = (!\comb~2_combout\ & ((\comb~3_combout\) # (\alu_op[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~3_combout\,
	datac => \comb~2_combout\,
	datad => \alu_op[1]$latch~combout\,
	combout => \alu_op[1]$latch~combout\);

-- Location: LCCOMB_X16_Y19_N30
\comb~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = (\alu_op[1]~9_combout\ & (\alu_op[0]~4_combout\ & (\alu_op[0]~6_combout\ & \alu_op[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~9_combout\,
	datab => \alu_op[0]~4_combout\,
	datac => \alu_op[0]~6_combout\,
	datad => \alu_op[2]~2_combout\,
	combout => \comb~5_combout\);

-- Location: LCCOMB_X16_Y19_N4
\comb~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (\alu_op[2]~2_combout\ & (((!\alu_op[0]~6_combout\) # (!\alu_op[0]~4_combout\)) # (!\alu_op[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op[1]~9_combout\,
	datab => \alu_op[0]~4_combout\,
	datac => \alu_op[0]~6_combout\,
	datad => \alu_op[2]~2_combout\,
	combout => \comb~4_combout\);

-- Location: LCCOMB_X16_Y19_N10
\alu_op[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_op[2]$latch~combout\ = (!\comb~4_combout\ & ((\comb~5_combout\) # (\alu_op[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~5_combout\,
	datac => \comb~4_combout\,
	datad => \alu_op[2]$latch~combout\,
	combout => \alu_op[2]$latch~combout\);

ww_mem_enD <= \mem_enD~output_o\;

ww_mem_rw <= \mem_rw~output_o\;

ww_pc_enA <= \pc_enA~output_o\;

ww_pc_ld <= \pc_ld~output_o\;

ww_pc_inc <= \pc_inc~output_o\;

ww_ir_enA <= \ir_enA~output_o\;

ww_ir_enD <= \ir_enD~output_o\;

ww_ir_ld <= \ir_ld~output_o\;

ww_acc_enD <= \acc_enD~output_o\;

ww_acc_ld <= \acc_ld~output_o\;

ww_acc_selAlu <= \acc_selAlu~output_o\;

ww_alu_op(0) <= \alu_op[0]~output_o\;

ww_alu_op(1) <= \alu_op[1]~output_o\;

ww_alu_op(2) <= \alu_op[2]~output_o\;
END structure;


