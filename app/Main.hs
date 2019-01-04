module Main where

import Control.Monad.Random
import Data.Monoid
import Test.QuickCheck.Arbitrary
import Test.QuickCheck.Gen
import Test.QuickCheck.Random
import System.Random

import Control.Concurrent

main :: IO ()
main = undefined


-- -----------------------------------------------------------------------------
-- the computation

-- use a delay as mock computatation
computation :: IO ()
computation = generate delayTime >>= threadDelay
  where
    delayTime :: Gen Int
    delayTime = elements [1000 .. 2000]
