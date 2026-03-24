library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DEMUX1x4 is
    Port (
			E   : IN  std_logic;
			X   : IN  std_logic_vector (1 downto 0);
		 	F   : OUT std_logic_vector (3 downto 0)
    	 );
end DEMUX1x4;

architecture behav of DEMUX1x4 is
begin
	process (X, E)
	begin
		F <= "0000";
		case X is
			when "00" => F(0) <= E;
			when "01" => F(1) <= E;
			when "10" => F(2) <= E;
			when "11" => F(3) <= E;
		end case;
	end process;
end behav;