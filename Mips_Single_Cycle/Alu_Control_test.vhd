--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:40:23 03/07/2022
-- Design Name:   
-- Module Name:   E:/Semester 6/Computer Archt/Lab/Xilinx_ISE_Design_Suite_v14.7/lab_6/alu/Alu_Control_test.vhd
-- Project Name:  alu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Alu_Control
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
 
ENTITY Alu_Control_test IS
END Alu_Control_test;
 
ARCHITECTURE behavior OF Alu_Control_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Alu_Control
    PORT(
         AluOp : IN  std_logic_vector(1 downto 0);
         Instruction : IN  std_logic_vector(5 downto 0);
         operation : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal AluOp : std_logic_vector(1 downto 0) := (others => '0');
   signal Instruction : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal operation : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Alu_Control PORT MAP (
          AluOp => AluOp,
          Instruction => Instruction,
          operation => operation
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		
		AluOp <= "00"; wait for 100 ns;
		AluOp <= "01"; wait for 100 ns;
		
		AluOp <= "10"; Instruction <= "000000";wait for 100 ns;
		AluOp <= "10"; Instruction <= "000000";wait for 100 ns;
		AluOp <= "10"; Instruction <= "000100";wait for 100 ns;
		AluOp <= "10"; Instruction <= "000101";wait for 100 ns;
		
		AluOp <= "11"; Instruction <= "000010";wait for 100 ns;
		AluOp <= "11"; Instruction <= "001010";wait for 100 ns;
		
		

      wait;
   end process;

END;
