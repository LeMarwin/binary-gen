module Main where

import Genes;
import Util;

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
   print $ binToInt [1,0,1,0]
   (n,result, bestInd) <- initEvol opts
   print $ "Generation: " ++ show n
   print $ "Best Individual: " ++ show bestInd
   print $ "Whole population:" ++ show result