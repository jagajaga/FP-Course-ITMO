module ArrayInsertionSort where

import Control.Monad.ST
import Data.Array.ST
import Data.Foldable (forM_)
import Control.Monad (unless)

type IntArray s = STUArray s Int Int

sort :: [Int] -> [Int]  -- sort on mutable arrays
sort list = runST $ do
    let listSize = length list
    arr <- newListArray (0, listSize - 1) list :: ST s (IntArray s)

    forM_ [1..listSize - 1] $ \i ->
        forM_ [i-1, i-2..0] $ \j -> do
            cur  <- readArray arr j
            next <- readArray arr (j + 1)
            unless (cur <= next) $ do writeArray arr j next
                                      writeArray arr (j + 1) cur

    getElems arr
