--! @file Hamming844Decoder.vhd
--! @author Jit Kanetkar (2015)
--! @brief Decodes a 8 bit Hamming 844 CW using the Viterbi Algorithm

library ieee;

use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

--! @brief Decodes a Hamming 844 message
--! @param c1..c8 input bits
--! @retval data most probable data
entity Hamming844Decoder is
	PORT (
		clk : in std_logic;
		c1 : in signed(9 downto 0);
		c2 : in signed(9 downto 0);
		c3 : in signed(9 downto 0);
		c4 : in signed(9 downto 0);
		c5 : in signed(9 downto 0);
		c6 : in signed(9 downto 0);
		c7 : in signed(9 downto 0);
		c8 : in signed(9 downto 0);
		data : out std_logic_vector(7 downto 0)
	);
end Hamming844Decoder;

architecture impl of Hamming844Decoder is

-- components --
-- constants --
-- signals --

begin

end impl;
