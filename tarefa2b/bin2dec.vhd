LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

entity bin2dec is
    port (
        SW: in std_logic_vector(3 downto 0);
        HEX0: out std_logic_vector(6 downto 0)
    );
end bin2dec;

ARCHITECTURE Behavior OF bin2dec IS
BEGIN
    WITH SW SELECT
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
        HEX0 <= "1111001" WHEN OTHERS ; 
END Behavior ;