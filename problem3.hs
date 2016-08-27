ps = 2 : [i | i <- [3..], and [rem i p > 0 | p <- takeWhile (\p -> p^2 <= i) ps]]

primFactor :: Int -> Int -> Int
primFactor x i = if x `mod` y == 0
    then y
    else
      if y < x then
        primFactor x (i+1)
      else x
    where y = ps !! i

primFactors :: Int -> [Int]
primFactors x
  | pf == 1 = []
  | otherwise = pf:pfr
  where pf = primFactor x 1
        pfr = primFactors (x `div` pf)

main :: IO ()
main = do
  print $ maximum $ primFactors 600851475143
