module Main where

import qualified EAFloat   (accept)
import qualified EAInteger (accept)
import           System.IO (BufferMode (NoBuffering), hSetBuffering, stdout)

main :: IO ()
main = do
    hSetBuffering stdout NoBuffering
    putStr "Bitte Wort eingeben: "
    word <- getLine
    putStr "===> "
    putStrLn $ if EAInteger.accept word
      then "accepted"
      else "rejected"
    main
