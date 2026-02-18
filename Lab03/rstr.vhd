LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY rstr IS
	PORT( s : IN std_logic;
		  r : IN std_logic;
		  q : INOUT std_logic;
		  qb: INOUT std_logic );
END rstr;

ARCHITECTURE behav OF rstr IS
	COMPONENT notand 
		PORT( a : IN std_logic;
		      b : IN std_logic;
		      c : INOUT std_logic);
	END COMPONENT;
	
	BEGIN
		u1: notand
		PORT MAP (s, qb, q);
		
		u2: notand
		PORT MAP (q, r, qb);
	
END behav;