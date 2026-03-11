library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_6x64 is
    Port (
        A : in  STD_LOGIC_VECTOR(5 downto 0);
        Q : out STD_LOGIC_VECTOR(63 downto 0)
    );
end decoder_6x64;

architecture Structural of decoder_6x64 is
    component MUL_3_8
        Port (
            A : in  STD_LOGIC_VECTOR(2 downto 0);
            Q : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;
    
    signal main_sel : STD_LOGIC_VECTOR(7 downto 0);
    signal slave_out0, slave_out1, slave_out2, slave_out3 : STD_LOGIC_VECTOR(7 downto 0);
    signal slave_out4, slave_out5, slave_out6, slave_out7 : STD_LOGIC_VECTOR(7 downto 0);
    
begin
    main: MUL_3_8 port map 
	(
        A => A(5 downto 3),
        Q => main_sel
    );
    
    slave0: MUL_3_8 port map (A => A(2 downto 0), Q => slave_out0);
    slave1: MUL_3_8 port map (A => A(2 downto 0), Q => slave_out1);
    slave2: MUL_3_8 port map (A => A(2 downto 0), Q => slave_out2);
    slave3: MUL_3_8 port map (A => A(2 downto 0), Q => slave_out3);
    slave4: MUL_3_8 port map (A => A(2 downto 0), Q => slave_out4);
    slave5: MUL_3_8 port map (A => A(2 downto 0), Q => slave_out5);
    slave6: MUL_3_8 port map (A => A(2 downto 0), Q => slave_out6);
    slave7: MUL_3_8 port map (A => A(2 downto 0), Q => slave_out7);
    
    process(main_sel, slave_out0, slave_out1, slave_out2, slave_out3,
            slave_out4, slave_out5, slave_out6, slave_out7)
    begin
        Q <= (others => '0');

        if main_sel(0) = '1' then
            Q(7 downto 0) <= slave_out0;
        elsif main_sel(1) = '1' then
            Q(15 downto 8) <= slave_out1;
        elsif main_sel(2) = '1' then
            Q(23 downto 16) <= slave_out2;
        elsif main_sel(3) = '1' then
            Q(31 downto 24) <= slave_out3;
        elsif main_sel(4) = '1' then
            Q(39 downto 32) <= slave_out4;
        elsif main_sel(5) = '1' then
            Q(47 downto 40) <= slave_out5;
        elsif main_sel(6) = '1' then
            Q(55 downto 48) <= slave_out6;
        elsif main_sel(7) = '1' then
            Q(63 downto 56) <= slave_out7;
        end if;
    end process;
    
end Structural;