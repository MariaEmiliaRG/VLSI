library ieee; 
use ieee.std_logic_1164.all; 

entity Tarea2Proyecto1 is
port(
	a: in std_logic_vector(3 downto 0);
	b: in std_logic_vector(3 downto 0); 
	sin: in std_logic_vector(1 downto 0);
	cin: in std_logic; 
	sout: out std_logic_vector(3 downto 0); 
	cout: out std_logic
);
end; 

architecture arq of Tarea2Proyecto1 is
	signal salmuxb: std_logic_vector(3 downto 0);
begin
	u1: entity work.mux4x1(arqmux4x1) port map (b,sin,salmuxb);
	u2: entity work.suma(arqsuma) port map (a,salmuxb,cin,sout,cout); 
end;	