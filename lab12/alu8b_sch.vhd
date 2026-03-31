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

ENTITY alu8b_sch IS 
	port
	(
		Cin :  IN  STD_LOGIC;
		M :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC_VECTOR(8 downto 1);
		B :  IN  STD_LOGIC_VECTOR(8 downto 1);
		S :  IN  STD_LOGIC_VECTOR(4 downto 1);
		P :  OUT  STD_LOGIC;
		G :  OUT  STD_LOGIC;
		G2 :  OUT  STD_LOGIC;
		P2 :  OUT  STD_LOGIC;
		Eq :  OUT  STD_LOGIC;
		Cout :  OUT  STD_LOGIC;
		F :  OUT  STD_LOGIC_VECTOR(8 downto 1)
	);
END alu8b_sch;

ARCHITECTURE bdf_type OF alu8b_sch IS 

attribute black_box : boolean;
attribute noopt : boolean;

component \74181_0\
	PORT(B0N : IN STD_LOGIC;
		 A0N : IN STD_LOGIC;
		 A1N : IN STD_LOGIC;
		 B1N : IN STD_LOGIC;
		 A3N : IN STD_LOGIC;
		 B2N : IN STD_LOGIC;
		 A2N : IN STD_LOGIC;
		 M : IN STD_LOGIC;
		 CN : IN STD_LOGIC;
		 B3N : IN STD_LOGIC;
		 S2 : IN STD_LOGIC;
		 S1 : IN STD_LOGIC;
		 S0 : IN STD_LOGIC;
		 S3 : IN STD_LOGIC;
		 PN : OUT STD_LOGIC;
		 GN : OUT STD_LOGIC;
		 F3N : OUT STD_LOGIC;
		 F1N : OUT STD_LOGIC;
		 F0N : OUT STD_LOGIC;
		 AEQB : OUT STD_LOGIC;
		 CN4 : OUT STD_LOGIC;
		 F2N : OUT STD_LOGIC);
end component;
attribute black_box of \74181_0\: component is true;
attribute noopt of \74181_0\: component is true;

component \74181_1\
	PORT(B0N : IN STD_LOGIC;
		 A0N : IN STD_LOGIC;
		 A1N : IN STD_LOGIC;
		 B1N : IN STD_LOGIC;
		 A3N : IN STD_LOGIC;
		 B2N : IN STD_LOGIC;
		 A2N : IN STD_LOGIC;
		 M : IN STD_LOGIC;
		 CN : IN STD_LOGIC;
		 B3N : IN STD_LOGIC;
		 S2 : IN STD_LOGIC;
		 S1 : IN STD_LOGIC;
		 S0 : IN STD_LOGIC;
		 S3 : IN STD_LOGIC;
		 PN : OUT STD_LOGIC;
		 GN : OUT STD_LOGIC;
		 F3N : OUT STD_LOGIC;
		 F1N : OUT STD_LOGIC;
		 F0N : OUT STD_LOGIC;
		 AEQB : OUT STD_LOGIC;
		 CN4 : OUT STD_LOGIC;
		 F2N : OUT STD_LOGIC);
end component;
attribute black_box of \74181_1\: component is true;
attribute noopt of \74181_1\: component is true;

signal	F_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(8 downto 1);
signal	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
signal	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
signal	SYNTHESIZED_WIRE_2 :  STD_LOGIC;


BEGIN 



b2v_inst : 74181_0
PORT MAP(B0N => B(1),
		 A0N => A(1),
		 A1N => A(2),
		 B1N => B(2),
		 A3N => A(4),
		 B2N => B(3),
		 A2N => A(3),
		 M => M,
		 CN => Cin,
		 B3N => B(4),
		 S2 => S(3),
		 S1 => S(2),
		 S0 => S(1),
		 S3 => S(4),
		 PN => P,
		 GN => G,
		 F3N => F_ALTERA_SYNTHESIZED(4),
		 F1N => F_ALTERA_SYNTHESIZED(2),
		 F0N => F_ALTERA_SYNTHESIZED(1),
		 AEQB => SYNTHESIZED_WIRE_1,
		 CN4 => SYNTHESIZED_WIRE_0,
		 F2N => F_ALTERA_SYNTHESIZED(3));

b2v_inst11 : 74181_1
PORT MAP(B0N => B(5),
		 A0N => A(5),
		 A1N => A(6),
		 B1N => B(6),
		 A3N => A(8),
		 B2N => B(7),
		 A2N => A(7),
		 M => M,
		 CN => SYNTHESIZED_WIRE_0,
		 B3N => B(8),
		 S2 => S(3),
		 S1 => S(2),
		 S0 => S(1),
		 S3 => S(4),
		 PN => P2,
		 GN => G2,
		 F3N => F_ALTERA_SYNTHESIZED(8),
		 F1N => F_ALTERA_SYNTHESIZED(6),
		 F0N => F_ALTERA_SYNTHESIZED(5),
		 AEQB => SYNTHESIZED_WIRE_2,
		 CN4 => Cout,
		 F2N => F_ALTERA_SYNTHESIZED(7));

Eq <= SYNTHESIZED_WIRE_1 AND SYNTHESIZED_WIRE_2;
F <= F_ALTERA_SYNTHESIZED;

END; 