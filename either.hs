{-# LANGUAGE NamedFieldPuns #-}

import           Text.Read (readMaybe)

newtype Person = Person { age :: Int} deriving (Show)

example :: String -> Either String Person
example ageString =
    getAge ageString
    >>= (\age -> checkAge age
        >>= (\()-> createPerson age))

getAge :: Read b => String -> Either [Char] b
getAge ageString = case readMaybe ageString of
       Nothing  -> Left "Invalid age string"
       Just age -> pure age

checkAge :: (Ord a, Num a) => a -> Either [Char] ()
checkAge a = if a < 0
       then Left "Negative age"
       else pure ()

createPerson :: Applicative f => Int -> f Person
createPerson a = pure Person { age = a }
