LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;
ENTITY ALUFUNC IS
PORT (Clock : IN STD_LOGIC ;
A ,B : IN UNSIGNED(7 DOWNTO 0);
OP: IN UNSIGNED(15 DOWNTO 0);
Neg: OUT STD_LOGIC;
R1: OUT UNSIGNED(3 DOWNTO 0);--first 4bits of 8bits Result
R2: OUT UNSIGNED(3 DOWNTO 0));--later 4bits of 8bits Result
END ALUFUNC;

ARCHITECTURE Behavior OF ALUFUNC IS
SIGNAL Reg1, Reg2, Result: UNSIGNED(7 DOWNTO 0) := (OTHERS => '0');
SIGNAL Reg4: UNSIGNED(0 TO 7);
SIGNAL Reg5: UNSIGNED(0 TO 3);

BEGIN
	Reg1 <= A;
	Reg2 <= B;
	
	PROCESS (Clock,OP,A,B)
	BEGIN
	IF (rising_edge(Clock)) THEN
		CASE OP IS
			WHEN "0000000000000001" => --funtion 1 PRODUCE THE DIFF BET A & B
				if (Reg1 < Reg2) then
					neg <= '1';
					Result <= (Reg2 - Reg1);
				else
					neg <= '0';
					Result <= (Reg1 - Reg2);
				end if;
			WHEN "0000000000000010"  => --function 2 PRODUCE 2's COMPLEMENT B
				Result <= (NOT Reg2) + "00000001";
				
			WHEN "0000000000000100" =>--Function 3 SWAP LOWER 4 A WITH LOWER 4B
				Result <= Reg1(7 DOWNTO 4) & Reg2(3 DOWNTO 0);
			WHEN "0000000000001000" =>--Function 4 NULL
				neg <= '0';
				Result <= NULL;
			WHEN "0000000000010000" =>--Function 5 DECREMENT BY BY 5
				if (Reg2 < 5) then
					neg <= '1';
					Result <= (5 - Reg2);
				else
					neg <= '0';
					Result <= (Reg2 - 5);
				end if;
			WHEN "0000000000100000" =>--Function 6 INVERT BIT-SIGNIFICANCE OF A
				neg <= '0';
				Result <= Reg1(0)&Reg1(1)&Reg1(2)&Reg1(3)&Reg1(4)&Reg1(5)&Reg1(6)&Reg1(7);
			WHEN "0000000001000000" =>--Function 7 SHIFT B LEFT 3, IN-BIT=1(SHL)---------------------------------------------------
				Result <= (Reg2(4 DOWNTO 0)& "111");
			WHEN "0000000010000000" =>--Function 8 INCREMENT A 3
					neg <= '0';
					Result <= (Reg1 + 3);
			WHEN "0000000100000000" =>--Function 9 INVERT ALL BITS B
				neg <= '0';
				Result <= NOT(Reg2);
			WHEN OTHERS =>-- Don't care
			END CASE;
		END IF;
	END PROCESS;
	R1 <= Result(3 DOWNTO 0);
	R2 <= Result(7 DOWNTO 4);

END Behavior;