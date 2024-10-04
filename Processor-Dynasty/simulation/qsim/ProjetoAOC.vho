-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/29/2023 23:16:43"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CPU_DYNASTY IS
    PORT (
	CLOCK : IN std_logic;
	PC_OUT : BUFFER std_logic_vector(15 DOWNTO 0);
	ROM_OUT : BUFFER std_logic_vector(15 DOWNTO 0);
	OPCODE_OUT : BUFFER std_logic_vector(3 DOWNTO 0);
	RS_OUT : BUFFER std_logic_vector(3 DOWNTO 0);
	RT_OUT : BUFFER std_logic_vector(3 DOWNTO 0);
	ADDRESS_OUT : BUFFER std_logic_vector(3 DOWNTO 0);
	R_A_OUT : BUFFER std_logic_vector(15 DOWNTO 0);
	R_B_OUT : BUFFER std_logic_vector(15 DOWNTO 0);
	ALU_RESULT_OUT : BUFFER std_logic_vector(15 DOWNTO 0);
	ALU_OVERFLOW_OUT : BUFFER std_logic;
	RAM_OUT : BUFFER std_logic_vector(15 DOWNTO 0);
	MUX_2_OUT : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END CPU_DYNASTY;

-- Design Ports Information
-- PC_OUT[0]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[9]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[10]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[11]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[12]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[13]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[14]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[15]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_OUT[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_OUT[1]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_OUT[2]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_OUT[3]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_OUT[4]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_OUT[5]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_OUT[6]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_OUT[7]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_OUT[8]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_OUT[9]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_OUT[10]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_OUT[11]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_OUT[12]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_OUT[13]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_OUT[14]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ROM_OUT[15]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE_OUT[0]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE_OUT[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE_OUT[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE_OUT[3]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[0]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_OUT[3]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[0]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[1]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[2]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RT_OUT[3]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS_OUT[0]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS_OUT[1]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS_OUT[2]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS_OUT[3]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_A_OUT[0]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_A_OUT[1]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_A_OUT[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_A_OUT[3]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_A_OUT[4]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_A_OUT[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_A_OUT[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_A_OUT[7]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_A_OUT[8]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_A_OUT[9]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_A_OUT[10]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_A_OUT[11]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_A_OUT[12]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_A_OUT[13]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_A_OUT[14]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_A_OUT[15]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_B_OUT[0]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_B_OUT[1]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_B_OUT[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_B_OUT[3]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_B_OUT[4]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_B_OUT[5]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_B_OUT[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_B_OUT[7]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_B_OUT[8]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_B_OUT[9]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_B_OUT[10]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_B_OUT[11]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_B_OUT[12]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_B_OUT[13]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_B_OUT[14]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_B_OUT[15]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUT[0]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUT[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUT[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUT[3]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUT[4]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUT[5]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUT[6]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUT[7]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUT[8]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUT[9]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUT[10]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUT[11]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUT[12]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUT[13]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUT[14]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUT[15]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_OVERFLOW_OUT	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[0]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[2]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[4]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[5]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[6]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[7]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[8]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[9]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[10]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[11]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[12]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[13]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[14]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_OUT[15]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_2_OUT[0]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_2_OUT[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_2_OUT[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_2_OUT[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_2_OUT[4]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_2_OUT[5]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_2_OUT[6]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_2_OUT[7]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_2_OUT[8]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_2_OUT[9]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_2_OUT[10]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_2_OUT[11]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_2_OUT[12]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_2_OUT[13]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_2_OUT[14]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_2_OUT[15]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CPU_DYNASTY IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_PC_OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ROM_OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_OPCODE_OUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_RS_OUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_RT_OUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ADDRESS_OUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_R_A_OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_R_B_OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ALU_RESULT_OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ALU_OVERFLOW_OUT : std_logic;
SIGNAL ww_RAM_OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_MUX_2_OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \CLOCK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \COMP_CONTADOR_PC|S[0]~0_combout\ : std_logic;
SIGNAL \COMP_PC|ADDRESS_OUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \COMP_CONTADOR_PC|Add0~1_sumout\ : std_logic;
SIGNAL \COMP_CONTADOR_PC|Add0~2\ : std_logic;
SIGNAL \COMP_CONTADOR_PC|Add0~5_sumout\ : std_logic;
SIGNAL \COMP_PC|ADDRESS_OUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \COMP_CONTADOR_PC|Add0~6\ : std_logic;
SIGNAL \COMP_CONTADOR_PC|Add0~9_sumout\ : std_logic;
SIGNAL \COMP_PC|ADDRESS_OUT[3]~feeder_combout\ : std_logic;
SIGNAL \COMP_PC|ADDRESS_OUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \COMP_CONTADOR_PC|Add0~10\ : std_logic;
SIGNAL \COMP_CONTADOR_PC|Add0~13_sumout\ : std_logic;
SIGNAL \COMP_PC|ADDRESS_OUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \COMP_CONTADOR_PC|Add0~14\ : std_logic;
SIGNAL \COMP_CONTADOR_PC|Add0~17_sumout\ : std_logic;
SIGNAL \COMP_PC|ADDRESS_OUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \COMP_CONTADOR_PC|Add0~18\ : std_logic;
SIGNAL \COMP_CONTADOR_PC|Add0~21_sumout\ : std_logic;
SIGNAL \COMP_CONTADOR_PC|Add0~22\ : std_logic;
SIGNAL \COMP_CONTADOR_PC|Add0~25_sumout\ : std_logic;
SIGNAL \COMP_PC|ADDRESS_OUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \COMP_CONTADOR_PC|Add0~26\ : std_logic;
SIGNAL \COMP_CONTADOR_PC|Add0~29_sumout\ : std_logic;
SIGNAL \COMP_PC|ADDRESS_OUT[8]~feeder_combout\ : std_logic;
SIGNAL \COMP_PC|ADDRESS_OUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \COMP_CONTADOR_PC|Add0~30\ : std_logic;
SIGNAL \COMP_CONTADOR_PC|Add0~33_sumout\ : std_logic;
SIGNAL \COMP_CONTADOR_PC|Add0~34\ : std_logic;
SIGNAL \COMP_CONTADOR_PC|Add0~37_sumout\ : std_logic;
SIGNAL \COMP_PC|ADDRESS_OUT[10]~feeder_combout\ : std_logic;
SIGNAL \COMP_CONTADOR_PC|Add0~38\ : std_logic;
SIGNAL \COMP_CONTADOR_PC|Add0~41_sumout\ : std_logic;
SIGNAL \COMP_CONTADOR_PC|Add0~42\ : std_logic;
SIGNAL \COMP_CONTADOR_PC|Add0~45_sumout\ : std_logic;
SIGNAL \COMP_CONTADOR_PC|Add0~46\ : std_logic;
SIGNAL \COMP_CONTADOR_PC|Add0~49_sumout\ : std_logic;
SIGNAL \COMP_PC|ADDRESS_OUT[13]~feeder_combout\ : std_logic;
SIGNAL \COMP_CONTADOR_PC|Add0~50\ : std_logic;
SIGNAL \COMP_CONTADOR_PC|Add0~53_sumout\ : std_logic;
SIGNAL \COMP_CONTADOR_PC|Add0~54\ : std_logic;
SIGNAL \COMP_CONTADOR_PC|Add0~57_sumout\ : std_logic;
SIGNAL \COMP_PC|ADDRESS_OUT[15]~feeder_combout\ : std_logic;
SIGNAL \COMP_PC|ADDRESS_OUT[15]~DUPLICATE_q\ : std_logic;
SIGNAL \COMP_ROM|Mux5~0_combout\ : std_logic;
SIGNAL \COMP_ROM|Mux5~1_combout\ : std_logic;
SIGNAL \COMP_ROM|Mux4~0_combout\ : std_logic;
SIGNAL \COMP_ROM|Mux4~1_combout\ : std_logic;
SIGNAL \COMP_ROM|Mux0~0_combout\ : std_logic;
SIGNAL \COMP_ROM|Mux2~0_combout\ : std_logic;
SIGNAL \COMP_ROM|Mux1~0_combout\ : std_logic;
SIGNAL \COMP_ROM|Mux1~1_combout\ : std_logic;
SIGNAL \COMP_ROM|Mux0~1_combout\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~21feeder_combout\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~21_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~22_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~22feeder_combout\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~22DUPLICATE_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~23_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~23feeder_combout\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~23DUPLICATE_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~24feeder_combout\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~24DUPLICATE_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~25feeder_combout\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~25_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~26feeder_combout\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~26_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~27feeder_combout\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~27_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~28_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~28feeder_combout\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~28DUPLICATE_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~29feeder_combout\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~29DUPLICATE_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~30feeder_combout\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~30_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~31_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~31feeder_combout\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~31DUPLICATE_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~32DUPLICATE_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~32feeder_combout\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~32_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~33feeder_combout\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~33_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~34feeder_combout\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~34_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~35feeder_combout\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~35_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~36feeder_combout\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~36_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~29_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~24_q\ : std_logic;
SIGNAL \COMP_PC|ADDRESS_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \COMP_CONTADOR_PC|S\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~28_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~27_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~26_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~25_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~23_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~22_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~21_q\ : std_logic;
SIGNAL \COMP_ROM|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \COMP_ROM|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \COMP_ROM|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \COMP_ROM|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \COMP_ROM|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \COMP_ROM|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \COMP_PC|ALT_INV_ADDRESS_OUT\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~32DUPLICATE_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~29DUPLICATE_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~24DUPLICATE_q\ : std_logic;
SIGNAL \COMP_PC|ALT_INV_ADDRESS_OUT[15]~DUPLICATE_q\ : std_logic;
SIGNAL \COMP_PC|ALT_INV_ADDRESS_OUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \COMP_PC|ALT_INV_ADDRESS_OUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \COMP_CONTADOR_PC|ALT_INV_S\ : std_logic_vector(15 DOWNTO 3);
SIGNAL \COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~36_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~35_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~34_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~33_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~31_q\ : std_logic;
SIGNAL \COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~30_q\ : std_logic;

BEGIN

ww_CLOCK <= CLOCK;
PC_OUT <= ww_PC_OUT;
ROM_OUT <= ww_ROM_OUT;
OPCODE_OUT <= ww_OPCODE_OUT;
RS_OUT <= ww_RS_OUT;
RT_OUT <= ww_RT_OUT;
ADDRESS_OUT <= ww_ADDRESS_OUT;
R_A_OUT <= ww_R_A_OUT;
R_B_OUT <= ww_R_B_OUT;
ALU_RESULT_OUT <= ww_ALU_RESULT_OUT;
ALU_OVERFLOW_OUT <= ww_ALU_OVERFLOW_OUT;
RAM_OUT <= ww_RAM_OUT;
MUX_2_OUT <= ww_MUX_2_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~28_q\ <= NOT \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~28_q\;
\COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~27_q\ <= NOT \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~27_q\;
\COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~26_q\ <= NOT \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~26_q\;
\COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~25_q\ <= NOT \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~25_q\;
\COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~23_q\ <= NOT \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~23_q\;
\COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~22_q\ <= NOT \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~22_q\;
\COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~21_q\ <= NOT \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~21_q\;
\COMP_ROM|ALT_INV_Mux0~1_combout\ <= NOT \COMP_ROM|Mux0~1_combout\;
\COMP_ROM|ALT_INV_Mux1~0_combout\ <= NOT \COMP_ROM|Mux1~0_combout\;
\COMP_ROM|ALT_INV_Mux2~0_combout\ <= NOT \COMP_ROM|Mux2~0_combout\;
\COMP_ROM|ALT_INV_Mux0~0_combout\ <= NOT \COMP_ROM|Mux0~0_combout\;
\COMP_ROM|ALT_INV_Mux4~0_combout\ <= NOT \COMP_ROM|Mux4~0_combout\;
\COMP_ROM|ALT_INV_Mux5~0_combout\ <= NOT \COMP_ROM|Mux5~0_combout\;
\COMP_PC|ALT_INV_ADDRESS_OUT\(15) <= NOT \COMP_PC|ADDRESS_OUT\(15);
\COMP_PC|ALT_INV_ADDRESS_OUT\(14) <= NOT \COMP_PC|ADDRESS_OUT\(14);
\COMP_PC|ALT_INV_ADDRESS_OUT\(13) <= NOT \COMP_PC|ADDRESS_OUT\(13);
\COMP_PC|ALT_INV_ADDRESS_OUT\(12) <= NOT \COMP_PC|ADDRESS_OUT\(12);
\COMP_PC|ALT_INV_ADDRESS_OUT\(11) <= NOT \COMP_PC|ADDRESS_OUT\(11);
\COMP_PC|ALT_INV_ADDRESS_OUT\(10) <= NOT \COMP_PC|ADDRESS_OUT\(10);
\COMP_PC|ALT_INV_ADDRESS_OUT\(9) <= NOT \COMP_PC|ADDRESS_OUT\(9);
\COMP_PC|ALT_INV_ADDRESS_OUT\(8) <= NOT \COMP_PC|ADDRESS_OUT\(8);
\COMP_PC|ALT_INV_ADDRESS_OUT\(7) <= NOT \COMP_PC|ADDRESS_OUT\(7);
\COMP_PC|ALT_INV_ADDRESS_OUT\(6) <= NOT \COMP_PC|ADDRESS_OUT\(6);
\COMP_PC|ALT_INV_ADDRESS_OUT\(5) <= NOT \COMP_PC|ADDRESS_OUT\(5);
\COMP_PC|ALT_INV_ADDRESS_OUT\(4) <= NOT \COMP_PC|ADDRESS_OUT\(4);
\COMP_PC|ALT_INV_ADDRESS_OUT\(3) <= NOT \COMP_PC|ADDRESS_OUT\(3);
\COMP_PC|ALT_INV_ADDRESS_OUT\(2) <= NOT \COMP_PC|ADDRESS_OUT\(2);
\COMP_PC|ALT_INV_ADDRESS_OUT\(1) <= NOT \COMP_PC|ADDRESS_OUT\(1);
\COMP_PC|ALT_INV_ADDRESS_OUT\(0) <= NOT \COMP_PC|ADDRESS_OUT\(0);
\COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~32DUPLICATE_q\ <= NOT \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~32DUPLICATE_q\;
\COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~29DUPLICATE_q\ <= NOT \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~29DUPLICATE_q\;
\COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~24DUPLICATE_q\ <= NOT \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~24DUPLICATE_q\;
\COMP_PC|ALT_INV_ADDRESS_OUT[15]~DUPLICATE_q\ <= NOT \COMP_PC|ADDRESS_OUT[15]~DUPLICATE_q\;
\COMP_PC|ALT_INV_ADDRESS_OUT[8]~DUPLICATE_q\ <= NOT \COMP_PC|ADDRESS_OUT[8]~DUPLICATE_q\;
\COMP_PC|ALT_INV_ADDRESS_OUT[0]~DUPLICATE_q\ <= NOT \COMP_PC|ADDRESS_OUT[0]~DUPLICATE_q\;
\COMP_CONTADOR_PC|ALT_INV_S\(15) <= NOT \COMP_CONTADOR_PC|S\(15);
\COMP_CONTADOR_PC|ALT_INV_S\(13) <= NOT \COMP_CONTADOR_PC|S\(13);
\COMP_CONTADOR_PC|ALT_INV_S\(10) <= NOT \COMP_CONTADOR_PC|S\(10);
\COMP_CONTADOR_PC|ALT_INV_S\(8) <= NOT \COMP_CONTADOR_PC|S\(8);
\COMP_CONTADOR_PC|ALT_INV_S\(3) <= NOT \COMP_CONTADOR_PC|S\(3);
\COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~36_q\ <= NOT \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~36_q\;
\COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~35_q\ <= NOT \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~35_q\;
\COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~34_q\ <= NOT \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~34_q\;
\COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~33_q\ <= NOT \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~33_q\;
\COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~31_q\ <= NOT \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~31_q\;
\COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~30_q\ <= NOT \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~30_q\;

-- Location: IOOBUF_X89_Y36_N5
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_PC|ADDRESS_OUT[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X89_Y38_N22
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_PC|ADDRESS_OUT\(1),
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X89_Y37_N5
\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_PC|ADDRESS_OUT[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X89_Y6_N5
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_PC|ADDRESS_OUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X89_Y37_N22
\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_PC|ADDRESS_OUT[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X89_Y36_N39
\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_PC|ADDRESS_OUT[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X89_Y38_N39
\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_PC|ADDRESS_OUT\(6),
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X89_Y35_N96
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_PC|ADDRESS_OUT[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X89_Y38_N56
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_PC|ADDRESS_OUT[8]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(8));

-- Location: IOOBUF_X89_Y35_N79
\PC_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_PC|ADDRESS_OUT\(9),
	devoe => ww_devoe,
	o => ww_PC_OUT(9));

-- Location: IOOBUF_X89_Y36_N56
\PC_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_PC|ADDRESS_OUT\(10),
	devoe => ww_devoe,
	o => ww_PC_OUT(10));

-- Location: IOOBUF_X89_Y36_N22
\PC_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_PC|ADDRESS_OUT\(11),
	devoe => ww_devoe,
	o => ww_PC_OUT(11));

-- Location: IOOBUF_X89_Y38_N5
\PC_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_PC|ADDRESS_OUT\(12),
	devoe => ww_devoe,
	o => ww_PC_OUT(12));

-- Location: IOOBUF_X89_Y35_N45
\PC_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_PC|ADDRESS_OUT\(13),
	devoe => ww_devoe,
	o => ww_PC_OUT(13));

-- Location: IOOBUF_X89_Y37_N56
\PC_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_PC|ADDRESS_OUT\(14),
	devoe => ww_devoe,
	o => ww_PC_OUT(14));

-- Location: IOOBUF_X89_Y37_N39
\PC_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_PC|ADDRESS_OUT[15]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(15));

-- Location: IOOBUF_X62_Y81_N36
\ROM_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_ROM_OUT(0));

-- Location: IOOBUF_X89_Y8_N5
\ROM_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_ROM|Mux5~1_combout\,
	devoe => ww_devoe,
	o => ww_ROM_OUT(1));

-- Location: IOOBUF_X89_Y8_N22
\ROM_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_ROM|Mux4~1_combout\,
	devoe => ww_devoe,
	o => ww_ROM_OUT(2));

-- Location: IOOBUF_X89_Y6_N39
\ROM_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_ROM|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_ROM_OUT(3));

-- Location: IOOBUF_X89_Y9_N56
\ROM_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_ROM|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_ROM_OUT(4));

-- Location: IOOBUF_X86_Y81_N53
\ROM_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_ROM|Mux1~1_combout\,
	devoe => ww_devoe,
	o => ww_ROM_OUT(5));

-- Location: IOOBUF_X89_Y9_N22
\ROM_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_ROM|ALT_INV_Mux0~1_combout\,
	devoe => ww_devoe,
	o => ww_ROM_OUT(6));

-- Location: IOOBUF_X64_Y81_N36
\ROM_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ROM_OUT(7));

-- Location: IOOBUF_X89_Y6_N22
\ROM_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ROM_OUT(8));

-- Location: IOOBUF_X72_Y0_N53
\ROM_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ROM_OUT(9));

-- Location: IOOBUF_X36_Y81_N36
\ROM_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ROM_OUT(10));

-- Location: IOOBUF_X40_Y0_N2
\ROM_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ROM_OUT(11));

-- Location: IOOBUF_X72_Y0_N2
\ROM_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ROM_OUT(12));

-- Location: IOOBUF_X66_Y81_N42
\ROM_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ROM_OUT(13));

-- Location: IOOBUF_X50_Y81_N76
\ROM_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ROM_OUT(14));

-- Location: IOOBUF_X60_Y0_N2
\ROM_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ROM_OUT(15));

-- Location: IOOBUF_X34_Y0_N76
\OPCODE_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OPCODE_OUT(0));

-- Location: IOOBUF_X50_Y81_N93
\OPCODE_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OPCODE_OUT(1));

-- Location: IOOBUF_X6_Y0_N36
\OPCODE_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OPCODE_OUT(2));

-- Location: IOOBUF_X58_Y81_N59
\OPCODE_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OPCODE_OUT(3));

-- Location: IOOBUF_X54_Y0_N2
\RS_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(0));

-- Location: IOOBUF_X36_Y81_N53
\RS_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(1));

-- Location: IOOBUF_X60_Y81_N53
\RS_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(2));

-- Location: IOOBUF_X38_Y0_N53
\RS_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RS_OUT(3));

-- Location: IOOBUF_X89_Y9_N5
\RT_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_ROM|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(0));

-- Location: IOOBUF_X86_Y81_N2
\RT_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_ROM|Mux1~1_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(1));

-- Location: IOOBUF_X89_Y9_N39
\RT_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_ROM|ALT_INV_Mux0~1_combout\,
	devoe => ww_devoe,
	o => ww_RT_OUT(2));

-- Location: IOOBUF_X64_Y81_N53
\RT_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RT_OUT(3));

-- Location: IOOBUF_X89_Y4_N79
\ADDRESS_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_ADDRESS_OUT(0));

-- Location: IOOBUF_X89_Y8_N39
\ADDRESS_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_ROM|Mux5~1_combout\,
	devoe => ww_devoe,
	o => ww_ADDRESS_OUT(1));

-- Location: IOOBUF_X89_Y8_N56
\ADDRESS_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_ROM|Mux4~1_combout\,
	devoe => ww_devoe,
	o => ww_ADDRESS_OUT(2));

-- Location: IOOBUF_X89_Y6_N56
\ADDRESS_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_ROM|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_ADDRESS_OUT(3));

-- Location: IOOBUF_X56_Y0_N19
\R_A_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~21_q\,
	devoe => ww_devoe,
	o => ww_R_A_OUT(0));

-- Location: IOOBUF_X52_Y0_N19
\R_A_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~22DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_R_A_OUT(1));

-- Location: IOOBUF_X54_Y81_N19
\R_A_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~23DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_R_A_OUT(2));

-- Location: IOOBUF_X68_Y81_N36
\R_A_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~24DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_R_A_OUT(3));

-- Location: IOOBUF_X66_Y81_N93
\R_A_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~25_q\,
	devoe => ww_devoe,
	o => ww_R_A_OUT(4));

-- Location: IOOBUF_X70_Y81_N2
\R_A_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~26_q\,
	devoe => ww_devoe,
	o => ww_R_A_OUT(5));

-- Location: IOOBUF_X76_Y81_N53
\R_A_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~27_q\,
	devoe => ww_devoe,
	o => ww_R_A_OUT(6));

-- Location: IOOBUF_X64_Y0_N53
\R_A_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~28DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_R_A_OUT(7));

-- Location: IOOBUF_X58_Y0_N93
\R_A_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~29DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_R_A_OUT(8));

-- Location: IOOBUF_X36_Y0_N19
\R_A_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~30_q\,
	devoe => ww_devoe,
	o => ww_R_A_OUT(9));

-- Location: IOOBUF_X74_Y81_N42
\R_A_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~31DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_R_A_OUT(10));

-- Location: IOOBUF_X50_Y0_N76
\R_A_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~32_q\,
	devoe => ww_devoe,
	o => ww_R_A_OUT(11));

-- Location: IOOBUF_X72_Y81_N36
\R_A_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~33_q\,
	devoe => ww_devoe,
	o => ww_R_A_OUT(12));

-- Location: IOOBUF_X58_Y81_N42
\R_A_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~34_q\,
	devoe => ww_devoe,
	o => ww_R_A_OUT(13));

-- Location: IOOBUF_X80_Y81_N2
\R_A_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~35_q\,
	devoe => ww_devoe,
	o => ww_R_A_OUT(14));

-- Location: IOOBUF_X28_Y0_N2
\R_A_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~36_q\,
	devoe => ww_devoe,
	o => ww_R_A_OUT(15));

-- Location: IOOBUF_X82_Y81_N93
\R_B_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_R_B_OUT(0));

-- Location: IOOBUF_X82_Y81_N42
\R_B_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_R_B_OUT(1));

-- Location: IOOBUF_X32_Y81_N2
\R_B_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_R_B_OUT(2));

-- Location: IOOBUF_X30_Y0_N19
\R_B_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_R_B_OUT(3));

-- Location: IOOBUF_X70_Y0_N19
\R_B_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_R_B_OUT(4));

-- Location: IOOBUF_X68_Y81_N2
\R_B_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_R_B_OUT(5));

-- Location: IOOBUF_X40_Y0_N19
\R_B_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_R_B_OUT(6));

-- Location: IOOBUF_X36_Y0_N36
\R_B_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_R_B_OUT(7));

-- Location: IOOBUF_X86_Y81_N19
\R_B_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_R_B_OUT(8));

-- Location: IOOBUF_X72_Y81_N53
\R_B_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_R_B_OUT(9));

-- Location: IOOBUF_X6_Y0_N19
\R_B_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_R_B_OUT(10));

-- Location: IOOBUF_X26_Y81_N76
\R_B_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_R_B_OUT(11));

-- Location: IOOBUF_X38_Y0_N36
\R_B_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_R_B_OUT(12));

-- Location: IOOBUF_X58_Y0_N76
\R_B_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_R_B_OUT(13));

-- Location: IOOBUF_X89_Y4_N45
\R_B_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_R_B_OUT(14));

-- Location: IOOBUF_X34_Y0_N42
\R_B_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_R_B_OUT(15));

-- Location: IOOBUF_X56_Y0_N53
\ALU_RESULT_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~21_q\,
	devoe => ww_devoe,
	o => ww_ALU_RESULT_OUT(0));

-- Location: IOOBUF_X52_Y0_N53
\ALU_RESULT_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~22DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_ALU_RESULT_OUT(1));

-- Location: IOOBUF_X54_Y81_N2
\ALU_RESULT_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~23DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_ALU_RESULT_OUT(2));

-- Location: IOOBUF_X68_Y81_N19
\ALU_RESULT_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~24DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_ALU_RESULT_OUT(3));

-- Location: IOOBUF_X66_Y81_N59
\ALU_RESULT_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~25_q\,
	devoe => ww_devoe,
	o => ww_ALU_RESULT_OUT(4));

-- Location: IOOBUF_X70_Y81_N19
\ALU_RESULT_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~26_q\,
	devoe => ww_devoe,
	o => ww_ALU_RESULT_OUT(5));

-- Location: IOOBUF_X76_Y81_N36
\ALU_RESULT_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~27_q\,
	devoe => ww_devoe,
	o => ww_ALU_RESULT_OUT(6));

-- Location: IOOBUF_X64_Y0_N19
\ALU_RESULT_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~28DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_ALU_RESULT_OUT(7));

-- Location: IOOBUF_X58_Y0_N42
\ALU_RESULT_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~29_q\,
	devoe => ww_devoe,
	o => ww_ALU_RESULT_OUT(8));

-- Location: IOOBUF_X36_Y0_N2
\ALU_RESULT_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~30_q\,
	devoe => ww_devoe,
	o => ww_ALU_RESULT_OUT(9));

-- Location: IOOBUF_X74_Y81_N59
\ALU_RESULT_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~31DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_ALU_RESULT_OUT(10));

-- Location: IOOBUF_X50_Y0_N93
\ALU_RESULT_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~32DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_ALU_RESULT_OUT(11));

-- Location: IOOBUF_X72_Y81_N2
\ALU_RESULT_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~33_q\,
	devoe => ww_devoe,
	o => ww_ALU_RESULT_OUT(12));

-- Location: IOOBUF_X58_Y81_N93
\ALU_RESULT_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~34_q\,
	devoe => ww_devoe,
	o => ww_ALU_RESULT_OUT(13));

-- Location: IOOBUF_X80_Y81_N19
\ALU_RESULT_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~35_q\,
	devoe => ww_devoe,
	o => ww_ALU_RESULT_OUT(14));

-- Location: IOOBUF_X28_Y0_N53
\ALU_RESULT_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~36_q\,
	devoe => ww_devoe,
	o => ww_ALU_RESULT_OUT(15));

-- Location: IOOBUF_X52_Y81_N19
\ALU_OVERFLOW_OUT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ALU_OVERFLOW_OUT);

-- Location: IOOBUF_X4_Y0_N19
\RAM_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RAM_OUT(0));

-- Location: IOOBUF_X62_Y81_N2
\RAM_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RAM_OUT(1));

-- Location: IOOBUF_X30_Y0_N2
\RAM_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RAM_OUT(2));

-- Location: IOOBUF_X34_Y81_N59
\RAM_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RAM_OUT(3));

-- Location: IOOBUF_X62_Y0_N36
\RAM_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RAM_OUT(4));

-- Location: IOOBUF_X62_Y81_N53
\RAM_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RAM_OUT(5));

-- Location: IOOBUF_X38_Y0_N19
\RAM_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RAM_OUT(6));

-- Location: IOOBUF_X78_Y81_N53
\RAM_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RAM_OUT(7));

-- Location: IOOBUF_X54_Y0_N36
\RAM_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RAM_OUT(8));

-- Location: IOOBUF_X56_Y81_N19
\RAM_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RAM_OUT(9));

-- Location: IOOBUF_X38_Y0_N2
\RAM_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RAM_OUT(10));

-- Location: IOOBUF_X56_Y81_N2
\RAM_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RAM_OUT(11));

-- Location: IOOBUF_X64_Y81_N19
\RAM_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RAM_OUT(12));

-- Location: IOOBUF_X32_Y81_N19
\RAM_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RAM_OUT(13));

-- Location: IOOBUF_X82_Y81_N76
\RAM_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RAM_OUT(14));

-- Location: IOOBUF_X56_Y81_N53
\RAM_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_RAM_OUT(15));

-- Location: IOOBUF_X56_Y0_N36
\MUX_2_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~21_q\,
	devoe => ww_devoe,
	o => ww_MUX_2_OUT(0));

-- Location: IOOBUF_X52_Y0_N36
\MUX_2_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~22DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_MUX_2_OUT(1));

-- Location: IOOBUF_X54_Y81_N53
\MUX_2_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~23DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_MUX_2_OUT(2));

-- Location: IOOBUF_X68_Y81_N53
\MUX_2_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~24_q\,
	devoe => ww_devoe,
	o => ww_MUX_2_OUT(3));

-- Location: IOOBUF_X66_Y81_N76
\MUX_2_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~25_q\,
	devoe => ww_devoe,
	o => ww_MUX_2_OUT(4));

-- Location: IOOBUF_X70_Y81_N36
\MUX_2_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~26_q\,
	devoe => ww_devoe,
	o => ww_MUX_2_OUT(5));

-- Location: IOOBUF_X76_Y81_N19
\MUX_2_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~27_q\,
	devoe => ww_devoe,
	o => ww_MUX_2_OUT(6));

-- Location: IOOBUF_X64_Y0_N36
\MUX_2_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~28DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_MUX_2_OUT(7));

-- Location: IOOBUF_X58_Y0_N59
\MUX_2_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~29_q\,
	devoe => ww_devoe,
	o => ww_MUX_2_OUT(8));

-- Location: IOOBUF_X36_Y0_N53
\MUX_2_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~30_q\,
	devoe => ww_devoe,
	o => ww_MUX_2_OUT(9));

-- Location: IOOBUF_X74_Y81_N76
\MUX_2_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~31DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_MUX_2_OUT(10));

-- Location: IOOBUF_X50_Y0_N59
\MUX_2_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~32_q\,
	devoe => ww_devoe,
	o => ww_MUX_2_OUT(11));

-- Location: IOOBUF_X72_Y81_N19
\MUX_2_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~33_q\,
	devoe => ww_devoe,
	o => ww_MUX_2_OUT(12));

-- Location: IOOBUF_X58_Y81_N76
\MUX_2_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~34_q\,
	devoe => ww_devoe,
	o => ww_MUX_2_OUT(13));

-- Location: IOOBUF_X80_Y81_N53
\MUX_2_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~35_q\,
	devoe => ww_devoe,
	o => ww_MUX_2_OUT(14));

-- Location: IOOBUF_X28_Y0_N36
\MUX_2_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~36_q\,
	devoe => ww_devoe,
	o => ww_MUX_2_OUT(15));

-- Location: IOIBUF_X89_Y35_N61
\CLOCK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

-- Location: CLKCTRL_G10
\CLOCK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK~input_o\,
	outclk => \CLOCK~inputCLKENA0_outclk\);

-- Location: MLABCELL_X87_Y28_N12
\COMP_CONTADOR_PC|S[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_CONTADOR_PC|S[0]~0_combout\ = ( !\COMP_PC|ADDRESS_OUT[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \COMP_PC|ALT_INV_ADDRESS_OUT[0]~DUPLICATE_q\,
	combout => \COMP_CONTADOR_PC|S[0]~0_combout\);

-- Location: FF_X87_Y28_N13
\COMP_CONTADOR_PC|S[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_CONTADOR_PC|S[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CONTADOR_PC|S\(0));

-- Location: FF_X88_Y28_N52
\COMP_PC|ADDRESS_OUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \COMP_CONTADOR_PC|S\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_PC|ADDRESS_OUT[0]~DUPLICATE_q\);

-- Location: FF_X88_Y28_N53
\COMP_PC|ADDRESS_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \COMP_CONTADOR_PC|S\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_PC|ADDRESS_OUT\(0));

-- Location: LABCELL_X88_Y28_N0
\COMP_CONTADOR_PC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_CONTADOR_PC|Add0~1_sumout\ = SUM(( \COMP_PC|ADDRESS_OUT\(1) ) + ( \COMP_PC|ADDRESS_OUT\(0) ) + ( !VCC ))
-- \COMP_CONTADOR_PC|Add0~2\ = CARRY(( \COMP_PC|ADDRESS_OUT\(1) ) + ( \COMP_PC|ADDRESS_OUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \COMP_PC|ALT_INV_ADDRESS_OUT\(0),
	datad => \COMP_PC|ALT_INV_ADDRESS_OUT\(1),
	cin => GND,
	sumout => \COMP_CONTADOR_PC|Add0~1_sumout\,
	cout => \COMP_CONTADOR_PC|Add0~2\);

-- Location: FF_X88_Y28_N1
\COMP_CONTADOR_PC|S[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_CONTADOR_PC|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CONTADOR_PC|S\(1));

-- Location: FF_X88_Y28_N56
\COMP_PC|ADDRESS_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \COMP_CONTADOR_PC|S\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_PC|ADDRESS_OUT\(1));

-- Location: FF_X88_Y28_N59
\COMP_PC|ADDRESS_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \COMP_CONTADOR_PC|S\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_PC|ADDRESS_OUT\(2));

-- Location: LABCELL_X88_Y28_N3
\COMP_CONTADOR_PC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_CONTADOR_PC|Add0~5_sumout\ = SUM(( \COMP_PC|ADDRESS_OUT\(2) ) + ( GND ) + ( \COMP_CONTADOR_PC|Add0~2\ ))
-- \COMP_CONTADOR_PC|Add0~6\ = CARRY(( \COMP_PC|ADDRESS_OUT\(2) ) + ( GND ) + ( \COMP_CONTADOR_PC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \COMP_PC|ALT_INV_ADDRESS_OUT\(2),
	cin => \COMP_CONTADOR_PC|Add0~2\,
	sumout => \COMP_CONTADOR_PC|Add0~5_sumout\,
	cout => \COMP_CONTADOR_PC|Add0~6\);

-- Location: FF_X88_Y28_N5
\COMP_CONTADOR_PC|S[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_CONTADOR_PC|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CONTADOR_PC|S\(2));

-- Location: FF_X88_Y28_N58
\COMP_PC|ADDRESS_OUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \COMP_CONTADOR_PC|S\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_PC|ADDRESS_OUT[2]~DUPLICATE_q\);

-- Location: FF_X88_Y28_N50
\COMP_PC|ADDRESS_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_PC|ADDRESS_OUT[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_PC|ADDRESS_OUT\(3));

-- Location: LABCELL_X88_Y28_N6
\COMP_CONTADOR_PC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_CONTADOR_PC|Add0~9_sumout\ = SUM(( \COMP_PC|ADDRESS_OUT\(3) ) + ( GND ) + ( \COMP_CONTADOR_PC|Add0~6\ ))
-- \COMP_CONTADOR_PC|Add0~10\ = CARRY(( \COMP_PC|ADDRESS_OUT\(3) ) + ( GND ) + ( \COMP_CONTADOR_PC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \COMP_PC|ALT_INV_ADDRESS_OUT\(3),
	cin => \COMP_CONTADOR_PC|Add0~6\,
	sumout => \COMP_CONTADOR_PC|Add0~9_sumout\,
	cout => \COMP_CONTADOR_PC|Add0~10\);

-- Location: FF_X88_Y28_N8
\COMP_CONTADOR_PC|S[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_CONTADOR_PC|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CONTADOR_PC|S\(3));

-- Location: LABCELL_X88_Y28_N48
\COMP_PC|ADDRESS_OUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_PC|ADDRESS_OUT[3]~feeder_combout\ = \COMP_CONTADOR_PC|S\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \COMP_CONTADOR_PC|ALT_INV_S\(3),
	combout => \COMP_PC|ADDRESS_OUT[3]~feeder_combout\);

-- Location: FF_X88_Y28_N49
\COMP_PC|ADDRESS_OUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_PC|ADDRESS_OUT[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_PC|ADDRESS_OUT[3]~DUPLICATE_q\);

-- Location: FF_X87_Y28_N58
\COMP_PC|ADDRESS_OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \COMP_CONTADOR_PC|S\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_PC|ADDRESS_OUT\(4));

-- Location: LABCELL_X88_Y28_N9
\COMP_CONTADOR_PC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_CONTADOR_PC|Add0~13_sumout\ = SUM(( \COMP_PC|ADDRESS_OUT\(4) ) + ( GND ) + ( \COMP_CONTADOR_PC|Add0~10\ ))
-- \COMP_CONTADOR_PC|Add0~14\ = CARRY(( \COMP_PC|ADDRESS_OUT\(4) ) + ( GND ) + ( \COMP_CONTADOR_PC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \COMP_PC|ALT_INV_ADDRESS_OUT\(4),
	cin => \COMP_CONTADOR_PC|Add0~10\,
	sumout => \COMP_CONTADOR_PC|Add0~13_sumout\,
	cout => \COMP_CONTADOR_PC|Add0~14\);

-- Location: FF_X88_Y28_N11
\COMP_CONTADOR_PC|S[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_CONTADOR_PC|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CONTADOR_PC|S\(4));

-- Location: FF_X87_Y28_N59
\COMP_PC|ADDRESS_OUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \COMP_CONTADOR_PC|S\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_PC|ADDRESS_OUT[4]~DUPLICATE_q\);

-- Location: FF_X87_Y28_N34
\COMP_PC|ADDRESS_OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \COMP_CONTADOR_PC|S\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_PC|ADDRESS_OUT\(5));

-- Location: LABCELL_X88_Y28_N12
\COMP_CONTADOR_PC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_CONTADOR_PC|Add0~17_sumout\ = SUM(( \COMP_PC|ADDRESS_OUT\(5) ) + ( GND ) + ( \COMP_CONTADOR_PC|Add0~14\ ))
-- \COMP_CONTADOR_PC|Add0~18\ = CARRY(( \COMP_PC|ADDRESS_OUT\(5) ) + ( GND ) + ( \COMP_CONTADOR_PC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \COMP_PC|ALT_INV_ADDRESS_OUT\(5),
	cin => \COMP_CONTADOR_PC|Add0~14\,
	sumout => \COMP_CONTADOR_PC|Add0~17_sumout\,
	cout => \COMP_CONTADOR_PC|Add0~18\);

-- Location: FF_X88_Y28_N13
\COMP_CONTADOR_PC|S[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_CONTADOR_PC|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CONTADOR_PC|S\(5));

-- Location: FF_X87_Y28_N35
\COMP_PC|ADDRESS_OUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \COMP_CONTADOR_PC|S\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_PC|ADDRESS_OUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y28_N15
\COMP_CONTADOR_PC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_CONTADOR_PC|Add0~21_sumout\ = SUM(( \COMP_PC|ADDRESS_OUT\(6) ) + ( GND ) + ( \COMP_CONTADOR_PC|Add0~18\ ))
-- \COMP_CONTADOR_PC|Add0~22\ = CARRY(( \COMP_PC|ADDRESS_OUT\(6) ) + ( GND ) + ( \COMP_CONTADOR_PC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \COMP_PC|ALT_INV_ADDRESS_OUT\(6),
	cin => \COMP_CONTADOR_PC|Add0~18\,
	sumout => \COMP_CONTADOR_PC|Add0~21_sumout\,
	cout => \COMP_CONTADOR_PC|Add0~22\);

-- Location: FF_X88_Y28_N17
\COMP_CONTADOR_PC|S[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_CONTADOR_PC|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CONTADOR_PC|S\(6));

-- Location: FF_X88_Y28_N46
\COMP_PC|ADDRESS_OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \COMP_CONTADOR_PC|S\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_PC|ADDRESS_OUT\(6));

-- Location: FF_X87_Y28_N28
\COMP_PC|ADDRESS_OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \COMP_CONTADOR_PC|S\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_PC|ADDRESS_OUT\(7));

-- Location: LABCELL_X88_Y28_N18
\COMP_CONTADOR_PC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_CONTADOR_PC|Add0~25_sumout\ = SUM(( \COMP_PC|ADDRESS_OUT\(7) ) + ( GND ) + ( \COMP_CONTADOR_PC|Add0~22\ ))
-- \COMP_CONTADOR_PC|Add0~26\ = CARRY(( \COMP_PC|ADDRESS_OUT\(7) ) + ( GND ) + ( \COMP_CONTADOR_PC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \COMP_PC|ALT_INV_ADDRESS_OUT\(7),
	cin => \COMP_CONTADOR_PC|Add0~22\,
	sumout => \COMP_CONTADOR_PC|Add0~25_sumout\,
	cout => \COMP_CONTADOR_PC|Add0~26\);

-- Location: FF_X88_Y28_N19
\COMP_CONTADOR_PC|S[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_CONTADOR_PC|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CONTADOR_PC|S\(7));

-- Location: FF_X87_Y28_N29
\COMP_PC|ADDRESS_OUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \COMP_CONTADOR_PC|S\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_PC|ADDRESS_OUT[7]~DUPLICATE_q\);

-- Location: FF_X87_Y28_N19
\COMP_PC|ADDRESS_OUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_PC|ADDRESS_OUT[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_PC|ADDRESS_OUT\(8));

-- Location: LABCELL_X88_Y28_N21
\COMP_CONTADOR_PC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_CONTADOR_PC|Add0~29_sumout\ = SUM(( \COMP_PC|ADDRESS_OUT\(8) ) + ( GND ) + ( \COMP_CONTADOR_PC|Add0~26\ ))
-- \COMP_CONTADOR_PC|Add0~30\ = CARRY(( \COMP_PC|ADDRESS_OUT\(8) ) + ( GND ) + ( \COMP_CONTADOR_PC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \COMP_PC|ALT_INV_ADDRESS_OUT\(8),
	cin => \COMP_CONTADOR_PC|Add0~26\,
	sumout => \COMP_CONTADOR_PC|Add0~29_sumout\,
	cout => \COMP_CONTADOR_PC|Add0~30\);

-- Location: FF_X88_Y28_N22
\COMP_CONTADOR_PC|S[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_CONTADOR_PC|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CONTADOR_PC|S\(8));

-- Location: MLABCELL_X87_Y28_N18
\COMP_PC|ADDRESS_OUT[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_PC|ADDRESS_OUT[8]~feeder_combout\ = ( \COMP_CONTADOR_PC|S\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \COMP_CONTADOR_PC|ALT_INV_S\(8),
	combout => \COMP_PC|ADDRESS_OUT[8]~feeder_combout\);

-- Location: FF_X87_Y28_N20
\COMP_PC|ADDRESS_OUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_PC|ADDRESS_OUT[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_PC|ADDRESS_OUT[8]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y28_N24
\COMP_CONTADOR_PC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_CONTADOR_PC|Add0~33_sumout\ = SUM(( \COMP_PC|ADDRESS_OUT\(9) ) + ( GND ) + ( \COMP_CONTADOR_PC|Add0~30\ ))
-- \COMP_CONTADOR_PC|Add0~34\ = CARRY(( \COMP_PC|ADDRESS_OUT\(9) ) + ( GND ) + ( \COMP_CONTADOR_PC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \COMP_PC|ALT_INV_ADDRESS_OUT\(9),
	cin => \COMP_CONTADOR_PC|Add0~30\,
	sumout => \COMP_CONTADOR_PC|Add0~33_sumout\,
	cout => \COMP_CONTADOR_PC|Add0~34\);

-- Location: FF_X88_Y28_N26
\COMP_CONTADOR_PC|S[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_CONTADOR_PC|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CONTADOR_PC|S\(9));

-- Location: FF_X87_Y28_N43
\COMP_PC|ADDRESS_OUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \COMP_CONTADOR_PC|S\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_PC|ADDRESS_OUT\(9));

-- Location: LABCELL_X88_Y28_N27
\COMP_CONTADOR_PC|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_CONTADOR_PC|Add0~37_sumout\ = SUM(( \COMP_PC|ADDRESS_OUT\(10) ) + ( GND ) + ( \COMP_CONTADOR_PC|Add0~34\ ))
-- \COMP_CONTADOR_PC|Add0~38\ = CARRY(( \COMP_PC|ADDRESS_OUT\(10) ) + ( GND ) + ( \COMP_CONTADOR_PC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \COMP_PC|ALT_INV_ADDRESS_OUT\(10),
	cin => \COMP_CONTADOR_PC|Add0~34\,
	sumout => \COMP_CONTADOR_PC|Add0~37_sumout\,
	cout => \COMP_CONTADOR_PC|Add0~38\);

-- Location: FF_X88_Y28_N28
\COMP_CONTADOR_PC|S[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_CONTADOR_PC|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CONTADOR_PC|S\(10));

-- Location: MLABCELL_X87_Y28_N21
\COMP_PC|ADDRESS_OUT[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_PC|ADDRESS_OUT[10]~feeder_combout\ = ( \COMP_CONTADOR_PC|S\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \COMP_CONTADOR_PC|ALT_INV_S\(10),
	combout => \COMP_PC|ADDRESS_OUT[10]~feeder_combout\);

-- Location: FF_X87_Y28_N22
\COMP_PC|ADDRESS_OUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_PC|ADDRESS_OUT[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_PC|ADDRESS_OUT\(10));

-- Location: LABCELL_X88_Y28_N30
\COMP_CONTADOR_PC|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_CONTADOR_PC|Add0~41_sumout\ = SUM(( \COMP_PC|ADDRESS_OUT\(11) ) + ( GND ) + ( \COMP_CONTADOR_PC|Add0~38\ ))
-- \COMP_CONTADOR_PC|Add0~42\ = CARRY(( \COMP_PC|ADDRESS_OUT\(11) ) + ( GND ) + ( \COMP_CONTADOR_PC|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \COMP_PC|ALT_INV_ADDRESS_OUT\(11),
	cin => \COMP_CONTADOR_PC|Add0~38\,
	sumout => \COMP_CONTADOR_PC|Add0~41_sumout\,
	cout => \COMP_CONTADOR_PC|Add0~42\);

-- Location: FF_X88_Y28_N31
\COMP_CONTADOR_PC|S[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_CONTADOR_PC|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CONTADOR_PC|S\(11));

-- Location: FF_X87_Y28_N7
\COMP_PC|ADDRESS_OUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \COMP_CONTADOR_PC|S\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_PC|ADDRESS_OUT\(11));

-- Location: LABCELL_X88_Y28_N33
\COMP_CONTADOR_PC|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_CONTADOR_PC|Add0~45_sumout\ = SUM(( \COMP_PC|ADDRESS_OUT\(12) ) + ( GND ) + ( \COMP_CONTADOR_PC|Add0~42\ ))
-- \COMP_CONTADOR_PC|Add0~46\ = CARRY(( \COMP_PC|ADDRESS_OUT\(12) ) + ( GND ) + ( \COMP_CONTADOR_PC|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \COMP_PC|ALT_INV_ADDRESS_OUT\(12),
	cin => \COMP_CONTADOR_PC|Add0~42\,
	sumout => \COMP_CONTADOR_PC|Add0~45_sumout\,
	cout => \COMP_CONTADOR_PC|Add0~46\);

-- Location: FF_X88_Y28_N35
\COMP_CONTADOR_PC|S[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_CONTADOR_PC|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CONTADOR_PC|S\(12));

-- Location: FF_X87_Y28_N49
\COMP_PC|ADDRESS_OUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \COMP_CONTADOR_PC|S\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_PC|ADDRESS_OUT\(12));

-- Location: LABCELL_X88_Y28_N36
\COMP_CONTADOR_PC|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_CONTADOR_PC|Add0~49_sumout\ = SUM(( \COMP_PC|ADDRESS_OUT\(13) ) + ( GND ) + ( \COMP_CONTADOR_PC|Add0~46\ ))
-- \COMP_CONTADOR_PC|Add0~50\ = CARRY(( \COMP_PC|ADDRESS_OUT\(13) ) + ( GND ) + ( \COMP_CONTADOR_PC|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \COMP_PC|ALT_INV_ADDRESS_OUT\(13),
	cin => \COMP_CONTADOR_PC|Add0~46\,
	sumout => \COMP_CONTADOR_PC|Add0~49_sumout\,
	cout => \COMP_CONTADOR_PC|Add0~50\);

-- Location: FF_X88_Y28_N37
\COMP_CONTADOR_PC|S[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_CONTADOR_PC|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CONTADOR_PC|S\(13));

-- Location: MLABCELL_X87_Y28_N36
\COMP_PC|ADDRESS_OUT[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_PC|ADDRESS_OUT[13]~feeder_combout\ = ( \COMP_CONTADOR_PC|S\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \COMP_CONTADOR_PC|ALT_INV_S\(13),
	combout => \COMP_PC|ADDRESS_OUT[13]~feeder_combout\);

-- Location: FF_X87_Y28_N37
\COMP_PC|ADDRESS_OUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_PC|ADDRESS_OUT[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_PC|ADDRESS_OUT\(13));

-- Location: LABCELL_X88_Y28_N39
\COMP_CONTADOR_PC|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_CONTADOR_PC|Add0~53_sumout\ = SUM(( \COMP_PC|ADDRESS_OUT\(14) ) + ( GND ) + ( \COMP_CONTADOR_PC|Add0~50\ ))
-- \COMP_CONTADOR_PC|Add0~54\ = CARRY(( \COMP_PC|ADDRESS_OUT\(14) ) + ( GND ) + ( \COMP_CONTADOR_PC|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \COMP_PC|ALT_INV_ADDRESS_OUT\(14),
	cin => \COMP_CONTADOR_PC|Add0~50\,
	sumout => \COMP_CONTADOR_PC|Add0~53_sumout\,
	cout => \COMP_CONTADOR_PC|Add0~54\);

-- Location: FF_X88_Y28_N40
\COMP_CONTADOR_PC|S[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_CONTADOR_PC|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CONTADOR_PC|S\(14));

-- Location: FF_X87_Y28_N1
\COMP_PC|ADDRESS_OUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \COMP_CONTADOR_PC|S\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_PC|ADDRESS_OUT\(14));

-- Location: LABCELL_X88_Y28_N42
\COMP_CONTADOR_PC|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_CONTADOR_PC|Add0~57_sumout\ = SUM(( \COMP_PC|ADDRESS_OUT[15]~DUPLICATE_q\ ) + ( GND ) + ( \COMP_CONTADOR_PC|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \COMP_PC|ALT_INV_ADDRESS_OUT[15]~DUPLICATE_q\,
	cin => \COMP_CONTADOR_PC|Add0~54\,
	sumout => \COMP_CONTADOR_PC|Add0~57_sumout\);

-- Location: FF_X88_Y28_N43
\COMP_CONTADOR_PC|S[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_CONTADOR_PC|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_CONTADOR_PC|S\(15));

-- Location: MLABCELL_X87_Y28_N39
\COMP_PC|ADDRESS_OUT[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_PC|ADDRESS_OUT[15]~feeder_combout\ = ( \COMP_CONTADOR_PC|S\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \COMP_CONTADOR_PC|ALT_INV_S\(15),
	combout => \COMP_PC|ADDRESS_OUT[15]~feeder_combout\);

-- Location: FF_X87_Y28_N40
\COMP_PC|ADDRESS_OUT[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_PC|ADDRESS_OUT[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_PC|ADDRESS_OUT[15]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y28_N24
\COMP_ROM|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_ROM|Mux5~0_combout\ = ( !\COMP_PC|ADDRESS_OUT\(11) & ( !\COMP_PC|ADDRESS_OUT\(10) & ( (\COMP_PC|ADDRESS_OUT[8]~DUPLICATE_q\) # (\COMP_PC|ADDRESS_OUT\(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \COMP_PC|ALT_INV_ADDRESS_OUT\(9),
	datac => \COMP_PC|ALT_INV_ADDRESS_OUT[8]~DUPLICATE_q\,
	datae => \COMP_PC|ALT_INV_ADDRESS_OUT\(11),
	dataf => \COMP_PC|ALT_INV_ADDRESS_OUT\(10),
	combout => \COMP_ROM|Mux5~0_combout\);

-- Location: LABCELL_X88_Y28_N54
\COMP_ROM|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_ROM|Mux5~1_combout\ = ( \COMP_ROM|Mux5~0_combout\ & ( (((\COMP_PC|ADDRESS_OUT\(14)) # (\COMP_PC|ADDRESS_OUT[15]~DUPLICATE_q\)) # (\COMP_PC|ADDRESS_OUT\(12))) # (\COMP_PC|ADDRESS_OUT\(13)) ) ) # ( !\COMP_ROM|Mux5~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_PC|ALT_INV_ADDRESS_OUT\(13),
	datab => \COMP_PC|ALT_INV_ADDRESS_OUT\(12),
	datac => \COMP_PC|ALT_INV_ADDRESS_OUT[15]~DUPLICATE_q\,
	datad => \COMP_PC|ALT_INV_ADDRESS_OUT\(14),
	dataf => \COMP_ROM|ALT_INV_Mux5~0_combout\,
	combout => \COMP_ROM|Mux5~1_combout\);

-- Location: MLABCELL_X87_Y28_N9
\COMP_ROM|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_ROM|Mux4~0_combout\ = ( !\COMP_PC|ADDRESS_OUT\(11) & ( !\COMP_PC|ADDRESS_OUT\(10) & ( (!\COMP_PC|ADDRESS_OUT[8]~DUPLICATE_q\) # (\COMP_PC|ADDRESS_OUT\(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_PC|ALT_INV_ADDRESS_OUT[8]~DUPLICATE_q\,
	datac => \COMP_PC|ALT_INV_ADDRESS_OUT\(9),
	datae => \COMP_PC|ALT_INV_ADDRESS_OUT\(11),
	dataf => \COMP_PC|ALT_INV_ADDRESS_OUT\(10),
	combout => \COMP_ROM|Mux4~0_combout\);

-- Location: FF_X87_Y28_N41
\COMP_PC|ADDRESS_OUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_PC|ADDRESS_OUT[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_PC|ADDRESS_OUT\(15));

-- Location: MLABCELL_X87_Y28_N30
\COMP_ROM|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_ROM|Mux4~1_combout\ = ( \COMP_PC|ADDRESS_OUT\(13) & ( \COMP_PC|ADDRESS_OUT\(15) ) ) # ( !\COMP_PC|ADDRESS_OUT\(13) & ( \COMP_PC|ADDRESS_OUT\(15) ) ) # ( \COMP_PC|ADDRESS_OUT\(13) & ( !\COMP_PC|ADDRESS_OUT\(15) ) ) # ( !\COMP_PC|ADDRESS_OUT\(13) & ( 
-- !\COMP_PC|ADDRESS_OUT\(15) & ( ((!\COMP_ROM|Mux4~0_combout\) # (\COMP_PC|ADDRESS_OUT\(14))) # (\COMP_PC|ADDRESS_OUT\(12)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \COMP_PC|ALT_INV_ADDRESS_OUT\(12),
	datac => \COMP_PC|ALT_INV_ADDRESS_OUT\(14),
	datad => \COMP_ROM|ALT_INV_Mux4~0_combout\,
	datae => \COMP_PC|ALT_INV_ADDRESS_OUT\(13),
	dataf => \COMP_PC|ALT_INV_ADDRESS_OUT\(15),
	combout => \COMP_ROM|Mux4~1_combout\);

-- Location: MLABCELL_X87_Y28_N54
\COMP_ROM|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_ROM|Mux0~0_combout\ = ( !\COMP_PC|ADDRESS_OUT\(12) & ( !\COMP_PC|ADDRESS_OUT\(10) & ( (!\COMP_PC|ADDRESS_OUT\(14) & (!\COMP_PC|ADDRESS_OUT\(15) & (!\COMP_PC|ADDRESS_OUT\(11) & !\COMP_PC|ADDRESS_OUT\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_PC|ALT_INV_ADDRESS_OUT\(14),
	datab => \COMP_PC|ALT_INV_ADDRESS_OUT\(15),
	datac => \COMP_PC|ALT_INV_ADDRESS_OUT\(11),
	datad => \COMP_PC|ALT_INV_ADDRESS_OUT\(13),
	datae => \COMP_PC|ALT_INV_ADDRESS_OUT\(12),
	dataf => \COMP_PC|ALT_INV_ADDRESS_OUT\(10),
	combout => \COMP_ROM|Mux0~0_combout\);

-- Location: MLABCELL_X87_Y28_N45
\COMP_ROM|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_ROM|Mux2~0_combout\ = ( \COMP_PC|ADDRESS_OUT\(9) & ( \COMP_ROM|Mux0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_ROM|ALT_INV_Mux0~0_combout\,
	datae => \COMP_PC|ALT_INV_ADDRESS_OUT\(9),
	combout => \COMP_ROM|Mux2~0_combout\);

-- Location: MLABCELL_X87_Y28_N15
\COMP_ROM|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_ROM|Mux1~0_combout\ = ( \COMP_PC|ADDRESS_OUT[8]~DUPLICATE_q\ & ( (!\COMP_PC|ADDRESS_OUT\(11) & !\COMP_PC|ADDRESS_OUT\(10)) ) ) # ( !\COMP_PC|ADDRESS_OUT[8]~DUPLICATE_q\ & ( (!\COMP_PC|ADDRESS_OUT\(11) & (!\COMP_PC|ADDRESS_OUT\(9) & 
-- !\COMP_PC|ADDRESS_OUT\(10))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_PC|ALT_INV_ADDRESS_OUT\(11),
	datab => \COMP_PC|ALT_INV_ADDRESS_OUT\(9),
	datac => \COMP_PC|ALT_INV_ADDRESS_OUT\(10),
	dataf => \COMP_PC|ALT_INV_ADDRESS_OUT[8]~DUPLICATE_q\,
	combout => \COMP_ROM|Mux1~0_combout\);

-- Location: MLABCELL_X87_Y28_N3
\COMP_ROM|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_ROM|Mux1~1_combout\ = ( \COMP_PC|ADDRESS_OUT\(13) & ( \COMP_PC|ADDRESS_OUT\(15) ) ) # ( !\COMP_PC|ADDRESS_OUT\(13) & ( \COMP_PC|ADDRESS_OUT\(15) ) ) # ( \COMP_PC|ADDRESS_OUT\(13) & ( !\COMP_PC|ADDRESS_OUT\(15) ) ) # ( !\COMP_PC|ADDRESS_OUT\(13) & ( 
-- !\COMP_PC|ADDRESS_OUT\(15) & ( ((!\COMP_ROM|Mux1~0_combout\) # (\COMP_PC|ADDRESS_OUT\(12))) # (\COMP_PC|ADDRESS_OUT\(14)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111110111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_PC|ALT_INV_ADDRESS_OUT\(14),
	datab => \COMP_PC|ALT_INV_ADDRESS_OUT\(12),
	datac => \COMP_ROM|ALT_INV_Mux1~0_combout\,
	datae => \COMP_PC|ALT_INV_ADDRESS_OUT\(13),
	dataf => \COMP_PC|ALT_INV_ADDRESS_OUT\(15),
	combout => \COMP_ROM|Mux1~1_combout\);

-- Location: MLABCELL_X87_Y28_N51
\COMP_ROM|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_ROM|Mux0~1_combout\ = ( !\COMP_PC|ADDRESS_OUT\(9) & ( \COMP_ROM|Mux0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \COMP_ROM|ALT_INV_Mux0~0_combout\,
	datae => \COMP_PC|ALT_INV_ADDRESS_OUT\(9),
	combout => \COMP_ROM|Mux0~1_combout\);

-- Location: LABCELL_X56_Y1_N39
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~21feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~21feeder_combout\ = ( \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~21_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~21_q\,
	combout => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~21feeder_combout\);

-- Location: FF_X56_Y1_N41
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~21feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~21_q\);

-- Location: FF_X51_Y2_N44
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~22feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~22_q\);

-- Location: LABCELL_X51_Y2_N42
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~22feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~22feeder_combout\ = ( \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~22_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~22_q\,
	combout => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~22feeder_combout\);

-- Location: FF_X51_Y2_N43
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~22DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~22feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~22DUPLICATE_q\);

-- Location: FF_X53_Y80_N8
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~23feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~23_q\);

-- Location: LABCELL_X53_Y80_N6
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~23feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~23feeder_combout\ = ( \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~23_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~23_q\,
	combout => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~23feeder_combout\);

-- Location: FF_X53_Y80_N7
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~23DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~23feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~23DUPLICATE_q\);

-- Location: LABCELL_X68_Y80_N39
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~24feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~24feeder_combout\ = ( \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~24DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~24DUPLICATE_q\,
	combout => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~24feeder_combout\);

-- Location: FF_X68_Y80_N41
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~24DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~24feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~24DUPLICATE_q\);

-- Location: LABCELL_X66_Y80_N42
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~25feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~25feeder_combout\ = ( \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~25_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~25_q\,
	combout => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~25feeder_combout\);

-- Location: FF_X66_Y80_N44
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~25feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~25_q\);

-- Location: LABCELL_X70_Y80_N42
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~26feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~26feeder_combout\ = ( \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~26_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~26_q\,
	combout => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~26feeder_combout\);

-- Location: FF_X70_Y80_N44
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~26feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~26_q\);

-- Location: LABCELL_X77_Y79_N39
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~27feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~27feeder_combout\ = ( \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~27_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~27_q\,
	combout => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~27feeder_combout\);

-- Location: FF_X77_Y79_N41
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~27feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~27_q\);

-- Location: FF_X64_Y1_N41
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~28feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~28_q\);

-- Location: LABCELL_X64_Y1_N39
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~28feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~28feeder_combout\ = ( \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~28_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~28_q\,
	combout => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~28feeder_combout\);

-- Location: FF_X64_Y1_N40
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~28DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~28feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~28DUPLICATE_q\);

-- Location: LABCELL_X57_Y1_N42
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~29feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~29feeder_combout\ = ( \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~29DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~29DUPLICATE_q\,
	combout => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~29feeder_combout\);

-- Location: FF_X57_Y1_N44
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~29DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~29feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~29DUPLICATE_q\);

-- Location: LABCELL_X36_Y1_N39
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~30feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~30feeder_combout\ = ( \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~30_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~30_q\,
	combout => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~30feeder_combout\);

-- Location: FF_X36_Y1_N41
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~30feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~30_q\);

-- Location: FF_X74_Y80_N41
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~31feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~31_q\);

-- Location: LABCELL_X74_Y80_N39
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~31feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~31feeder_combout\ = ( \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~31_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~31_q\,
	combout => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~31feeder_combout\);

-- Location: FF_X74_Y80_N40
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~31DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~31feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~31DUPLICATE_q\);

-- Location: FF_X50_Y2_N41
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~32DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~32feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~32DUPLICATE_q\);

-- Location: LABCELL_X50_Y2_N39
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~32feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~32feeder_combout\ = ( \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~32DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~32DUPLICATE_q\,
	combout => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~32feeder_combout\);

-- Location: FF_X50_Y2_N40
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~32feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~32_q\);

-- Location: LABCELL_X73_Y80_N51
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~33feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~33feeder_combout\ = ( \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~33_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~33_q\,
	combout => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~33feeder_combout\);

-- Location: FF_X73_Y80_N53
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~33feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~33_q\);

-- Location: LABCELL_X57_Y80_N39
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~34feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~34feeder_combout\ = ( \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~34_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~34_q\,
	combout => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~34feeder_combout\);

-- Location: FF_X57_Y80_N41
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~34feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~34_q\);

-- Location: LABCELL_X80_Y79_N42
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~35feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~35feeder_combout\ = ( \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~35_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~35_q\,
	combout => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~35feeder_combout\);

-- Location: FF_X80_Y79_N44
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~35feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~35_q\);

-- Location: LABCELL_X29_Y1_N42
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~36feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~36feeder_combout\ = ( \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~36_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \COMP_BANCO_REGISTRADORES|ALT_INV_MEM_BANCO_REG~36_q\,
	combout => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~36feeder_combout\);

-- Location: FF_X29_Y1_N44
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~36feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~36_q\);

-- Location: FF_X57_Y1_N43
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~29feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~29_q\);

-- Location: FF_X68_Y80_N40
\COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~24feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COMP_BANCO_REGISTRADORES|MEM_BANCO_REG~24_q\);

-- Location: MLABCELL_X28_Y56_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


