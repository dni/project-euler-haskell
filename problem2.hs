fibs = 1 : 1 : zipWith (+) fibs (tail fibs)

fibLimit :: Int -> Bool
fibLimit x = x < 4000000

main :: IO ()
main = print $ sum $ filter even $ tail $ takeWhile fibLimit fibs
