import Data.Char (digitToInt)

main :: IO ()
main = do
  contents <- readFile "problem8.txt"
  let digits = map digitToInt $ concat $ lines $ contents
  print $ digits

