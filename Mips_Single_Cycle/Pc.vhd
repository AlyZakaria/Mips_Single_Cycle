----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:18:23 04/04/2022 
-- Design Name: 
-- Module Name:    Pc - Behavioral 
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

entity Pc is
    Port ( input : in  STD_LOGIC_VECTOR (31 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0);
			  CLK : in STD_LOGIC);
end Pc;

architecture Behavioral of Pc is
signal temp: STD_LOGIC_VECTOR(31 downto 0) := X"00000000";

begin
process (input ,CLK)
begin

	if rising_edge(CLK) then 
		output <= temp;
	end if;
	if falling_edge(CLK) then
		temp <= input;
	end if;
	
end process;
end Behavioral;

