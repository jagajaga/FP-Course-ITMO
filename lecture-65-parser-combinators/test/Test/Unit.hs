module Test.Unit
       ( hspecTestTree
       ) where

import Data.Maybe (isJust, isNothing)

import Test.Tasty (TestTree)
import Test.Tasty.Hspec (Spec, describe, it, shouldBe, shouldSatisfy, testSpec)

import Parser (char, eof, runP)

hspecTestTree :: IO TestTree
hspecTestTree = testSpec "Simple parser" spec_Parser

spec_Parser :: Spec
spec_Parser = do
  describe "eof works" $ do
    it "eof on empty input" $
      runP eof "" `shouldSatisfy` isJust
    it "eof on non-empty input" $
      runP eof "x" `shouldSatisfy` isNothing
  describe "char works" $ do
    it "char parses character" $
      runP (char 'a') "abc" `shouldBe` Just ('x', "bc")
