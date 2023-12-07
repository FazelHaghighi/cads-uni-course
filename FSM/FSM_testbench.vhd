LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
entity FSM_testbench is
end FSM_testbench;
 
architecture behavior of FSM_testbench is 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    component FSM
    port(
         x : in  std_logic;
         clk : in  std_logic;
         rst : in  std_logic;
         y : inout  std_logic;
			c_state : out std_logic_vector (1 DOWNTO 0)

        );
    end component;
    

   --Inputs
   signal x : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
	

 	--Outputs
   signal y : std_logic;
   signal c_state : std_logic_vector (1 DOWNTO 0);
	
   -- Clock period definitions
   constant clk_period : time := 2 us;
 
begin
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FSM port map (
          x => x,
          clk => clk,
          rst => rst,
          y => y,
			 c_state => c_state
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin
		rst <= '1'; 
		x <= '1';
		wait for 2 us;
		
		rst <= '0';
		x <= '1'; wait for 2 us;
		x <= '0'; wait for 2 us;
		x <= '0'; wait for 2 us;
		x <= '1'; wait for 2 us;
		x <= '0'; wait for 2 us;
		x <= '0'; wait for 2 us;
		x <= '1'; wait for 2 us;
		x <= '0'; wait for 2 us;
		x <= '0'; wait for 2 us;
		x <= '1'; wait for 2 us;
		x <= '1'; wait for 2 us;
		x <= '0'; wait for 2 us;
		x <= '0'; wait for 2 us;
		x <= '1'; wait for 2 us;
		x <= '1'; wait for 2 us;
		x <= '1'; wait for 2 us;
		x <= '0'; wait for 2 us;
		x <= '0'; wait for 2 us;
		x <= '1'; wait for 2 us;
		x <= '1'; wait for 2 us;
		x <= '0'; wait for 2 us;
		x <= '0'; wait for 2 us;
		
      wait;
   end process;

end;
