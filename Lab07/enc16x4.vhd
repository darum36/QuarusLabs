library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity enc16x4 is
    Port (
	        Ei : IN  std_logic;                     
	        R  : IN  std_logic_vector (15 downto 0); 
	        Eo : OUT std_logic;                   
	        G  : OUT std_logic;                     
	        A  : OUT std_logic_vector (3 downto 0)  
    	 );
end enc16x4;

architecture Behavioral of enc16x4 is

	COMPONENT enc8x3 
		PORT(
		        Ei : IN  std_logic;                     
		        R  : IN  std_logic_vector (7 downto 0); 
		        Eo : OUT std_logic;                   
		        G  : OUT std_logic;                     
		        A  : OUT std_logic_vector (2 downto 0) 
		    );
	END COMPONENT;

	SIGNAL inner_enb : std_logic;
	SIGNAL inner_g   : std_logic_vector (1 downto 0);
	SIGNAL inner_a   : std_logic_vector (5 downto 0);
	SIGNAL gap       : std_logic;
	
	BEGIN

		u1: enc8x3
		PORT MAP (Ei, R(15 downto 8), inner_enb, inner_g(1), inner_a(5 downto 3));

		u2: enc8x3
		PORT MAP (inner_enb, R(7 downto 0), gap, inner_g(0), inner_a(2 downto 0));
		
		Process (Ei, R)
		begin
			G <= inner_g(0) or inner_g(1);
			A(2 downto 0) <= inner_a(5 downto 3) or inner_a(2 downto 0);
			A(3) <= not inner_enb;
		end process;

END Behavioral;

		