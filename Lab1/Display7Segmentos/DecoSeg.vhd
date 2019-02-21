library IEEE; use IEEE.STD_LOGIC_1164.all;

entity DecoSeg is

port(input: in STD_LOGIC_VECTOR(3 downto 0);
output: out STD_LOGIC_VECTOR(6 downto 0));
end;

architecture synth of DecoSeg is 
begin
	process (input) begin
		case input is
			when "0000" => output <= "0000001";
			when "0001" => output <= "0011111";
			when "0010" => output <= "0100100";
			when "0011" => output <= "0001100";
			when "0100" => output <= "0011010";
			when "0101" => output <= "1001000";
			when "0110" => output <= "1000000";
			when "0111" => output <= "0011101";
			when "1000" => output <= "0000000";
			when "1001" => output <= "0011000";
			when "1010" => output <= "0010000";
			when "1011" => output <= "1000010";
			when "1100" => output <= "1100001";
			when "1101" => output <= "0000110";
			when "1110" => output <= "1100000";
			when "1111" => output <= "1110000";
			when others => output <= "1111111";
		end case;
	end process;
end;