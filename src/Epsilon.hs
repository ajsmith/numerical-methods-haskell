-- An overly complicated implementation of Epsilon using functional
-- programming methods.
module Epsilon where

-- The value of epsilon
epsilon = head $ dropWhile (not . isEpsilon) epsList

-- The infinite series of (1 / 2)**n from which we check for the value
-- of epsilon
epsList = epsList' 1
  where
    epsList' x = x:(epsList' (x / 2))

-- Test if the number is the minimum decimal value allowed by floating
-- point precision.
isEpsilon x = (x / 2) + 1 == 1
