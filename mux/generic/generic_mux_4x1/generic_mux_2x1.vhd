----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:05:00 11/03/2023 
-- Design Name: 
-- Module Name:    generic_mux_2x1 - Behavioral 
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

entity generic_mux_2x1 is
    generic (n: integer := 4);
    Port (
        a, b: in STD_LOGIC_VECTOR(n - 1 downto 0);
        s: in STD_LOGIC;
        y: out STD_LOGIC_VECTOR(n - 1 downto 0)
    );
end generic_mux_2x1;

architecture Behavioral of generic_mux_2x1 is
begin
    y <= a when s = '0' else b;
end Behavioral;
