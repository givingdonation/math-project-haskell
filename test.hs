module Main where

import qualified Beklemishev as B

main :: IO ()
main = print $ tester B.nextWorm [[1]] == [[0],[0,0],[1]]

tester :: ([Int] -> Int -> [Int]) -> [[Int]] -> [[Int]]
tester func ([]:xs) = xs
tester func (x:xs) = tester func $ func x (length $ x:xs):x:xs
