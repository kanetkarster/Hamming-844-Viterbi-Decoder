--! @file comparator.vhd
--! @author Jit Kanetkar (2015)
--! @brief Decodes a 8 bit Hamming 844 CW using the Viterbi Algorithm

library ieee;


use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

--! @brief determines most probable state
--! @param prob1,prob2 input probabilities
--! @retval maxprob most probable data
--! @retval which index of the higher probability, prob1 (0) or prob2 (1)
entity comparator is
	PORT (
		prob1 : in signed(9 downto 0);
		prob2 : in signed(9 downto 0);
		maxprob : out signed(9 downto 0);
		which : out std_logic
	);
end comparator;

architecture implementation of comparator is
-- components --
-- constants --
-- signals --
	signal data_max, data_min, max_tmp : signed(9 downto 0);
	
begin
	
	with prob1>=prob2 select data_max <=
		prob1 when true,
		prob2 when false;
	
	with prob1>=prob2 select data_min <=
		prob2 when true,
		prob1 when false;
	
	max_tmp <= prob1 when prob1(9) = '1' and prob2(9) = '0' else 
				  prob2 when prob1(9) = '0' and prob2(9) = '1' else
				  data_min when prob1(9) = '0' and prob2(9) = '0' else
				  data_max;
	with max_tmp select which <=
		'0' when prob1,
		'1' when prob2;
	maxprob <= max_tmp;
end implementation;
