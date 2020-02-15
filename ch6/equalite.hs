module Equalite where

data Sausage = Frankfurter | Bratwurst

instance Eq Sausage where
  Frankfurter == Frankfurter = True
  Bratwurst == Bratwurst = True
  _ == _ = False

data DayOfWeek =
  Mon | Tue | Wed | Thu | Fri | Sat | Sun
  deriving Show

instance Eq DayOfWeek where
  (==) Mon Mon = True
  (==) Tue Tue = True
  (==) Wed Wed = True
  (==) Thu Thu = True
  (==) Fri Fri = True
  (==) Sat Sat = True
  (==) Sun Sun = True
  (==) _ _     = False

-- day of week and numerical day of month
data Date =
  DateInst DayOfWeek Int deriving Show

instance Eq Date where
  (==) (DateInst dw1 dm1) (DateInst dw2 dm2) =
    dw1 == dw2 
    && dm1 == dm2

data Identity a =
  Identity a deriving Show

data NoEq = NoEqInst deriving Show

instance Eq a => Eq (Identity a) where
  (==) (Identity v) (Identity v') = v == v'
