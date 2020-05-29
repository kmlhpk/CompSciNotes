double x = x + x

quadruple x = double (double x)

fac :: Int -> Int
fac 0 = 1
fac n = n * fac (n-1)

add3 :: Int -> Int -> Int -> Int
add3 x y z = x + y + z

mult3 :: Int -> Int -> Int -> Int
mult3 x y z = x * y * z

threeTo :: Int -> [Int]
threeTo n = [3..n]

n = a `div` length xs
    where
        a = 10
        xs = [1,2,3,4,5,6,7,8,9,10]

lastly xs = xs !! (length xs - 1)

-- pattern-match the empty list first, because xs already contains the empty list (can't repeat definitions)
shuffle :: [a] -> [a]
shuffle [] = []
shuffle xs = drop 1 xs ++ [head xs]

-- quick sort?
f [] = []
f (x:xs) = f ys ++ [x] ++ f zs
    where
        ys = [a | a <- xs, a <= x]
        zs = [b | b <- xs, b > x]

{-
listToDec :: ([Int],Int) -> Int 
listToDec (0,_) = 0
listToDec (_,0) = 0
listToDec (_,1) = 0
listToDec ([xs],b) = listToDec ((init [xs]),b) + --element raised to power
    where
        orig = length [xs]

decToList :: (Int, Int) -> [Int]
decToList (0,_) = []
decToList (_,0) = []
decToList (_,1) = []
decToList (x,b) = decToList ((x `div` b),b) ++ [x `mod` b]
-}