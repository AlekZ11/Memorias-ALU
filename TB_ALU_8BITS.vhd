--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:02:38 06/19/2022
-- Design Name:   
-- Module Name:   /home/alekz/Documentos/Codigos_Videos/TB_ALU_8BITS.vhd
-- Project Name:  Codigos_Videos
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU_8BITS
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_ALU_8BITS is
end TB_ALU_8BITS;

architecture tb of TB_ALU_8BITS is

component ALU_8BITS is 
	Port ( a, b : in  STD_LOGIC_VECTOR (7 downto 0);
           opcode : in  STD_LOGIC_VECTOR (1 downto 0);
           d : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

signal a_s : STD_LOGIC_VECTOR (7 downto 0);
signal b_s : STD_LOGIC_VECTOR (7 downto 0);
signal opcode_s : STD_LOGIC_VECTOR (1 downto 0);
signal d_s :STD_LOGIC_VECTOR (7 downto 0);

begin
 UUT: ALU_8BITS port map(a_s, b_s, opcode_s, d_s);
 a_s <= "00010001", "01100101" after 5 ns;
 b_s <= "00100011", "00000010" after 5 ns, "00111001" after 20 ns;
 opcode_s <= "00", "01" after 5 ns;

end architecture;