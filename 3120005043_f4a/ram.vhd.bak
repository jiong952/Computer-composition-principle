library IEEE; 
use IEEE.std_logic_1164.all; 
use IEEE.std_logic_arith.all; 
entity ram is 
    port ( 
        r_w, en, reset: in STD_LOGIC; 
        aBus: in STD_LOGIC_VECTOR(7 downto 0);  
        dBus: inout STD_LOGIC_VECTOR(7 downto 0) 
    ); 
end ram; 
architecture ramArch of ram is 
type ram_typ is array(0 to 63) of STD_LOGIC_VECTOR(7 downto 0); 
signal ram: ram_typ; 
begin 
	process(
		en, reset, r_w, aBus, dBus
	) 
	begin 
		if reset = '1' then 
			ram(0) <= x"14"; 
			ram(1) <= x"30"; 
			ram(2) <= x"25"; 
			ram(3) <= x"15";
			ram(4) <= x"46"; 
			ram(5) <= x"31"; 
			ram(6) <= x"55";
			ram(7) <= x"06"; 
			ram(8) <= x"01"; 
		elsif r_w = '0' then 
			ram(conv_integer(unsigned(aBus))) <= dBus; 
		end if; 
	end process; 
	dBus <= ram(conv_integer(unsigned(aBus))) 
	when reset = '0' and en = '1' and r_w = '1' else 
	"ZZZZZZZZ"; 
end ramArch;
