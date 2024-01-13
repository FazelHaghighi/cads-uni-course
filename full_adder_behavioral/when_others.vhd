----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:16:59 10/22/2023 
-- Design Name: 
-- Module Name:    when_others - Behavioral 
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

entity when_others is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           s : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end when_others;

architecture Behavioral of when_others is
    signal tmp : STD_LOGIC_VECTOR(2 downto 0);
begin
    tmp <= a & b & c;

    -- Use "when else" for SUM
    s <= '1' when tmp = "001" or tmp = "010" or tmp = "100" or tmp = "111" else '0';

    -- Use "when else" for CARRY
    cout <= '1' when tmp = "011" or tmp = "101" or tmp = "110" or tmp = "111" else '0';
end Behavioral;

