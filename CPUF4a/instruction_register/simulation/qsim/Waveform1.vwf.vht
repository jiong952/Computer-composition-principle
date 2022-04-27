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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/19/2020 15:08:50"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          instruction_register
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY instruction_register_vhd_vec_tst IS
END instruction_register_vhd_vec_tst;
ARCHITECTURE instruction_register_arch OF instruction_register_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL aBus : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL add : STD_LOGIC;
SIGNAL andd : STD_LOGIC;
SIGNAL branch : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL dBus : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL div : STD_LOGIC;
SIGNAL en_A : STD_LOGIC;
SIGNAL en_D : STD_LOGIC;
SIGNAL halt : STD_LOGIC;
SIGNAL ld : STD_LOGIC;
SIGNAL load : STD_LOGIC;
SIGNAL mul : STD_LOGIC;
SIGNAL neg : STD_LOGIC;
SIGNAL nott : STD_LOGIC;
SIGNAL orr : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL store : STD_LOGIC;
SIGNAL sub : STD_LOGIC;
COMPONENT instruction_register
	PORT (
	aBus : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	add : OUT STD_LOGIC;
	andd : OUT STD_LOGIC;
	branch : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	dBus : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	div : OUT STD_LOGIC;
	en_A : IN STD_LOGIC;
	en_D : IN STD_LOGIC;
	halt : OUT STD_LOGIC;
	ld : IN STD_LOGIC;
	load : OUT STD_LOGIC;
	mul : OUT STD_LOGIC;
	neg : OUT STD_LOGIC;
	nott : OUT STD_LOGIC;
	orr : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	store : OUT STD_LOGIC;
	sub : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : instruction_register
	PORT MAP (
-- list connections between master ports and signals
	aBus => aBus,
	add => add,
	andd => andd,
	branch => branch,
	clk => clk,
	dBus => dBus,
	div => div,
	en_A => en_A,
	en_D => en_D,
	halt => halt,
	ld => ld,
	load => load,
	mul => mul,
	neg => neg,
	nott => nott,
	orr => orr,
	reset => reset,
	store => store,
	sub => sub
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 49
	LOOP
		clk <= '0';
		WAIT FOR 10000 ps;
		clk <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		reset <= '0';
		WAIT FOR 200000 ps;
		reset <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- en_A
t_prcs_en_A: PROCESS
BEGIN
	en_A <= '0';
WAIT;
END PROCESS t_prcs_en_A;

-- ld
t_prcs_ld: PROCESS
BEGIN
	ld <= '0';
WAIT;
END PROCESS t_prcs_ld;

-- en_D
t_prcs_en_D: PROCESS
BEGIN
	en_D <= '0';
WAIT;
END PROCESS t_prcs_en_D;
-- dBus[7]
t_prcs_dBus_7: PROCESS
BEGIN
	dBus(7) <= '0';
	WAIT FOR 400000 ps;
	dBus(7) <= '1';
	WAIT FOR 350000 ps;
	dBus(7) <= '0';
WAIT;
END PROCESS t_prcs_dBus_7;
-- dBus[6]
t_prcs_dBus_6: PROCESS
BEGIN
	dBus(6) <= '0';
	WAIT FOR 200000 ps;
	dBus(6) <= '1';
	WAIT FOR 200000 ps;
	dBus(6) <= '0';
	WAIT FOR 150000 ps;
	dBus(6) <= '1';
	WAIT FOR 200000 ps;
	dBus(6) <= '0';
	WAIT FOR 200000 ps;
	dBus(6) <= '1';
WAIT;
END PROCESS t_prcs_dBus_6;
-- dBus[5]
t_prcs_dBus_5: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		dBus(5) <= '0';
		WAIT FOR 100000 ps;
		dBus(5) <= '1';
		WAIT FOR 100000 ps;
	END LOOP;
	dBus(5) <= '0';
	WAIT FOR 50000 ps;
	FOR i IN 1 TO 2
	LOOP
		dBus(5) <= '1';
		WAIT FOR 100000 ps;
		dBus(5) <= '0';
		WAIT FOR 100000 ps;
	END LOOP;
	dBus(5) <= '1';
	WAIT FOR 100000 ps;
	dBus(5) <= '0';
WAIT;
END PROCESS t_prcs_dBus_5;
-- dBus[4]
t_prcs_dBus_4: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		dBus(4) <= '0';
		WAIT FOR 50000 ps;
		dBus(4) <= '1';
		WAIT FOR 50000 ps;
	END LOOP;
	dBus(4) <= '0';
	WAIT FOR 50000 ps;
	dBus(4) <= '1';
	WAIT FOR 100000 ps;
	FOR i IN 1 TO 5
	LOOP
		dBus(4) <= '0';
		WAIT FOR 50000 ps;
		dBus(4) <= '1';
		WAIT FOR 50000 ps;
	END LOOP;
	dBus(4) <= '0';
WAIT;
END PROCESS t_prcs_dBus_4;
-- dBus[3]
t_prcs_dBus_3: PROCESS
BEGIN
	dBus(3) <= '1';
	WAIT FOR 400000 ps;
	dBus(3) <= '0';
	WAIT FOR 400000 ps;
	dBus(3) <= '1';
WAIT;
END PROCESS t_prcs_dBus_3;
-- dBus[2]
t_prcs_dBus_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		dBus(2) <= '0';
		WAIT FOR 200000 ps;
		dBus(2) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	dBus(2) <= '0';
WAIT;
END PROCESS t_prcs_dBus_2;
-- dBus[1]
t_prcs_dBus_1: PROCESS
BEGIN
LOOP
	dBus(1) <= '0';
	WAIT FOR 100000 ps;
	dBus(1) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_dBus_1;
-- dBus[0]
t_prcs_dBus_0: PROCESS
BEGIN
LOOP
	dBus(0) <= '0';
	WAIT FOR 50000 ps;
	dBus(0) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_dBus_0;
END instruction_register_arch;
