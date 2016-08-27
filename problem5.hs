-- ugly solution takes longer then it should
--  :(
--

isEvenlyDivisible :: (Integer, Integer) -> Bool
isEvenlyDivisible (x, y) = x `mod` y == 0

getRangeTuples :: Integer -> Integer -> [(Integer, Integer)]
getRangeTuples n r = [ (x,y) | x <- [n], y <- [1..r] ]

checkNumber :: Integer -> Bool
checkNumber x = and $ map isEvenlyDivisible $ getRangeTuples x 20

searchNumber :: Integer -> Integer
searchNumber x
  | checkNumber x = x
  | otherwise = searchNumber (x+1)

main :: IO ()
main = do
  print $ searchNumber 1
