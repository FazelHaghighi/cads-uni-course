library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SystemTop is
    generic (
        DATA_WIDTH   : positive := 8; -- Width of data in bits
        ADDR_WIDTH   : positive := 10; -- Width of address in bits
        CACHE_SIZE   : positive := 8; -- Number of cache lines
        BLOCK_SIZE   : positive := 4;  -- Number of words in a cache line
        RAM_SIZE     : positive := 32 -- Number of words in RAM
    );
    port (
        clk     : in  STD_LOGIC;
        rst     : in  STD_LOGIC;
        ram_write_direct : in std_logic;
        cpu_address: in STD_LOGIC_VECTOR(ADDR_WIDTH-1 downto 0);
        cpu_data_in:in STD_LOGIC_VECTOR(ADDR_WIDTH+DATA_WIDTH-1 downto 0);
        cpu_data_out: out STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0)
    );
end SystemTop;
 
architecture Behavioral of SystemTop is
    signal cache_read, ram_read: STD_LOGIC;
    signal cache_write,ram_write, cache_hit: STD_LOGIC;
    signal cache_data_out, ram_data_out: STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
    signal cache_data_in: STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);

    
    -- Instantiate Cache and RAM modules 
    component Cache
        generic (
            DATA_WIDTH   : positive := 8;
            ADDR_WIDTH   : positive := 10;
            CACHE_SIZE   : positive := 16
            ); 
        port (
            clk     : in  STD_LOGIC;
            rst     : in  STD_LOGIC;
            cache_read    : in  STD_LOGIC;
            cache_write   : in  STD_LOGIC;
            address : in  STD_LOGIC_VECTOR(ADDR_WIDTH-1 downto 0);
            data_in : in  STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
            hit     : out std_logic;
            data_out: out STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0)
        );
    end component;

    component RAM
        generic (  
            DATA_WIDTH   : positive := 8;
            ADDR_WIDTH   : positive := 10;
            RAM_SIZE     : positive := 1024
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
    end component;

begin
     ram_read <= not cache_hit;
         -- Instantiate Cache and RAM modules
   
    cache_inst: Cache
        generic map (
            DATA_WIDTH   => DATA_WIDTH,
            ADDR_WIDTH   => ADDR_WIDTH,
            CACHE_SIZE   => CACHE_SIZE
        )
        port map (
            clk     => clk,
            rst     => rst,
            cache_read    => cache_read,
            cache_write   => cache_write,
            address => cpu_address,
            data_in => cache_data_in,
            hit     => cache_hit,
            data_out=> cache_data_out 
        );

    ram_inst: RAM
        generic map (
            DATA_WIDTH   => DATA_WIDTH,
            ADDR_WIDTH   => ADDR_WIDTH,
            RAM_SIZE     => RAM_SIZE
        )
        port map (
            clk     => clk ,
            rst     => rst,
            read    => ram_read,
            write   => ram_write_direct,
            address => cpu_address,
            data_in => cpu_data_in(DATA_WIDTH-1 downto 0),
            data_out=> ram_data_out 
        );

    -- CPU Interaction Logic
    process (clk, rst)
    begin
        if rst = '1' then
            -- Reset logic
            -- Additional initialization logic if needed
        elsif rising_edge(clk) then
            -- CPU Interaction Logic
            if cache_hit = '1' then 
                cache_write <= '0';
                cpu_data_out <= cache_data_out;
            else
                cache_read <= '0';
                cpu_data_out <= ram_data_out;
                cache_write <= '1';
                cache_data_in <= ram_data_out;
            end if ;
        end if;
    end process;
end Behavioral;