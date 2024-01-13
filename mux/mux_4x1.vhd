----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:36:39 11/03/2023 
-- Design Name: 
-- Module Name:    mux_4x1 - Behavioral 
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

entity mux_4x1 is
    Port (
        a, b, c, d, s0, s1: in STD_LOGIC;
        y: out STD_LOGIC
    );
end mux_4x1;

architecture Behavioral of mux_4x1 is

    component mux_2x1 is
        Port (
            a, b, s: in STD_LOGIC;
            y: out STD_LOGIC
        );
    end component;

    signal tmp0, tmp1 : STD_LOGIC;

begin

    mux0 : mux_2x1 port map (a, b, s0, tmp0);
    mux1 : mux_2x1 port map (c, d, s0, tmp1);
    mux2 : mux_2x1 port map (tmp0, tmp1, s1, y);

end Behavioral;
