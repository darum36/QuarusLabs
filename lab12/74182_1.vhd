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

ENTITY 74182_1 IS 
PORT 
( 
	PN2	:	IN	 STD_LOGIC;
	GN2	:	IN	 STD_LOGIC;
	GN3	:	IN	 STD_LOGIC;
	PN3	:	IN	 STD_LOGIC;
	CI	:	IN	 STD_LOGIC;
	PN1	:	IN	 STD_LOGIC;
	PN0	:	IN	 STD_LOGIC;
	GN1	:	IN	 STD_LOGIC;
	GN0	:	IN	 STD_LOGIC;
	CY	:	OUT	 STD_LOGIC;
	CX	:	OUT	 STD_LOGIC
); 
END 74182_1;

ARCHITECTURE bdf_type OF 74182_1 IS 
BEGIN 

-- instantiate macrofunction 

b2v_inst1 : 74182
PORT MAP(PN2 => PN2,
		 GN2 => GN2,
		 GN3 => GN3,
		 PN3 => PN3,
		 CI => CI,
		 PN1 => PN1,
		 PN0 => PN0,
		 GN1 => GN1,
		 GN0 => GN0,
		 CY => CY,
		 CX => CX);

END; 