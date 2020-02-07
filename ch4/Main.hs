module Main where

main = putStrLn "hello"

data Mood = Blah | Woot deriving Show

changeMood Blah = Woot
changeMood _    = Blah