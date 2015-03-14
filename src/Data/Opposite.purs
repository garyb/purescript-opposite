module Data.Opposite where

import Data.Functor.Contravariant
import Data.Monoid (Monoid, mempty)

newtype Op a b = Op (b -> a)

runOp :: forall a b. Op a b -> b -> a
runOp (Op a) = a

instance semigroupoidOp :: Semigroupoid Op where
  (<<<) (Op f) (Op g) = Op (g <<< f)

instance categoryOp :: Category Op where
  id = Op id

instance contravariantOp :: Contravariant (Op a) where
  (>$<) f (Op g) = Op (g <<< f)

instance semigroupOp :: (Semigroup a) => Semigroup (Op a b) where
  (<>) (Op f) (Op g) = Op (\a -> f a <> g a)

instance monoidOp :: (Monoid a) => Monoid (Op a b) where
  mempty = Op (\_ -> mempty)

instance semiringOp :: (Semiring a) => Semiring (Op a b) where
  (+) (Op f) (Op g) = Op (\a -> f a + g a)
  zero = Op (\_ -> zero)
  (*) (Op f) (Op g) = Op (\a -> f a * g a)
  one = Op (\_ -> one)

instance moduloSemiringOp :: (ModuloSemiring a) => ModuloSemiring (Op a b) where
  (/) (Op f) (Op g) = Op (\a -> f a / g a)
  mod (Op f) (Op g) = Op (\a -> f a `mod` g a)

instance ringOp :: (Ring a) => Ring (Op a b) where
  (-) (Op f) (Op g) = Op (\a -> f a - g a)

instance divisionRingOp :: (DivisionRing a) => DivisionRing (Op a b)

instance numOp :: (Num a) => Num (Op a b)
