module Util where
import Genes

binToInt::Chromosome->Int
binToInt chromosome = binToInt' 0 base chromosome
    where base = 2^(length chromosome-1)

binToInt'::Int->Int->Chromosome->Int
binToInt' acc 0 [x] = acc+x
binToInt' acc base (x:xs) = binToInt' (acc+x*base) newBase xs
    where newBase = div base 2
binToInt' acc _ _ = acc