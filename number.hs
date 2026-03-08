import System.IO (hFlush, stdout)
import Data.List (isSubsequenceOf)
import Text.Printf (printf)

guess :: (Int, Int) -> IO()
guess (x,y) = do
  if x+1 >= y then do
    putStrLn "You've lied to me"
  else do
    let mid = quot (x + y) 2
    printf "I guess %d, higher or lower [h/l/y]? " mid
    hFlush stdout
    resp <- getLine
    if isSubsequenceOf "h" resp then
      guess (mid, y)
    else if isSubsequenceOf "l" resp then
      guess (x, mid)
    else if isSubsequenceOf "y" resp then
      putStrLn "Ha, I got you!"
    else do
      putStrLn "Invalid Input!"
      guess (x,y)


main :: IO()
main = do
  guess(0,100)
