----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:53:20 05/05/2022 
-- Design Name: 
-- Module Name:    Single_Cycle - Behavioral 
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

entity Single_Cycle is
    Port ( CLK_Main : in  STD_LOGIC:= '0');
end Single_Cycle;

	architecture Behavioral of Single_Cycle is

component  Alu_Control is
 Port ( AluOp : in  STD_LOGIC_VECTOR (1 downto 0);
           Instruction : in  STD_LOGIC_VECTOR (5 downto 0);
           operation : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component ALU is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           AluOperation : in  STD_LOGIC_VECTOR (3 downto 0);
           Zero : out  STD_LOGIC;
           res : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component Adder is
    Port ( ip1 : in  STD_LOGIC_VECTOR (31 downto 0);
           ip2 : in  STD_LOGIC_VECTOR (31 downto 0);
           op : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component  control is
    Port ( Operation : in  STD_LOGIC_VECTOR (5 downto 0);
           RegDst : out  STD_LOGIC;
           AluSrc : out  STD_LOGIC;
           Memoryreg : out  STD_LOGIC;
           RegWrite : out  STD_LOGIC;
           MemRead : out  STD_LOGIC;
           MemWrite : out  STD_LOGIC;
           Branch : out  STD_LOGIC;
           AluOp : out  STD_LOGIC_VECTOR (1 downto 0));
end component;

component Data_Memory is
    Port ( Address : in  STD_LOGIC_VECTOR (31 downto 0);
           write_Data : in  STD_LOGIC_VECTOR (31 downto 0);
           read_Data : out  STD_LOGIC_VECTOR (31 downto 0);
           mem_read : in  STD_LOGIC;
           mem_write : in  STD_LOGIC;
			  CLK: in STD_LOGIC);
end component;

component Instruction_Memory is
    Port ( pc : in  STD_LOGIC_VECTOR (31 downto 0);
           instruction : out  STD_LOGIC_VECTOR (31 downto 0);
			  CLK: in STD_LOGIC
			  );
end component;

component Memory_Mux is
    Port ( i1 : in  STD_LOGIC_VECTOR (31 downto 0);
           i2 : in  STD_LOGIC_VECTOR (31 downto 0);
           sel_line : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component MemReg_Mux is
    Port ( i1 : in  STD_LOGIC_VECTOR (4 downto 0);
           i2 : in  STD_LOGIC_VECTOR (4 downto 0);
           sel_line : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (4 downto 0));
end component;

component Pc is
    Port ( input : in  STD_LOGIC_VECTOR (31 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0);
			  CLK : in STD_LOGIC);
end component;

component RegFile is
    Port ( read_Reg1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_Reg2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_Reg : in  STD_LOGIC_VECTOR (4 downto 0);
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           read_data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           read_data2 : out  STD_LOGIC_VECTOR (31 downto 0);
			  CLK: in STD_LOGIC;
           RegWrite : in  STD_LOGIC);
end component;

component shift_left_32_32 is
    Port ( input : in  STD_LOGIC_VECTOR (31 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component  Sign_Extend is
    Port ( input : in  STD_LOGIC_VECTOR (15 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component Alu_Mux is
    Port ( i1 : in  STD_LOGIC_VECTOR (31 downto 0);
           i2 : in  STD_LOGIC_VECTOR (31 downto 0);
           sel_line : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component Pc_Adder is
    Port ( i1 : in  STD_LOGIC_VECTOR (31 downto 0);
           i2 : in  STD_LOGIC_VECTOR (31 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component Pc_Mux is
    Port ( i1 : in  STD_LOGIC_VECTOR (31 downto 0);
           i2 : in  STD_LOGIC_VECTOR (31 downto 0);
           sel_line : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end component;



	signal Alu_i1: STD_LOGIC_VECTOR (31 downto 0);
	signal Alu_i2: STD_LOGIC_VECTOR (31 downto 0);
	signal Alu_output: STD_LOGIC_VECTOR (31 downto 0);
	signal Zero_output: STD_LOGIC;
	signal Alu_sel: STD_LOGIC_VECTOR (3 downto 0);
	
	signal Pc_in: std_logic_vector (31 downto 0);
	signal Pc_output: std_logic_vector (31 downto 0);
	signal Adder_output: std_logic_vector (31 downto 0);
	
	signal Reg_Dst: STD_LOGIC;
   signal Alu_Src: STD_LOGIC;
   signal Memory_reg: STD_LOGIC;
   signal Reg_Write: STD_LOGIC;
   signal Mem_Read: STD_LOGIC;
   signal Mem_Write: STD_LOGIC;
   signal branch: STD_LOGIC;
   signal aluOp: std_logic_vector (1 downto 0);

	signal signExtend: std_logic_vector (31 downto 0);
	signal shift_left: std_logic_vector (31 downto 0);
	
	signal Alu_Output_To_PC_MUX: std_logic_vector (31 downto 0);
	signal PC_Mux_Control: std_logic;
	
	signal Instruction_Input: std_logic_vector (31 downto 0);
	signal write_Data: std_logic_vector (31 downto 0);
	signal MUX_regDst_Output:std_logic_vector (4 downto 0);
	
	signal readData2: std_logic_vector (31 downto 0);
	signal data_memory_output: std_logic_vector (31 downto 0);	
	
	--signal shiftleft32: std_logic_vector (31 downto 0);
	signal pc_mux_sel: std_logic;
	
begin

	pc_Unit: Pc port map(
		CLK => CLK_Main,
		input => pc_in,
		output => pc_output
	);
	PcAdder: Pc_Adder port map(
		i1 => pc_output,
		i2 => X"00000004",
		output => Adder_output
	);
	Branch_Adder: Adder port map(
		ip1 => Adder_output,
		ip2 => shift_left,
		op => Alu_Output_To_PC_MUX
	);
	InstructionMemory: Instruction_Memory port map(
		pc => pc_output,
		instruction => Instruction_Input,
		CLK => CLK_Main
	);
	Control_Unit: control port map(
			  Operation => Instruction_Input(31 downto 26), 
           RegDst => Reg_Dst,
           AluSrc => Alu_Src,
           Memoryreg => Memory_reg,
           RegWrite => Reg_Write,
           MemRead => Mem_Read,
           MemWrite => Mem_Write,
           Branch => branch,
           AluOp => aluOp
	);
		
	mux_RegDst: MemReg_Mux port map(
		i1 =>	Instruction_Input(20 downto 16),
		i2 =>	Instruction_Input(15 downto 11),
		sel_line => Reg_Dst,
		output => MUX_regDst_Output
	);		  
	mux_memory: Memory_Mux port map(
		i1 => Alu_output,
		i2 => data_memory_output,
		sel_line => Memory_reg,
		output => write_Data
	);
	mux_Alu: Alu_Mux port map(
		i1 => readData2,
		i2 => signExtend,
		sel_line => Alu_Src,
		output => Alu_i2
	);
		
			pc_mux_sel <= (branch and Zero_output);
			
	mux_pc: Pc_Mux port map(
		i1 => Adder_output,
		i2 => Alu_Output_To_PC_MUX,
		sel_line => pc_mux_sel,
		output => Pc_in
	);
	register_file: RegFile port map( 
		read_Reg1 => Instruction_Input(25 downto 21),
		read_Reg2 => Instruction_Input(20 downto 16),
		write_Reg => MUX_regDst_Output,
		write_data => write_Data,
		read_data1 => Alu_i1,
		read_data2 => readData2,
		CLK => CLK_Main,
		RegWrite => Reg_Write
	);
	signExtend_Unit: Sign_Extend port map(
		input => Instruction_Input( 15 downto 0),
      output => signExtend	
	);
	shiftLeft: shift_left_32_32 port map(
		input => signExtend,
      output => shift_left
	);
	
	AluControl: Alu_Control port map(
		 AluOp => aluOp,
       Instruction => Instruction_Input( 5 downto 0),
       operation => Alu_sel
	);
	Alu_Unit: ALU port map(
		A => Alu_i1,
		B => Alu_i2, 
		AluOperation => Alu_sel, 
		Zero => Zero_output,
		res => Alu_output
	);
	
	
	DataMemory: Data_Memory port map(
		Address => Alu_output,
		write_Data => readData2,
		read_Data => data_memory_output,
		mem_read => Mem_Read,
		mem_write => Mem_Write,
		CLK => CLK_Main
	);
	
end Behavioral;

