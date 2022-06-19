--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:05:47 06/19/2022
-- Design Name:   
-- Module Name:   /home/alekz/Documentos/Codigos_Videos/TB_MemoriaROM.vhd
-- Project Name:  Codigos_Videos
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MemoriaROM
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_MemoriaROM IS
END TB_MemoriaROM;
 
ARCHITECTURE behavior OF TB_MemoriaROM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MemoriaROM
    PORT(
         salida : OUT  std_logic_vector(1 downto 0);
         direccion : IN  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal direccion : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal salida : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MemoriaROM PORT MAP (
          salida => salida,
          direccion => direccion
        );

   -- Clock process definition
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		direccion <= "01";
		wait for 100 ns;
		direccion <= "00";
		wait for 100 ns;
		direccion <= "11";
		wait for 100 ns;
		direccion <= "10";
      wait;
   end process;

END;
