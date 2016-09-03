import Data.Char (digitToInt)

adjacentF :: [Int] -> [Int]
adjacentF (x:xs)
            | null xs = []
            | x == (head xs) + 1 = head xs : adjacentF xs
            | x == (head xs) - 1 = head xs : adjacentF xs
            | x == (head xs) = head xs : adjacentF xs
            | otherwise = []

adjacent :: [Int] -> [Int]
adjacent xs = head xs : adjacentF xs

adjacents :: [Int] -> [[Int]]
adjacents xs
          | null xs = [[]]
          | otherwise = [] : ys : adjacents zs
          where ys = adjacent xs
                l = length ys
                zs = drop l xs

main :: IO ()
main = do
  contents <- readFile "problem8.txt"
  let digits = map digitToInt $ concat $ lines $ contents
  print $ maximum $ map product $ filter isLong $ adjacents $ digits
  -- where is there no thirteen adjacent digits in the 1000 digit number?
  -- i thought adjacent digits where number with x+1 x-1 :/
  where isLong xs = length xs == 13

