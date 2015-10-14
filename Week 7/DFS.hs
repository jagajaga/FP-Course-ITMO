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
dfs from to graph = evalState (reach from) []
  where
    -- state represented as list of visited vertices
    reach :: Vertex -> State [Vertex] Bool
    reach v
        | v == to   = return True
        | otherwise = get >>= \visited ->
                      if v `elem` visited
                      then return False
                      else put (v:visited) >>
                           gets (or . evalState (mapM reach $ graph !! v))

                    --   else withState (v:) get >>= \newVisited ->
                        --    return $ or $ evalState (mapM reach (graph !! v)) newVisited


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
