module Enumso where

data DayOfWeek =
  Mon | Tue | Wed | Thu | Fri | Sat | Sun
  deriving Show

instance Enum DayOfWeek where
  toEnum x
    | x `rem` 7 == 0    = Mon
    | x `rem` 7 == 1    = Tue
    | x `rem` 7 == 2    = Wed
    | x `rem` 7 == 3    = Thu
    | x `rem` 7 == 4    = Fri
    | x `rem` 7 == 5    = Sat
    | otherwise = Sun

  fromEnum Mon = 0
  fromEnum Tue = 1
  fromEnum Wed = 2
  fromEnum Thu = 3
  fromEnum Fri = 4
  fromEnum Sat = 5
  fromEnum Sun = 6

repeatso f x n
  | n > 0 = repeatso f (f x) (n-1)
  | otherwise = x