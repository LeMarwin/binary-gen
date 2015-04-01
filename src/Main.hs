module Main where

import Genes;

fit::Fitness
fit chr = sum $ map fromIntegral chr

opts::EvOptions
opts= EvOptions{populationSize = 42,
                individLength = 10,
                maxGeneration = 100,
                fitness = fit,
                targetFitness = 10,
                mutationChance = 0.3,
                elitePart = 0.1}

main::IO()
main = do
   (n, result,) <- initEvol opts
   print $ show n ++ "-" ++ show result