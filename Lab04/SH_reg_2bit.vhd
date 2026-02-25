LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY SH_reg_2bit IS
	PORT( D  : IN  std_logic;
	      C  : IN  std_logic;
		  Q0 : OUT std_logic;
		  Q1 : OUT std_logic);
END SH_reg_2bit;

ARCHITECTURE behav OF SH_reg_2bit IS
	SIGNAL reg : std_logic_vector(1 downto 0);
	BEGIN PROCESS (C)
		BEGIN
			IF rising_edge(C) THEN
				reg(1) <= reg(0);
				reg(0) <= D;
			END IF;
	END PROCESS;
	
	Q0 <= reg(0);
	Q1 <= reg(1);
END behav;