----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:40:37 10/22/2023 
-- Design Name: 
-- Module Name:    with_select - Behavioral 
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

entity with_select is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           s : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end with_select;

architecture Behavioral of with_select is

    signal tmp : STD_LOGIC_VECTOR(2 downto 0);
begin
    tmp <= a & b & c;

    -- Use "with select" for SUM
    with tmp select
        s <= '1' when "001" | "010" | "100" | "111",
             '0' when others;

    -- Use "with select" for CARRY
    with tmp select
        cout <= '1' when "011" | "101" | "110" | "111",
                '0' when others;
end Behavioral;

