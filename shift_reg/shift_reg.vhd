library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity shift_reg is
  generic (
    sr_depth : integer := 8
  );
  port (
    clk : in std_logic;
    rst : in std_logic;
    enable : in std_logic;
    sr_in : in std_logic;
    sr_out : out std_logic_vector (sr_depth - 1 downto 0)
  );
end shift_reg;

architecture Behavioral of shift_reg is
  signal sr : std_logic_vector(sr_depth - 1 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if rst = '1' then
        sr <= (others => '0');
      elsif enable = '1' then
        sr <= sr_in & sr(sr_depth - 1 downto 1);
      end if;
    end if;
  end process;

  sr_out <= sr;
end Behavioral;
