LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mem_reg IS 
    PORT(
        X1, X2, X3, X4 : IN  std_logic;
        write          : IN  std_logic;
        reset          : IN  std_logic;
        read           : IN  std_logic;
        Q1, Q2, Q3, Q4 : OUT std_logic );
END mem_reg;

ARCHITECTURE behav OF mem_reg IS
    SIGNAL reg : std_logic_vector (3 DOWNTO 0);
BEGIN
    PROCESS(write, reset)
    BEGIN
        IF (reset = '0') THEN
            reg <= "0000";
        ELSIF (write = '1') THEN
            reg(3) <= X1;
            reg(2) <= X2;
            reg(1) <= X3;
            reg(0) <= X4;
        END IF;
    END PROCESS;
    
    Q1 <= reg(3) AND read;
    Q2 <= reg(2) AND read;
    Q3 <= reg(1) AND read;
    Q4 <= reg(0) AND read;
    
END behav;