import System.IO (hFlush, stdout)
main::IO()
main = putStr "Temp (F): " >> hFlush stdout >> getLine >>= (\x -> putStrLn ("  Result (C): " ++ show (((read x :: Float) - 32) * 5/9)))
