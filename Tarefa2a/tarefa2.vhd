LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY tarefa2b IS
	PORT( w: IN STD_LOGIC_VECTOR(4 DOWNTO 0) ;
			f: OUT STD_LOGIC ) ;
END tarefa2b ;


ARCHITECTURE Behavior OF tarefa2b IS	
BEGIN
	with w SELECT
		f <= 	'1'WHEN "00000",
				'1' WHEN "00010",
				'1' WHEN "00101",
				'1' WHEN "01000",
				'1' WHEN "01101",
				'1' WHEN "01111",
				'1' WHEN "10010",
				'1' WHEN "10101",
				'1' WHEN "11000",
				'1' WHEN "11101",
				'1' WHEN "11111",
				'0' WHEN OTHERS ;

END Behavior;