-- file: ch04/map.hs
import Data.Char (toUpper)

square :: [Double] -> [Double]
square (x:xs) = x*x : square xs
square [] = []

upperCase :: String -> String
upperCase (x:xs) = toUpper x : upperCase xs
upperCase [] = []

square2 xs = map s xs
    where s x = x * x

upperCase2 xs = map toUpper xs

myMap :: (a -> b) -> [a] -> [b]
myMap f (x:xs) = f x : myMap f xs
myMap _ _ = []