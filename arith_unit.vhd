LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY arith_unit IS 
	PORT ( a,b: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			 sel: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			 cin : IN STD_LOGIC;
			 x: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END arith_unit;
ARCHITECTURE arith_unit OF arith_unit IS
	SIGNAL arith, logic: STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
	WITH sel SELECT
		x<= a WHEN "0000",
		    a+1 WHEN "0001",
			 a-1 WHEN "0010",
			 b  WHEN "0011",
			 b+1 WHEN "0100",
			 b-1 WHEN "0101",
			 a+b WHEN "0110",
			 a+b+cin WHEN OTHERS;
END arith_unit;

