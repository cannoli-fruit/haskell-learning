import System.IO (hFlush, stdout)

main::IO()
main = do
  putStr "Temp (F): "
  hFlush stdout
  line <- getLine
  let x = read line :: Float
  let y = (x - 32) * 5 / 9
  putStrLn ("\n Result is: " ++ show y)
