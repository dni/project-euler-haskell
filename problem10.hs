ps = 2 : [i | i <- [3..], and [rem i p > 0 | p <- takeWhile (\p -> p^2 <= i) ps]]

limit :: Int -> Bool
limit x = x < 2000000

main :: IO ()
main = do
  print $ sum $ takeWhile limit ps
