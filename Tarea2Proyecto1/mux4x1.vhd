library ieee;
use ieee.std_logic_1164.all; 

entity mux4x1 is
port(
	b: in std_logic_vector(3 downto 0); 
	sin: in std_logic_vector(1 downto 0); 
	sout: out std_logic_vector(3 downto 0)
);
end; 

architecture arqmux4x1 of mux4x1 is
begin
	with sin select
		sout <=
			(others=>'1') when "00",
					  not b when "01", 
							b when "10", 
			(others=>'0') when "11";
end; 
