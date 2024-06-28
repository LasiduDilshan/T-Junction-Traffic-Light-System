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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/28/2024 15:53:22"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	traffic_controller IS
    PORT (
	w_to_e : BUFFER std_logic_vector(2 DOWNTO 0);
	w_to_n : BUFFER std_logic_vector(2 DOWNTO 0);
	e_to_w : BUFFER std_logic_vector(2 DOWNTO 0);
	e_to_n : BUFFER std_logic_vector(2 DOWNTO 0);
	n_to_e : BUFFER std_logic_vector(2 DOWNTO 0);
	n_to_w : BUFFER std_logic_vector(2 DOWNTO 0);
	clk : IN std_logic;
	rst : IN std_logic
	);
END traffic_controller;

-- Design Ports Information
-- w_to_e[0]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_to_e[1]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_to_e[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_to_n[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_to_n[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_to_n[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e_to_w[0]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- e_to_w[1]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- e_to_w[2]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- e_to_n[0]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- e_to_n[1]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- e_to_n[2]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- n_to_e[0]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_to_e[1]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- n_to_e[2]	=>  Location: PIN_B1,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- n_to_w[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_to_w[1]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_to_w[2]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- rst	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF traffic_controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_w_to_e : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_w_to_n : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_e_to_w : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_e_to_n : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_n_to_e : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_n_to_w : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \w_to_e[0]~output_o\ : std_logic;
SIGNAL \w_to_e[1]~output_o\ : std_logic;
SIGNAL \w_to_e[2]~output_o\ : std_logic;
SIGNAL \w_to_n[0]~output_o\ : std_logic;
SIGNAL \w_to_n[1]~output_o\ : std_logic;
SIGNAL \w_to_n[2]~output_o\ : std_logic;
SIGNAL \e_to_w[0]~output_o\ : std_logic;
SIGNAL \e_to_w[1]~output_o\ : std_logic;
SIGNAL \e_to_w[2]~output_o\ : std_logic;
SIGNAL \e_to_n[0]~output_o\ : std_logic;
SIGNAL \e_to_n[1]~output_o\ : std_logic;
SIGNAL \e_to_n[2]~output_o\ : std_logic;
SIGNAL \n_to_e[0]~output_o\ : std_logic;
SIGNAL \n_to_e[1]~output_o\ : std_logic;
SIGNAL \n_to_e[2]~output_o\ : std_logic;
SIGNAL \n_to_w[0]~output_o\ : std_logic;
SIGNAL \n_to_w[1]~output_o\ : std_logic;
SIGNAL \n_to_w[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sub_state[0]~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \count[0]~27_combout\ : std_logic;
SIGNAL \count[0]~28\ : std_logic;
SIGNAL \count[1]~29_combout\ : std_logic;
SIGNAL \count[1]~30\ : std_logic;
SIGNAL \count[2]~31_combout\ : std_logic;
SIGNAL \count[2]~32\ : std_logic;
SIGNAL \count[3]~33_combout\ : std_logic;
SIGNAL \count[3]~34\ : std_logic;
SIGNAL \count[4]~35_combout\ : std_logic;
SIGNAL \count[4]~36\ : std_logic;
SIGNAL \count[5]~37_combout\ : std_logic;
SIGNAL \count[5]~38\ : std_logic;
SIGNAL \count[6]~39_combout\ : std_logic;
SIGNAL \count[6]~40\ : std_logic;
SIGNAL \count[7]~41_combout\ : std_logic;
SIGNAL \count[7]~42\ : std_logic;
SIGNAL \count[8]~43_combout\ : std_logic;
SIGNAL \count[8]~44\ : std_logic;
SIGNAL \count[9]~45_combout\ : std_logic;
SIGNAL \count[9]~46\ : std_logic;
SIGNAL \count[10]~47_combout\ : std_logic;
SIGNAL \count[10]~48\ : std_logic;
SIGNAL \count[11]~49_combout\ : std_logic;
SIGNAL \count[11]~50\ : std_logic;
SIGNAL \count[12]~51_combout\ : std_logic;
SIGNAL \count[12]~52\ : std_logic;
SIGNAL \count[13]~53_combout\ : std_logic;
SIGNAL \count[13]~54\ : std_logic;
SIGNAL \count[14]~55_combout\ : std_logic;
SIGNAL \count[14]~56\ : std_logic;
SIGNAL \count[15]~57_combout\ : std_logic;
SIGNAL \count[15]~58\ : std_logic;
SIGNAL \count[16]~59_combout\ : std_logic;
SIGNAL \count[16]~60\ : std_logic;
SIGNAL \count[17]~61_combout\ : std_logic;
SIGNAL \count[17]~62\ : std_logic;
SIGNAL \count[18]~63_combout\ : std_logic;
SIGNAL \count[18]~64\ : std_logic;
SIGNAL \count[19]~65_combout\ : std_logic;
SIGNAL \count[19]~66\ : std_logic;
SIGNAL \count[20]~67_combout\ : std_logic;
SIGNAL \count[20]~68\ : std_logic;
SIGNAL \count[21]~69_combout\ : std_logic;
SIGNAL \count[21]~70\ : std_logic;
SIGNAL \count[22]~71_combout\ : std_logic;
SIGNAL \count[22]~72\ : std_logic;
SIGNAL \count[23]~73_combout\ : std_logic;
SIGNAL \count[23]~74\ : std_logic;
SIGNAL \count[24]~75_combout\ : std_logic;
SIGNAL \count[24]~76\ : std_logic;
SIGNAL \count[25]~77_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \count[25]~78\ : std_logic;
SIGNAL \count[26]~79_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \w_to_e~0_combout\ : std_logic;
SIGNAL \sub_state[1]~feeder_combout\ : std_logic;
SIGNAL \state~3_combout\ : std_logic;
SIGNAL \state[2]~0_combout\ : std_logic;
SIGNAL \state~2_combout\ : std_logic;
SIGNAL \state[2]~1_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \w_to_n~0_combout\ : std_logic;
SIGNAL \w_to_n~1_combout\ : std_logic;
SIGNAL \w_to_n~2_combout\ : std_logic;
SIGNAL \e_to_w~0_combout\ : std_logic;
SIGNAL \e_to_w~1_combout\ : std_logic;
SIGNAL \e_to_w~2_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \n_to_e~0_combout\ : std_logic;
SIGNAL \n_to_e~1_combout\ : std_logic;
SIGNAL \n_to_e~2_combout\ : std_logic;
SIGNAL \n_to_e~3_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL sub_state : std_logic_vector(1 DOWNTO 0);
SIGNAL state : std_logic_vector(2 DOWNTO 0);
SIGNAL count : std_logic_vector(26 DOWNTO 0);
SIGNAL \ALT_INV_LessThan0~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_n_to_e~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_e_to_w~1_combout\ : std_logic;
SIGNAL \ALT_INV_w_to_n~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

BEGIN

w_to_e <= ww_w_to_e;
w_to_n <= ww_w_to_n;
e_to_w <= ww_e_to_w;
e_to_n <= ww_e_to_n;
n_to_e <= ww_n_to_e;
n_to_w <= ww_n_to_w;
ww_clk <= clk;
ww_rst <= rst;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_LessThan0~10_combout\ <= NOT \LessThan0~10_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_n_to_e~2_combout\ <= NOT \n_to_e~2_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_e_to_w~1_combout\ <= NOT \e_to_w~1_combout\;
\ALT_INV_w_to_n~1_combout\ <= NOT \w_to_n~1_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;

-- Location: IOOBUF_X14_Y34_N16
\w_to_e[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \w_to_e[0]~output_o\);

-- Location: IOOBUF_X11_Y34_N2
\w_to_e[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \w_to_e[1]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\w_to_e[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \w_to_e[2]~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\w_to_n[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w_to_n~0_combout\,
	devoe => ww_devoe,
	o => \w_to_n[0]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\w_to_n[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_w_to_n~1_combout\,
	devoe => ww_devoe,
	o => \w_to_n[1]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\w_to_n[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w_to_n~2_combout\,
	devoe => ww_devoe,
	o => \w_to_n[2]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\e_to_w[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e_to_w~0_combout\,
	devoe => ww_devoe,
	o => \e_to_w[0]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\e_to_w[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_e_to_w~1_combout\,
	devoe => ww_devoe,
	o => \e_to_w[1]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\e_to_w[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e_to_w~2_combout\,
	devoe => ww_devoe,
	o => \e_to_w[2]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\e_to_n[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \e_to_n[0]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\e_to_n[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \e_to_n[1]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\e_to_n[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \e_to_n[2]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\n_to_e[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n_to_e~1_combout\,
	devoe => ww_devoe,
	o => \n_to_e[0]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\n_to_e[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_n_to_e~2_combout\,
	devoe => ww_devoe,
	o => \n_to_e[1]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\n_to_e[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \n_to_e~3_combout\,
	devoe => ww_devoe,
	o => \n_to_e[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\n_to_w[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \n_to_w[0]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\n_to_w[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \n_to_w[1]~output_o\);

-- Location: IOOBUF_X9_Y34_N23
\n_to_w[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \n_to_w[2]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G18
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

-- Location: LCCOMB_X17_Y30_N18
\sub_state[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub_state[0]~0_combout\ = !sub_state(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sub_state(0),
	combout => \sub_state[0]~0_combout\);

-- Location: IOIBUF_X5_Y34_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X18_Y30_N6
\count[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~27_combout\ = count(0) $ (VCC)
-- \count[0]~28\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datad => VCC,
	combout => \count[0]~27_combout\,
	cout => \count[0]~28\);

-- Location: FF_X18_Y30_N7
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[0]~27_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X18_Y30_N8
\count[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[1]~29_combout\ = (count(1) & (!\count[0]~28\)) # (!count(1) & ((\count[0]~28\) # (GND)))
-- \count[1]~30\ = CARRY((!\count[0]~28\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \count[0]~28\,
	combout => \count[1]~29_combout\,
	cout => \count[1]~30\);

-- Location: FF_X18_Y30_N9
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[1]~29_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X18_Y30_N10
\count[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[2]~31_combout\ = (count(2) & (\count[1]~30\ $ (GND))) # (!count(2) & (!\count[1]~30\ & VCC))
-- \count[2]~32\ = CARRY((count(2) & !\count[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \count[1]~30\,
	combout => \count[2]~31_combout\,
	cout => \count[2]~32\);

-- Location: FF_X18_Y30_N11
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[2]~31_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X18_Y30_N12
\count[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[3]~33_combout\ = (count(3) & (!\count[2]~32\)) # (!count(3) & ((\count[2]~32\) # (GND)))
-- \count[3]~34\ = CARRY((!\count[2]~32\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \count[2]~32\,
	combout => \count[3]~33_combout\,
	cout => \count[3]~34\);

-- Location: FF_X18_Y30_N13
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[3]~33_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X18_Y30_N14
\count[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[4]~35_combout\ = (count(4) & (\count[3]~34\ $ (GND))) # (!count(4) & (!\count[3]~34\ & VCC))
-- \count[4]~36\ = CARRY((count(4) & !\count[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \count[3]~34\,
	combout => \count[4]~35_combout\,
	cout => \count[4]~36\);

-- Location: FF_X18_Y30_N15
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[4]~35_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X18_Y30_N16
\count[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[5]~37_combout\ = (count(5) & (!\count[4]~36\)) # (!count(5) & ((\count[4]~36\) # (GND)))
-- \count[5]~38\ = CARRY((!\count[4]~36\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datad => VCC,
	cin => \count[4]~36\,
	combout => \count[5]~37_combout\,
	cout => \count[5]~38\);

-- Location: FF_X18_Y30_N17
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[5]~37_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X18_Y30_N18
\count[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[6]~39_combout\ = (count(6) & (\count[5]~38\ $ (GND))) # (!count(6) & (!\count[5]~38\ & VCC))
-- \count[6]~40\ = CARRY((count(6) & !\count[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \count[5]~38\,
	combout => \count[6]~39_combout\,
	cout => \count[6]~40\);

-- Location: FF_X18_Y30_N19
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[6]~39_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X18_Y30_N20
\count[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[7]~41_combout\ = (count(7) & (!\count[6]~40\)) # (!count(7) & ((\count[6]~40\) # (GND)))
-- \count[7]~42\ = CARRY((!\count[6]~40\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \count[6]~40\,
	combout => \count[7]~41_combout\,
	cout => \count[7]~42\);

-- Location: FF_X18_Y30_N21
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[7]~41_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X18_Y30_N22
\count[8]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[8]~43_combout\ = (count(8) & (\count[7]~42\ $ (GND))) # (!count(8) & (!\count[7]~42\ & VCC))
-- \count[8]~44\ = CARRY((count(8) & !\count[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \count[7]~42\,
	combout => \count[8]~43_combout\,
	cout => \count[8]~44\);

-- Location: FF_X17_Y30_N25
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \count[8]~43_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X18_Y30_N24
\count[9]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[9]~45_combout\ = (count(9) & (!\count[8]~44\)) # (!count(9) & ((\count[8]~44\) # (GND)))
-- \count[9]~46\ = CARRY((!\count[8]~44\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datad => VCC,
	cin => \count[8]~44\,
	combout => \count[9]~45_combout\,
	cout => \count[9]~46\);

-- Location: FF_X18_Y30_N25
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[9]~45_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X18_Y30_N26
\count[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[10]~47_combout\ = (count(10) & (\count[9]~46\ $ (GND))) # (!count(10) & (!\count[9]~46\ & VCC))
-- \count[10]~48\ = CARRY((count(10) & !\count[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datad => VCC,
	cin => \count[9]~46\,
	combout => \count[10]~47_combout\,
	cout => \count[10]~48\);

-- Location: FF_X18_Y30_N27
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[10]~47_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X18_Y30_N28
\count[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[11]~49_combout\ = (count(11) & (!\count[10]~48\)) # (!count(11) & ((\count[10]~48\) # (GND)))
-- \count[11]~50\ = CARRY((!\count[10]~48\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(11),
	datad => VCC,
	cin => \count[10]~48\,
	combout => \count[11]~49_combout\,
	cout => \count[11]~50\);

-- Location: FF_X18_Y30_N29
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[11]~49_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X18_Y30_N30
\count[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[12]~51_combout\ = (count(12) & (\count[11]~50\ $ (GND))) # (!count(12) & (!\count[11]~50\ & VCC))
-- \count[12]~52\ = CARRY((count(12) & !\count[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datad => VCC,
	cin => \count[11]~50\,
	combout => \count[12]~51_combout\,
	cout => \count[12]~52\);

-- Location: FF_X18_Y30_N31
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[12]~51_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X18_Y29_N0
\count[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[13]~53_combout\ = (count(13) & (!\count[12]~52\)) # (!count(13) & ((\count[12]~52\) # (GND)))
-- \count[13]~54\ = CARRY((!\count[12]~52\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(13),
	datad => VCC,
	cin => \count[12]~52\,
	combout => \count[13]~53_combout\,
	cout => \count[13]~54\);

-- Location: FF_X18_Y29_N1
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[13]~53_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X18_Y29_N2
\count[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[14]~55_combout\ = (count(14) & (\count[13]~54\ $ (GND))) # (!count(14) & (!\count[13]~54\ & VCC))
-- \count[14]~56\ = CARRY((count(14) & !\count[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \count[13]~54\,
	combout => \count[14]~55_combout\,
	cout => \count[14]~56\);

-- Location: FF_X18_Y29_N3
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[14]~55_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X18_Y29_N4
\count[15]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[15]~57_combout\ = (count(15) & (!\count[14]~56\)) # (!count(15) & ((\count[14]~56\) # (GND)))
-- \count[15]~58\ = CARRY((!\count[14]~56\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(15),
	datad => VCC,
	cin => \count[14]~56\,
	combout => \count[15]~57_combout\,
	cout => \count[15]~58\);

-- Location: FF_X18_Y29_N5
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[15]~57_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X18_Y29_N6
\count[16]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[16]~59_combout\ = (count(16) & (\count[15]~58\ $ (GND))) # (!count(16) & (!\count[15]~58\ & VCC))
-- \count[16]~60\ = CARRY((count(16) & !\count[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datad => VCC,
	cin => \count[15]~58\,
	combout => \count[16]~59_combout\,
	cout => \count[16]~60\);

-- Location: FF_X18_Y29_N7
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[16]~59_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X18_Y29_N8
\count[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[17]~61_combout\ = (count(17) & (!\count[16]~60\)) # (!count(17) & ((\count[16]~60\) # (GND)))
-- \count[17]~62\ = CARRY((!\count[16]~60\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	datad => VCC,
	cin => \count[16]~60\,
	combout => \count[17]~61_combout\,
	cout => \count[17]~62\);

-- Location: FF_X18_Y29_N9
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[17]~61_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X18_Y29_N10
\count[18]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[18]~63_combout\ = (count(18) & (\count[17]~62\ $ (GND))) # (!count(18) & (!\count[17]~62\ & VCC))
-- \count[18]~64\ = CARRY((count(18) & !\count[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(18),
	datad => VCC,
	cin => \count[17]~62\,
	combout => \count[18]~63_combout\,
	cout => \count[18]~64\);

-- Location: FF_X18_Y29_N11
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[18]~63_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X18_Y29_N12
\count[19]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[19]~65_combout\ = (count(19) & (!\count[18]~64\)) # (!count(19) & ((\count[18]~64\) # (GND)))
-- \count[19]~66\ = CARRY((!\count[18]~64\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(19),
	datad => VCC,
	cin => \count[18]~64\,
	combout => \count[19]~65_combout\,
	cout => \count[19]~66\);

-- Location: FF_X18_Y29_N13
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[19]~65_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X18_Y29_N14
\count[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[20]~67_combout\ = (count(20) & (\count[19]~66\ $ (GND))) # (!count(20) & (!\count[19]~66\ & VCC))
-- \count[20]~68\ = CARRY((count(20) & !\count[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(20),
	datad => VCC,
	cin => \count[19]~66\,
	combout => \count[20]~67_combout\,
	cout => \count[20]~68\);

-- Location: FF_X18_Y29_N15
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[20]~67_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X18_Y29_N16
\count[21]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[21]~69_combout\ = (count(21) & (!\count[20]~68\)) # (!count(21) & ((\count[20]~68\) # (GND)))
-- \count[21]~70\ = CARRY((!\count[20]~68\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datad => VCC,
	cin => \count[20]~68\,
	combout => \count[21]~69_combout\,
	cout => \count[21]~70\);

-- Location: FF_X18_Y29_N17
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[21]~69_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X18_Y29_N18
\count[22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[22]~71_combout\ = (count(22) & (\count[21]~70\ $ (GND))) # (!count(22) & (!\count[21]~70\ & VCC))
-- \count[22]~72\ = CARRY((count(22) & !\count[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(22),
	datad => VCC,
	cin => \count[21]~70\,
	combout => \count[22]~71_combout\,
	cout => \count[22]~72\);

-- Location: FF_X18_Y29_N19
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[22]~71_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X18_Y29_N20
\count[23]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[23]~73_combout\ = (count(23) & (!\count[22]~72\)) # (!count(23) & ((\count[22]~72\) # (GND)))
-- \count[23]~74\ = CARRY((!\count[22]~72\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \count[22]~72\,
	combout => \count[23]~73_combout\,
	cout => \count[23]~74\);

-- Location: FF_X18_Y29_N21
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[23]~73_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X18_Y29_N22
\count[24]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[24]~75_combout\ = (count(24) & (\count[23]~74\ $ (GND))) # (!count(24) & (!\count[23]~74\ & VCC))
-- \count[24]~76\ = CARRY((count(24) & !\count[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(24),
	datad => VCC,
	cin => \count[23]~74\,
	combout => \count[24]~75_combout\,
	cout => \count[24]~76\);

-- Location: FF_X18_Y29_N23
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[24]~75_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X18_Y29_N24
\count[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[25]~77_combout\ = (count(25) & (!\count[24]~76\)) # (!count(25) & ((\count[24]~76\) # (GND)))
-- \count[25]~78\ = CARRY((!\count[24]~76\) # (!count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(25),
	datad => VCC,
	cin => \count[24]~76\,
	combout => \count[25]~77_combout\,
	cout => \count[25]~78\);

-- Location: FF_X18_Y29_N25
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[25]~77_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X17_Y30_N22
\LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (!count(17) & (!count(25) & !count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datac => count(25),
	datad => count(19),
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X17_Y30_N28
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (((!count(14)) # (!count(15))) # (!count(16))) # (!count(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datab => count(16),
	datac => count(15),
	datad => count(14),
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X18_Y29_N26
\count[26]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[26]~79_combout\ = count(26) $ (!\count[25]~78\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	cin => \count[25]~78\,
	combout => \count[26]~79_combout\);

-- Location: FF_X18_Y29_N27
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[26]~79_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: LCCOMB_X18_Y29_N28
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (((!count(19) & !count(18))) # (!count(20))) # (!count(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datab => count(21),
	datac => count(20),
	datad => count(18),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X18_Y29_N30
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ((!count(23)) # (!count(24))) # (!count(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(22),
	datac => count(24),
	datad => count(23),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X17_Y30_N4
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = ((!count(25) & ((\LessThan0~5_combout\) # (\LessThan0~6_combout\)))) # (!count(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datab => count(25),
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X18_Y30_N4
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (((!count(6)) # (!count(4))) # (!count(5))) # (!count(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datab => count(5),
	datac => count(4),
	datad => count(6),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X18_Y30_N0
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!count(12) & (!count(9) & (!count(10) & !count(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datab => count(9),
	datac => count(10),
	datad => count(11),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X18_Y30_N2
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (((!count(3)) # (!count(2))) # (!count(1))) # (!count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(1),
	datac => count(2),
	datad => count(3),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X17_Y30_N12
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!count(17) & (!count(8) & (!count(25) & !count(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datab => count(8),
	datac => count(25),
	datad => count(19),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X17_Y30_N6
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~1_combout\ & (\LessThan0~0_combout\ & ((\LessThan0~3_combout\) # (\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \LessThan0~1_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X17_Y30_N30
\LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (\LessThan0~7_combout\) # ((\LessThan0~4_combout\) # ((\LessThan0~8_combout\ & \LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datab => \LessThan0~9_combout\,
	datac => \LessThan0~7_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~10_combout\);

-- Location: FF_X17_Y30_N19
\sub_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sub_state[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sub_state(0));

-- Location: LCCOMB_X17_Y30_N26
\w_to_e~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \w_to_e~0_combout\ = sub_state(1) $ (sub_state(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sub_state(1),
	datac => sub_state(0),
	combout => \w_to_e~0_combout\);

-- Location: LCCOMB_X17_Y30_N8
\sub_state[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sub_state[1]~feeder_combout\ = \w_to_e~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w_to_e~0_combout\,
	combout => \sub_state[1]~feeder_combout\);

-- Location: FF_X17_Y30_N9
\sub_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sub_state[1]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sub_state(1));

-- Location: LCCOMB_X16_Y30_N10
\state~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~3_combout\ = (!state(0) & ((state(2)) # (!state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datac => state(0),
	datad => state(2),
	combout => \state~3_combout\);

-- Location: LCCOMB_X16_Y30_N24
\state[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state[2]~0_combout\ = (sub_state(0) & (!\LessThan0~10_combout\ & sub_state(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sub_state(0),
	datac => \LessThan0~10_combout\,
	datad => sub_state(1),
	combout => \state[2]~0_combout\);

-- Location: FF_X16_Y30_N11
\state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \state[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(0));

-- Location: LCCOMB_X16_Y30_N22
\state~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~2_combout\ = (state(0) & (!state(1))) # (!state(0) & (state(1) & state(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datac => state(1),
	datad => state(2),
	combout => \state~2_combout\);

-- Location: FF_X16_Y30_N23
\state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \state[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(1));

-- Location: LCCOMB_X16_Y30_N0
\state[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \state[2]~1_combout\ = state(2) $ (((state(1) & (state(0) & \state[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(0),
	datac => state(2),
	datad => \state[2]~0_combout\,
	combout => \state[2]~1_combout\);

-- Location: FF_X16_Y30_N1
\state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state[2]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(2));

-- Location: LCCOMB_X14_Y30_N12
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!sub_state(1) & (!state(2) & (!state(1) & sub_state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sub_state(1),
	datab => state(2),
	datac => state(1),
	datad => sub_state(0),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X14_Y30_N10
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!state(2) & (!state(1) & !sub_state(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(2),
	datac => state(1),
	datad => sub_state(0),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X16_Y30_N4
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!state(1) & (!state(2) & (sub_state(1) $ (sub_state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(2),
	datac => sub_state(1),
	datad => sub_state(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X14_Y30_N4
\w_to_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \w_to_n~0_combout\ = (\Mux8~0_combout\ & state(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datad => state(0),
	combout => \w_to_n~0_combout\);

-- Location: LCCOMB_X16_Y30_N16
\w_to_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \w_to_n~1_combout\ = ((state(2)) # ((state(1)) # (sub_state(0)))) # (!state(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(2),
	datac => state(1),
	datad => sub_state(0),
	combout => \w_to_n~1_combout\);

-- Location: LCCOMB_X16_Y30_N2
\w_to_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \w_to_n~2_combout\ = (!state(0)) # (!\Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datad => state(0),
	combout => \w_to_n~2_combout\);

-- Location: LCCOMB_X14_Y30_N14
\e_to_w~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \e_to_w~0_combout\ = (\Mux8~0_combout\ & !state(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datad => state(0),
	combout => \e_to_w~0_combout\);

-- Location: LCCOMB_X14_Y30_N20
\e_to_w~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \e_to_w~1_combout\ = (state(0)) # ((state(2)) # ((state(1)) # (sub_state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(2),
	datac => state(1),
	datad => sub_state(0),
	combout => \e_to_w~1_combout\);

-- Location: LCCOMB_X16_Y30_N12
\e_to_w~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \e_to_w~2_combout\ = (state(0)) # (!\Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datad => state(0),
	combout => \e_to_w~2_combout\);

-- Location: LCCOMB_X16_Y30_N26
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!state(0) & (!state(2) & (!sub_state(1) & sub_state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(2),
	datac => sub_state(1),
	datad => sub_state(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X16_Y30_N28
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (state(0)) # ((state(2)) # (sub_state(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(2),
	datad => sub_state(0),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X16_Y30_N30
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (state(0)) # ((state(2)) # (sub_state(1) $ (!sub_state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(2),
	datac => sub_state(1),
	datad => sub_state(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X16_Y30_N20
\n_to_e~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \n_to_e~0_combout\ = (!sub_state(1) & sub_state(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sub_state(1),
	datad => sub_state(0),
	combout => \n_to_e~0_combout\);

-- Location: LCCOMB_X16_Y30_N14
\n_to_e~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \n_to_e~1_combout\ = (!state(0) & (!state(2) & (state(1) & \n_to_e~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(2),
	datac => state(1),
	datad => \n_to_e~0_combout\,
	combout => \n_to_e~1_combout\);

-- Location: LCCOMB_X14_Y30_N22
\n_to_e~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \n_to_e~2_combout\ = (state(0)) # ((state(2)) # ((sub_state(0)) # (!state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(2),
	datac => state(1),
	datad => sub_state(0),
	combout => \n_to_e~2_combout\);

-- Location: LCCOMB_X14_Y30_N8
\n_to_e~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \n_to_e~3_combout\ = (state(0)) # ((state(2)) # ((!\w_to_e~0_combout\) # (!state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(2),
	datac => state(1),
	datad => \w_to_e~0_combout\,
	combout => \n_to_e~3_combout\);

-- Location: LCCOMB_X16_Y30_N8
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!state(2) & (\n_to_e~0_combout\ & (state(0) $ (state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(2),
	datac => state(1),
	datad => \n_to_e~0_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X16_Y30_N18
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (state(2)) # ((sub_state(0)) # (state(0) $ (!state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(2),
	datac => state(1),
	datad => sub_state(0),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X14_Y30_N2
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (state(2)) # ((state(0) $ (!state(1))) # (!\w_to_e~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(2),
	datac => state(1),
	datad => \w_to_e~0_combout\,
	combout => \Mux0~0_combout\);

ww_w_to_e(0) <= \w_to_e[0]~output_o\;

ww_w_to_e(1) <= \w_to_e[1]~output_o\;

ww_w_to_e(2) <= \w_to_e[2]~output_o\;

ww_w_to_n(0) <= \w_to_n[0]~output_o\;

ww_w_to_n(1) <= \w_to_n[1]~output_o\;

ww_w_to_n(2) <= \w_to_n[2]~output_o\;

ww_e_to_w(0) <= \e_to_w[0]~output_o\;

ww_e_to_w(1) <= \e_to_w[1]~output_o\;

ww_e_to_w(2) <= \e_to_w[2]~output_o\;

ww_e_to_n(0) <= \e_to_n[0]~output_o\;

ww_e_to_n(1) <= \e_to_n[1]~output_o\;

ww_e_to_n(2) <= \e_to_n[2]~output_o\;

ww_n_to_e(0) <= \n_to_e[0]~output_o\;

ww_n_to_e(1) <= \n_to_e[1]~output_o\;

ww_n_to_e(2) <= \n_to_e[2]~output_o\;

ww_n_to_w(0) <= \n_to_w[0]~output_o\;

ww_n_to_w(1) <= \n_to_w[1]~output_o\;

ww_n_to_w(2) <= \n_to_w[2]~output_o\;
END structure;


