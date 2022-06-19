----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:01:52 06/19/2022 
-- Design Name: 
-- Module Name:    ALU_8BITS - Behavioral 
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

entity ALU_8BITS is
    Port ( a,b : in  STD_LOGIC_VECTOR (7 downto 0);
           opcode : in  STD_LOGIC_VECTOR (1 downto 0);
           d : out  STD_LOGIC_VECTOR (7 downto 0));
end ALU_8BITS;

architecture RTL of ALU_8BITS is

begin
	process(a,b,opcode)
	begin
		case opcode is
			when "00" => 
			 d <= STD_LOGIC_VECTOR (unsigned(a) + unsigned(b));
			when "01" => 
			 d <= STD_LOGIC_VECTOR (unsigned(a) - unsigned(b));
			when "10" => 
			 d <= a and b;
			when others=> 
			 d <= a or b;
		end case;
	end process;
end architecture ;