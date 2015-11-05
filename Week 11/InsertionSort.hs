{-# LANGUAGE FlexibleContexts #-}
module InsertionSort where

import Control.Monad.ST
import Data.Array.ST
import Data.Foldable (forM_)
import Control.Monad (unless)

-- span (> 3) [4,5,4,1,4,7] == ([4,5,4],[1,4,7])
insertionSort :: [Int] -> [Int]  -- list sort
insertionSort = reverse . insS []
  where
    insS sl []     = sl
    insS sl (x:xs) = let (greater, lower) = span (> x) sl
                     in insS (greater ++ (x : lower)) xs

type IntArray s = STUArray s Int Int

insertionSortST :: [Int] -> [Int]  -- sort on mutable arrays
insertionSortST list = runST $ do
    let listSize = length list
    arr <- newListArray (0, listSize - 1) list :: ST s (IntArray s)
    forM_ [1..listSize - 1] $ \i -> do
        let jScan j
                | j >= 0 = do
                    cur  <- readArray arr j
                    next <- readArray arr (j + 1)
                    unless (cur <= next) $ do writeArray arr j next
                                              writeArray arr (j + 1) cur
                                              jScan (j - 1)
                | otherwise = return ()
        jScan (i - 1)
    getElems arr
