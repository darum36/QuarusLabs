library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX4x1 is
    Port (
			ENB : IN  std_logic;
			X   : IN  std_logic_vector (3 downto 0);
			A   : IN  std_logic_vector (1 downto 0);
		 	O   : OUT std_logic
    	 );
end MUX4x1;

architecture behav of MUX4x1 is
begin
	process (A, ENB)
	begin
		IF ENB = '1' THEN
			case A is
				when "00" => O <= X(0);
				when "01" => O <= X(1);
				when "10" => O <= X(2);
				when "11" => O <= X(3);
			end case;
		ELSE 
			O <= '0';
		END IF;
	end process;
end behav;