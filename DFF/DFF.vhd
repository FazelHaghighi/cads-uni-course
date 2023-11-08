----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:06:40 11/09/2023 
-- Design Name: 
-- Module Name:    DFF - Behavioral 
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

entity DFF is
    Port (
        D  : in  STD_LOGIC;
        CLK : in  STD_LOGIC;
        Q  : inout  STD_LOGIC;
        nQ : inout  STD_LOGIC
    );
end entity DFF;

architecture Structural of DFF is

    component Dlatch is
        Port (
            d  : in  STD_LOGIC;
            e  : in  STD_LOGIC;
            Q  : inout STD_LOGIC;
            nQ : inout STD_LOGIC
        );
    end component;

    signal L1, nCLK : STD_LOGIC := '0';

begin

    nCLK <= not CLK;
    d_11 : Dlatch port map (D, nCLK, L1);
    d_12 : Dlatch port map (L1, CLK, Q, nQ);

end architecture Structural;
