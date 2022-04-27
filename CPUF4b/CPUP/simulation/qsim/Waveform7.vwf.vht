-- Copyright (C) 2019  Intel Corporation. All rights reserved.
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
-- Generated on "12/17/2020 16:44:05"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CPUP
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CPUP_vhd_vec_tst IS
END CPUP_vhd_vec_tst;
ARCHITECTURE CPUP_arch OF CPUP_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ACC : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL BRN : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL BROUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL CAROUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL clkMBR : STD_LOGIC;
SIGNAL CONTROL : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL IROUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL MAROUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL PC : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL RAMN : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL RAMOUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT CPUP
	PORT (
	ACC : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	BRN : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	BROUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	CAROUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk : IN STD_LOGIC;
	clkMBR : IN STD_LOGIC;
	CONTROL : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	IROUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	MAROUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	PC : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	RAMN : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	RAMOUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CPUP
	PORT MAP (
-- list connections between master ports and signals
	ACC => ACC,
	BRN => BRN,
	BROUT => BROUT,
	CAROUT => CAROUT,
	clk => clk,
	clkMBR => clkMBR,
	CONTROL => CONTROL,
	IROUT => IROUT,
	MAROUT => MAROUT,
	PC => PC,
	RAMN => RAMN,
	RAMOUT => RAMOUT,
	reset => reset
	);

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 30000 ps;
	reset <= '1';
	WAIT FOR 910000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- clkMBR
t_prcs_clkMBR: PROCESS
BEGIN
LOOP
	clkMBR <= '0';
	WAIT FOR 5000 ps;
	clkMBR <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clkMBR;
END CPUP_arch;
