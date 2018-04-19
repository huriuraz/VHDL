LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux IS 
 PORT( a,b: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 sel: IN STD_LOGIC;
		 x: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
       
 );
END mux;
ARCHITECTURE mux OF mux IS
BEGIN
	WITH sel SELECT 
		x<= a WHEN '0',
		    b WHEN OTHERS;
END mux;
