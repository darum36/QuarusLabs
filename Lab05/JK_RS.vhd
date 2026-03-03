library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JK_RS is
    Port (
        J   : in STD_LOGIC;
        K   : in STD_LOGIC;
        Q   : out STD_LOGIC;
        nQ  : out STD_LOGIC
    );
end JK_RS;

architecture Behavioral of JK_RS is
    signal q_int, nq_int : STD_LOGIC;
begin
    q_int <= not (nq_int and (J and K));
    nq_int <= not (q_int and (not J and not K));
    
    Q <= q_int;
    nQ <= nq_int;
end Behavioral;