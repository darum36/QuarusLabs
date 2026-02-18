LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY dtr IS
	PORT( d  : IN std_logic;
		  l  : IN std_logic;
		  q  : INOUT std_logic;
		  qb : INOUT std_logic );
END dtr;

ARCHITECTURE behav OF dtr IS
	COMPONENT notand 
		PORT( a : IN std_logic;
		      b : IN std_logic;
		      c : OUT std_logic );
	END COMPONENT;
	
	COMPONENT rstr 
		PORT( s  : IN std_logic;
		      r  : IN std_logic;
		      q  : INOUT std_logic;
			  qb : INOUT std_logic);
	END COMPONENT;
	
	SIGNAL s_signal, r_signal : std_logic;
	
	BEGIN
		u1: notand
		PORT MAP (d, l, s_signal);
		
		u2: notand
		PORT MAP (s_signal, l, r_signal);
		
		u3: rstr
		PORT MAP (s_signal, r_signal, q, qb);	
	
END behav;

CONFIGURATION con OF dtr IS
	FOR behav
		FOR u1, u2: notand
			USE ENTITY work.notand (behavior);
		END FOR;
		FOR u3 : rstr
			USE ENTITY work.rstr (behav);
		END FOR;
	END FOR;
END con;