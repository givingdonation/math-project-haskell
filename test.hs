module Main where

--import qualified Beklemishev as B
import qualified KirbyParis as K
main :: IO ()
main = print $ tester K.nextHydra [[1,0]] == [[0],[0,0],[1,0]]

tester :: ([Int] -> Int -> [Int]) -> [[Int]] -> [[Int]]
tester func ([]:xs) = xs
tester func (x:xs) = tester func $ func x (length $ x:xs):x:xs
