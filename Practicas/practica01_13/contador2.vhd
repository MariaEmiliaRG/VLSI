library ieee; 
use ieee.std_logic_1164.all;

entity contador2 is 
	port (
		clk: in std_logic; 
		ssg0: out std_logic_vector(6 downto 0);
		ssg1: out std_logic_vector(6 downto 0);
		banderaSal: out std_logic
	);
end contador2; 

architecture arqContador2 of contador2 is
	signal bandera: std_logic; 
	signal conteo:  integer range 0 to 9; 
begin
	u1: entity work.contador1(arqContador1) port map (clk, ssg0, bandera); 
	u2: entity work.contador(arqContador) port map (bandera, conteo, banderaSal); 
	u3: entity work.ss7(arqss7) port map (conteo, ssg1);
end; 