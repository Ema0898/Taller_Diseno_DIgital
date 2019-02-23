
LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Deco_7seg_tb IS
END Deco_7seg_tb;
ARCHITECTURE Deco_7seg_arch OF Deco_7seg_tb IS
-- constants                                                 
-- signals                                                   
SIGNAL test_input : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL test_output : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT DecoSeg
	PORT (
	input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	output : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	DUT : DecoSeg
	PORT MAP (
	input => test_input,
	output => test_output
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
   test_input <= "0000"; Wait for 10 ns;
	test_input <= "0001"; wait for 10 ns;
	test_input <= "0010"; wait for 10 ns;
	test_input <= "0011"; wait for 10 ns;
	test_input <= "0100"; wait for 10 ns; 
	test_input <= "0101"; wait for 10 ns;
	test_input <= "0110"; wait for 10 ns;
	test_input <= "0111"; wait for 10 ns;
	test_input <= "1000"; wait for 10 ns;
	test_input <= "1001"; wait for 10 ns;
	test_input <= "1010"; wait for 10 ns;
	test_input <= "1011"; wait for 10 ns;
	test_input <= "1100"; wait for 10 ns;
	test_input <= "1101"; wait for 10 ns;	
	test_input <= "1110"; wait for 10 ns;
	test_input <= "1111"; wait for 10 ns;
WAIT;                                                       
END PROCESS init;                                           
                                        
END Deco_7seg_arch;
