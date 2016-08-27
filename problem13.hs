main :: IO ()
main = do
  contents <- readFile "problem13.txt"
  print . map readInt . lines $ contents

readInt :: String -> Int
readInt = read
