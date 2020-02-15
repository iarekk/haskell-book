module EqExercises where

data TisAnInteger =
  TisAn Integer

data TwoIntegers =
  Two Integer Integer

data StringOrInt = TisAnInt Int | TisAString String

data Pair a = Pair a a

data Tuple a b = Tuple a b

data Which a = ThisOne a | ThatOne a

data EitherOr a b = Hello a | Goodbye b
