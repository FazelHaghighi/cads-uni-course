library IEEE;
use IEEE.STD_LOGIC_1164.all;

package my_package is

    TYPE my_type IS ( '0',  -- Forcing  0
                      '1'  -- Forcing  1
                    );
						  
    TYPE my_vector IS ARRAY ( NATURAL RANGE <> ) OF my_type;

    -------------------------------------------------------------------    
    -- logical operators
    ------------------------------------------------------------------  
	 FUNCTION my_and  ( a : my_type; b : my_type ) RETURN my_type;
	 FUNCTION my_or   ( a : my_type; b : my_type ) RETURN my_type;
	 FUNCTION my_not  ( a : my_type              ) RETURN my_type;

end my_package;

package body my_package is
    -------------------------------------------------------------------    
    -- local types
    -------------------------------------------------------------------   
    TYPE table_1d IS ARRAY (my_type) OF my_type;
    TYPE table_2d IS ARRAY(my_type, my_type) OF my_type;
	 
	 -- truth table for "my_and" function
    CONSTANT and_table : table_2d := (
    --      ----------------- 
    --      |  0    1         |   |
    --      ----------------- 
            ( '0', '0' ),  -- | 0 |
            ( '0', '1' )   -- | 1 |
    );
	 
    -- truth table for "my_or" function
    CONSTANT or_table : table_2d := (
    --      ----------------- 
    --      |  0    1         |   |
    --      ----------------- 
            ( '0', '1' ),  -- | 0 |
            ( '1', '1' )   -- | 1 |
    );
	 
    -- truth table for "my_not" function
    CONSTANT not_table: table_1d := 
    --  -------------
    --  |   0    1  |
    --  -------------
         ( '1', '0' ); 


    -------------------------------------------------------------------    
    -- logical operators
    -------------------------------------------------------------------    

    FUNCTION my_and  ( a : my_type; b : my_type ) RETURN my_type IS
    BEGIN
        RETURN (and_table(a, b));
    END my_and;

    FUNCTION my_or  ( a : my_type; b : my_type ) RETURN my_type IS
    BEGIN
        RETURN (or_table(a, b));
    END my_or;
	 
    FUNCTION my_not  ( a : my_type ) RETURN my_type IS
    BEGIN
        RETURN (not_table(a));
    END my_not;

end my_package;
