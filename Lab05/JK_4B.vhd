LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

ENTITY JK_4B IS
	PORT( R  : IN  std_logic;
	      JK : IN  std_logic;
		  C  : IN  std_logic;
		  Q  : OUT std_logic_vector (3 downto 0));
END JK_4B;

ARCHITECTURE behav OF JK_4B IS
	SIGNAL reg : unsigned(3 downto 0);
	BEGIN PROCESS (C, R)
		BEGIN
			IF (R = '0') THEN
				reg <= "0000";
			ELSIF rising_edge(C) THEN
				IF (JK = '1') THEN
					reg <= reg + 1;
				END IF;
			END IF;
	END PROCESS;
	
	Q <= std_logic_vector(reg);
	
END behav;