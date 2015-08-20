-- | Unsafe functions to display arbitrary values.
module Control.Monad.Eff.Console.Unsafe where

import Prelude

import Control.Monad.Eff
import Control.Monad.Eff.Console (CONSOLE())

-- | Write an arbitrary value to the console.
foreign import logAny :: forall a eff. a -> Eff (console :: CONSOLE | eff) Unit

-- | Write an error with an arbitrary value to the console.
foreign import errorAny :: forall a eff. a -> Eff (console :: CONSOLE | eff) Unit
