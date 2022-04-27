library IEEE; 
use IEEE.std_logic_1164.all; 
use IEEE.std_logic_unsigned.all; 

entity alu is                           
    port ( 
        op: in STD_LOGIC_VECTOR(3 downto 0);   
        accD: in STD_LOGIC_VECTOR(7 downto 0); 
        dBus: in STD_LOGIC_VECTOR(7 downto 0); 
        result: out STD_LOGIC_VECTOR(7 downto 0);   
        accZ: out STD_LOGIC 
); 
end alu; 

architecture aluArch of alu is 
begin 
  result <= (not accD(6 downto 0)) + "00000001" when op ="0000" else 
       accD + dBus when op ="0001" else 
       accD +"10000000" when op="0010" else
       dBus +"10000000" when op="0011" else 
       (not accD)-"00000001" when op="0100" else 
       accD - dBus when op="0101" else 
		accD(3 downto 0) * dBus(3 downto 0) when op="0110" else
       accD(3 downto 0) * (not dBus(3 downto 0)) when op="0111" else 
       accD AND  dBus when op="1010" else 
       accD NAND dBus when op="1011" else 
       accD OR   dBus when op="1100" else
       accD NOR  dBus when op="1101" else
       accD XNOR dBus when op="1110" else
       NOT accD when op="1111" else 
       "00000000";  
 accZ <= not (accD(0) or  accD(1) or  accD(2) or  accD(3) or 
          accD(4) or  accD(5) or  accD(6) or  accD(7)
); 
end aluArch;