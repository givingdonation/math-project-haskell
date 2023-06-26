import Control.Monad (unless)
import Data.Maybe (fromMaybe)
import Data.List (findIndex)
main :: IO ()
main = killHydra [1,0] 0

killHydra hydra counter = do
    putStrLn $ show counter ++ "\t" ++ show hydra
    unless (null hydra) $ killHydra (nextHydra hydra $ counter+1) $ counter+1


nextHydra (0:ns) _ = ns

--nextHydra (n:ns) count = 



