library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUL_3_8 is
    Port (
			A  : IN  std_logic_vector (2 downto 0);
		 	Q  : OUT std_logic_vector (7 downto 0)
    	 );
end MUL_3_8;

architecture behav of MUL_3_8 is
begin
	process (A)
	begin
		case A is
			when "000" => Q <= "00000001";
			when "001" => Q <= "00000010";
			when "010" => Q <= "00000100";
			when "011" => Q <= "00001000";
			when "100" => Q <= "00010000";
			when "101" => Q <= "00100000";
			when "110" => Q <= "01000000";
			when "111" => Q <= "10000000";
		end case;
	end process;
end behav;