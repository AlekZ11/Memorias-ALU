--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:01:31 06/19/2022
-- Design Name:   
-- Module Name:   /home/alekz/Documentos/Codigos_Videos/TB_ALU_4BITS.vhd
-- Project Name:  Codigos_Videos
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU_4BITS
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
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
 
ENTITY TB_ALU_4Bits IS
END TB_ALU_4Bits;
 
ARCHITECTURE behavior OF TB_ALU_4Bits IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU_4Bits
    PORT(
	 -- Pines de Entrada --
         A,B : IN  std_logic_vector(3 downto 0);
         opcode : IN  std_logic_vector(2 downto 0);
	 -- Pines de Salida --
         Cout : OUT  std_logic;
         Yout : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := "1011";
   signal B : std_logic_vector(3 downto 0) := "1001";
   signal opcode : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal Cout : std_logic := '0';
   signal Resul : std_logic_vector(3 downto 0) := (others => '0');
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   UUT: ALU_4Bits PORT MAP (A,B,opcode,Cout,Resul);
	-- Generacion de Estimulos --
	A <= "1100" after 80 ns;
	B <= "1010" after 80 ns;
	opcode <= opcode + '1' after 10 ns;

END ARCHITECTURE;