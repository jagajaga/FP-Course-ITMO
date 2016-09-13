module ColorCoins
       ( Coin (..)
       , blue
       , createCoins
       , red
       ) where

newtype Coin color = Coin
    { getCoin :: Int
    } deriving (Show)

data Blue
data Red

blue :: Blue
blue = undefined

red :: Red
red = undefined

createCoins :: color -> Int -> Coin color
createCoins _ = Coin

c1 :: Coin Blue
c1 = createCoins blue 10

c2 :: Coin Red
c2 = Coin 5

addCoins :: Coin color -> Coin color -> Coin color
addCoins (Coin a) (Coin b) = Coin (a + b)
