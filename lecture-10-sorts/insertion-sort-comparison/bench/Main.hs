{-# LANGUAGE TypeApplications #-}
module Main where

import Criterion.Main (bench, bgroup, defaultMain, nf)

import qualified Data.List as Stl

import qualified ArrayInsertionSort as Arr
import qualified ListInsertionSort as Lst
import qualified VecInsertionSort as Vec

main :: IO ()
main = defaultMain $
  let testList = [1..300] ++ [300,299..1] in
  [ bgroup "is500"
    [ bench "lst" $ nf Lst.sort        [500,499..1]
    , bench "arr" $ nf Arr.sort        [500,499..1]
    , bench "vec" $ nf Vec.sort        [500,499..1]
    , bench "stl" $ nf (Stl.sort @Int) [500,499..1]
    ]
  , bgroup "is600"
    [ bench "lst" $ nf Lst.sort        testList
    , bench "arr" $ nf Arr.sort        testList
    , bench "vec" $ nf Vec.sort        testList
    , bench "stl" $ nf (Stl.sort @Int) testList
    ]
  ]
