LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY D_trig_double_clk_vhdl IS
	PORT( D  : IN  std_logic;
	      C1 : IN  std_logic;
	      C2 : IN  std_logic;
		  R  : IN  std_logic;
		  Q  : OUT std_logic);
END dtr1;

ARCHITECTURE behav OF dtr1 IS
	SIGNAL qs:std_logic;
	BEGIN PROCESS (l)
		BEGIN
			IF l='1' THEN
				qs <= d;
			END IF;
	END PROCESS;
	q <= qs;
END behav;