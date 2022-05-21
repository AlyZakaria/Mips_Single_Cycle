----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:13:13 03/28/2022 
-- Design Name: 
-- Module Name:    Data_Memory - Behavioral 
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

entity Data_Memory is
    Port ( Address : in  STD_LOGIC_VECTOR (31 downto 0);
           write_Data : in  STD_LOGIC_VECTOR (31 downto 0);
           read_Data : out  STD_LOGIC_VECTOR (31 downto 0);
           mem_read : in  STD_LOGIC;
           mem_write : in  STD_LOGIC;
			  CLK: in STD_LOGIC);
end Data_Memory;

	architecture Behavioral of Data_Memory is

type Data_Memory_Type is array (0 to 35) of STD_LOGIC_VECTOR (7 downto 0);

signal array_Memory : Data_Memory_Type := (
											   X"AB", X"CD", X"EF", X"00", 
												X"75", X"74", X"65", X"72", 
												X"20", X"41", X"72", X"63", 
												X"68", X"69", X"74", X"65", 
												X"12", X"34", X"56", X"78",
												X"7F", X"7F", X"7D", X"7D", 
												X"00", X"00", X"00", X"00", 
												X"78", X"78", X"6A", X"6A", 
												X"00", X"00", X"00", X"01");
begin

process(Address, mem_read, mem_write,CLK)
begin
	if(mem_read = '1' and mem_write = '0' ) then
		read_Data(31 downto 24) <= array_Memory(to_integer(unsigned(Address)));
		read_Data(23 downto 16) <= array_Memory(to_integer(unsigned(Address)+1));
		read_Data(15 downto 8) <= array_Memory(to_integer(unsigned(Address)+2));
		read_Data(7 downto 0) <= array_Memory(to_integer(unsigned(Address)+3));
		
			
	elsif(mem_read = '0' and mem_write = '1' and rising_edge(CLK) ) then
		array_Memory(to_integer(unsigned(Address))) <= write_Data(31 downto 24);
		array_Memory(to_integer(unsigned(Address)+1)) <= write_Data(23 downto 16);
		array_Memory(to_integer(unsigned(Address)+2)) <= write_Data(15 downto 8);
		array_Memory(to_integer(unsigned(Address)+3)) <= write_Data(7 downto 0);
	end if;
	
end process;
end Behavioral;

