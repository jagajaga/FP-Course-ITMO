{-# LANGUAGE InstanceSigs #-}

module Parser
    ( Parser (runP)
    , ok
    , isnot
    , eof
    , satisfy
    , char
    , string
    , oneOf
    ) where

import Control.Applicative (Alternative (..))
import Data.Bifunctor (first)
import Data.Foldable (asum)

newtype Parser a = Parser { runP :: String -> Maybe (a, String) }

instance Functor Parser where
    fmap :: (a -> b) -> Parser a -> Parser b
    fmap f (Parser parser) = Parser (fmap (first f) . parser)

instance Applicative Parser where
    pure :: a -> Parser a
    pure a = Parser $ \s -> Just (a, s)

    (<*>) :: Parser (a -> b) -> Parser a -> Parser b
    Parser pf <*> Parser pa = Parser $ \s -> pf s >>= \(f, t) -> pa t >>= \(a, r) -> Just (f a, r)

instance Alternative Parser where
    empty :: Parser a
    empty = Parser (const Nothing)

    (<|>) :: Parser a -> Parser a -> Parser a
    Parser p1 <|> Parser p2 = Parser $ \s -> p1 s <|> p2 s

-- always succeeds without consuming any input
ok :: Parser ()
ok = Parser $ \s -> Just ((), s)

-- fails w/o consuming any input if given parser succeeds,
-- and succeeds if given parser fails
isnot :: Parser a -> Parser ()
isnot parser = Parser $ \s -> case runP parser s of
    Just _  -> Nothing
    Nothing -> Just ((), s)

-- checks of end of input stream
eof :: Parser ()
eof = Parser $ \s -> case s of
    [] -> Just ((), "")
    _  -> Nothing

-- consumes only single character and returns it if predicate is true
satisfy :: (Char -> Bool) -> Parser Char
satisfy p = Parser $ \s -> case s of
    []     -> Nothing
    (x:xs) -> if p x then Just (x, xs) else Nothing

-- consumes given character and returns it
char :: Char -> Parser Char
char c = satisfy (== c)

string :: String -> Parser String
string = traverse char

oneOf :: [String] -> Parser String  -- parse first matched string from list
oneOf = asum . map string
