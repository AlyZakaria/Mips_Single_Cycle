----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:18:54 05/05/2022 
-- Design Name: 
-- Module Name:    Instruction_Memory - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Instruction_Memory is
    Port ( pc : in  STD_LOGIC_VECTOR (31 downto 0);
           instruction : out  STD_LOGIC_VECTOR (31 downto 0);
			  CLK: in STD_LOGIC
			  );
end Instruction_Memory;

architecture Behavioral of Instruction_Memory is

type arr is array(0 to 23) of STD_LOGIC_VECTOR (7 downto 0);

signal memory: arr:= (
				
"00000000", "10000101", "00010000", "00100000", -- add $v0, $a0, $a1
"10101100", "00000010", "00000000", "00001000", -- sw $v0, 8($Zero)
"10001100", "00000110", "00000000", "00001000", -- lw $a2, 8($Zero)
"00010000", "11000010", "00000000", "00000001", -- beq $v0, $a2, 1
"00000000", "01000110", "10001000", "00101010", -- slt $s1, $v0, $a2
"00000000", "10100100", "10001000", "00100010"  -- sub $s1, $a1, $a0
); 

begin


		instruction(31 downto 24) <= memory(to_integer(unsigned(pc)));
		instruction(23 downto 16) <= memory(to_integer(unsigned(pc)+1));
		instruction(15 downto 8) <= memory(to_integer(unsigned(pc)+2));
		instruction(7 downto 0) <= memory(to_integer(unsigned(pc)+3));


end Behavioral;

