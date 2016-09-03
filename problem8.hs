import Data.Char (digitToInt)

adjacents :: [Int] -> [[Int]]
adjacents xs
          | null xs = [[]]
          | otherwise = [] : ys : adjacents zs
          where ys = take 13 xs
                zs = drop 1 xs

main :: IO ()
main = do
  contents <- readFile "problem8.txt"
  let digits = map digitToInt $ concat $ lines $ contents
  print $ maximum $ map product $ adjacents $ digits

