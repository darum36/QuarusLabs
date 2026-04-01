library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity maj3_v is
    Port (
        X    : in  STD_LOGIC_VECTOR(2 downto 0);
        Y    : out STD_LOGIC;
        A    : out STD_LOGIC_VECTOR(1 downto 0)
    );
end maj3_v;

architecture Behavioral of maj3_v is
begin

    Y <= (X(0) and X(1)) or (X(0) and X(2)) or (X(1) and X(2));

    A(1) <= X(1) xor X(2);
    A(0) <= X(0) xor X(2);

end Behavioral;
