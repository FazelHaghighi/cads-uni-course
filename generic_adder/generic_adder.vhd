----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:10:53 11/05/2023 
-- Design Name: 
-- Module Name:    generic_adder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity generic_adder is
  Generic (
    n : integer := 4
  );
  Port (
    a, b : in STD_LOGIC_VECTOR(n - 1 downto 0);
    c : in STD_LOGIC;
    s : out STD_LOGIC_VECTOR(n - 1 downto 0);
    cout : out STD_LOGIC
  );
end entity generic_adder;

architecture Behavioral of generic_adder is
  component with_select
    Port (
      a, b, c : in STD_LOGIC;
      s, cout : out STD_LOGIC
    );
  end component;

  signal carry : STD_LOGIC_VECTOR(n downto 0);

begin
  carry(0) <= c;

  generate_label: for i in 0 to n - 1 generate
    adder: with_select
      port map (
        a(i),
        b(i),
        carry(i),
        s(i),
        carry(i + 1)
      );
  end generate;

  cout <= carry(n);

end Behavioral;
