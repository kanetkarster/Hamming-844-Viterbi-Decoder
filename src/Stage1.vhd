--! @file Stage1.vhd
--! @author Jit Kanetkar (2015)
--! @brief Decodes a 8 bit Hamming 844 CW using the Viterbi Algorithm

library ieee;

use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

--! @brief Stage 1 of Viterbi Decoder
--! @param c1,c2 noisy input bits
--! @retval p1..p4 probabilites of each state in trellis
--! @retval top most probable data from top of trellis
--! @retval bot most probable data from bottom of trellis
entity st1 is
	port (
		c1 : in signed(9 downto 0);
		c2 : in signed(9 downto 0);
		p1_o, p2_o, p3_o, p4_o : out signed(9 downto 0);
		top : out std_logic_vector(1 downto 0);
		bot : out std_logic_vector(1 downto 0)
	);
end st1;

architecture implementation of st1 is

-- components --
-- constants --
-- signals --

begin
end implementation;