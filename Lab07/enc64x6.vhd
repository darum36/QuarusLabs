library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity enc64x6 is
    Port (
	        Ei : IN  std_logic;                     
	        R  : IN  std_logic_vector (63 downto 0); 
	        Eo : OUT std_logic;                   
	        G  : OUT std_logic;                    
	        A  : OUT std_logic_vector (5 downto 0)  
    	 );
end enc64x6;

architecture Behavioral of enc64x6 is

	COMPONENT enc8x3 
		PORT(
		        Ei : IN  std_logic;                     
		        R  : IN  std_logic_vector (7 downto 0); 
		        Eo : OUT std_logic;                   
		        G  : OUT std_logic;                     
		        A  : OUT std_logic_vector (2 downto 0) 
		    );
	END COMPONENT;

	SIGNAL inner_enb : std_logic_vector (7 downto 0);
	SIGNAL inner_g   : std_logic_vector (8 downto 0);
	SIGNAL inner_a   : std_logic_vector (26 downto 0);


	
	BEGIN

		u1: enc8x3
		PORT MAP (Ei,           R(63 downto 56), inner_enb(0), inner_g(7), inner_a(23 downto 21));
		
		u2: enc8x3
		PORT MAP (inner_enb(0), R(55 downto 48), inner_enb(1), inner_g(6), inner_a(20 downto 18));

		u3: enc8x3
		PORT MAP (inner_enb(1), R(47 downto 40), inner_enb(2), inner_g(5), inner_a(17 downto 15));

		u4: enc8x3
		PORT MAP (inner_enb(2), R(39 downto 32), inner_enb(3), inner_g(4), inner_a(14 downto 12));

		u5: enc8x3
		PORT MAP (inner_enb(3), R(31 downto 24), inner_enb(4), inner_g(3), inner_a(11 downto 9));

		u6: enc8x3
		PORT MAP (inner_enb(4), R(23 downto 16), inner_enb(5), inner_g(2), inner_a(8 downto 6));

		u7: enc8x3
		PORT MAP (inner_enb(5), R(15 downto 8),  inner_enb(6), inner_g(1), inner_a(5 downto 3));

		u8: enc8x3
		PORT MAP (inner_enb(6), R(7 downto 0),   inner_enb(7), inner_g(0), inner_a(2 downto 0));

		u9: enc8x3
		PORT MAP (Ei,     inner_g(7 downto 0),       Eo,       inner_g(8),       A(5 downto 3));

		Process (Ei, R)
		begin
			A(2 downto 0) <= inner_a(23 downto 21) or inner_a(20 downto 18) or 
			                 inner_a(17 downto 15) or inner_a(14 downto 12) or 
			                 inner_a(11 downto 9) or inner_a(8 downto 6) or 
			                 inner_a(5 downto 3) or inner_a(2 downto 0);
			G <= inner_g(0) or inner_g(1) or inner_g(2) or inner_g(3) or 
                 inner_g(4) or inner_g(5) or inner_g(6) or inner_g(7);
		end process;

END Behavioral;
