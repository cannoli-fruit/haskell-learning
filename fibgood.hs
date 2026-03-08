fibonacci :: (Integer, Integer) -> Integer -> (Integer, Integer)
fibonacci x n =
  if n == 0 then x
  else
    let (a,b) = x
    in fibonacci  (b, a+b) (n-1)

main :: IO()
main = do
  putStrLn "X: "
  line <- getLine
  let x = read line :: Integer
  let y = fibonacci (0,1) x
  let (a,b) = y
  putStrLn ("Y: " ++ show b)
