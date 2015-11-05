module Main where

import Criterion.Main
import InsertionSort

-- Our benchmark harness.
main = defaultMain
  [ bgroup "is500"
    [ bench "list" $ whnf (sum . drop 20 . insertionSort) [500,499..1]
    , bench "arr"  $ whnf (sum . drop 20 . insertionSortST) [500,499..1]
    ]
  , bgroup "is1000"
    [ bench "list" $ whnf (sum . drop 20 . insertionSort) [1000,999..1]
    , bench "arr"  $ whnf (sum . drop 20 . insertionSortST) [1000,999..1]
    ]
  ]
