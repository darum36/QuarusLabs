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

ENTITY msb4_2 IS 
	port
	(
		A :  IN  STD_LOGIC_VECTOR(3 downto 0);
		B :  IN  STD_LOGIC_VECTOR(1 downto 0);
		C :  IN  STD_LOGIC_VECTOR(5 downto 0);
		D :  IN  STD_LOGIC_VECTOR(5 downto 0);
		S :  OUT  STD_LOGIC_VECTOR(5 downto 0)
	);
END msb4_2;

ARCHITECTURE bdf_type OF msb4_2 IS 

component sum_1b
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 Cin : IN STD_LOGIC;
		 Cout : OUT STD_LOGIC;
		 S : OUT STD_LOGIC
	);
end component;

signal	inner :  STD_LOGIC_VECTOR(7 downto 0);
signal	S_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(5 downto 0);
signal	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
signal	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
signal	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
signal	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
signal	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
signal	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
signal	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
signal	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
signal	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
signal	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
signal	SYNTHESIZED_WIRE_11 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_12 <= '0';



b2v_inst : sum_1b
PORT MAP(A => inner(0),
		 B => C(0),
		 Cin => D(0),
		 Cout => SYNTHESIZED_WIRE_1,
		 S => S_ALTERA_SYNTHESIZED(0));

inner(0) <= A(0) AND B(0);

b2v_inst10 : sum_1b
PORT MAP(A => inner(1),
		 B => inner(4),
		 Cin => C(1),
		 S => SYNTHESIZED_WIRE_0);

b2v_inst11 : sum_1b
PORT MAP(A => SYNTHESIZED_WIRE_0,
		 B => D(1),
		 Cin => SYNTHESIZED_WIRE_1,
		 Cout => SYNTHESIZED_WIRE_3,
		 S => S_ALTERA_SYNTHESIZED(1));

b2v_inst12 : sum_1b
PORT MAP(A => inner(2),
		 B => inner(5),
		 Cin => C(2),
		 S => SYNTHESIZED_WIRE_2);

b2v_inst13 : sum_1b
PORT MAP(A => SYNTHESIZED_WIRE_2,
		 B => D(2),
		 Cin => SYNTHESIZED_WIRE_3,
		 Cout => SYNTHESIZED_WIRE_5,
		 S => S_ALTERA_SYNTHESIZED(2));

b2v_inst14 : sum_1b
PORT MAP(A => inner(3),
		 B => inner(6),
		 Cin => C(3),
		 S => SYNTHESIZED_WIRE_4);

b2v_inst15 : sum_1b
PORT MAP(A => SYNTHESIZED_WIRE_4,
		 B => D(3),
		 Cin => SYNTHESIZED_WIRE_5,
		 Cout => SYNTHESIZED_WIRE_7,
		 S => S_ALTERA_SYNTHESIZED(3));

b2v_inst16 : sum_1b
PORT MAP(A => inner(4),
		 B => inner(7),
		 Cin => C(4),
		 S => SYNTHESIZED_WIRE_6);

b2v_inst17 : sum_1b
PORT MAP(A => SYNTHESIZED_WIRE_6,
		 B => D(4),
		 Cin => SYNTHESIZED_WIRE_7,
		 Cout => SYNTHESIZED_WIRE_11,
		 S => S_ALTERA_SYNTHESIZED(4));

b2v_inst18 : sum_1b
PORT MAP(A => SYNTHESIZED_WIRE_12,
		 B => SYNTHESIZED_WIRE_12,
		 Cin => C(5),
		 S => SYNTHESIZED_WIRE_10);

b2v_inst19 : sum_1b
PORT MAP(A => SYNTHESIZED_WIRE_10,
		 B => D(5),
		 Cin => SYNTHESIZED_WIRE_11,
		 S => S_ALTERA_SYNTHESIZED(5));

inner(1) <= A(1) AND B(0);

inner(2) <= A(2) AND B(0);

inner(3) <= A(3) AND B(0);

inner(4) <= A(0) AND B(1);

inner(5) <= A(1) AND B(1);

inner(6) <= A(2) AND B(1);

inner(7) <= A(3) AND B(1);
S <= S_ALTERA_SYNTHESIZED;

END; 