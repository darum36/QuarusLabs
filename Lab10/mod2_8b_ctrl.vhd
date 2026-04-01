library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mod2_8b_ctrl is
    Port (
        X       : in  STD_LOGIC_VECTOR(7 downto 0);
        D       : in  STD_LOGIC;
        EVEN    : out STD_LOGIC;
        ODD     : out STD_LOGIC
    );
end mod2_8b_ctrl;

architecture Behavioral of mod2_8b_ctrl is
    signal parity_out : STD_LOGIC;
begin
    process(X, D)
        variable parity : STD_LOGIC;
    begin
        parity := D;

        for i in 0 to 7 loop
            parity := parity xor X(i);
        end loop;
        
        parity_out <= parity;
    end process;
    
    ODD  <= parity_out;
    EVEN <= not parity_out;
    
end Behavioral;