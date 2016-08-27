ps = 2 : [i | i <- [3..],
              and [rem i p > 0 | p <- takeWhile (\p -> p^2 <= i) ps]]


isPrimTwin :: Int -> Int -> Bool
isPrimTwin x y = x == y - 2

primTwin :: Int -> (Int, Int)
primTwin i = if isPrimTwin x y
  then (x, y)
  else primTwin (i+1)
  where x = ps !! i
        y = ps !! (i+1)

