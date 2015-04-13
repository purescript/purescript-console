-- | This module is deprecated. Use `Console` instead.

module Debug.Trace where

import Control.Monad.Eff

-- | The `Trace` effect represents those computations which write to the console.
foreign import data Trace :: !

-- | Write a `String` to the console.
foreign import trace
  """
  function trace(s) {
    return function() {
      console.log(s);
      return {};
    };
  }
  """ :: forall r. String -> Eff (trace :: Trace | r) Unit

-- | Write a value to the console, using its `Show` instance to produce a `String`.
print :: forall a r. (Show a) => a -> Eff (trace :: Trace | r) Unit
print o = trace (show o)
