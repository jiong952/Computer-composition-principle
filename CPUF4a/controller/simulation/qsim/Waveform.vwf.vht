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
-- Generated on "12/19/2020 17:24:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          controller
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY controller_vhd_vec_tst IS
END controller_vhd_vec_tst;
ARCHITECTURE controller_arch OF controller_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL acc_enD : STD_LOGIC;
SIGNAL acc_ld : STD_LOGIC;
SIGNAL acc_selAlu : STD_LOGIC;
SIGNAL alu_op : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL ir_add : STD_LOGIC;
SIGNAL ir_and : STD_LOGIC;
SIGNAL ir_branch : STD_LOGIC;
SIGNAL ir_div : STD_LOGIC;
SIGNAL ir_enA : STD_LOGIC;
SIGNAL ir_enD : STD_LOGIC;
SIGNAL ir_halt : STD_LOGIC;
SIGNAL ir_ld : STD_LOGIC;
SIGNAL ir_load : STD_LOGIC;
SIGNAL ir_mul : STD_LOGIC;
SIGNAL ir_neg : STD_LOGIC;
SIGNAL ir_not : STD_LOGIC;
SIGNAL ir_or : STD_LOGIC;
SIGNAL ir_store : STD_LOGIC;
SIGNAL ir_sub : STD_LOGIC;
SIGNAL mem_enD : STD_LOGIC;
SIGNAL mem_rw : STD_LOGIC;
SIGNAL pc_enA : STD_LOGIC;
SIGNAL pc_inc : STD_LOGIC;
SIGNAL pc_ld : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT controller
	PORT (
	acc_enD : OUT STD_LOGIC;
	acc_ld : OUT STD_LOGIC;
	acc_selAlu : OUT STD_LOGIC;
	alu_op : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	clk : IN STD_LOGIC;
	ir_add : IN STD_LOGIC;
	ir_and : IN STD_LOGIC;
	ir_branch : IN STD_LOGIC;
	ir_div : IN STD_LOGIC;
	ir_enA : OUT STD_LOGIC;
	ir_enD : OUT STD_LOGIC;
	ir_halt : IN STD_LOGIC;
	ir_ld : OUT STD_LOGIC;
	ir_load : IN STD_LOGIC;
	ir_mul : IN STD_LOGIC;
	ir_neg : IN STD_LOGIC;
	ir_not : IN STD_LOGIC;
	ir_or : IN STD_LOGIC;
	ir_store : IN STD_LOGIC;
	ir_sub : IN STD_LOGIC;
	mem_enD : OUT STD_LOGIC;
	mem_rw : OUT STD_LOGIC;
	pc_enA : OUT STD_LOGIC;
	pc_inc : OUT STD_LOGIC;
	pc_ld : OUT STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : controller
	PORT MAP (
-- list connections between master ports and signals
	acc_enD => acc_enD,
	acc_ld => acc_ld,
	acc_selAlu => acc_selAlu,
	alu_op => alu_op,
	clk => clk,
	ir_add => ir_add,
	ir_and => ir_and,
	ir_branch => ir_branch,
	ir_div => ir_div,
	ir_enA => ir_enA,
	ir_enD => ir_enD,
	ir_halt => ir_halt,
	ir_ld => ir_ld,
	ir_load => ir_load,
	ir_mul => ir_mul,
	ir_neg => ir_neg,
	ir_not => ir_not,
	ir_or => ir_or,
	ir_store => ir_store,
	ir_sub => ir_sub,
	mem_enD => mem_enD,
	mem_rw => mem_rw,
	pc_enA => pc_enA,
	pc_inc => pc_inc,
	pc_ld => pc_ld,
	reset => reset
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '0';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 24
	LOOP
		clk <= '1';
		WAIT FOR 20000 ps;
		clk <= '0';
		WAIT FOR 20000 ps;
	END LOOP;
	clk <= '1';
WAIT;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 24
	LOOP
		reset <= '0';
		WAIT FOR 20000 ps;
		reset <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- ir_add
t_prcs_ir_add: PROCESS
BEGIN
LOOP
	ir_add <= '0';
	WAIT FOR 50000 ps;
	ir_add <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ir_add;

-- ir_and
t_prcs_ir_and: PROCESS
BEGIN
	FOR i IN 1 TO 9
	LOOP
		ir_and <= '0';
		WAIT FOR 55000 ps;
		ir_and <= '1';
		WAIT FOR 55000 ps;
	END LOOP;
	ir_and <= '0';
WAIT;
END PROCESS t_prcs_ir_and;

-- ir_branch
t_prcs_ir_branch: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		ir_branch <= '0';
		WAIT FOR 60000 ps;
		ir_branch <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	ir_branch <= '0';
WAIT;
END PROCESS t_prcs_ir_branch;

-- ir_div
t_prcs_ir_div: PROCESS
BEGIN
	FOR i IN 1 TO 7
	LOOP
		ir_div <= '0';
		WAIT FOR 65000 ps;
		ir_div <= '1';
		WAIT FOR 65000 ps;
	END LOOP;
	ir_div <= '0';
	WAIT FOR 65000 ps;
	ir_div <= '1';
WAIT;
END PROCESS t_prcs_ir_div;

-- ir_halt
t_prcs_ir_halt: PROCESS
BEGIN
	FOR i IN 1 TO 7
	LOOP
		ir_halt <= '0';
		WAIT FOR 70000 ps;
		ir_halt <= '1';
		WAIT FOR 70000 ps;
	END LOOP;
	ir_halt <= '0';
WAIT;
END PROCESS t_prcs_ir_halt;

-- ir_load
t_prcs_ir_load: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		ir_load <= '0';
		WAIT FOR 75000 ps;
		ir_load <= '1';
		WAIT FOR 75000 ps;
	END LOOP;
	ir_load <= '0';
	WAIT FOR 75000 ps;
	ir_load <= '1';
WAIT;
END PROCESS t_prcs_ir_load;

-- ir_mul
t_prcs_ir_mul: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		ir_mul <= '0';
		WAIT FOR 80000 ps;
		ir_mul <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	ir_mul <= '0';
WAIT;
END PROCESS t_prcs_ir_mul;

-- ir_neg
t_prcs_ir_neg: PROCESS
BEGIN
	FOR i IN 1 TO 5
	LOOP
		ir_neg <= '0';
		WAIT FOR 85000 ps;
		ir_neg <= '1';
		WAIT FOR 85000 ps;
	END LOOP;
	ir_neg <= '0';
	WAIT FOR 85000 ps;
	ir_neg <= '1';
WAIT;
END PROCESS t_prcs_ir_neg;

-- ir_not
t_prcs_ir_not: PROCESS
BEGIN
	FOR i IN 1 TO 5
	LOOP
		ir_not <= '0';
		WAIT FOR 90000 ps;
		ir_not <= '1';
		WAIT FOR 90000 ps;
	END LOOP;
	ir_not <= '0';
	WAIT FOR 90000 ps;
	ir_not <= '1';
WAIT;
END PROCESS t_prcs_ir_not;

-- ir_or
t_prcs_ir_or: PROCESS
BEGIN
	FOR i IN 1 TO 5
	LOOP
		ir_or <= '0';
		WAIT FOR 95000 ps;
		ir_or <= '1';
		WAIT FOR 95000 ps;
	END LOOP;
	ir_or <= '0';
WAIT;
END PROCESS t_prcs_ir_or;

-- ir_store
t_prcs_ir_store: PROCESS
BEGIN
LOOP
	ir_store <= '0';
	WAIT FOR 100000 ps;
	ir_store <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ir_store;

-- ir_sub
t_prcs_ir_sub: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		ir_sub <= '0';
		WAIT FOR 105000 ps;
		ir_sub <= '1';
		WAIT FOR 105000 ps;
	END LOOP;
	ir_sub <= '0';
	WAIT FOR 105000 ps;
	ir_sub <= '1';
WAIT;
END PROCESS t_prcs_ir_sub;
END controller_arch;
