module Main where

import Lib
import Data.List

main :: IO ()
main = putStrLn . intercalate ", " . take 100 . map show $ fibs
