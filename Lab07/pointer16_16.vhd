library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pointer16_16 is
    Port (                   
        R  : IN  std_logic_vector (15 downto 0);                
        Q  : OUT std_logic_vector (15 downto 0)    
    );
end pointer16_16;

architecture behav of pointer16_16 is
begin
    process (R)
    begin
		if R(15) = '1' then
        	Q <= "1000000000000000";
        elsif R(14) = '1' then
        	Q <= "0100000000000000";
        elsif R(13) = '1' then
        	Q <= "0010000000000000";
        elsif R(12) = '1' then
        	Q <= "0001000000000000";
        elsif R(11) = '1' then
        	Q <= "0000100000000000";
        elsif R(10) = '1' then
        	Q <= "0000010000000000";
        elsif R(9) = '1' then
        	Q <= "0000001000000000";
        elsif R(8) = '1' then
        	Q <= "0000000100000000";
        elsif R(7) = '1' then
        	Q <= "0000000010000000";
        elsif R(6) = '1' then
        	Q <= "0000000001000000";
        elsif R(5) = '1' then
        	Q <= "0000000000100000";
        elsif R(4) = '1' then
        	Q <= "0000000000010000";
        elsif R(3) = '1' then
        	Q <= "0000000000001000";
        elsif R(2) = '1' then
        	Q <= "0000000000000100";
        elsif R(1) = '1' then
        	Q <= "0000000000000010";
        elsif R(0) = '1' then
        	Q <= "0000000000000001";
		end if;
    end process;
end behav;