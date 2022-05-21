--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:14:01 04/04/2022
-- Design Name:   
-- Module Name:   E:/Semester 6/Computer Archt/Lab/Xilinx_ISE_Design_Suite_v14.7/lab_6/alu/shift_left_32_32_test.vhd
-- Project Name:  alu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: shift_left_32_32
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
 
ENTITY shift_left_32_32_test IS
END shift_left_32_32_test;
 
ARCHITECTURE behavior OF shift_left_32_32_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shift_left_32_32
    PORT(
         input : IN  std_logic_vector(31 downto 0);
         output : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shift_left_32_32 PORT MAP (
          input => input,
          output => output
        );



   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	


      -- insert stimulus here 
		input <= X"F0000000";
		
      wait;
   end process;

END;
