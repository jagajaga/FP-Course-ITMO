module DFS where

import Control.Monad.State

-- void dfs(int from, int[][] g, boolean[] visited) {
--     visited[from] = true;
--     for (int u : g[from]) {
--         if (!visited[u]) dfs(u, g, visitied);
--     }
-- }
-- holy shh...

type Vertex = Int
type Graph  = [[Vertex]]

dfs :: Vertex -> Vertex -> Graph -> Bool
dfs from to g = evalState (reach from) ([], [])
  where
    reach :: Int -> State ([(Vertex, Int)], [Vertex]) Bool
    reach v
        | v == -1   = return False
        | v == to   = return True
        | otherwise = state (step v) >>= reach -- state $ \st -> ...

    step v (s, visited) = if v `elem` visited
                          then nextVertex s visited
                          else nextVertex ((v, 0):s) (v:visited)

    nextVertex ((v, i):s) visited
        | i == length (g !! v) = if null s
                                 then (-1, ([], []))
                                 else (fst $ head s, (s, visited))
        | otherwise            = let u  = g !! v !! i
                                     st = ((v, i + 1) : s, visited) in
                                 if u `elem` visited
                                 then (v, st)
                                 else (u, st)


g1 :: Graph
g1 = [ [1, 2, 3]  -- 0
     , [0, 5]     -- 1
     , [0, 5]     -- 2
     , [0, 4]     -- 3
     , [3, 5]     -- 4
     , [1, 2, 3]  -- 5
     , [7]        -- 6
     , [6]        -- 7
     ]

g2 :: Graph
g2 = [[]]

g3 :: Graph
g3 = [[1], [0]]

g4 :: Graph
g4 = [[1, 2], [0], [0]]
