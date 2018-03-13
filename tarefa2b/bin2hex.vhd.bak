LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

entity bin2hex is
    port (
        SW: in std_logic_vector(3 downto 0);
        HEX0: out std_logic_vector(6 downto 0)
    );
end bin2hex;

ARCHITECTURE Behavior OF bin2hex IS
BEGIN
    WITH SW SELECT
        --0 a 9
        HEX0 <= "0000000" WHEN SW = "0000" ,
        HEX0 <= "0000110" WHEN SW = "0001" , 
        HEX0 <= "1011011" WHEN SW = "0010" ,
        HEX0 <= "1001111" WHEN SW = "0011" , 
        HEX0 <= "1100110" WHEN SW = "0100" ,
        HEX0 <= "1101101" WHEN SW = "0101" , 
        HEX0 <= "1111101" WHEN SW = "0110" ,
        HEX0 <= "0000111" WHEN SW = "0111" , 
        HEX0 <= "1111111" WHEN SW = "1000" ,
        HEX0 <= "1101111" WHEN SW = "1001" ,
        --Digitos hexa
        HEX0 <= "1110111" WHEN SW = "1010" ,
        HEX0 <= "1111100" WHEN SW = "1011" ,
        HEX0 <= "0111001" WHEN SW = "1100" ,
        HEX0 <= "1011110" WHEN SW = "1101" ,
        HEX0 <= "1111001" WHEN SW = "1110" , 
        HEX0 <= "1110001" WHEN SW = "1111" ;
END Behavior ;