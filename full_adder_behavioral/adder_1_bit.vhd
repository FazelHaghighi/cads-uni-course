----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:03:20 10/21/2023 
-- Design Name: 
-- Module Name:    adder_1_bit - Behavioral 
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

entity adder_1_bit is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           s : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end adder_1_bit;

architecture Behavioral of adder_1_bit is

begin
    process (a, b, c)
    begin
        -- Use individual if-else statements for SUM
        if (a = '0' and b = '0' and c = '1') or
           (a = '0' and b = '1' and c = '0') or
           (a = '1' and b = '0' and c = '0') or
           (a = '1' and b = '1' and c = '1') then
            s <= '1';
        else
            s <= '0';
        end if;

        -- Use individual if-else statements for CARRY
        if (a = '1' and b = '0' and c = '1') or
           (a = '0' and b = '1' and c = '1') or
           (a = '1' and b = '1' and c = '0') or
           (a = '1' and b = '1' and c = '1') then
            cout <= '1';
        else
            cout <= '0';
        end if;
    end process;

end Behavioral;

