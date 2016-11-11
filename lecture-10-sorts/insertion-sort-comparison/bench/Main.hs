{-# LANGUAGE TypeApplications #-}

module Main where

import           Criterion.Main     (bench, bgroup, defaultMain, whnf)
import qualified Data.List          as Stl

import qualified ArrayInsertionSort as Arr
import qualified ListInsertionSort  as Lst
import qualified VecInsertionSort   as Vec

main :: IO ()
main = defaultMain
  [ bgroup "is500"
    [ bench "lst" $ whnf (sum . Lst.sort) [500,499..1]
    , bench "arr" $ whnf (sum . Arr.sort) [500,499..1]
    , bench "vec" $ whnf (sum . Vec.sort) [500,499..1]
    , bench "stl" $ whnf (sum . Stl.sort @Int) [500,499..1]
    ]
  , bgroup "is1000"
    [ bench "lst" $ whnf (sum . Lst.sort) [1000,999..1]
    , bench "arr" $ whnf (sum . Arr.sort) [1000,999..1]
    , bench "vec" $ whnf (sum . Vec.sort) [1000,999..1]
    , bench "stl" $ whnf (sum . Stl.sort @Int) [1000,999..1]
    ]
  ]
