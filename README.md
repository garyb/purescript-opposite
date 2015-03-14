# Module Documentation

## Module Data.Opposite

#### `Op`

``` purescript
newtype Op a b
  = Op (b -> a)
```


#### `runOp`

``` purescript
runOp :: forall a b. Op a b -> b -> a
```


#### `semigroupoidOp`

``` purescript
instance semigroupoidOp :: Semigroupoid Op
```


#### `categoryOp`

``` purescript
instance categoryOp :: Category Op
```


#### `contravariantOp`

``` purescript
instance contravariantOp :: Contravariant (Op a)
```


#### `semigroupOp`

``` purescript
instance semigroupOp :: (Semigroup a) => Semigroup (Op a b)
```


#### `monoidOp`

``` purescript
instance monoidOp :: (Monoid a) => Monoid (Op a b)
```


#### `semiringOp`

``` purescript
instance semiringOp :: (Semiring a) => Semiring (Op a b)
```


#### `moduloSemiringOp`

``` purescript
instance moduloSemiringOp :: (ModuloSemiring a) => ModuloSemiring (Op a b)
```


#### `ringOp`

``` purescript
instance ringOp :: (Ring a) => Ring (Op a b)
```


#### `divisionRingOp`

``` purescript
instance divisionRingOp :: (DivisionRing a) => DivisionRing (Op a b)
```


#### `numOp`

``` purescript
instance numOp :: (Num a) => Num (Op a b)
```




