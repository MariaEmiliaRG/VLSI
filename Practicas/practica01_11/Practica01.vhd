library ieee; 
use ieee.std_logic_1164.all;

entity Practica01 is 
	port (
		clk: in std_logic; 
		ssg: out std_logic_vector(6 downto 0)
	);
end Practica01; 

architecture arq of Practica01 is
	signal clkl: std_logic; 
	signal a:  integer range 0 to 9; 
begin
	u1: entity work.divFrec(arqDivFrec) port map (clk, clkl); 
	u2: entity work.contador(arqContador) port map (clkl, a); 
	u3: entity work.ss7(arqss7) port map (a, ssg);
end; 