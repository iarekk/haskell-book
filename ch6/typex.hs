module TypeEx where
import Data.List(sort)

f :: RealFrac a => a
f = 1.0

freud :: Ord a => a -> a
freud x = x


freud' :: Int -> Int
freud' x = x


myX = 1::Int

sigmund :: Int -> Int 
--sigmund :: a -> a -- not ok
sigmund x = myX

-- jung :: Ord a => [a] -> a -- ok
jung :: [Int] -> Int
jung xs = head (sort xs)

--young :: [Char] -> Char -- ok
young :: Ord a => [a] -> a
young xs = head (sort xs)

mySort :: [Char] -> [Char]
mySort = sort

-- signifier :: Ord a => [a] -> a -- not ok
signifier :: [Char] -> Char --ok
signifier xs = head (mySort xs)