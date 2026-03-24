library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SEL_LOG is
    Port (
			ENB : IN  std_logic;
			X   : IN  std_logic_vector (1 downto 0);
			A   : IN  std_logic_vector (1  downto 0);
		 	O   : OUT std_logic
    	 );
end SEL_LOG;

architecture Behavioral of SEL_LOG is

	COMPONENT MUX4x1 
		PORT(
				ENB : IN  std_logic;
				X   : IN  std_logic_vector (3 downto 0);
				A   : IN  std_logic_vector (1 downto 0);
			 	O   : OUT std_logic
		    );
	END COMPONENT;
	
	SIGNAL func : std_logic_vector (3 downto 0);
	
BEGIN
		u1: MUX4x1
		PORT MAP (ENB, func, A, O);
		
		Process (X)
		begin
			func(0) <= X(0) and X(1);
			func(1) <= X(0) or X(1);
			func(2) <= X(0) xor X(1);
			func(3) <= X(0) nand X(1);
		end process;
	
END Behavioral;