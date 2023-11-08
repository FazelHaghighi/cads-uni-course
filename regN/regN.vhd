----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:41:18 11/09/2023 
-- Design Name: 
-- Module Name:    regN - Behavioral 
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

entity regN is
    generic (
        n : integer := 8
    );
    Port (
        Data_in : in STD_LOGIC_VECTOR (n-1 downto 0);
        Data_out : inout STD_LOGIC_VECTOR (n-1 downto 0);
        clk : in STD_LOGIC;
        en : in STD_LOGIC;
        reset : in STD_LOGIC
    );
end entity regN;

architecture Structural of regN is

    component reg is
        Port (
            Data_in : in STD_LOGIC;
            Data_out : inout STD_LOGIC;
            clk : in STD_LOGIC;
            en : in STD_LOGIC;
            reset : in STD_LOGIC
        );
    end component;

begin
    gen: for j in n-1 downto 0 generate
        regi : reg port map (Data_in(j), Data_out(j), clk, en, reset);
    end generate;

end architecture Structural;
