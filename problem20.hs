factorial :: Integer -> Integer
factorial n = foldl (*) 1 [1..n]

digits :: Integer -> [Int]
digits = map (read . (:[])) . show

main :: IO ()
main = do
  print $ sum $ digits $ factorial 100

