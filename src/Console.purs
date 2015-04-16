module Console where

import Control.Monad.Eff

-- | The `CONSOLE` effect represents those computations which write to the console.
foreign import data CONSOLE :: !

-- | Write a message to the console.
foreign import log
  """
  function log(s) {
    return function() {
      console.log(s);
      return {};
    };
  }
  """ :: forall eff. String -> Eff (console :: CONSOLE | eff) Unit

-- | Write an error to the console.
foreign import error
  """
  function error(s) {
    return function() {
      console.error(s);
      return {};
    };
  }
  """ :: forall eff. String -> Eff (console :: CONSOLE | eff) Unit

-- | Write a value to the console, using its `Show` instance to produce a `String`.
print :: forall a eff. (Show a) => a -> Eff (console :: CONSOLE | eff) Unit
print = log <<< show
