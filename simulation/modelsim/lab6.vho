-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "11/28/2023 18:39:35"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab6 IS
    PORT (
	R_first_four : OUT std_logic_vector(1 TO 7);
	Clock : IN std_logic;
	Reset_A : IN std_logic;
	A : IN std_logic_vector(7 DOWNTO 0);
	Reset_B : IN std_logic;
	B : IN std_logic_vector(7 DOWNTO 0);
	En : IN std_logic;
	Data_in : IN std_logic;
	FSM_reset : IN std_logic;
	R_last_four : OUT std_logic_vector(1 TO 7);
	sign : OUT std_logic_vector(1 TO 7);
	student_id : OUT std_logic_vector(6 DOWNTO 0)
	);
END lab6;

-- Design Ports Information
-- R_first_four[1]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[2]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[3]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[4]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[5]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[6]	=>  Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_first_four[7]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[2]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[3]	=>  Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[4]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[5]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[6]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R_last_four[7]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sign[1]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sign[2]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sign[3]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sign[4]	=>  Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sign[5]	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sign[6]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sign[7]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[6]	=>  Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[5]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[4]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[3]	=>  Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[2]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[1]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[0]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Clock	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- En	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FSM_reset	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Data_in	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset_A	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset_B	=>  Location: PIN_P26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[4]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[5]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[6]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[7]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lab6 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_R_first_four : std_logic_vector(1 TO 7);
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Reset_A : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Reset_B : std_logic;
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_En : std_logic;
SIGNAL ww_Data_in : std_logic;
SIGNAL ww_FSM_reset : std_logic;
SIGNAL ww_R_last_four : std_logic_vector(1 TO 7);
SIGNAL ww_sign : std_logic_vector(1 TO 7);
SIGNAL ww_student_id : std_logic_vector(6 DOWNTO 0);
SIGNAL \FSM_reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset_A~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset_B~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \Clock~clk_delay_ctrl_clkout\ : std_logic;
SIGNAL \Clock~clkctrl_outclk\ : std_logic;
SIGNAL \Reset_A~combout\ : std_logic;
SIGNAL \Reset_A~clkctrl_outclk\ : std_logic;
SIGNAL \inst13|Q[2]~feeder_combout\ : std_logic;
SIGNAL \Reset_B~combout\ : std_logic;
SIGNAL \Reset_B~clkctrl_outclk\ : std_logic;
SIGNAL \inst16|Result~2_combout\ : std_logic;
SIGNAL \En~combout\ : std_logic;
SIGNAL \FSM_reset~combout\ : std_logic;
SIGNAL \FSM_reset~clkctrl_outclk\ : std_logic;
SIGNAL \Data_in~combout\ : std_logic;
SIGNAL \inst18|yfsm.s5~regout\ : std_logic;
SIGNAL \inst18|yfsm.s3~feeder_combout\ : std_logic;
SIGNAL \inst18|yfsm.s3~regout\ : std_logic;
SIGNAL \inst18|yfsm.s1~feeder_combout\ : std_logic;
SIGNAL \inst18|yfsm.s1~regout\ : std_logic;
SIGNAL \inst18|yfsm.s0~0_combout\ : std_logic;
SIGNAL \inst18|yfsm.s0~regout\ : std_logic;
SIGNAL \inst18|yfsm.s8~0_combout\ : std_logic;
SIGNAL \inst18|yfsm.s8~regout\ : std_logic;
SIGNAL \inst18|yfsm.s6~regout\ : std_logic;
SIGNAL \inst18|yfsm.s4~regout\ : std_logic;
SIGNAL \inst18|yfsm.s2~feeder_combout\ : std_logic;
SIGNAL \inst18|yfsm.s2~regout\ : std_logic;
SIGNAL \inst18|yfsm.s7~regout\ : std_logic;
SIGNAL \inst16|Equal8~0_combout\ : std_logic;
SIGNAL \inst16|Result~3_combout\ : std_logic;
SIGNAL \inst16|Result~0_combout\ : std_logic;
SIGNAL \inst13|Q[1]~feeder_combout\ : std_logic;
SIGNAL \inst16|Result~1_combout\ : std_logic;
SIGNAL \inst11|Mux0~0_combout\ : std_logic;
SIGNAL \inst11|Mux1~0_combout\ : std_logic;
SIGNAL \inst11|Mux2~0_combout\ : std_logic;
SIGNAL \inst11|Mux3~0_combout\ : std_logic;
SIGNAL \inst11|Mux4~0_combout\ : std_logic;
SIGNAL \inst11|Mux5~0_combout\ : std_logic;
SIGNAL \inst11|Mux6~0_combout\ : std_logic;
SIGNAL \inst12|Q[7]~feeder_combout\ : std_logic;
SIGNAL \inst16|Result~7_combout\ : std_logic;
SIGNAL \inst12|Q[5]~feeder_combout\ : std_logic;
SIGNAL \inst16|Result~5_combout\ : std_logic;
SIGNAL \inst13|Q[6]~feeder_combout\ : std_logic;
SIGNAL \inst12|Q[6]~feeder_combout\ : std_logic;
SIGNAL \inst16|Result~6_combout\ : std_logic;
SIGNAL \inst13|Q[4]~feeder_combout\ : std_logic;
SIGNAL \inst12|Q[4]~feeder_combout\ : std_logic;
SIGNAL \inst16|Result~4_combout\ : std_logic;
SIGNAL \inst15|Mux0~0_combout\ : std_logic;
SIGNAL \inst15|Mux1~0_combout\ : std_logic;
SIGNAL \inst15|Mux2~0_combout\ : std_logic;
SIGNAL \inst15|Mux3~0_combout\ : std_logic;
SIGNAL \inst15|Mux4~0_combout\ : std_logic;
SIGNAL \inst15|Mux5~0_combout\ : std_logic;
SIGNAL \inst15|Mux6~0_combout\ : std_logic;
SIGNAL \inst18|WideOr12~0_combout\ : std_logic;
SIGNAL \inst18|WideOr13~combout\ : std_logic;
SIGNAL \inst17|Mux0~0_combout\ : std_logic;
SIGNAL \inst17|Mux1~2_combout\ : std_logic;
SIGNAL \inst17|Mux4~0_combout\ : std_logic;
SIGNAL \inst17|Mux5~0_combout\ : std_logic;
SIGNAL \inst17|Mux5~1_combout\ : std_logic;
SIGNAL \B~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst16|Result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst12|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst13|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Reset_B~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Reset_A~clkctrl_outclk\ : std_logic;
SIGNAL \inst17|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst17|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst15|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

R_first_four <= ww_R_first_four;
ww_Clock <= Clock;
ww_Reset_A <= Reset_A;
ww_A <= A;
ww_Reset_B <= Reset_B;
ww_B <= B;
ww_En <= En;
ww_Data_in <= Data_in;
ww_FSM_reset <= FSM_reset;
R_last_four <= ww_R_last_four;
sign <= ww_sign;
student_id <= ww_student_id;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\FSM_reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \FSM_reset~combout\);

\Reset_A~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reset_A~combout\);

\Clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Clock~clk_delay_ctrl_clkout\);

\Reset_B~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reset_B~combout\);
\ALT_INV_Reset_B~clkctrl_outclk\ <= NOT \Reset_B~clkctrl_outclk\;
\ALT_INV_Reset_A~clkctrl_outclk\ <= NOT \Reset_A~clkctrl_outclk\;
\inst17|ALT_INV_Mux4~0_combout\ <= NOT \inst17|Mux4~0_combout\;
\inst17|ALT_INV_Mux0~0_combout\ <= NOT \inst17|Mux0~0_combout\;
\inst15|ALT_INV_Mux6~0_combout\ <= NOT \inst15|Mux6~0_combout\;
\inst11|ALT_INV_Mux6~0_combout\ <= NOT \inst11|Mux6~0_combout\;

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Clock,
	combout => \Clock~combout\);

-- Location: CLKDELAYCTRL_G7
\Clock~clk_delay_ctrl\ : cycloneii_clk_delay_ctrl
-- pragma translate_off
GENERIC MAP (
	delay_chain_mode => "none",
	use_new_style_dq_detection => "false")
-- pragma translate_on
PORT MAP (
	clk => \Clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	clkout => \Clock~clk_delay_ctrl_clkout\);

-- Location: CLKCTRL_G7
\Clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~clkctrl_outclk\);

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset_A~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Reset_A,
	combout => \Reset_A~combout\);

-- Location: CLKCTRL_G11
\Reset_A~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset_A~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset_A~clkctrl_outclk\);

-- Location: LCFF_X3_Y13_N11
\inst12|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(2),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|Q\(2));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: LCCOMB_X3_Y13_N12
\inst13|Q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Q[2]~feeder_combout\ = \B~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B~combout\(2),
	combout => \inst13|Q[2]~feeder_combout\);

-- Location: PIN_P26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset_B~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Reset_B,
	combout => \Reset_B~combout\);

-- Location: CLKCTRL_G5
\Reset_B~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset_B~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset_B~clkctrl_outclk\);

-- Location: LCFF_X3_Y13_N13
\inst13|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst13|Q[2]~feeder_combout\,
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|Q\(2));

-- Location: LCCOMB_X3_Y13_N10
\inst16|Result~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Result~2_combout\ = \inst12|Q\(2) $ (!\inst13|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|Q\(2),
	datad => \inst13|Q\(2),
	combout => \inst16|Result~2_combout\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\En~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_En,
	combout => \En~combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FSM_reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_FSM_reset,
	combout => \FSM_reset~combout\);

-- Location: CLKCTRL_G2
\FSM_reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FSM_reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FSM_reset~clkctrl_outclk\);

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Data_in~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Data_in,
	combout => \Data_in~combout\);

-- Location: LCFF_X2_Y13_N11
\inst18|yfsm.s5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst18|yfsm.s7~regout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|yfsm.s5~regout\);

-- Location: LCCOMB_X2_Y13_N0
\inst18|yfsm.s3~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|yfsm.s3~feeder_combout\ = \inst18|yfsm.s5~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|yfsm.s5~regout\,
	combout => \inst18|yfsm.s3~feeder_combout\);

-- Location: LCFF_X2_Y13_N1
\inst18|yfsm.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst18|yfsm.s3~feeder_combout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	ena => \Data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|yfsm.s3~regout\);

-- Location: LCCOMB_X2_Y13_N12
\inst18|yfsm.s1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|yfsm.s1~feeder_combout\ = \inst18|yfsm.s3~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|yfsm.s3~regout\,
	combout => \inst18|yfsm.s1~feeder_combout\);

-- Location: LCFF_X2_Y13_N13
\inst18|yfsm.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst18|yfsm.s1~feeder_combout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	ena => \Data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|yfsm.s1~regout\);

-- Location: LCCOMB_X2_Y13_N4
\inst18|yfsm.s0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|yfsm.s0~0_combout\ = !\inst18|yfsm.s1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|yfsm.s1~regout\,
	combout => \inst18|yfsm.s0~0_combout\);

-- Location: LCFF_X2_Y13_N5
\inst18|yfsm.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst18|yfsm.s0~0_combout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	ena => \Data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|yfsm.s0~regout\);

-- Location: LCCOMB_X1_Y13_N4
\inst18|yfsm.s8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|yfsm.s8~0_combout\ = !\inst18|yfsm.s0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|yfsm.s0~regout\,
	combout => \inst18|yfsm.s8~0_combout\);

-- Location: LCFF_X1_Y13_N5
\inst18|yfsm.s8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst18|yfsm.s8~0_combout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	ena => \Data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|yfsm.s8~regout\);

-- Location: LCFF_X1_Y13_N7
\inst18|yfsm.s6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst18|yfsm.s8~regout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|yfsm.s6~regout\);

-- Location: LCFF_X1_Y13_N19
\inst18|yfsm.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst18|yfsm.s6~regout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|yfsm.s4~regout\);

-- Location: LCCOMB_X2_Y13_N14
\inst18|yfsm.s2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|yfsm.s2~feeder_combout\ = \inst18|yfsm.s4~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst18|yfsm.s4~regout\,
	combout => \inst18|yfsm.s2~feeder_combout\);

-- Location: LCFF_X2_Y13_N15
\inst18|yfsm.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst18|yfsm.s2~feeder_combout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	ena => \Data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|yfsm.s2~regout\);

-- Location: LCFF_X2_Y13_N27
\inst18|yfsm.s7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst18|yfsm.s2~regout\,
	aclr => \FSM_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst18|yfsm.s7~regout\);

-- Location: LCCOMB_X2_Y13_N22
\inst16|Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Equal8~0_combout\ = (\En~combout\ & \inst18|yfsm.s7~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \En~combout\,
	datad => \inst18|yfsm.s7~regout\,
	combout => \inst16|Equal8~0_combout\);

-- Location: LCFF_X2_Y13_N9
\inst16|Result[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst16|Result~2_combout\,
	sload => VCC,
	ena => \inst16|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|Result\(2));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: LCFF_X3_Y13_N17
\inst13|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(3),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|Q\(3));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: LCFF_X3_Y13_N23
\inst12|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(3),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|Q\(3));

-- Location: LCCOMB_X3_Y13_N16
\inst16|Result~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Result~3_combout\ = \inst13|Q\(3) $ (!\inst12|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Q\(3),
	datad => \inst12|Q\(3),
	combout => \inst16|Result~3_combout\);

-- Location: LCFF_X2_Y13_N19
\inst16|Result[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst16|Result~3_combout\,
	sload => VCC,
	ena => \inst16|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|Result\(3));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: LCFF_X3_Y13_N27
\inst12|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(0),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|Q\(0));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: LCFF_X3_Y13_N29
\inst13|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(0),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|Q\(0));

-- Location: LCCOMB_X3_Y13_N26
\inst16|Result~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Result~0_combout\ = \inst12|Q\(0) $ (!\inst13|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|Q\(0),
	datad => \inst13|Q\(0),
	combout => \inst16|Result~0_combout\);

-- Location: LCFF_X2_Y13_N21
\inst16|Result[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst16|Result~0_combout\,
	sload => VCC,
	ena => \inst16|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|Result\(0));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LCFF_X3_Y13_N15
\inst12|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \A~combout\(1),
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|Q\(1));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: LCCOMB_X3_Y13_N0
\inst13|Q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Q[1]~feeder_combout\ = \B~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B~combout\(1),
	combout => \inst13|Q[1]~feeder_combout\);

-- Location: LCFF_X3_Y13_N1
\inst13|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst13|Q[1]~feeder_combout\,
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|Q\(1));

-- Location: LCCOMB_X3_Y13_N14
\inst16|Result~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Result~1_combout\ = \inst12|Q\(1) $ (!\inst13|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|Q\(1),
	datad => \inst13|Q\(1),
	combout => \inst16|Result~1_combout\);

-- Location: LCFF_X2_Y13_N31
\inst16|Result[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst16|Result~1_combout\,
	sload => VCC,
	ena => \inst16|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|Result\(1));

-- Location: LCCOMB_X2_Y13_N20
\inst11|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux0~0_combout\ = (\inst16|Result\(2) & (!\inst16|Result\(1) & (\inst16|Result\(3) $ (!\inst16|Result\(0))))) # (!\inst16|Result\(2) & (\inst16|Result\(0) & (\inst16|Result\(3) $ (!\inst16|Result\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Result\(2),
	datab => \inst16|Result\(3),
	datac => \inst16|Result\(0),
	datad => \inst16|Result\(1),
	combout => \inst11|Mux0~0_combout\);

-- Location: LCCOMB_X2_Y13_N30
\inst11|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux1~0_combout\ = (\inst16|Result\(1) & ((\inst16|Result\(0) & ((\inst16|Result\(3)))) # (!\inst16|Result\(0) & (\inst16|Result\(2))))) # (!\inst16|Result\(1) & (\inst16|Result\(2) & (\inst16|Result\(0) $ (\inst16|Result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Result\(0),
	datab => \inst16|Result\(2),
	datac => \inst16|Result\(1),
	datad => \inst16|Result\(3),
	combout => \inst11|Mux1~0_combout\);

-- Location: LCCOMB_X2_Y13_N28
\inst11|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux2~0_combout\ = (\inst16|Result\(2) & (\inst16|Result\(3) & ((\inst16|Result\(1)) # (!\inst16|Result\(0))))) # (!\inst16|Result\(2) & (!\inst16|Result\(0) & (\inst16|Result\(1) & !\inst16|Result\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Result\(0),
	datab => \inst16|Result\(1),
	datac => \inst16|Result\(2),
	datad => \inst16|Result\(3),
	combout => \inst11|Mux2~0_combout\);

-- Location: LCCOMB_X2_Y13_N2
\inst11|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux3~0_combout\ = (\inst16|Result\(1) & ((\inst16|Result\(0) & (\inst16|Result\(2))) # (!\inst16|Result\(0) & (!\inst16|Result\(2) & \inst16|Result\(3))))) # (!\inst16|Result\(1) & (!\inst16|Result\(3) & (\inst16|Result\(0) $ 
-- (\inst16|Result\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Result\(0),
	datab => \inst16|Result\(1),
	datac => \inst16|Result\(2),
	datad => \inst16|Result\(3),
	combout => \inst11|Mux3~0_combout\);

-- Location: LCCOMB_X2_Y13_N8
\inst11|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux4~0_combout\ = (\inst16|Result\(1) & (\inst16|Result\(0) & (!\inst16|Result\(3)))) # (!\inst16|Result\(1) & ((\inst16|Result\(2) & ((!\inst16|Result\(3)))) # (!\inst16|Result\(2) & (\inst16|Result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Result\(0),
	datab => \inst16|Result\(3),
	datac => \inst16|Result\(2),
	datad => \inst16|Result\(1),
	combout => \inst11|Mux4~0_combout\);

-- Location: LCCOMB_X3_Y13_N20
\inst11|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux5~0_combout\ = (!\inst16|Result\(3) & ((\inst16|Result\(1) & ((\inst16|Result\(0)) # (!\inst16|Result\(2)))) # (!\inst16|Result\(1) & (\inst16|Result\(0) & !\inst16|Result\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Result\(1),
	datab => \inst16|Result\(3),
	datac => \inst16|Result\(0),
	datad => \inst16|Result\(2),
	combout => \inst11|Mux5~0_combout\);

-- Location: LCCOMB_X2_Y13_N18
\inst11|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst11|Mux6~0_combout\ = (\inst16|Result\(2) & ((\inst16|Result\(3) $ (!\inst16|Result\(1))) # (!\inst16|Result\(0)))) # (!\inst16|Result\(2) & (((\inst16|Result\(3)) # (\inst16|Result\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Result\(0),
	datab => \inst16|Result\(2),
	datac => \inst16|Result\(3),
	datad => \inst16|Result\(1),
	combout => \inst11|Mux6~0_combout\);

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(7),
	combout => \B~combout\(7));

-- Location: LCFF_X1_Y13_N1
\inst13|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(7),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|Q\(7));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(7),
	combout => \A~combout\(7));

-- Location: LCCOMB_X3_Y13_N4
\inst12|Q[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|Q[7]~feeder_combout\ = \A~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A~combout\(7),
	combout => \inst12|Q[7]~feeder_combout\);

-- Location: LCFF_X3_Y13_N5
\inst12|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst12|Q[7]~feeder_combout\,
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|Q\(7));

-- Location: LCCOMB_X2_Y13_N6
\inst16|Result~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Result~7_combout\ = \inst13|Q\(7) $ (!\inst12|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Q\(7),
	datad => \inst12|Q\(7),
	combout => \inst16|Result~7_combout\);

-- Location: LCFF_X2_Y13_N7
\inst16|Result[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst16|Result~7_combout\,
	ena => \inst16|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|Result\(7));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(5),
	combout => \B~combout\(5));

-- Location: LCFF_X3_Y13_N9
\inst13|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \B~combout\(5),
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|Q\(5));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: LCCOMB_X3_Y13_N18
\inst12|Q[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|Q[5]~feeder_combout\ = \A~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A~combout\(5),
	combout => \inst12|Q[5]~feeder_combout\);

-- Location: LCFF_X3_Y13_N19
\inst12|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst12|Q[5]~feeder_combout\,
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|Q\(5));

-- Location: LCCOMB_X3_Y13_N8
\inst16|Result~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Result~5_combout\ = \inst13|Q\(5) $ (!\inst12|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Q\(5),
	datad => \inst12|Q\(5),
	combout => \inst16|Result~5_combout\);

-- Location: LCFF_X2_Y13_N23
\inst16|Result[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \inst16|Result~5_combout\,
	sload => VCC,
	ena => \inst16|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|Result\(5));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(6),
	combout => \B~combout\(6));

-- Location: LCCOMB_X1_Y13_N30
\inst13|Q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Q[6]~feeder_combout\ = \B~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B~combout\(6),
	combout => \inst13|Q[6]~feeder_combout\);

-- Location: LCFF_X1_Y13_N31
\inst13|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst13|Q[6]~feeder_combout\,
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|Q\(6));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: LCCOMB_X3_Y13_N2
\inst12|Q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|Q[6]~feeder_combout\ = \A~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A~combout\(6),
	combout => \inst12|Q[6]~feeder_combout\);

-- Location: LCFF_X3_Y13_N3
\inst12|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst12|Q[6]~feeder_combout\,
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|Q\(6));

-- Location: LCCOMB_X2_Y13_N16
\inst16|Result~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Result~6_combout\ = \inst13|Q\(6) $ (!\inst12|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|Q\(6),
	datad => \inst12|Q\(6),
	combout => \inst16|Result~6_combout\);

-- Location: LCFF_X2_Y13_N17
\inst16|Result[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst16|Result~6_combout\,
	ena => \inst16|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|Result\(6));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(4),
	combout => \B~combout\(4));

-- Location: LCCOMB_X3_Y13_N24
\inst13|Q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Q[4]~feeder_combout\ = \B~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B~combout\(4),
	combout => \inst13|Q[4]~feeder_combout\);

-- Location: LCFF_X3_Y13_N25
\inst13|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst13|Q[4]~feeder_combout\,
	aclr => \ALT_INV_Reset_B~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|Q\(4));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: LCCOMB_X3_Y13_N30
\inst12|Q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|Q[4]~feeder_combout\ = \A~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A~combout\(4),
	combout => \inst12|Q[4]~feeder_combout\);

-- Location: LCFF_X3_Y13_N31
\inst12|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst12|Q[4]~feeder_combout\,
	aclr => \ALT_INV_Reset_A~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|Q\(4));

-- Location: LCCOMB_X2_Y13_N24
\inst16|Result~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16|Result~4_combout\ = \inst13|Q\(4) $ (!\inst12|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|Q\(4),
	datad => \inst12|Q\(4),
	combout => \inst16|Result~4_combout\);

-- Location: LCFF_X2_Y13_N25
\inst16|Result[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \inst16|Result~4_combout\,
	ena => \inst16|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst16|Result\(4));

-- Location: LCCOMB_X1_Y13_N12
\inst15|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Mux0~0_combout\ = (\inst16|Result\(7) & (\inst16|Result\(4) & (\inst16|Result\(5) $ (\inst16|Result\(6))))) # (!\inst16|Result\(7) & (!\inst16|Result\(5) & (\inst16|Result\(6) $ (\inst16|Result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Result\(7),
	datab => \inst16|Result\(5),
	datac => \inst16|Result\(6),
	datad => \inst16|Result\(4),
	combout => \inst15|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y13_N10
\inst15|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Mux1~0_combout\ = (\inst16|Result\(7) & ((\inst16|Result\(4) & (\inst16|Result\(5))) # (!\inst16|Result\(4) & ((\inst16|Result\(6)))))) # (!\inst16|Result\(7) & (\inst16|Result\(6) & (\inst16|Result\(5) $ (\inst16|Result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Result\(7),
	datab => \inst16|Result\(5),
	datac => \inst16|Result\(6),
	datad => \inst16|Result\(4),
	combout => \inst15|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y13_N28
\inst15|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Mux2~0_combout\ = (\inst16|Result\(7) & (\inst16|Result\(6) & ((\inst16|Result\(5)) # (!\inst16|Result\(4))))) # (!\inst16|Result\(7) & (\inst16|Result\(5) & (!\inst16|Result\(6) & !\inst16|Result\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Result\(7),
	datab => \inst16|Result\(5),
	datac => \inst16|Result\(6),
	datad => \inst16|Result\(4),
	combout => \inst15|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y13_N24
\inst15|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Mux3~0_combout\ = (\inst16|Result\(5) & ((\inst16|Result\(6) & ((\inst16|Result\(4)))) # (!\inst16|Result\(6) & (\inst16|Result\(7) & !\inst16|Result\(4))))) # (!\inst16|Result\(5) & (!\inst16|Result\(7) & (\inst16|Result\(6) $ 
-- (\inst16|Result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Result\(7),
	datab => \inst16|Result\(5),
	datac => \inst16|Result\(6),
	datad => \inst16|Result\(4),
	combout => \inst15|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y13_N2
\inst15|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Mux4~0_combout\ = (\inst16|Result\(5) & (!\inst16|Result\(7) & ((\inst16|Result\(4))))) # (!\inst16|Result\(5) & ((\inst16|Result\(6) & (!\inst16|Result\(7))) # (!\inst16|Result\(6) & ((\inst16|Result\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Result\(7),
	datab => \inst16|Result\(5),
	datac => \inst16|Result\(6),
	datad => \inst16|Result\(4),
	combout => \inst15|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y13_N14
\inst15|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Mux5~0_combout\ = (!\inst16|Result\(7) & ((\inst16|Result\(5) & ((\inst16|Result\(4)) # (!\inst16|Result\(6)))) # (!\inst16|Result\(5) & (!\inst16|Result\(6) & \inst16|Result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Result\(7),
	datab => \inst16|Result\(5),
	datac => \inst16|Result\(6),
	datad => \inst16|Result\(4),
	combout => \inst15|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y13_N26
\inst15|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst15|Mux6~0_combout\ = (\inst16|Result\(6) & ((\inst16|Result\(7) $ (!\inst16|Result\(5))) # (!\inst16|Result\(4)))) # (!\inst16|Result\(6) & ((\inst16|Result\(7)) # ((\inst16|Result\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Result\(7),
	datab => \inst16|Result\(5),
	datac => \inst16|Result\(6),
	datad => \inst16|Result\(4),
	combout => \inst15|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y13_N6
\inst18|WideOr12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|WideOr12~0_combout\ = (\inst18|yfsm.s5~regout\) # ((\inst18|yfsm.s6~regout\) # (!\inst18|yfsm.s0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|yfsm.s5~regout\,
	datac => \inst18|yfsm.s6~regout\,
	datad => \inst18|yfsm.s0~regout\,
	combout => \inst18|WideOr12~0_combout\);

-- Location: LCCOMB_X1_Y13_N0
\inst18|WideOr13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18|WideOr13~combout\ = (\inst18|yfsm.s6~regout\) # (\inst18|yfsm.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|yfsm.s6~regout\,
	datad => \inst18|yfsm.s1~regout\,
	combout => \inst18|WideOr13~combout\);

-- Location: LCCOMB_X1_Y13_N22
\inst17|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Mux0~0_combout\ = (\inst18|yfsm.s8~regout\) # ((\inst18|yfsm.s4~regout\) # (\inst18|WideOr12~0_combout\ $ (\inst18|WideOr13~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|WideOr12~0_combout\,
	datab => \inst18|WideOr13~combout\,
	datac => \inst18|yfsm.s8~regout\,
	datad => \inst18|yfsm.s4~regout\,
	combout => \inst17|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y13_N18
\inst17|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Mux1~2_combout\ = (!\inst18|yfsm.s6~regout\ & (!\inst18|yfsm.s1~regout\ & (\inst18|WideOr12~0_combout\ $ (\inst18|yfsm.s4~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|WideOr12~0_combout\,
	datab => \inst18|yfsm.s6~regout\,
	datac => \inst18|yfsm.s4~regout\,
	datad => \inst18|yfsm.s1~regout\,
	combout => \inst17|Mux1~2_combout\);

-- Location: LCCOMB_X1_Y13_N8
\inst17|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Mux4~0_combout\ = (\inst18|yfsm.s8~regout\) # ((\inst18|yfsm.s4~regout\) # ((!\inst18|WideOr12~0_combout\ & \inst18|WideOr13~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|WideOr12~0_combout\,
	datab => \inst18|WideOr13~combout\,
	datac => \inst18|yfsm.s8~regout\,
	datad => \inst18|yfsm.s4~regout\,
	combout => \inst17|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y13_N20
\inst17|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Mux5~0_combout\ = (!\inst18|WideOr12~0_combout\ & (!\inst18|WideOr13~combout\ & (!\inst18|yfsm.s8~regout\ & !\inst18|yfsm.s4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|WideOr12~0_combout\,
	datab => \inst18|WideOr13~combout\,
	datac => \inst18|yfsm.s8~regout\,
	datad => \inst18|yfsm.s4~regout\,
	combout => \inst17|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y13_N16
\inst17|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17|Mux5~1_combout\ = (!\inst18|WideOr12~0_combout\ & (!\inst18|yfsm.s8~regout\ & !\inst18|yfsm.s4~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|WideOr12~0_combout\,
	datab => \inst18|yfsm.s8~regout\,
	datad => \inst18|yfsm.s4~regout\,
	combout => \inst17|Mux5~1_combout\);

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst11|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(1));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst11|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(2));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst11|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(3));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst11|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(4));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst11|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(5));

-- Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst11|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(6));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_first_four[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst11|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_first_four(7));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst15|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(1));

-- Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst15|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(2));

-- Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst15|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(3));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst15|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(4));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst15|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(5));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst15|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(6));

-- Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R_last_four[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst15|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R_last_four(7));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sign[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sign(1));

-- Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sign[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sign(2));

-- Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sign[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sign(3));

-- Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sign[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sign(4));

-- Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sign[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sign(5));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sign[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sign(6));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sign[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sign(7));

-- Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst17|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(6));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst17|Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(5));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(4));

-- Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst17|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(3));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst17|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(2));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst17|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(1));

-- Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst17|Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(0));
END structure;


