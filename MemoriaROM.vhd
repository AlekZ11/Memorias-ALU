----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:03:52 06/19/2022 
-- Design Name: 
-- Module Name:    MemoriaROM - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MemoriaROM is
	port (
		salida : out std_logic_vector(1 downto 0);
		direccion: in std_logic_vector (1 downto 0));
end MemoriaROM;

architecture Behavioral of MemoriaROM is
	type datos is array (0 to 3) of std_logic_vector(1 downto 0);
	constant rom : datos := (
						"11", "10", "00", "01"
						);
	begin
	salida <= rom(to_integer(unsigned(direccion)));
end Behavioral;
