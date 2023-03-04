library ieee; 
use ieee.std_logic_1164.all; 

entity contador is
	port(
		clk: in std_logic; 
		conteo: buffer integer; 
		bandera: out std_logic
	);
end; 

architecture arqContador of contador is 
begin
	process(clk)
	begin
		if(rising_edge(clk)) then 
			if (conteo = 9) then
				conteo <= 0; 
				bandera <= '1'; 
			else 
				conteo <= conteo + 1;
				bandera <= '0';
			end if; 
		end if; 
	end process; 
end; 