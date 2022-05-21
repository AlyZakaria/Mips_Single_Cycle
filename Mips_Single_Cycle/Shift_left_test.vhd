--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:02:01 04/04/2022
-- Design Name:   
-- Module Name:   E:/Semester 6/Computer Archt/Lab/Xilinx_ISE_Design_Suite_v14.7/lab_6/alu/Shift_left_test.vhd
-- Project Name:  alu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Shift_left
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
 
ENTITY Shift_left_test IS
END Shift_left_test;
 
ARCHITECTURE behavior OF Shift_left_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Shift_left
    PORT(
         instruction : IN  std_logic_vector(25 downto 0);
         output : OUT  std_logic_vector(27 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal instruction : std_logic_vector(25 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector(27 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Shift_left PORT MAP (
          instruction => instruction,
          output => output
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		instruction <= "00000000000000000000000011";
		wait for 100 ns;
		instruction <= "00000000000000000000001111";

      -- insert stimulus here 

      wait;
   end process;

END;
