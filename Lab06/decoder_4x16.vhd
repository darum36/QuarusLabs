library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_4x16 is
    Port (
        A : in  STD_LOGIC_VECTOR(3 downto 0);
        Q : out STD_LOGIC_VECTOR(15 downto 0)
    );
end decoder_4x16;

architecture Structural of decoder_4x16 is
    component MUL_3_8
        Port (
            A : in  STD_LOGIC_VECTOR(2 downto 0);
            Q : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;
    
    signal Q_low, Q_high : STD_LOGIC_VECTOR(7 downto 0);
    signal A3, A3_not : STD_LOGIC;
    
begin
    A3 <= A(3);
    A3_not <= not A(3);

    dec_low: MUL_3_8 port map (A(2 downto 0), Q_low);
    dec_high: MUL_3_8 port map (A(2 downto 0), Q_high);

    gen_low: for i in 0 to 7 generate
        Q(i) <= Q_low(i) and A3_not;
    end generate;
    
    gen_high: for i in 0 to 7 generate
        Q(i+8) <= Q_high(i) and A3;
    end generate;
    
end Structural;