module ListInsertionSort where

-- span (> 3) [4,5,4,1,4,7] == ([4,5,4],[1,4,7])
sort :: [Int] -> [Int]  -- list sort
sort = reverse . insS []
  where
    insS sl []     = sl
    insS sl (x:xs) = let (greater, lower) = span (> x) sl
                     in insS (greater ++ (x : lower)) xs
