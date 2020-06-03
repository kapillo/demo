library ieee;
use ieee.std_logic_1164.all;


entity Dff is
	port (CLK, RESET, D : in std_logic;
 		Q : out std_logic);
end Dff;

architecture behav of Dff is
begin
process (CLK, RESET)
	begin
		if (RESET = '0') then
		 Q <= '1';
		elsif (CLK'event and CLK='0') then
		 Q <= D;
		end if;
	end process;
end behav;