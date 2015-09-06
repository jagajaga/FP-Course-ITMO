
module Examples where
import Data.Char (toLower, isAlpha)


-------------------------------------------------


Калькулятор
=====

calc :: String -> Float
calc = head . foldl f [] . words
  where 
    f :: [Float] -> String -> [Float]
    f (x:y:zs) "+"    = (y + x):zs
    f (x:y:zs) "-"    = (y - x):zs
    f (x:y:zs) "*"    = (y * x):zs
    f (x:y:zs) "/"    = (y / x):zs
    f (x:y:zs) "FLIP" = y:x:zs
    f (x:zs)   "ABS"  = (abs x):zs
    f xs       y      = read y : xs

calc "1 2 3 + 4 * - ABS"


-------------------------------------------------


Простые числа
=====

primes :: [Int]
primes = filterPrime [2..] 
  where filterPrime (p:xs) = 
          p : filterPrime [x | x <- xs, x `mod` p /= 0]


-------------------------------------------------


data Масть = Пики | Трефы | Бубны | Червы
  deriving (Show, Read, Eq, Ord)

data Достоинство = Семёрка | Восьмёрка | Девятка | Десятка
                 | Валет | Дама | Король | Туз
  deriving (Show, Read, Eq, Ord)

data Карта = К Достоинство Масть
  deriving (Show, Read, Eq, Ord)

type Рука = [Карта]

естьМарьяж :: Рука -> Bool
естьМарьяж карты =
   any (естьМарьяжМасти) [Пики, Трефы, Бубны, Червы]
   where
     естьМарьяжМасти м = (К Дама м) `elem` карты && (К Король м) `elem` карты

рука = [ К Дама Трефы, К Семёрка Червы, К Король Трефы, К Туз Бубны ]
рука_без_марьяжа = [ К Десятка Пики, К Король Пики, К Дама Червы ]

main = do
  проверить рука
  проверить рука_без_марьяжа
  проверить []
  where
    проверить кк = putStrLn ( (show кк) ++ " -> " ++ (show (естьМарьяж кк)) )


-------------------------------------------------

palindrom :: [Char] -> Bool
palindrom s =
    norm == reverse norm
    where norm = map toLower `$` filter isAlpha `$` s

test :: [Char] -> IO ()
test s =
    putStrLn `$` s ++ ": " ++ show (palindrom s)

--------------------------------------------------

Банальности
====

--------------------------------------------------

qsort :: Ord a => [a] -> [a]
qsort []     = []
qsort (x:xs) = qsort (filter (<x) xs) ++ [x] ++ qsort (filter (>=x) xs))

fibs = 1:1:zipWith (+) fibs (tail fibs)

linecount = interact `$` show . length . lines
wordcount = interact `$` show . length . words

--------------------------------------------------

square x = x * x

square :: Int -> Int
square x = x*x

square :: Num a => a -> a
square x = x*x

--------------------------------------------------

average x y = (x+y)/2

average :: Double -> Double -> Double
average x y = (x+y)/2

--------------------------------------------------

power a n = if n == 0 then 1 else a * power a (n-1)

power a 0 = 1
power a n = a * power a (n-1)

--------------------------------------------------

length []     = 0
length (x:xs) = 1 + length xs

length :: [a] -> Int
length []     = 0
length (x:xs) = 1 + length xs

--------------------------------------------------

head :: [a] -> a
head (x:xs) = x

--------------------------------------------------

sum []     = 0
sum (x:xs) = x + sum xs

--------------------------------------------------

average xs = sum xs / (fromIntegral (length xs))

--------------------------------------------------

(++) :: [a] -> [a] -> [a]
(++) []     ys = ys
(++) (x:xs) ys = x:(xs ++ ys)

--------------------------------------------------

Вкусняшки
=====

--------------------------------------------------

(.) :: (b -> c) -> (a -> b) -> (a -> c)
(.) f g x = f (g x)

fourthPower = square . square

minimum = head . qsort

sum     = foldr (+) 0
product = foldr (*) 1
concat  = foldr (++) []

foldr f z []     = z
foldr f z (x:xs) = x `f` foldr f z xs

--------------------------------------------------

Секс
======

--------------------------------------------------

sequence :: Monad m => [m a] -> m [a]
sequence = foldr (liftM2 (:)) (return [])
