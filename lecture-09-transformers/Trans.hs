{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleContexts #-}

import Control.Monad.Reader
import Control.Monad.State

import Data.List (sortBy)
import Data.Ord (comparing)

{- Список дел из TODO-списка:
   * Есть список дел, которые надо сделать
     Элемент списка: название и через сколько дней дедлайн
   * Мы хотим считать из консоли число n: сколько дел мы можем выполнить
   * И вывести в консоль сколько дней у нас есть до последнего дедлайна
   * Сделать первое дело
-}

data TodoItem = TodoItem
     { todoTitle :: String
     , todoDeadline :: Int } -- сколько дней осталось до дедлайна
     deriving (Show)

data DoneItem = DoneItem
     { doneTodoItem :: TodoItem
     , spentDays :: Int }
     deriving (Show)

{- Эффекты:

   1. Неизменяемый контекст: Список TodoItem
      ReaderT [TodoItem] m a

   2. Реальный мир (консоль)
      IO a

   3. Список сделанных дел
      StateT [DoneItem] m a

   [ Needs [TodoItem], Updates [DoneItem], CONSOLE ]
-}


lowestTodos :: Int -> [TodoItem] -> [TodoItem]
lowestTodos n = take n . sortBy (comparing todoDeadline)

lastDeadline :: [TodoItem] -> Maybe Int
lastDeadline [] = Nothing
lastDeadline l  = Just $ maximum $ map todoDeadline l

topUrgent :: MonadReader [TodoItem] m 
          => Int 
          -> m (Maybe Int)
topUrgent n = asks (lastDeadline . lowestTodos n)

doMostUrgent :: ( MonadReader [TodoItem] m
                , MonadState  [DoneItem] m
                )
             => m ()
doMostUrgent = do
    mostUrgentTask <- asks (head . lowestTodos 1)
    modify (DoneItem mostUrgentTask 1:)

read'n'PrintNumber :: ( MonadReader [TodoItem] m
                      , MonadState  [DoneItem] m
                      , MonadIO                m
                      )
                   => m ()
read'n'PrintNumber = do
    n <- liftIO readLn
    maybeDeadline <- topUrgent n
    case maybeDeadline of
        Nothing -> liftIO $ putStrLn "No tasks to do :("
        Just d  -> do
            liftIO $ putStrLn $ "Max deadline after: " ++ show d

            doMostUrgent
            done <- get
            liftIO $ print done

newtype TodoCtx m a = TodoCtx 
    { runTodoCtx :: ReaderT [TodoItem] (StateT [DoneItem] m) a }
    deriving (Functor, Applicative, Monad, MonadIO,
              MonadReader [TodoItem], MonadState [DoneItem])

instance MonadTrans TodoCtx where
    lift = TodoCtx . lift . lift

doTodo :: Monad m => [TodoItem] -> TodoCtx m a -> m a
doTodo items ctx = evalStateT (runReaderT (runTodoCtx ctx) items) []

main :: IO ()
main = do
    let todos = [TodoItem "First" 3, TodoItem "Snd" 2, TodoItem "A" 5]
    doTodo todos read'n'PrintNumber





