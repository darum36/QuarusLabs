library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JK_RS is
    Port (
        J  : in STD_LOGIC;
        K  : in STD_LOGIC;
        S  : in STD_LOGIC;
        R  : in STD_LOGIC;
        Q  : out STD_LOGIC;
        nQ : out STD_LOGIC
    );
end JK_RS;

architecture Behavioral of JK_RS is
	signal q_int, nq_int : STD_LOGIC;
	signal latch : STD_LOGIC;
begin
	
    process(J, K, S, R, q_int, nq_int)
    begin
	    if S = '0' then
            q_int <= '1';
            nq_int <= '0';
			latch <= '0';
        elsif R = '0' then
            q_int <= '0';
            nq_int <= '1';
            latch <= '0';
        else
	        if J = '1' and K = '1' and latch = '0' then
				latch <= '1';
                q_int <= not q_int;
                nq_int <= not nq_int;
            elsif J = '1' and K = '0' then
				latch <= '0';
                q_int <= '1';
                nq_int <= '0';
            elsif J = '0' and K = '1' then
				latch <= '0';
                q_int <= '0';
                nq_int <= '1';
            elsif J = '0' and K = '0' then 
				latch <= '0';
                q_int <= q_int;
                nq_int <= nq_int;
            end if;
        end if;
    end process;

    Q <= q_int;
    nQ <= nq_int;

end Behavioral;