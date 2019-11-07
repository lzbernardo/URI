import Data.List

repl :: Char -> String
repl c
  | c == '[' = " [ "
  | c == ']' = " ] "
  | otherwise = [c]

-- home mode = 0
-- end mode = 1
beiju :: [String] -> String
beiju l = beiju' l 1 ""
beiju' [] _ acc = acc
beiju' (x:xs) mode acc
  | x == "[" = beiju' xs 0 acc
  | x == "]" = beiju' xs 1 acc
  | mode == 0 = beiju' xs 0 (x++acc)
  | mode == 1 =  beiju' xs 1 (acc++x)

main :: IO()
main = do
  inputs <- fmap lines getContents
  mapM_ putStrLn $ map (beiju.words.concat) (map (map repl) inputs)
