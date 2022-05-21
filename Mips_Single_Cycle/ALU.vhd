----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:20:34 02/28/2022 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           AluOperation : in  STD_LOGIC_VECTOR (3 downto 0);
           Zero : out  STD_LOGIC;
           res : out  STD_LOGIC_VECTOR (31 downto 0));
end ALU;

architecture Behavioral of ALU is

begin
process (A,B,AluOperation)
begin
	if AluOperation = "0000"  then
			res <= A AND B;
	elsif AluOperation = "0001" then
			res <= A OR B;
	elsif AluOperation = "0111" then
			if A < B then 
			res <= X"00000001";
			else  res <= X"00000000";
			end if;
	elsif AluOperation = "0010" then
			res <= A + B;
	elsif AluOperation = "0110" then
			res <= A - B;
	elsif AluOperation = "1100" then
			res <= A NOR B;
	end if;
if A = B then
	Zero <= '1';
else
	Zero <= '0';
end if;
end process;
end Behavioral;

