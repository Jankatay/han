{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -w #-}
module PackageInfo_han (
    name,
    version,
    synopsis,
    copyright,
    homepage,
  ) where

import Data.Version (Version(..))
import Prelude

name :: String
name = "han"
version :: Version
version = Version [0,1,0,0] []

synopsis :: String
synopsis = "A haskell manual-viewer with optional racket frontend"
copyright :: String
copyright = ""
homepage :: String
homepage = "https://github.com/Jankatay/han"
