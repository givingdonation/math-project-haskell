module Beklemishev where

import Control.Monad (unless)
import Data.Maybe (fromMaybe)
import Data.List (findIndex)

main :: IO ()
main = killWorm [2] 0
    where killWorm worm counter = do
            putStrLn $ show counter ++ "\t" ++ show worm
            unless (null worm) $ killWorm (nextWorm worm $ counter+1) $ counter+1
nextWorm :: [Int] -> Int -> [Int]
nextWorm (0:ns) _ = ns
nextWorm (n:ns) m = concat (replicate (m+1) (n-1:take k ns)) ++ drop k ns
    where k = fromMaybe (length ns) (findIndex (<n) ns)




--next make loaders number and bucholz hydra
