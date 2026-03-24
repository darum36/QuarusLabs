library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity comp_2b is
    Port (
        X       : in  STD_LOGIC_VECTOR(1 downto 0);
        Y       : in  STD_LOGIC_VECTOR(1 downto 0);
        
        I_M     : in  STD_LOGIC;
        I_E     : in  STD_LOGIC;
        I_L     : in  STD_LOGIC;
        
        X_M  : out STD_LOGIC;
        X_E  : out STD_LOGIC;
        X_L  : out STD_LOGIC
    );
end comp_2b;

architecture Behavioral of comp_2b is
    signal X_int, Y_int : integer range 0 to 3;
begin
    X_int <= to_integer(unsigned(X));
    Y_int <= to_integer(unsigned(Y));
    
    process(X_int, Y_int, I_M, I_E, I_L)
    begin
        if X_int > Y_int then
            X_M <= '1';
            X_E <= '0';
            X_L <= '0';
        elsif X_int < Y_int then
            X_M <= '0';
            X_E <= '0';
            X_L <= '1';
        else
            X_M <= I_M;
            X_E <= I_E;
            X_L <= I_L;
        end if;
    end process;
end Behavioral;