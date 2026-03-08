import System.IO (hFlush, stdout)

factorial :: Integer -> Integer
factorial n
  | n == 1 = 1
  | otherwise = n * factorial (n - 1)

main :: IO()
main = do
  putStr "X: "
  hFlush stdout
  line <- getLine
  let x = read line :: Integer
  let y = factorial x
  putStrLn ("Y: " ++ show y)
