----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:21:54 03/07/2022 
-- Design Name: 
-- Module Name:    Alu_Control - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Alu_Control is
    Port ( AluOp : in  STD_LOGIC_VECTOR (1 downto 0);
           Instruction : in  STD_LOGIC_VECTOR (5 downto 0);
           operation : out  STD_LOGIC_VECTOR (3 downto 0));
end Alu_Control;

architecture Behavioral of Alu_Control is

begin

process(AluOp,Instruction)
begin

if(AluOp = "00" )then
	operation <= "0010";
	
elsif AluOp = "01" then
	operation <= "0110";
	
elsif AluOp = "10" then
	if Instruction(3 downto 0) = "0000" then
		operation <= "0010";
	elsif Instruction(3 downto 0) = "0100" then
		operation <= "0000";
	elsif Instruction(3 downto 0) = "0101" then
		operation <= "0001";
	elsif AluOP(1) = '1' then
		if Instruction(3 downto 0) = "0010" then
		operation <= "0110";
		elsif Instruction(3 downto 0) = "1010" then 
		operation <= "0111";
		end if;
	end if;
elsif AluOP(1) = '1' then
		if Instruction(3 downto 0) = "0010" then
		operation <= "0110";
		elsif Instruction(3 downto 0) = "1010" then 
		operation <= "0111";
	end if;
 end if;

end process;

end Behavioral;

