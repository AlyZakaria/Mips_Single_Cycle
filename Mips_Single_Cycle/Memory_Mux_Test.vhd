--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   05:26:08 05/05/2022
-- Design Name:   
-- Module Name:   E:/Semester 6/Computer Archt/Lab/Xilinx_ISE_Design_Suite_v14.7/lab_6/alu/Memory_Mux_Test.vhd
-- Project Name:  alu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Memory_Mux
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
 
ENTITY Memory_Mux_Test IS
END Memory_Mux_Test;
 
ARCHITECTURE behavior OF Memory_Mux_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Memory_Mux
    PORT(
         i1 : IN  std_logic_vector(31 downto 0);
         i2 : IN  std_logic_vector(31 downto 0);
         sel_line : IN  std_logic;
         output : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal i1 : std_logic_vector(31 downto 0) := (others => '0');
   signal i2 : std_logic_vector(31 downto 0) := (others => '0');
   signal sel_line : std_logic := '0';

 	--Outputs
   signal output : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Memory_Mux PORT MAP (
          i1 => i1,
          i2 => i2,
          sel_line => sel_line,
          output => output
        );

   -- Clock process definitions

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		i1 <= X"00000001"; i2 <= X"00001111"; sel_line <= '1';

      wait;
   end process;

END;
