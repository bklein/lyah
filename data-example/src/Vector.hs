module Vector
( Vector(..)
, plus
, scale
, cross
, dot
) where

data Vector a = Vector a a a deriving (Show)

plus :: (Num t) => Vector t -> Vector t -> Vector t
(Vector a b c) `plus` (Vector x y z) = Vector (a + x) (b + y) (c + z)

scale :: (Num t) => Vector t -> t -> Vector t
(Vector a b c) `scale` t = Vector (a * t) (b * t) (c * t)

cross :: (Num t) => Vector t -> Vector t -> Vector t
(Vector a b c) `cross` (Vector x y z) =
  Vector a' b' c'
  where
    a' = (b * z) - (y * c)
    b' = (c * x) - (z * a)
    c' = (a * y) - (x * b)

dot :: (Num t) => Vector t -> Vector t -> t
(Vector a b c) `dot` (Vector x y z) =
  sum [a', b', c']
  where
    a' = a * x
    b' = b * y
    c' = c * z
