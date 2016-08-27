digits :: Int -> [Int]
digits = map (read . (:[])) . show

isPalindrom :: Int -> Bool
isPalindrom x = a == b
  where l = length $ digits x
        ll = if l `mod` 2 == 0 then l `div` 2 else (l-1) `div` 2
        a = take ll $ digits x
        b = take ll $ reverse $ digits x

productList :: Int -> [Int]
productList n = [ x*y | x <- [1..n], y <- [1..n] ]

main :: IO ()
main = do
  print $ maximum $ filter isPalindrom $ productList 999
