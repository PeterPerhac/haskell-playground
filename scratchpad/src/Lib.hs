module Lib (fibs) where

import Data.List

-- using `unfoldr` to generate a Fibonacci sequence
fibs :: IO ()
fibs = putStrLn . intercalate ", " . take 100 . map show $ unfoldr fibfu (1, 0)
  where fibfu (n1, n2) = Just (n1 + n2, (n2, n1 + n2))

