get_square n = floor $ sqrt $ (fromIntegral n::Double)
is_square n = sq * sq == n
  where sq = get_square n

isPythagoreanTriplet :: ( Int, Int ) -> Bool
isPythagoreanTriplet (a, b) = isInt && c > b && b > a
  where c = ((a*a) + (b*b))
        isInt = is_square c

sumPythagoreanTriplet :: ( Int, Int ) -> Int
sumPythagoreanTriplet (a, b) = a+b+c
  where cSquared = ((a*a) + (b*b))
        c = get_square cSquared

triplets :: Int -> [(Int, Int)]
triplets n = [ (x, y) | x <- [1..n], y <- [1..n]]

findTriplet :: Int -> Int -> [(Int, Int)]
findTriplet m n = filter cond $ triplets n
  where cond (a, b) = isPythagoreanTriplet (a, b) && sumPythagoreanTriplet (a, b) == m

productOfABC :: [(Int, Int)] -> Int
productOfABC xs = a*b*c
  where a = fst (xs !! 0)
        b = snd (xs !! 0)
        cSquared = ((a*a) + (b*b))
        c = get_square cSquared

main :: IO ()
main = do
  -- limit 400 was is my guess :/ looking at 3*4*5 = 60
  print $ productOfABC $ findTriplet 1000 400
