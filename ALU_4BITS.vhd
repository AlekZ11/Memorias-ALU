----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:48:07 06/19/2022 
-- Design Name: 
-- Module Name:    ALU_4BITS - Behavioral 
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
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
 
ENTITY ALU_4BITS IS
	port
	(
		-- Pines de Entrada --
		A,B : in STD_LOGIC_VECTOR (3 downto 0);
		opcode : in STD_LOGIC_VECTOR (2 downto 0);
		-- Pines de Alida --
		Cout : out STD_LOGIC;
		Yout : out STD_LOGIC_VECTOR (3 downto 0)
	);
END ALU_4BITS;
 
ARCHITECTURE Behavioral OF ALU_4BITS IS 
 
    signal Y_tmp : STD_LOGIC_VECTOR (4 downto 0) := (others => '0');
begin

		-- OPERACIONES LOGICAS --
		with opcode(2 downto 0) select
			Y_tmp <= ('0' & A) when "000",
						('0' & B) when "001",
						('0' & A) and ('0' & B) when "010",
						('0' & A) or ('0' & B) when "011",
		-- OPERACIONES ARITMETICAS --
						('0' & A) + B when "100",
						('0' & A) + '1' when "101",
						('0' & A) - '1' when "110",
						('0' & A) - B when others;
						
	Cout <= Y_tmp(4);
	Yout <= Y_tmp(3 downto 0);

END Behavioral;