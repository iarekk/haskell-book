module Equalite where

data Sausage = Frankfurter | Bratwurst

instance Eq Sausage where
  Frankfurter == Frankfurter = True
  Bratwurst == Bratwurst = True
  Bratwurst == _ = False
  Frankfurter == _ = False