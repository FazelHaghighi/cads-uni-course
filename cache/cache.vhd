library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Cache is
    generic (
        DATA_WIDTH   : positive := 8; -- Width of data in bits
        ADDR_WIDTH   : positive := 10; -- Width of address in bits
        INDEX_WIDTH  : positive := 4;
        CACHE_SIZE   : positive := 16 -- Number of cache lines
    );
    port (
        clk     : in  STD_LOGIC;
        rst     : in  STD_LOGIC;
        cache_read: in  STD_LOGIC;
        cache_write   : in  STD_LOGIC;
        address : in  STD_LOGIC_VECTOR(ADDR_WIDTH-1 downto 0);
        data_in : in  STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
        hit : out std_logic;
        data_out: out STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0)
    );
end Cache;

architecture Behavioral of Cache is
    type CacheMemory is array (CACHE_SIZE-1 downto 0) of STD_LOGIC_VECTOR(ADDR_WIDTH+DATA_WIDTH-1 downto 0);
    
    signal cache_memory : CacheMemory;

begin
    process (clk, rst)
    variable is_hit : std_logic;
    variable target : std_logic_vector(ADDR_WIDTH+DATA_WIDTH-1 downto 0);
    begin
        if rst = '1' then
            -- Reset logic
            -- Initialize the cache memory
            for i in CacheMemory'range loop
                 cache_memory(i) <= (others => '0');
            end loop;
        elsif rising_edge(clk) then --- 14 - 8
            if cache_memory(conv_integer(address(ADDR_WIDTH -1 downto ADDR_WIDTH-INDEX_WIDTH)))(ADDR_WIDTH+DATA_WIDTH-INDEX_WIDTH-1 downto DATA_WIDTH) = address(ADDR_WIDTH-INDEX_WIDTH-1 downto 0) then 
              hit <= '1';
              is_hit := '1';
              target := cache_memory(conv_integer(address(ADDR_WIDTH -1 downto ADDR_WIDTH-INDEX_WIDTH)));
            else  
              hit <= '0';
            end if ;
            -- Cache operation logic
            if is_hit = '1' then 
                data_out <= target;
             end if;
            if cache_read = '1' then
                -- Read operation  -- 19 -> 4 : 16 bit | 
                data_out <= cache_memory(conv_integer(address(ADDR_WIDTH -1 downto ADDR_WIDTH-INDEX_WIDTH)))(DATA_WIDTH-1 downto 0);
            end if;
            if cache_write = '1' then
                -- Write operation
                cache_memory(conv_integer(address(ADDR_WIDTH -1 downto ADDR_WIDTH-INDEX_WIDTH))) <= address & data_in;
                data_out <= cache_memory(conv_integer(address(ADDR_WIDTH -1 downto ADDR_WIDTH-INDEX_WIDTH)))(DATA_WIDTH-1 downto 0);
            end if;
        end if;
    end process;
end Behavioral;