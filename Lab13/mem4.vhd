library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mem4 is
    Port (
        A  : in std_logic_vector (1 downto 0);
        C  : in STD_LOGIC;
        D  : in STD_LOGIC;
        Q  : out STD_LOGIC
    );
end mem4;

architecture behav of mem4 is
	type mem is array (0 to 3) of STD_LOGIC;
	signal memory : mem := (others => '0');
begin
    process (C)
    begin
		IF rising_edge(C) THEN
			memory(to_integer(unsigned(A))) <= D;
		END IF;
	end process;
	
	process (A, memory)
    begin
        Q <= memory(to_integer(unsigned(A)));
    end process;

end behav;