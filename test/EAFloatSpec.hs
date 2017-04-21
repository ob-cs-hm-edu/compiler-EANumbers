{-# LANGUAGE ScopedTypeVariables #-}
module EAFloatSpec (spec) where

import           EAFloat
import           Test.Hspec
import           Test.QuickCheck

spec :: Spec
spec = do

  describe "A float" $
    it "should be accepted" $
      property $ \ (a :: Float) -> accept $ show a

  describe "A double" $ do
    it "should be accepted" $
      property $ \ (a :: Double) -> accept $ show a
    it "in scientific notation should be accepted" $
      property $ \ (a :: Int) (b :: Int) (c :: Int) ->
        accept $ show a ++ "."  ++ show (abs b) ++ "e" ++ show c

  describe "An integer" $
    it "should be rejected" $
      property $ \ (a :: Integer) -> not $ accept $ show a

  describe "A string which does not represent a float" $
    it "should be rejected" $
      property $ \ s -> not $ accept $ s ++ "!"
