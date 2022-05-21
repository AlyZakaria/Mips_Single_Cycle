--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:24:11 05/07/2022
-- Design Name:   
-- Module Name:   E:/Semester 6/Computer Archt/Lab/Xilinx_ISE_Design_Suite_v14.7/lab_6/alu/Single_Cycle_Test.vhd
-- Project Name:  alu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Single_Cycle
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
 
ENTITY Single_Cycle_Test IS
END Single_Cycle_Test;
 
ARCHITECTURE behavior OF Single_Cycle_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Single_Cycle
    PORT(
         CLK_Main : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK_Main : std_logic := '0';

   -- Clock period definitions
   constant CLK_Main_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Single_Cycle PORT MAP (
          CLK_Main => CLK_Main
        );

   -- Clock process definitions
   CLK_Main_process :process
   begin
		CLK_Main <= '0';
		wait for CLK_Main_period/2;
		CLK_Main <= '1';
		wait for CLK_Main_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_Main_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
