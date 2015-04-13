module Console where

import Control.Monad.Eff

-- | The `Console` effect represents those computations which write to the console.
foreign import data Console :: !

-- | Write a `String` to the console.
foreign import log
  """
  function log(s) {
    return function() {
      console.log(s);
      return {};
    };
  }
  """ :: forall eff. String -> Eff (console :: Console | eff) Unit

-- | Write an error to the console
foreign import error
  """
  function error(s) {
    return function() {
      console.error(s);
      return {};
    };
  }
  """ :: forall eff. String -> Eff (console :: Console | eff) Unit

-- | Write a value to the console, using its `Show` instance to produce a `String`.
print :: forall a eff. (Show a) => a -> Eff (console :: Console | eff) Unit
print o = log (show o)
