--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:42:28 02/28/2022
-- Design Name:   
-- Module Name:   E:/Semester 6/Computer Archt/Lab/Xilinx_ISE_Design_Suite_v14.7/alu/ALU_Test.vhd
-- Project Name:  alu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY ALU_Test IS
END ALU_Test;
 
ARCHITECTURE behavior OF ALU_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         B : IN  std_logic_vector(31 downto 0);
         AluOperation : IN  std_logic_vector(3 downto 0);
         Zero : OUT  std_logic;
         res : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');
   signal AluOperation : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Zero : std_logic;
   signal res : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          A => A,
          B => B,
          AluOperation => AluOperation,
          Zero => Zero,
          res => res
        );

   -- Clock process definitions
 
 

   -- Stimulus process
   stim_proc: process
   begin		
			A <= X"00000001"; B <= X"00000001" ; AluOperation <= "0000"; wait for 100 ns;
			A <= X"00000011"; B <= X"00000000" ; AluOperation <= "0001"; wait for 100 ns;
			A <= X"11111111"; B <= X"00000000" ; AluOperation <= "0111"; wait for 100 ns;
			A <= X"00000001"; B <= X"00000010" ; AluOperation <= "0010"; wait for 100 ns;
			A <= X"00001111"; B <= X"00000011" ; AluOperation <= "0110"; wait for 100 ns;
			A <= X"00000011"; B <= X"00000011" ; AluOperation <= "1100"; wait for 100 ns;
      

      -- insert stimulus here 

      wait;
   end process;

END;
