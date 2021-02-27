module Effect.Console where

import Effect (Effect)

import Data.Show (class Show, show)
import Data.Unit (Unit)

class IsLog a

instance isLogString :: IsLog String
instance isLogArray :: IsLog a => IsLog (Array a)

-- | Write a message to the console.
log :: forall a. IsLog a => a -> Effect Unit
log = _log

-- | Write a value to the console, using its `Show` instance to produce a
-- | `String`.
logShow :: forall a. Show a => a -> Effect Unit
logShow a = log (show a)

foreign import _log
  :: forall a
   . a
  -> Effect Unit

-- | Write an warning to the console.
warn :: forall a. IsLog a => a -> Effect Unit
warn = _warn

-- | Write an warning value to the console, using its `Show` instance to produce
-- | a `String`.
warnShow :: forall a. Show a => a -> Effect Unit
warnShow a = warn (show a)

foreign import _warn
  :: forall a
   . a
  -> Effect Unit

-- | Write an error to the console.
error :: forall a. IsLog a => a -> Effect Unit
error = _error

-- | Write an error value to the console, using its `Show` instance to produce a
-- | `String`.
errorShow :: forall a. Show a => a -> Effect Unit
errorShow a = error (show a)

foreign import _error
  :: forall a
   . a
  -> Effect Unit

-- | Write an info message to the console.
info :: forall a. IsLog a => a -> Effect Unit
info = _info

-- | Write an info value to the console, using its `Show` instance to produce a
-- | `String`.
infoShow :: forall a. Show a => a -> Effect Unit
infoShow a = info (show a)

foreign import _info
  :: forall a
   . a
  -> Effect Unit

-- | Start a named timer.
foreign import time :: String -> Effect Unit

-- | Print the time since a named timer started in milliseconds.
foreign import timeLog :: String -> Effect Unit

-- | Stop a named timer and print time since it started in milliseconds.
foreign import timeEnd :: String -> Effect Unit

-- | Clears the console
foreign import clear :: Effect Unit
