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
-- Generated on "12/19/2020 18:06:37"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CUPF4aV2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CUPF4aV2_vhd_vec_tst IS
END CUPF4aV2_vhd_vec_tst;
ARCHITECTURE CUPF4aV2_arch OF CUPF4aV2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL abusX : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL acc_enDX : STD_LOGIC;
SIGNAL acc_ldX : STD_LOGIC;
SIGNAL acc_QX : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL acc_selAluX : STD_LOGIC;
SIGNAL alu_accZX : STD_LOGIC;
SIGNAL alu_opX : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL dbusX : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ir_enAX : STD_LOGIC;
SIGNAL ir_enDX : STD_LOGIC;
SIGNAL ir_ldX : STD_LOGIC;
SIGNAL mem_enDX : STD_LOGIC;
SIGNAL mem_rwX : STD_LOGIC;
SIGNAL pc_enAX : STD_LOGIC;
SIGNAL pc_incX : STD_LOGIC;
SIGNAL pc_ldX : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT CUPF4aV2
	PORT (
	abusX : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	acc_enDX : BUFFER STD_LOGIC;
	acc_ldX : BUFFER STD_LOGIC;
	acc_QX : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	acc_selAluX : BUFFER STD_LOGIC;
	alu_accZX : BUFFER STD_LOGIC;
	alu_opX : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	clk : IN STD_LOGIC;
	dbusX : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	ir_enAX : BUFFER STD_LOGIC;
	ir_enDX : BUFFER STD_LOGIC;
	ir_ldX : BUFFER STD_LOGIC;
	mem_enDX : BUFFER STD_LOGIC;
	mem_rwX : BUFFER STD_LOGIC;
	pc_enAX : BUFFER STD_LOGIC;
	pc_incX : BUFFER STD_LOGIC;
	pc_ldX : BUFFER STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CUPF4aV2
	PORT MAP (
-- list connections between master ports and signals
	abusX => abusX,
	acc_enDX => acc_enDX,
	acc_ldX => acc_ldX,
	acc_QX => acc_QX,
	acc_selAluX => acc_selAluX,
	alu_accZX => alu_accZX,
	alu_opX => alu_opX,
	clk => clk,
	dbusX => dbusX,
	ir_enAX => ir_enAX,
	ir_enDX => ir_enDX,
	ir_ldX => ir_ldX,
	mem_enDX => mem_enDX,
	mem_rwX => mem_rwX,
	pc_enAX => pc_enAX,
	pc_incX => pc_incX,
	pc_ldX => pc_ldX,
	reset => reset
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 33
	LOOP
		clk <= '0';
		WAIT FOR 15000 ps;
		clk <= '1';
		WAIT FOR 15000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 200000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END CUPF4aV2_arch;
