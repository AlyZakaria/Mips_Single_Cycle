--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:35:10 04/04/2022
-- Design Name:   
-- Module Name:   E:/Semester 6/Computer Archt/Lab/Xilinx_ISE_Design_Suite_v14.7/lab_6/alu/Adder_test.vhd
-- Project Name:  alu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Adder
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
 
ENTITY Adder_test IS
END Adder_test;
 
ARCHITECTURE behavior OF Adder_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Adder
    PORT(
         ip1 : IN  std_logic_vector(31 downto 0);
         ip2 : IN  std_logic_vector(31 downto 0);
         op : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ip1 : std_logic_vector(31 downto 0) := (others => '0');
   signal ip2 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal op : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Adder PORT MAP (
          ip1 => ip1,
          ip2 => ip2,
          op => op
        );

   -- Clock process definitions


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

     

      -- insert stimulus here 
		ip1 <= X"00000000";
		ip2 <= X"FFFFFFFF";

      wait;
   end process;

END;
