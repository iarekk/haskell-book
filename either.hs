{-# LANGUAGE NamedFieldPuns #-}

import Text.Read (readMaybe)

newtype Person = Person { age :: Int} deriving (Show)

example :: String -> Either String Person
example ageString = do
    age <- case readMaybe ageString of
        Nothing  -> Left "Invalid age string"
        Just age -> pure age

    if age < 0
        then Left "Negative age"
        else pure ()

    pure Person { age }