module Main where

import           Criterion.Main
import qualified ListInsertionSort  as Lst
import qualified ArrayInsertionSort as Arr
import qualified VecInsertionSort   as Vec

-- Our benchmark harness.
main = defaultMain
  [ bgroup "is500"
    [ bench "lst" $ nf Lst.sort [500,499..1]
    , bench "arr" $ nf Arr.sort [500,499..1]
    , bench "vec" $ nf Vec.sort [500,499..1]
    ]
  , bgroup "is1000"
    [ bench "lst" $ nf Lst.sort [1000,999..1]
    , bench "arr" $ nf Arr.sort [1000,999..1]
    , bench "vec" $ nf Vec.sort [1000,999..1]
    ]
  ]
