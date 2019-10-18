double x = x + x

quadruple x = double (double x)

fac :: Int -> Int
fac 0 = 1
fac n = n * fac (n-1)

add3 :: Int -> Int -> Int -> Int
add3 x y z = x + y + z

mult3 :: Int -> Int -> Int -> Int
mult3 x y z = x * y * z

threeto :: Int -> [Int]
threeto n = [3..n]

-- this one needs "add (a,b)"
add2 :: (Int,Int) -> Int
add2 (x,y) = x+y

n = a `div` length xs
    where
        a = 10
        xs = [1,2,3,4,5,6,7,8,9,10]

lastly xs = xs !! (length xs - 1)

-- pattern-match the empty list first, because xs already contains the empty list
shuffle :: [a] -> [a]
shuffle [] = []
shuffle xs = drop 1 xs ++ [head xs]


f [] = []
f (x:xs) = f ys ++ [x] ++ f zs
    where
        ys = [a | a <- xs, a <= x]
        zs = [b | b <- xs, b > x]