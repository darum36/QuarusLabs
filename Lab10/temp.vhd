-- Copyright (C) 1991-2005 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic       
-- functions, and any output files any of the foregoing           
-- (including device programming or simulation files), and any    
-- associated documentation or information are expressly subject  
-- to the terms and conditions of the Altera Program License      
-- Subscription Agreement, Altera MegaCore Function License       
-- Agreement, or other applicable license agreement, including,   
-- without limitation, that your use is for the sole purpose of   
-- programming logic devices manufactured by Altera and sold by   
-- Altera or its authorized distributors.  Please refer to the    
-- applicable agreement for further details.

-- PROGRAM "Quartus II"
-- VERSION "Version 5.0 Build 148 04/26/2005 SJ Full Version"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY temp IS 
	port
	(
		ErrorSwitch :  IN  STD_LOGIC;
		Din :  IN  STD_LOGIC_VECTOR(7 downto 0);
		ErrorBit :  IN  STD_LOGIC_VECTOR(2 downto 0);
		EVEN :  OUT  STD_LOGIC;
		Dout :  OUT  STD_LOGIC_VECTOR(7 downto 0)
	);
END temp;

ARCHITECTURE bdf_type OF temp IS 

component mod2_8b_sch
	PORT(D : IN STD_LOGIC;
		 X : IN STD_LOGIC_VECTOR(7 downto 0);
		 ODD : OUT STD_LOGIC;
		 EVEN : OUT STD_LOGIC
	);
end component;

component data_transfer_module
	PORT(parity_in : IN STD_LOGIC;
		 error_sw : IN STD_LOGIC;
		 data_in : IN STD_LOGIC_VECTOR(7 downto 0);
		 error_bit : IN STD_LOGIC_VECTOR(2 downto 0);
		 parity_out : OUT STD_LOGIC;
		 data_out : OUT STD_LOGIC_VECTOR(7 downto 0)
	);
end component;

signal	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
signal	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
signal	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(7 downto 0);
signal	SYNTHESIZED_WIRE_3 :  STD_LOGIC;


BEGIN 
Dout <= SYNTHESIZED_WIRE_2;
SYNTHESIZED_WIRE_0 <= '0';



b2v_inst : mod2_8b_sch
PORT MAP(D => SYNTHESIZED_WIRE_0,
		 X => Din,
		 EVEN => SYNTHESIZED_WIRE_3);

b2v_inst1 : mod2_8b_sch
PORT MAP(D => SYNTHESIZED_WIRE_1,
		 X => SYNTHESIZED_WIRE_2,
		 EVEN => EVEN);

b2v_inst3 : data_transfer_module
PORT MAP(parity_in => SYNTHESIZED_WIRE_3,
		 error_sw => ErrorSwitch,
		 data_in => Din,
		 error_bit => ErrorBit,
		 parity_out => SYNTHESIZED_WIRE_1,
		 data_out => SYNTHESIZED_WIRE_2);

END; 