module TreePrinters
        ( Tree (..)
        , directoryPrint
        , verticalPrint
        ) where

data Tree a = Leaf | Node a (Tree a) (Tree a)

-- | Prints tree like directories inside terminal.
-- Couple examples are given below.
--
--
-- >>> let t = Node 3 Leaf Leaf
-- >>> putStrLn $ directoryPrint t
-- --3
--   |-- /-
--   `-- /-
--
-- >>> let t = Node 3 (Node 1 Leaf Leaf) Leaf
-- >>> putStrLn $ directoryPrint t
-- --3
--   |--1
--   |  |-- /-
--   |  `-- /-
--   `-- /-
--
-- >>> let t = Node 3 (Node 1 Leaf Leaf) $ Node 5 (Node 4 Leaf Leaf) Leaf
-- >>> putStrLn $ directoryPrint t
-- --3
--   |--1
--   |  |-- /-
--   |  `-- /-
--   `--5
--      |--4
--      |  |-- /-
--      |  `-- /-
--      `-- /-
--
directoryPrint :: Show a => Tree a -> String
directoryPrint = unlines . treeIndent
  where
    treeIndent Leaf           = ["-- /-"]
    treeIndent (Node k lb rb) =
      ["--" ++ show k] ++
      map ("  |" ++) ls ++
      ("  `" ++ r) : map ("   " ++) rs
      where
        (r:rs) = treeIndent rb
        ls     = treeIndent lb

-- | Print tree in vertical and more readable way.
verticalPrint :: Show a => Tree a -> String
verticalPrint = unlines . rowPrinter

rowPrinter :: Show a => Tree a -> [String]
rowPrinter Leaf                  = []
rowPrinter (Node key Leaf Leaf)  = [show key]
rowPrinter (Node key left Leaf)  = undefined
rowPrinter (Node key Leaf right) = undefined
rowPrinter (Node key left right) = undefined
