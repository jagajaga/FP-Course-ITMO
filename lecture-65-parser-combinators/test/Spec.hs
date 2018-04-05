module Main where

import Test.Tasty (defaultMain, testGroup)

import Test.Property (okTestTree)
import Test.Unit (hspecTestTree)

main :: IO ()
main = hspecTestTree >>= \unitTests ->
       let allTests = testGroup "Parser" $ [unitTests] ++ okTestTree
       in defaultMain allTests
