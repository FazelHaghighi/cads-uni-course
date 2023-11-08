----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:19:08 11/03/2023 
-- Design Name: 
-- Module Name:    generic_mux_4x1 - Behavioral 
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

entity generic_mux_4x1 is
    generic (n: integer := 16);
    Port (
        a, b, c, d: in STD_LOGIC_VECTOR(n - 1 downto 0);
        s0, s1: in STD_LOGIC;
        y: out STD_LOGIC_VECTOR(n - 1 downto 0)
    );
end generic_mux_4x1;

architecture Behavioral of generic_mux_4x1 is
    component generic_mux_2x1 is
        generic (n: integer := 4);
        Port (
            a, b: in STD_LOGIC_VECTOR(n - 1 downto 0);
            s: in STD_LOGIC;
            y: out STD_LOGIC_VECTOR(n - 1 downto 0)
        );
    end component;

    signal tmp0, tmp1 : STD_LOGIC_VECTOR(n - 1 downto 0);

begin
    mux0 : generic_mux_2x1 GENERIC MAP (n)
        port map (a, b, s0, tmp0);
    mux1 : generic_mux_2x1 GENERIC MAP (n)
        port map (c, d, s0, tmp1);
    mux2 : generic_mux_2x1 GENERIC MAP (n)
        port map (tmp0, tmp1, s1, y);
end Behavioral;
