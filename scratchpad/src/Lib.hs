module Lib (fibs) where

import Data.List (unfoldr)

-- `unfoldr` to generate Fibonacci sequence
fibs :: [Int]
fibs = let f (n1, n2) = Just (n1 + n2, (n2, n1 + n2)) in unfoldr f (1, 0)
