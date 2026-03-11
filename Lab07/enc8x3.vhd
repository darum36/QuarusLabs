library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity enc8x3 is
    Port (
        Ei : IN  std_logic;                     
        R  : IN  std_logic_vector (7 downto 0); 
        Eo : OUT std_logic;                   
        G  : OUT std_logic;                     
        A  : OUT std_logic_vector (2 downto 0)    
    );
end enc8x3;

architecture behav of enc8x3 is
begin
    process (Ei, R)
    begin
        if Ei = '0' then
            A  <= "000";
            G  <= '0';
            Eo <= '0';
        else
            if R(7) = '1' then
                A <= "111";
                G <= '1';
                Eo <= '0';
            elsif R(6) = '1' then
                A <= "110";
                G <= '1';
                Eo <= '0';
            elsif R(5) = '1' then
                A <= "101";
                G <= '1';
                Eo <= '0';
            elsif R(4) = '1' then
                A <= "100";
                G <= '1';
                Eo <= '0';
            elsif R(3) = '1' then
                A <= "011";
                G <= '1';
                Eo <= '0';
            elsif R(2) = '1' then
                A <= "010";
                G <= '1';
                Eo <= '0';
            elsif R(1) = '1' then
                A <= "001";
                G <= '1';
                Eo <= '0';
            elsif R(0) = '1' then
                A <= "000";
                G <= '1';
                Eo <= '0';
            else
                A <= "000";
                G <= '0';
                Eo <= '1';
            end if;
        end if;
    end process;
end behav;