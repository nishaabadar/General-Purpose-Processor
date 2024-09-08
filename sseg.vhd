LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY sseg IS
PORT (bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
neg : IN STD_LOGIC ;
leds, ledsign : OUT STD_LOGIC_VECTOR(1 TO 7)) ;
END sseg ;
ARCHITECTURE Behavior OF sseg IS
BEGIN
	PROCESS (bcd, neg)
		BEGIN
			IF neg = '0' THEN
				ledsign <= "1111111";
			ELSIF neg = '1' THEN
				ledsign <= "1111110";
			END IF;

			CASE bcd IS -- abcdefg
			WHEN "0000" => leds <= ("0000001") ; -- 0 USUALLY WOULD BE "1111110" BUT FOR 7SEG IT IS OPPOSITE ON FPGA
			WHEN "0001" => leds <= ("1001111") ; -- 1
			WHEN "0010" => leds <= ("0010010") ; -- 2
			WHEN "0011" => leds <= ("0000110") ; -- 3
			WHEN "0100" => leds <= ("1001100") ; -- 4
			WHEN "0101" => leds <= ("0100100") ; -- 5
			WHEN "0110" => leds <= ("0100000") ; -- 6
			WHEN "0111" => leds <= ("0001111") ; -- 7
			WHEN "1000" => leds <= ("0000000") ; -- 8
			WHEN "1001" => leds <= ("0000100") ; -- 9
			WHEN "1010" => leds <= ("0001000") ; -- 10 (A)
			WHEN "1011" => leds <= ("1100000") ; -- 11 (b)
			WHEN "1100" => leds <= ("0110000") ; -- 12 (C)
			WHEN "1101" => leds <= ("1000001") ; -- 13 (d)
			WHEN "1110" => leds <= ("0110000") ; -- 14 (E)
			WHEN "1111" => leds <= ("0111000") ; -- 15 (F)
			WHEN OTHERS => leds <= ("1111110") ;
		END CASE ;
	END PROCESS ;
END Behavior ;