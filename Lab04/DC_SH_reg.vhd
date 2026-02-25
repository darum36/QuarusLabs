LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY SH_2b_reg IS
	PORT( 	D  : IN  std_logic;
	      	C1 : IN  std_logic;
			C2 : IN  std_logic;
			R  : IN  std_logic;
		  	Q  : OUT std_logic );
END DC_SH_reg;

ARCHITECTURE beh OF dtr IS
	SIGNAL qs: std_logic;
	
	BEGIN PROCESS (C1, C2, R)
		BEGIN
			IF (R) THEN
				reg_f(1) <= 0;
				reg_f(0) <= 0;
			ELSE IF rising_edge (C1)
				reg_f(1) <= D;
				reg_f(0) <= reg_f(1);
			ELSE IF rising_edge (C2)
				reg_s(1) <= D;
				reg_f(0) <= reg_f(1);
			END IF;
	END PROCESS;
	
	Q1 <= reg(0);
	Q0 <= reg(1);
END beh;


