library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TRS is
    Port (
        T   : in STD_LOGIC;
        R   : in STD_LOGIC;
        S   : in STD_LOGIC;
        Q   : out STD_LOGIC;
        nQ  : out STD_LOGIC
    );
end TRS;

architecture Behavioral of TRS is
    signal q_int : STD_LOGIC := '0';
begin
    process(T, R, S)
    begin
        if S = '0' then
            q_int <= '1';
        elsif R = '0' then
            q_int <= '0';
        elsif rising_edge(T) then
            q_int <= not q_int;
        end if;
    end process;

    Q <= q_int;
    nQ <= not q_int;

end Behavioral;