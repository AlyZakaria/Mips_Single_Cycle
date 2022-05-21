--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   03:36:39 05/07/2022
-- Design Name:   
-- Module Name:   E:/Semester 6/Computer Archt/Lab/Xilinx_ISE_Design_Suite_v14.7/lab_6/alu/Instruction_Test.vhd
-- Project Name:  alu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Instruction_Memory
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
 
ENTITY Instruction_Test IS
END Instruction_Test;
 
ARCHITECTURE behavior OF Instruction_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Instruction_Memory
    PORT(
         pc : IN  std_logic_vector(31 downto 0);
         instruction : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal pc : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal instruction : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Instruction_Memory PORT MAP (
          pc => pc,
          instruction => instruction
        );

   -- Clock process definitions


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	


      -- insert stimulus here 
		pc <= X"00000004";
		
		
      wait;
   end process;

END;
