--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:40:14 03/14/2022
-- Design Name:   
-- Module Name:   D:/Control_unit/test_control.vhd
-- Project Name:  Control_unit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: control
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
 
ENTITY test_control IS
END test_control;
 
ARCHITECTURE behavior OF test_control IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT control
    PORT(
         Operation : IN  std_logic_vector(5 downto 0);
         RegDst : OUT  std_logic;
         AluSrc : OUT  std_logic;
         Memoryreg : OUT  std_logic;
         RegWhite : OUT  std_logic;
         MemRead : OUT  std_logic;
         MemWhite : OUT  std_logic;
         Branch : OUT  std_logic;
         AluOp1 : OUT  std_logic;
         AluOp2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Operation : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal RegDst : std_logic;
   signal AluSrc : std_logic;
   signal Memoryreg : std_logic;
   signal RegWhite : std_logic;
   signal MemRead : std_logic;
   signal MemWhite : std_logic;
   signal Branch : std_logic;
   signal AluOp1 : std_logic;
   signal AluOp2 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN

 
	-- Instantiate the Unit Under Test (UUT)
   uut: control PORT MAP (
          Operation => Operation,
          RegDst => RegDst,
          AluSrc => AluSrc,
          Memoryreg => Memoryreg,
          RegWhite => RegWhite,
          MemRead => MemRead,
          MemWhite => MemWhite,
          Branch => Branch,
          AluOp1 => AluOp1,
          AluOp2 => AluOp2
        );

  

   -- Stimulus process
   stim_proc: process
   begin		
  
		Operation <= "000000";wait for 100 ns;	
		Operation <= "110001";wait for 100 ns;	
		Operation <= "110101";wait for 100 ns;	
		Operation <= "001000";wait for 100 ns;	
      wait;
   end process;

END;
