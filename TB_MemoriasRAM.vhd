--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:05:01 06/19/2022
-- Design Name:   
-- Module Name:   /home/alekz/Documentos/Codigos_Videos/TB_MemoriasRAM.vhd
-- Project Name:  Codigos_Videos
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MemoriaRAM
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
 
ENTITY TB_MemoriaRAM IS
END TB_MemoriaRAM;
 
ARCHITECTURE behavior OF TB_MemoriaRAM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MemoriaRAM
    PORT(
         clk : IN  std_logic;
         datoEntrada : IN  std_logic_vector(1 downto 0);
         direccion : IN  std_logic_vector(1 downto 0);
         CE : IN  std_logic;
         OE : IN  std_logic;
         WE : IN  std_logic;
         datoSalida : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal datoEntrada : std_logic_vector(1 downto 0) := (others => '0');
   signal direccion : std_logic_vector(1 downto 0) := (others => '0');
   signal CE : std_logic := '0';
   signal OE : std_logic := '0';
   signal WE : std_logic := '0';

 	--Outputs
   signal datoSalida : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MemoriaRAM PORT MAP (
          clk => clk,
          datoEntrada => datoEntrada,
          direccion => direccion,
          CE => CE,
          OE => OE,
          WE => WE,
          datoSalida => datoSalida
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      CE <= '0';
		WE <= '0';
		OE <= '1';
		datoEntrada <= "11";
		direccion <= "00";
      wait for clk_period;
		WE <= '1';
		OE <= '0';
		direccion <= "00";		
      wait;
   end process;

END;