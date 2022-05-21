----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:21:23 03/21/2022 
-- Design Name: 
-- Module Name:    RegFile - Behavioral 
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

entity RegFile is
    Port ( read_Reg1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_Reg2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_Reg : in  STD_LOGIC_VECTOR (4 downto 0);
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           read_data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           read_data2 : out  STD_LOGIC_VECTOR (31 downto 0);
			  CLK: in STD_LOGIC;
           RegWrite : in  STD_LOGIC);
end RegFile;

architecture Behavioral of RegFile is

type RegFileType is array (0 to 31) of STD_LOGIC_VECTOR (31 downto 0);

signal array_reg : RegFileType := ( X"00000000", X"00000000", X"00000000", X"00000000", 
												X"00000005", X"00000007", X"00000000", X"00000000",
												X"00000000", X"00000000", X"00000000", X"00000000", 
												X"00000000", X"00000000", X"00000000", X"00000000",
												X"00000000", X"00000000", X"00000000", X"00000000", 
												X"00000000", X"00000000", X"00000000", X"00000000",
												X"00000000", X"00000000", X"00000000", X"00000000",
												X"00000000", X"00000000", X"00000000", X"00000000");


begin
read_data1 <= array_reg(to_integer(unsigned(read_Reg1)));
read_data2 <= array_reg(to_integer(unsigned(read_Reg2)));

process(RegWrite,CLK)
begin
	if (RegWrite = '1' and rising_edge(CLK)) then
		array_reg(to_integer(unsigned(write_Reg))) <= write_data;
		
	end if;
end process;
end Behavioral;

