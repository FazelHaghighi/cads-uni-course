----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:17:07 11/09/2023 
-- Design Name: 
-- Module Name:    reg - Structural 
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

entity reg is
    Port (
        Data_in : in  STD_LOGIC;
        Data_out : inout  STD_LOGIC;
        clk : in  STD_LOGIC;
        en : in  STD_LOGIC;
        reset : in  STD_LOGIC
    );
end entity reg;

architecture Structural of reg is

    component DFF is
        Port (
            D  : in  STD_LOGIC;
            CLK : in  STD_LOGIC;
            Q  : inout STD_LOGIC;
            nQ : inout STD_LOGIC
        );
    end component;

    signal mux_o, D_in, n_reset, s1, s2, n_en : STD_LOGIC;

begin

    D_ff : DFF port map (D_in, clk, Data_out);
    D_in <= mux_o and n_reset;
    n_reset <= not reset;

    -- Mux
    s1 <= Data_in and en;
    n_en <= not en;
    s2 <= Data_out and n_en;
    mux_o <= s1 or s2;

end architecture Structural;
