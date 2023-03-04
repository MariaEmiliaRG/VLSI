library ieee; 
use ieee.std_logic_1164.all;

entity contador1 is 
	port (
		clk: in std_logic; 
		ssg: out std_logic_vector(6 downto 0);
		bandera: out std_logic
	);
end contador1; 

architecture arqContador1 of contador1 is
	signal clkl: std_logic; 
	signal conteo:  integer range 0 to 9; 
begin
	u1: entity work.divFrec(arqDivFrec) port map (clk, clkl); 
	u2: entity work.contador(arqContador) port map (clkl, conteo, bandera); 
	u3: entity work.ss7(arqss7) port map (conteo, ssg);
end; 