-- not very effecient ;(

triangle = scanl (+) 1 [2..]

findDivisors :: Integer -> Integer -> [Integer]
findDivisors n 1 = n:[]
findDivisors n i = if mod n i == 0
                   then n `div` i : findDivisors n (i-1)
                   else findDivisors n (i-1)

findLimit :: Integer -> Bool
findLimit n = (length $ findDivisors n n) <= 500

getNumber :: [Integer] -> Integer
getNumber xs = triangle !! (length xs)

main :: IO ()
main = do
  print $ getNumber $ takeWhile findLimit triangle

