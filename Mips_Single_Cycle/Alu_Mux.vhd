----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:15:24 05/05/2022 
-- Design Name: 
-- Module Name:    Alu_Mux - Behavioral 
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

entity Alu_Mux is
    Port ( i1 : in  STD_LOGIC_VECTOR (31 downto 0);
           i2 : in  STD_LOGIC_VECTOR (31 downto 0);
           sel_line : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end Alu_Mux;

architecture Behavioral of Alu_Mux is

begin
process (i1,i2,sel_line)
begin
	if sel_line = '0' then 
		output <= i1;
	else
		output <= i2;
		end if;
end process;
end Behavioral;

