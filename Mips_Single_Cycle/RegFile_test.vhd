--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:04:17 03/21/2022
-- Design Name:   
-- Module Name:   E:/Semester 6/Computer Archt/Lab/Xilinx_ISE_Design_Suite_v14.7/lab_6/alu/RegFile_test.vhd
-- Project Name:  alu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RegFile
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
 
ENTITY RegFile_test IS
END RegFile_test;
 
ARCHITECTURE behavior OF RegFile_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RegFile
    PORT(
         read_Reg1 : IN  std_logic_vector(4 downto 0);
         read_Reg2 : IN  std_logic_vector(4 downto 0);
         write_Reg : IN  std_logic_vector(4 downto 0);
         write_data : IN  std_logic_vector(31 downto 0);
         read_data1 : OUT  std_logic_vector(31 downto 0);
         read_data2 : OUT  std_logic_vector(31 downto 0);
         RegWrite : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal read_Reg1 : std_logic_vector(4 downto 0) := (others => '0');
   signal read_Reg2 : std_logic_vector(4 downto 0) := (others => '0');
   signal write_Reg : std_logic_vector(4 downto 0) := (others => '0');
   signal write_data : std_logic_vector(31 downto 0) := (others => '0');
   signal RegWrite : std_logic := '0';

 	--Outputs
   signal read_data1 : std_logic_vector(31 downto 0);
   signal read_data2 : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RegFile PORT MAP (
          read_Reg1 => read_Reg1,
          read_Reg2 => read_Reg2,
          write_Reg => write_Reg,
          write_data => write_data,
          read_data1 => read_data1,
          read_data2 => read_data2,
          RegWrite => RegWrite
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- insert stimulus here 
		read_Reg1 <= "00000";
		read_Reg2 <= "00001";
		
		wait for 50 ns;
		
		Regwrite <= '1';
		write_data <= X"22222222";
		write_reg <= "00000";
		read_reg1 <= "00000";
		
      wait;
   end process;

END;
