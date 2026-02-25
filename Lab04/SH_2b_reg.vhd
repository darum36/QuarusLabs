LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY SH_2b_reg IS
	PORT( 	D  : IN  std_logic;
	      	C1 : IN  std_logic;
			C2 : IN  std_logic;
			R  : IN  std_logic;
		  	Q  : OUT std_logic_vector (1 downto 0) );
END SH_2b_reg;

ARCHITECTURE beh OF SH_2b_reg IS

    SIGNAL stg1 : std_logic_vector(1 downto 0);
    SIGNAL stg2 : std_logic_vector(1 downto 0);

	BEGIN PROCESS (C1, R)
		BEGIN
			IF (R = '1') THEN
				stg1 <= "00";
			ELSIF rising_edge (C1) THEN
				stg1(1) <= D;
				stg1(0) <= stg1(1);
			END IF;
	END PROCESS;
	
	PROCESS (C2, R)
		BEGIN
			IF (R = '1') THEN
				stg2 <= "00";
			ELSIF rising_edge (C2) THEN
				stg2(1) <= stg1(0);
				stg2(0) <= stg2(1);
			END IF;
	END PROCESS;
	
	Q <= stg2;
	
END beh;


