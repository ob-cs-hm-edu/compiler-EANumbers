module EAFloat
  ( accept
  ) where

import           Data.Char (isDigit)

data State = Serror
    deriving (Eq, Show)

sigma :: State -> Char -> State
sigma _ _ = Serror

start :: State
start = Serror

sAccept :: [State]
sAccept = []

accept :: String -> Bool
accept word = foldl sigma start word `elem` sAccept
