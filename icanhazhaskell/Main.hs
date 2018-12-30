module Main where

main :: IO ()
main =
 let
    formatIt idx n = show idx ++ " -> " ++ show n
    calcPowers = (map $ uncurry formatIt) . (zip [0..]) . (map (2 ^))
  in
    mapM_ putStrLn $ calcPowers [0..30]
