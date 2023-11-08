----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:56:51 11/08/2023 
-- Design Name: 
-- Module Name:    Dlatch - Structural 
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

entity Dlatch is
    Port (
        d  : in  STD_LOGIC;
        e  : in  STD_LOGIC;
        Q  : inout STD_LOGIC;
        nQ : inout STD_LOGIC
    );
end entity Dlatch;

architecture Structural of Dlatch is

    signal s1, s2, nd : STD_LOGIC;

begin

    s1 <= d nand e;
    nd <= d nand d;
    s2 <= nd nand e;
    Q  <= s1 nand nQ;
    nQ <= s2 nand Q;

end architecture Structural;