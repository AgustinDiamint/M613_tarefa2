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
        HEX0 <= "0000000" WHEN "0000" ,
					 "0000110" WHEN "0001" , 
					 "1011011" WHEN "0010" ,
					 "1001111" WHEN "0011" , 
					 "1100110" WHEN "0100" ,
				    "1101101" WHEN "0101" , 
					 "1111101" WHEN "0110" ,
				    "0000111" WHEN "0111" , 
					 "1111111" WHEN "1000" ,
					 "1101111" WHEN "1001" ,
        --Digitos hexa
					"1110111" WHEN "1010" ,	
					"1111100" WHEN "1011" ,
					"0111001" WHEN "1100" ,
					"1011110" WHEN "1101" ,
					"1111001" WHEN "1110" , 
					"1110001" WHEN "1111" ;
END Behavior ;