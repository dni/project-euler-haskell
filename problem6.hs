getSum :: Int -> Int
getSum n = (sum b)^2 - (sum a)
  where a = [ x*x | x <- [1..n] ]
        b = [ x | x <- [1..n] ]

main :: IO ()
main = do
 print $ getSum 100
