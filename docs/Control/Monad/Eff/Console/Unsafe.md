## Module Control.Monad.Eff.Console.Unsafe

Unsafe functions to display arbitrary values.

#### `logAny`

``` purescript
logAny :: forall a eff. a -> Eff (console :: CONSOLE | eff) Unit
```

Write an arbitrary value to the console.

#### `errorAny`

``` purescript
errorAny :: forall a eff. a -> Eff (console :: CONSOLE | eff) Unit
```

Write an error with an arbitrary value to the console.


