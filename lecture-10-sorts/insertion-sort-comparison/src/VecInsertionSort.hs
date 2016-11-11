{-# LANGUAGE FlexibleContexts #-}

module VecInsertionSort where

import           Control.Monad               (unless)
import           Control.Monad.ST            (ST, runST)
import           Data.Foldable               (forM_)
import qualified Data.Vector.Unboxed         as V
import qualified Data.Vector.Unboxed.Mutable as M

sort :: [Int] -> [Int]  -- sort on mutable arrays
sort list = runST $ do
    let listSize = length list
    vec <- V.thaw $ V.fromList list :: ST s (M.MVector s Int)

    forM_ [1..listSize - 1] $ \i -> do
        let jScan j
                | j >= 0 = do
                    cur  <- M.read vec j
                    next <- M.read vec (j + 1)
                    unless (cur <= next) $ do M.write vec j next
                                              M.write vec (j + 1) cur
                                              jScan (j - 1)
                | otherwise = return ()
        jScan (i - 1)

    resVec <- V.freeze vec
    return $ V.toList resVec
