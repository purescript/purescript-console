module Effect.Console where

import Control.Bind (discard, bind, pure)
import Effect (Effect)

import Data.Show (class Show, show)
import Data.Unit (Unit)

-- | Write a message to the console.
foreign import log
  :: String
  -> Effect Unit

-- | Write a value to the console, using its `Show` instance to produce a
-- | `String`.
logShow :: forall a. Show a => a -> Effect Unit
logShow a = log (show a)

-- | Write an warning to the console.
foreign import warn
  :: String
  -> Effect Unit

-- | Write an warning value to the console, using its `Show` instance to produce
-- | a `String`.
warnShow :: forall a. Show a => a -> Effect Unit
warnShow a = warn (show a)

-- | Write an error to the console.
foreign import error
  :: String
  -> Effect Unit

-- | Write an error value to the console, using its `Show` instance to produce a
-- | `String`.
errorShow :: forall a. Show a => a -> Effect Unit
errorShow a = error (show a)

-- | Write an info message to the console.
foreign import info
  :: String
  -> Effect Unit

-- | Write an info value to the console, using its `Show` instance to produce a
-- | `String`.
infoShow :: forall a. Show a => a -> Effect Unit
infoShow a = info (show a)

-- | Write an debug message to the console.
foreign import debug
  :: String
  -> Effect Unit

-- | Write an debug value to the console, using its `Show` instance to produce a
-- | `String`.
debugShow :: forall a. Show a => a -> Effect Unit
debugShow a = debug (show a)

-- | Start a named timer.
foreign import time :: String -> Effect Unit

-- | Print the time since a named timer started in milliseconds.
foreign import timeLog :: String -> Effect Unit

-- | Stop a named timer and print time since it started in milliseconds.
foreign import timeEnd :: String -> Effect Unit

-- | Clears the console
foreign import clear :: Effect Unit

-- | Creates a new inline group in the console. This indents following console
-- | messages by an additional level, until `groupEnd` is called.
foreign import group :: String -> Effect Unit

-- | Same as `group`, but groups are collapsed by default.
foreign import groupCollapsed :: String -> Effect Unit

-- | Exits the current inline group in the console.
foreign import groupEnd :: Effect Unit

-- | Perform an effect within the context of an inline group in the console.
-- | Calls `group` and `groupEnd` before and after the effect, respectively.
grouped :: forall a. String -> Effect a -> Effect a
grouped name inner = do
  group name
  result <- inner
  groupEnd
  pure result
