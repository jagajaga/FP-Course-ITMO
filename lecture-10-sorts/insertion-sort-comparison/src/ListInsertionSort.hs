module ListInsertionSort
       ( sort
       ) where

-- span (> 3) [4,5,4,1,4,7] == ([4,5,4],[1,4,7])
sort :: [Int] -> [Int]  -- list sort
sort = insS []
  where
    insS sl []     = sl
    insS sl (x:xs) = let (lower, greater) = span (< x) sl
                     in insS (lower ++ (x : greater)) xs
