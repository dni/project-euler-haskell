ps = 2 : [i | i <- [3..], and [rem i p > 0 | p <- takeWhile (\p -> p^2 <= i) ps]]

main :: IO ()
main = do
  print $ ps !! 10000
