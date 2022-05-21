--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:48:30 03/28/2022
-- Design Name:   
-- Module Name:   E:/Semester 6/Computer Archt/Lab/Xilinx_ISE_Design_Suite_v14.7/lab_6/alu/Data_Memory_test.vhd
-- Project Name:  alu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Data_Memory
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
 
ENTITY Data_Memory_test IS
END Data_Memory_test;
 
ARCHITECTURE behavior OF Data_Memory_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Data_Memory
    PORT(
         Address : IN  std_logic_vector(31 downto 0);
         write_Data : IN  std_logic_vector(31 downto 0);
         read_Data : OUT  std_logic_vector(31 downto 0);
         mem_read : IN  std_logic;
         mem_write : IN  std_logic;
         CLK : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Address : std_logic_vector(31 downto 0) := (others => '0');
   signal write_Data : std_logic_vector(31 downto 0) := (others => '0');
   signal mem_read : std_logic := '0';
   signal mem_write : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal read_Data : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Data_Memory PORT MAP (
          Address => Address,
          write_Data => write_Data,
          read_Data => read_Data,
          mem_read => mem_read,
          mem_write => mem_write,
          CLK => CLK
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here 
			Address <= X"00000000";
			mem_read <= '1';
			mem_write <= '0';
			
			wait for 100 ns;
			
			Address <= X"00000004";
			mem_read <= '0';
			mem_write <= '1';
			write_Data <= X"00000000"; 
			 
			wait for 100 ns;
			Address <= X"00000004";
			mem_read <= '1';
			mem_write <= '0';
			
			
      wait;
   end process;

END;
