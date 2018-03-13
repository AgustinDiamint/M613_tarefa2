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
        HEX0 <= "0111111" WHEN "0000" ,
					 "0000110" WHEN "0001" , 
					 "1011011" WHEN "0010" ,
					 "1001111" WHEN "0011" , 
					 "1100110" WHEN "0100" ,
					 "1101101" WHEN "0101" , 
					 "1111101" WHEN "0110" ,
					 "0000111" WHEN "0111" , 
					 "1111111" WHEN "1000" ,
					 "1101111" WHEN "1001" ,
			       "1111001" WHEN OTHERS ; 
END Behavior ;