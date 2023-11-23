library IEEE;
use WORK.my_package.all;

entity mux_21 is
    generic (
        n : integer := 2
    );
    port (
        i0: in my_vector(n-1 downto 0);
        i1: in my_vector(n-1 downto 0);
        s: in my_type;
        y :out my_vector(n-1 DOWNTO 0)
    );
end mux_21;

architecture Structural of mux_21 is
begin
    process_label: process(i0, i1, s)
    begin
        for k in 0 to n-1 loop
            y(k) <= my_or( my_and( i0(k), my_not( s ) ), my_and( i1(k), s) );
        end loop;
    end process;

end Structural;
