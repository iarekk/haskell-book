module EqExercises where

data TisAnInteger =
  TisAn Integer deriving Show

data TwoIntegers =
  Two Integer Integer deriving Show

data StringOrInt = TisAnInt Int | TisAString String deriving Show

data Pair a = Pair a a deriving Show

data Tuple a b = Tuple a b deriving Show

data Which a = ThisOne a | ThatOne a deriving Show

data EitherOr a b = Hello a | Goodbye b deriving Show