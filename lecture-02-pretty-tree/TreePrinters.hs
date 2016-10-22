{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE ViewPatterns  #-}

module TreePrinters
       ( Tree (..)
       , directoryPrint
       , verticalPrint
       ) where

import           Data.Char (isSpace)
import           Data.List (maximum)

data Tree a = Leaf | Node a (Tree a) (Tree a)
    deriving (Functor, Show)

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

-- | Print tree vertically in more readable way.
-- Couple examples are given below.
--
--
-- >>> let t = Node 3 Leaf Leaf
-- >>> putStrLn $ verticalPrint t
-- 3
--
-- >>> let t = Node 3 (Node 1 Leaf Leaf) Leaf
-- >>> putStrLn $ verticalPrint t
-- 3
-- |
-- 1
--
-- >>> let t = Node 3 (Node 1 Leaf Leaf) $ Node 123 (Node 4 Leaf Leaf) Leaf
-- >>> putStrLn $ verticalPrint t
--   3
--   |
--  --
-- |  |
-- 1 123
--    |
--    4
--
verticalPrint :: Show a => Tree a -> String
verticalPrint = unlines . rowPrinter . fmap show

type TreeRows = [String]

rowPrinter :: Tree String -> TreeRows
rowPrinter Leaf                  = []
rowPrinter (Node key Leaf  Leaf) = [key]
rowPrinter (Node key left  Leaf) = connectOneChild key left
rowPrinter (Node key Leaf right) = connectOneChild key right
rowPrinter (Node key left right) =
    let lr@(ltop:_)  = rowPrinter left
        rr@(rtop:_)  = rowPrinter right

        ledgePos     = labelMidPosition ltop
        redgePos     = labelMidPosition rtop

        leftWidth    = 1 + maximum (map length lr)
        connectorLen = leftWidth + redgePos - 1 - ledgePos
        connector    = nspaces (ledgePos + 1) ++ replicate connectorLen '-'

        leftSubTree  = upEdge ledgePos : lr
        rightSubTree = upEdge redgePos : rr
        childrenRows = mergeChildren leftWidth leftSubTree rightSubTree
    in attachRows key (connector:childrenRows)

connectOneChild :: String -> Tree String -> TreeRows
connectOneChild label (rowPrinter -> rows) = attachRows label rows

attachRows :: String -> TreeRows -> TreeRows
attachRows label subTree@(top:_) =
    let labelMid    = labelMidPosition label
        topLabelMid = labelMidPosition top
        shortEdge   = upEdge topLabelMid
        subTreeRows = shortEdge : subTree
        padding     = abs (topLabelMid - labelMid)
        (cur, tree) = if topLabelMid < labelMid
                      then (label, map (moveRight padding) subTreeRows)
                      else (moveRight padding label, subTreeRows)
    in cur : tree
attachRows _ _ = error "Algorithm error: attach call on empty subtree"

-----------------------------------------
{- Helpers and other utility functions -}
-----------------------------------------

middle :: Int -> Int
middle x = x `div` 2

labelMidPosition :: String -> Int
labelMidPosition label =
    let (spaces, value) = span isSpace label
        valueMid        = middle $ length value
    in length spaces + valueMid

nspaces :: Int -> String
nspaces n = replicate n ' '

upEdge :: Int -> String
upEdge padding = nspaces padding ++ "|"

moveRight :: Int -> String -> String
moveRight n = (nspaces n ++)

fillRight :: Int -> String -> String
fillRight len s = s ++ nspaces (len - length s)

mergeChildren :: Int -> TreeRows -> TreeRows -> TreeRows
mergeChildren lWidth = scanDown
  where
    scanDown :: TreeRows -> TreeRows -> TreeRows
    scanDown    []     []  = []
    scanDown     l     []  = l
    scanDown    []  (r:rs) = (nspaces   lWidth   ++ r) : scanDown [] rs
    scanDown (l:ls) (r:rs) = (fillRight lWidth l ++ r) : scanDown ls rs
