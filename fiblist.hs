import Text.Printf (printf)

fibonacci :: (Integer, Integer) -> Integer -> (Integer, Integer)
fibonacci x n =
  if n == 0 then x
  else
    let (a,b) = x
    in fibonacci  (b, a+b) (n-1)

fiblist :: Integer -> Integer -> IO()
fiblist n s =
  if n > s then putStrLn "Done"
  else do
    let (a,b) = fibonacci (1,0) n
    printf "Fib %3d = %d\n" n b
    fiblist (n+1) s

main :: IO()
main = do fiblist 0 1000
