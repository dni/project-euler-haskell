isMultipleOfThreeOrFive :: Int -> Bool
isMultipleOfThreeOrFive x = x `mod` 3 == 0 || x `mod` 5 == 0

main :: IO ()
main = print $ sum $ filter isMultipleOfThreeOrFive [1..999]

