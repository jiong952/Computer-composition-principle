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
-- Generated on "12/19/2020 12:54:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          alu
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY alu_vhd_vec_tst IS
END alu_vhd_vec_tst;
ARCHITECTURE alu_arch OF alu_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL accD : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL accZ : STD_LOGIC;
SIGNAL dBus : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL op : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL result : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT alu
	PORT (
	accD : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	accZ : OUT STD_LOGIC;
	dBus : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	op : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : alu
	PORT MAP (
-- list connections between master ports and signals
	accD => accD,
	accZ => accZ,
	dBus => dBus,
	op => op,
	result => result
	);
-- accD[7]
t_prcs_accD_7: PROCESS
BEGIN
	accD(7) <= '0';
WAIT;
END PROCESS t_prcs_accD_7;
-- accD[6]
t_prcs_accD_6: PROCESS
BEGIN
	accD(6) <= '0';
WAIT;
END PROCESS t_prcs_accD_6;
-- accD[5]
t_prcs_accD_5: PROCESS
BEGIN
	accD(5) <= '0';
WAIT;
END PROCESS t_prcs_accD_5;
-- accD[4]
t_prcs_accD_4: PROCESS
BEGIN
	accD(4) <= '0';
WAIT;
END PROCESS t_prcs_accD_4;
-- accD[3]
t_prcs_accD_3: PROCESS
BEGIN
	accD(3) <= '0';
WAIT;
END PROCESS t_prcs_accD_3;
-- accD[2]
t_prcs_accD_2: PROCESS
BEGIN
	accD(2) <= '0';
WAIT;
END PROCESS t_prcs_accD_2;
-- accD[1]
t_prcs_accD_1: PROCESS
BEGIN
	accD(1) <= '0';
WAIT;
END PROCESS t_prcs_accD_1;
-- accD[0]
t_prcs_accD_0: PROCESS
BEGIN
	accD(0) <= '0';
WAIT;
END PROCESS t_prcs_accD_0;
-- op[3]
t_prcs_op_3: PROCESS
BEGIN
	op(3) <= '0';
	WAIT FOR 800000 ps;
	op(3) <= '1';
WAIT;
END PROCESS t_prcs_op_3;
-- op[2]
t_prcs_op_2: PROCESS
BEGIN
	op(2) <= '0';
	WAIT FOR 400000 ps;
	op(2) <= '1';
	WAIT FOR 400000 ps;
	op(2) <= '0';
WAIT;
END PROCESS t_prcs_op_2;
-- op[1]
t_prcs_op_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		op(1) <= '0';
		WAIT FOR 200000 ps;
		op(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	op(1) <= '0';
WAIT;
END PROCESS t_prcs_op_1;
-- op[0]
t_prcs_op_0: PROCESS
BEGIN
LOOP
	op(0) <= '0';
	WAIT FOR 100000 ps;
	op(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_op_0;
-- dBus[7]
t_prcs_dBus_7: PROCESS
BEGIN
	dBus(7) <= '0';
WAIT;
END PROCESS t_prcs_dBus_7;
-- dBus[6]
t_prcs_dBus_6: PROCESS
BEGIN
	dBus(6) <= '0';
WAIT;
END PROCESS t_prcs_dBus_6;
-- dBus[5]
t_prcs_dBus_5: PROCESS
BEGIN
	dBus(5) <= '0';
WAIT;
END PROCESS t_prcs_dBus_5;
-- dBus[4]
t_prcs_dBus_4: PROCESS
BEGIN
	dBus(4) <= '0';
WAIT;
END PROCESS t_prcs_dBus_4;
-- dBus[3]
t_prcs_dBus_3: PROCESS
BEGIN
	dBus(3) <= '0';
WAIT;
END PROCESS t_prcs_dBus_3;
-- dBus[2]
t_prcs_dBus_2: PROCESS
BEGIN
	dBus(2) <= '0';
WAIT;
END PROCESS t_prcs_dBus_2;
-- dBus[1]
t_prcs_dBus_1: PROCESS
BEGIN
	dBus(1) <= '0';
WAIT;
END PROCESS t_prcs_dBus_1;
-- dBus[0]
t_prcs_dBus_0: PROCESS
BEGIN
	dBus(0) <= '1';
WAIT;
END PROCESS t_prcs_dBus_0;
END alu_arch;
