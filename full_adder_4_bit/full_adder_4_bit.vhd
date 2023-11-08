----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:16:44 10/27/2023 
-- Design Name: 
-- Module Name:    full_adder_4_bit - Behavioral 
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

entity full_adder_4_bit is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           c : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC);
end full_adder_4_bit;

architecture Behavioral of full_adder_4_bit is

component full_adder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           s : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component;

signal cary : STD_LOGIC_VECTOR (2 downto 0);

begin
    full_adder_0 : full_adder port map (a(0), b(0), c, s(0), cary(0));
    full_adder_1 : full_adder port map (a(1), b(1), cary(0), s(1), cary(1));
    full_adder_2 : full_adder port map (a(2), b(2), cary(1), s(2), cary(2));
    full_adder_3 : full_adder port map (a(3), b(3), cary(2), s(3), cout);
end Behavioral;
