import Control.Monad (unless)
import Data.Maybe (fromMaybe)
import Data.List (findIndex)
main :: IO ()
main = killWorm [2] 0
    where
    killWorm n c = do
        putStrLn (show c ++ "\t" ++ show n)
        unless (null n) $ killWorm (nextWorm n (c+1)) (c+1)

nextWorm :: [Int] -> Int -> [Int]
nextWorm (0:xs) _ = xs
nextWorm (x:xs) c = concat (replicate (c+1) (x-1:take k xs)) ++ drop k xs
    where
    k = fromMaybe (length xs) (findIndex (<x) xs)

--next make loaders number and bucholz hydra