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

ENTITY MemoryReg IS 
	port
	(
		X1 :  IN  STD_LOGIC;
		X2 :  IN  STD_LOGIC;
		X3 :  IN  STD_LOGIC;
		X4 :  IN  STD_LOGIC;
		write :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		read :  IN  STD_LOGIC;
		Q1 :  OUT  STD_LOGIC;
		Q2 :  OUT  STD_LOGIC;
		Q3 :  OUT  STD_LOGIC;
		Q4 :  OUT  STD_LOGIC;
		inner1 :  OUT  STD_LOGIC;
		inner2 :  OUT  STD_LOGIC;
		inner3 :  OUT  STD_LOGIC;
		inner4 :  OUT  STD_LOGIC
	);
END MemoryReg;

ARCHITECTURE bdf_type OF MemoryReg IS 

signal	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
signal	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
signal	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
signal	SYNTHESIZED_WIRE_3 :  STD_LOGIC;


BEGIN 
inner1 <= SYNTHESIZED_WIRE_3;
inner2 <= SYNTHESIZED_WIRE_2;
inner3 <= SYNTHESIZED_WIRE_1;
inner4 <= SYNTHESIZED_WIRE_0;



process(write)
begin
if (rising_edge(write)) then
	SYNTHESIZED_WIRE_3 <= X1;
end if;
end process;

process(write,reset)
begin
if (reset = '0') then
	SYNTHESIZED_WIRE_2 <= '0';
elsif (rising_edge(write)) then
	SYNTHESIZED_WIRE_2 <= X2;
end if;
end process;

Q4 <= SYNTHESIZED_WIRE_0 AND read;

Q3 <= SYNTHESIZED_WIRE_1 AND read;

Q2 <= SYNTHESIZED_WIRE_2 AND read;

Q1 <= SYNTHESIZED_WIRE_3 AND read;

process(write,reset)
begin
if (reset = '0') then
	SYNTHESIZED_WIRE_1 <= '0';
elsif (rising_edge(write)) then
	SYNTHESIZED_WIRE_1 <= X3;
end if;
end process;

process(write,reset)
begin
if (reset = '0') then
	SYNTHESIZED_WIRE_0 <= '0';
elsif (rising_edge(write)) then
	SYNTHESIZED_WIRE_0 <= X4;
end if;
end process;

END; 