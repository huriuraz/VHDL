LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY logic_unit IS 
	PORT (a,b: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			sel:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			x: OUT std_LOGIC_VECTOR(7 DOWNTO 0)
	);
END logic_unit;
ARCHITECTURE logic_unit OF logic_unit IS 
BEGIN 
 WITH sel SELECT 
	x <= NOT a WHEN "1000",
		  NOT b WHEN "1001",
		  a AND b WHEN "1010",
		  a OR b WHEN "1011",
		  a NAND b WHEN "1100",
		  a NOR b WHEN "1101",
		  a XOR b WHEN "1110",
		  NOT (a XOR b) WHEN OTHERS;
END logic_unit;
