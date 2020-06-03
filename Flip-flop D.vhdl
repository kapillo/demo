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
		if (RESET = '1') then
		 Q <= '0';
		elsif (CLK'event and CLK='1') then
		 Q <= D;
		end if;
	end process;
end behav;