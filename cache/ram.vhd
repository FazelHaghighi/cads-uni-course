library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RAM is
    generic (
        DATA_WIDTH   : positive := 8; -- Width of data in bits
        ADDR_WIDTH   : positive := 10; -- Width of address in bits
        RAM_SIZE     : positive := 16 -- Number of words in RAM
    );
    port (
        clk     : in  STD_LOGIC;
        rst     : in  STD_LOGIC;
        read    : in  STD_LOGIC;
        write   : in  STD_LOGIC;
        address : in  STD_LOGIC_VECTOR(ADDR_WIDTH-1 downto 0);
        data_in : in  STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
        data_out: out STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0)
    );
end RAM;

architecture Behavioral of RAM is
    type RAMType is array (0 to RAM_SIZE-1) of STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
    signal ram_memory : RAMType;

begin
    
    process (clk, rst)
    begin
        if rst = '1' then
            -- Reset logic
            -- Initialize the RAM memory
            for i in RAM_MEMORY'range loop
                ram_memory(i) <= (others => '0');
            end loop;
        elsif rising_edge(clk) then
            -- RAM operation logic
            if read = '1' then
                -- Read operation
             data_out <= ram_memory(conv_integer(address));
            elsif write = '1' then
                -- Write operation
                ram_memory(conv_integer(address)) <= data_in;
            end if;
        end if;
    end process;
end Behavioral;