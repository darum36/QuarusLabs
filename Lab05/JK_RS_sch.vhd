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

ENTITY JK_RS_sch IS 
	port
	(
		S :  IN  STD_LOGIC;
		J :  IN  STD_LOGIC;
		K :  IN  STD_LOGIC;
		R :  IN  STD_LOGIC;
		Q :  OUT  STD_LOGIC;
		Qi :  OUT  STD_LOGIC
	);
END JK_RS_sch;

ARCHITECTURE bdf_type OF JK_RS_sch IS 

signal	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
signal	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
signal	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
signal	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
signal	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
signal	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
signal	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
signal	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
signal	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
signal	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
signal	SYNTHESIZED_WIRE_15 :  STD_LOGIC;


BEGIN 
Q <= SYNTHESIZED_WIRE_20;
Qi <= SYNTHESIZED_WIRE_18;



SYNTHESIZED_WIRE_7 <= NOT(J AND SYNTHESIZED_WIRE_16);

SYNTHESIZED_WIRE_16 <= NOT(SYNTHESIZED_WIRE_1 AND SYNTHESIZED_WIRE_17);

SYNTHESIZED_WIRE_20 <= NOT(SYNTHESIZED_WIRE_18 AND SYNTHESIZED_WIRE_4);

SYNTHESIZED_WIRE_1 <= NOT(SYNTHESIZED_WIRE_19 AND SYNTHESIZED_WIRE_18);

SYNTHESIZED_WIRE_4 <= S AND SYNTHESIZED_WIRE_7;

SYNTHESIZED_WIRE_9 <= SYNTHESIZED_WIRE_8 AND R;

SYNTHESIZED_WIRE_19 <= NOT(K);


SYNTHESIZED_WIRE_18 <= NOT(SYNTHESIZED_WIRE_9 AND SYNTHESIZED_WIRE_20);

SYNTHESIZED_WIRE_8 <= NOT(SYNTHESIZED_WIRE_17 AND K);

SYNTHESIZED_WIRE_15 <= NOT(SYNTHESIZED_WIRE_20 AND SYNTHESIZED_WIRE_19);

SYNTHESIZED_WIRE_17 <= NOT(SYNTHESIZED_WIRE_16 AND SYNTHESIZED_WIRE_15);

END; 