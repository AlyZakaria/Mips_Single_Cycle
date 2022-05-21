----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:44:21 04/04/2022 
-- Design Name: 
-- Module Name:    Sign_Extend - Behavioral 
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

entity Sign_Extend is
    Port ( input : in  STD_LOGIC_VECTOR (15 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end Sign_Extend;

architecture Behavioral of Sign_Extend is

begin

process (input)
begin

output(15 downto 0) <= input(15 downto 0);

if input(15) = '0' then
	output(31 downto 16) <= X"0000";
	
elsif input(15) = '1' then
	output(31 downto 16) <= X"FFFF";
	


end if;
end process;

end Behavioral;

