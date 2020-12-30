----------------------------------------------------------------------------------
-- Create Date: 29.12.2020 23:55:55
-- Engineer: John Bryan Valle
-- Project Name: OLMC
-- Target Devices: Basys 3
-- Tool Versions: Vivado 2020.2
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity fpga_vhdl_olmc is
        Port (  CLK, I: in bit;                -- Dateneingang
                S: in bit_vector(1 downto 0);  -- Selektionseingang
                Y: out bit);                   -- Ausgang
end fpga_vhdl_olmc;

architecture Behavioral of fpga_vhdl_olmc is
signal TEMP1, TEMP2: bit;
begin

MUX: process(I, TEMP1, S(0))
        begin
            TEMP2 <= (I and not S(0)) or (TEMP1 and S(0));
        end process MUX;
    
FF: process
        begin
            wait until CLK='1' and CLK'event;
            TEMP1 <= I;
        end process FF;        
    
    Y <= TEMP2 xor S(1);                        
                   
end Behavioral;



