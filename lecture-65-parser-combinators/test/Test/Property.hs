module Test.Property
       ( okTestTree
       ) where

import Hedgehog (Gen, Property, forAll, property, (===))
import Test.Tasty (TestTree)
import Test.Tasty.Hedgehog (testProperty)

import Parser (ok, runP)

import qualified Hedgehog.Gen as Gen
import qualified Hedgehog.Range as Range

okTestTree :: TestTree
okTestTree = testProperty "ok always succeeds" prop_Ok

genString :: Gen String
genString =
  let listLength = Range.linear 0 100
  in  Gen.list listLength Gen.alpha

prop_Ok :: Property
prop_Ok = property $
  forAll genString >>= \s ->
  runP ok s === Just ((), s)
