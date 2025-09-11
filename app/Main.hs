module Main where

import Data.List (isSuffixOf)
import System.Directory (listDirectory, doesDirectoryExist)
import System.FilePath ((</>))

main :: IO ()
main = do
  putStr "hello, world\n"


-- get files with matching extension
matchExt :: [String] -> [FilePath] -> [FilePath]
matchExt ext = filter (\b -> any (`isSuffixOf` b) ext)

-- get files in a dir recursively. dirs will be skipped
getFiles :: FilePath -> IO [FilePath]
getFiles f = do
  isDir <- doesDirectoryExist f
  if isDir
    then do
      c <- listDirectory f
      m <- mapM (getFiles . (f </>)) c
      return $ concat m
    else
      return [f]
