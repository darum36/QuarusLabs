library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Data_Transfer_Module is
    Port (
        data_in     : in  STD_LOGIC_VECTOR(7 downto 0);
        parity_in   : in  STD_LOGIC;
        error_sw    : in  STD_LOGIC;
        error_bit   : in  STD_LOGIC_VECTOR(2 downto 0);

        data_out    : out STD_LOGIC_VECTOR(7 downto 0);
        parity_out  : out STD_LOGIC
    );
end Data_Transfer_Module;

architecture Behavioral of Data_Transfer_Module is
begin
    process(data_in, error_sw, error_bit)
        variable bit_pos : integer;
		variable temp_data : STD_LOGIC_VECTOR(7 downto 0);
    begin
		temp_data := data_in;

        if error_sw = '1' then
            bit_pos := to_integer(unsigned(error_bit));
            temp_data(bit_pos) := not temp_data(bit_pos);
        end if;
    
    	data_out <= temp_data;
    	parity_out <= parity_in;

    end process;
    
end Behavioral;