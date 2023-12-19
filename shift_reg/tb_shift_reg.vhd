library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_shift_reg is
end tb_shift_reg;

architecture testbench of tb_shift_reg is
  constant CLOCK_PERIOD : time := 2 us;
  signal clk, rst, enable, sr_in : std_logic := '0';
  signal sr_out : std_logic_vector(7 downto 0);

  component shift_reg
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
  end component;

begin
  UUT : shift_reg
    generic map (
      sr_depth => 8
    )
    port map (
      clk => clk,
      rst => rst,
      enable => enable,
      sr_in => sr_in,
      sr_out => sr_out
    );

  -- Clock process
  process
  begin
    clk <= '0';
    wait for CLOCK_PERIOD / 2;
    clk <= '1';
    wait for CLOCK_PERIOD / 2;
  end process;

  -- Stimulus process
  process
  begin
    wait for 2 us;

    enable <= '0';
    sr_in <= '0';
    wait for 2 us;
	 
	 sr_in <= '1';
    wait for 2 us;

    enable <= '1';
    sr_in <= '1';
    wait for 2 us;

    sr_in <= '0';
    wait for 2 us;


	 enable <= '0';
    sr_in <= '1';
    wait for 2 us;

    sr_in <= '0';
    wait for 2 us;

    enable <= '1';
    sr_in <= '0';
    wait for 2 us;
	 
    rst <= '1';
    wait for 2 us;
	 
	 
    rst <= '0';
	 sr_in <= '1';
    wait for 2 us;
	 
	 sr_in <= '0';
    wait for 2 us;
	 
	 sr_in <= '1';
    wait for 2 us;
	 
    wait;
  end process;

end testbench;
