library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all; 

entity suma is
port(
	a: in std_logic_vector(3 downto 0); 
	b: in std_logic_vector(3 downto 0);
	cin: in std_logic; 
	sout: out std_logic_vector(3 downto 0); 
	cout: out std_logic
);
end; 

architecture arqsuma of suma is
	signal mid: std_logic_vector(4 downto 0); 
begin 
	mid <= ('0' & a)+('0'&b)+cin;
	cout <= mid(4); 
	sout <= mid(3 downto 0);
end; 	