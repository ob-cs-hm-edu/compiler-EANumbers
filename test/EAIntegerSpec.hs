{-# LANGUAGE ScopedTypeVariables #-}
module EAIntegerSpec (spec) where

import           EAInteger
import           Test.Hspec
import           Test.QuickCheck

spec :: Spec
spec = do

  describe "An integer" $
    it "should be accepted" $
      property $ \ (a :: Integer) -> accept $ show a

  describe "A string which does not represent an integer" $
    it "should be rejected" $
      property $ \ s -> not $ accept $ s ++ "!"
