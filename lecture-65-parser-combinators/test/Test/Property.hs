module Test.Property
       ( okTestTree
       ) where

import Control.Applicative (liftA2)
import Hedgehog (Gen, MonadTest, Property, assert, forAll, property, (===))
import Test.Tasty (TestTree)
import Test.Tasty.Hedgehog (testProperty)

import Parser (char, ok, runP)

import qualified Hedgehog.Gen as Gen
import qualified Hedgehog.Range as Range

okTestTree :: [TestTree]
okTestTree = [ testProperty "ok always succeeds" prop_Ok
             , testProperty "char property" prop_Char
             ]

genString :: Gen String
genString =
  let listLength = Range.linear 0 100
  in  Gen.list listLength Gen.alpha

prop_Ok :: Property
prop_Ok = property $
  forAll genString >>= \s ->
  runP ok s === Just ((), s)

checkChar :: (MonadTest m) => Char -> String -> m ()
checkChar c s = case runP (char c) s of
    Just (c', s') -> (c', c' : s') === (c, s)
    Nothing       -> assert $ null s || c /= head s

genCharAndString :: Gen (Char, String)
genCharAndString = Gen.bool >>= \b -> case b of
   True  -> Gen.alpha >>= \c -> genString >>= \s -> pure (c, c : s)
   False -> liftA2 (,) Gen.alpha genString

prop_Char :: Property
prop_Char = property $
  forAll genCharAndString >>= \(c, s) ->
  checkChar c s
