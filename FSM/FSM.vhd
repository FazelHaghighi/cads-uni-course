LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity FSM is
   generic (
    n : integer := 2
   );
    Port (x : in  STD_LOGIC;
		    clk : in  STD_LOGIC;
		    rst : in  STD_LOGIC; 
          y: inout STD_LOGIC;
			 c_state: out std_logic_vector (n -1 DOWNTO 0)
			 );
end FSM;

architecture Behavioral of FSM is
  subtype statetype is std_logic_vector (n -1 DOWNTO 0);
  
  constant s0 : statetype := "00";
  constant s1 : statetype := "01";
  constant s2 : statetype := "10";
  constant s3 : statetype := "11";

  signal currstate, nextstate: statetype := "00";

begin

  process (clk, rst)
  begin
    if (rst = '1') then
      currstate <= s0;
    elsif rising_edge(clk) then
      currstate <= nextstate;
    end if;
  end process;

  process (currstate, x)
  begin
    case currstate is
      when s0 => 
             if (x = '0') then 
               nextstate <= s0;
               y <= '0';
             else
               nextstate <= s1;
               y <= '0';
             end if;
      when s1 =>
             if (x = '0') then 
               nextstate <= s2;
               y <= '0';
             else
               nextstate <= s1;
               y <= '0';
             end if;
      when s2 =>
             if (x = '0') then 
               nextstate <= s3;
               y <= '0';
             else
               nextstate <= s1;
               y <= '0';
             end if;
      when s3 =>
             if (x = '0') then 
               nextstate <= s0;
               y <= '0';
             else
               nextstate <= s0;
               y <= '1';
             end if;
		when others =>
				nextstate <= s0;
      end case;
	c_state <= currstate;

  end process;

end Behavioral;