--! @file add.vhd
--! @author Jit Kanetkar (2015)
--! @brief Decodes a 8 bit Hamming 844 CW using the Viterbi Algorithm

library ieee;


use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

--! @brief adds two 9 bit bcd vectors
--! @param data_in1,data_in2 values to be added
--! @retval overflow if the addition overflowed
--! @retval sum their sum
entity add is
	PORT (
		data_in1 : in signed(9 downto 0);
		data_in2 : in signed(9 downto 0);
		overflow : out boolean;
		sum : out signed(9 downto 0)
	);
	end add ;
		
architecture implementation of add  is
-- components --
-- constants --
-- signals --
begin
	sum <= data_in1 + data_in2;
	-- detect some cases of overflow
	overflow <=  true when data_in1(8) = '1' and data_in2(8) = '1' else
					 true when data_in1(7 downto 6) = "11" 
					       and data_in2(7 downto 6) = "11" else
					 false;
					 
	
end implementation;