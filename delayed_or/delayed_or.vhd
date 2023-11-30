library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package delayed_or_package is

    TYPE my_type IS ( '0', '1' );
    TYPE my_vector IS ARRAY ( NATURAL RANGE <> ) OF my_type;
    TYPE my_time IS RANGE <>;  -- Type for time

    FUNCTION delayed_or (
        a : my_type;
        b : my_type;
        clk : in STD_LOGIC;
        delay_1_rising : my_time;
        delay_1_falling : my_time;
        delay_0_rising : my_time;
        delay_0_falling : my_time;
        or_delay : my_time
    ) RETURN my_type;

end delayed_or_package;

package body delayed_or_package is

    FUNCTION delayed_or (
        a : my_type;
        b : my_type;
        clk : in STD_LOGIC;
        delay_1_rising : my_time;
        delay_1_falling : my_time;
        delay_0_rising : my_time;
        delay_0_falling : my_time;
        or_delay : my_time
    ) RETURN my_type IS

        VARIABLE delayed_a, delayed_b : my_type;

    BEGIN
        process (clk)
        begin
            if rising_edge(clk) then
                if a = '1' then
                    delayed_a := my_type'left;
                    wait for delay_1_rising;
                elsif a = '0' then
                    delayed_a := my_type'right;
                    wait for delay_0_rising;
                end if;

                if b = '1' then
                    delayed_b := my_type'left;
                    wait for delay_1_rising;
                elsif b = '0' then
                    delayed_b := my_type'right;
                    wait for delay_0_rising;
                end if;

                RETURN delayed_a or delayed_b after or_delay;
            end if;
        end process;

        -- Default return value (when there's no rising edge)
        RETURN my_type'left;

    END delayed_or;

end delayed_or_package;
