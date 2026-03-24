library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX64x1 is
    Port (
			ENB : IN  std_logic;
			X   : IN  std_logic_vector (63 downto 0);
			A   : IN  std_logic_vector (5  downto 0);
		 	O   : OUT std_logic
    	 );
end MUX64x1;

architecture Behavioral of MUX64x1 is

	COMPONENT MUX4x1 
		PORT(
				ENB : IN  std_logic;
				X   : IN  std_logic_vector (3 downto 0);
				A   : IN  std_logic_vector (1 downto 0);
			 	O   : OUT std_logic
		    );
	END COMPONENT;
	
	SIGNAL inner : std_logic_vector (19 downto 0);
	
	BEGIN
		u1: MUX4x1
		PORT MAP (ENB, X(3 downto 0), A(1 downto 0), inner(0));
		
		u2: MUX4x1
		PORT MAP (ENB, X(7 downto 4), A(1 downto 0), inner(1));
		
		u3: MUX4x1
		PORT MAP (ENB, X(11 downto 8), A(1 downto 0), inner(2));
		
		u4: MUX4x1
		PORT MAP (ENB, X(15 downto 12), A(1 downto 0), inner(3));
		
		u5: MUX4x1
		PORT MAP (ENB, X(19 downto 16), A(1 downto 0), inner(4));
		
		u6: MUX4x1
		PORT MAP (ENB, X(23 downto 20), A(1 downto 0), inner(5));
		
		u7: MUX4x1
		PORT MAP (ENB, X(27 downto 24), A(1 downto 0), inner(6));
		
		u8: MUX4x1
		PORT MAP (ENB, X(31 downto 28), A(1 downto 0), inner(7));
		
		u9: MUX4x1
		PORT MAP (ENB, X(35 downto 32), A(1 downto 0), inner(8));
		
		u10: MUX4x1
		PORT MAP (ENB, X(39 downto 36), A(1 downto 0), inner(9));
		
		u11: MUX4x1
		PORT MAP (ENB, X(43 downto 40), A(1 downto 0), inner(10));
		
		u12: MUX4x1
		PORT MAP (ENB, X(47 downto 44), A(1 downto 0), inner(11));
		
		u13: MUX4x1
		PORT MAP (ENB, X(51 downto 48), A(1 downto 0), inner(12));
		
		u14: MUX4x1
		PORT MAP (ENB, X(55 downto 52), A(1 downto 0), inner(13));
		
		u15: MUX4x1
		PORT MAP (ENB, X(59 downto 56), A(1 downto 0), inner(14));
		
		u16: MUX4x1
		PORT MAP (ENB, X(63 downto 60), A(1 downto 0), inner(15));
		
		u17: MUX4x1
		PORT MAP (ENB, inner(3 downto 0), A(3 downto 2), inner(16));
		
		u18: MUX4x1
		PORT MAP (ENB, inner(7 downto 4), A(3 downto 2), inner(17));
		
		u19: MUX4x1
		PORT MAP (ENB, inner(11 downto 8), A(3 downto 2), inner(18));

		u20: MUX4x1
		PORT MAP (ENB, inner(15 downto 12), A(3 downto 2), inner(19));
		
		u21: MUX4x1
		PORT MAP (ENB, inner(19 downto 16), A(5 downto 4), O);
		
END Behavioral;