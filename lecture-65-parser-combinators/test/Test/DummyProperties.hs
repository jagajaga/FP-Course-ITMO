module Test.DummyProperties where

import Hedgehog

import qualified Data.List as List
import qualified Hedgehog.Gen as Gen
import qualified Hedgehog.Range as Range

genIntList :: Gen [Int]
genIntList =
  let listLength = Range.linear 0 100000
  in  Gen.list listLength Gen.enumBounded

prop_reverse :: Property
prop_reverse = property $
  forAll genIntList >>= \xs ->
  List.reverse (List.reverse xs) === xs

fauxReverse :: [a] -> [a]
fauxReverse xs =
  let sx = List.reverse xs
      mp = length xs `div` 2
      (as, bs) = List.splitAt mp sx
  in as ++ List.drop 1 bs

prop_fauxReverse :: Property
prop_fauxReverse = property $
    forAll genIntList >>= \xs ->
    fauxReverse xs === List.reverse xs
