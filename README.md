Haskell ITMO course at CTD
==========================

***

**_work in progress, stay tuned!_**

***

**lectures covered:** 5 (15)

**homeworks covered:** 2 (10)

> Here you can find plan and presentations on the Haskell course authored by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub") and [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub"). Homeworks are written in russian for students.

Week 1
------
### Lecture 1: Why FP and Haskell (by [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub"))
+ About Haskell
  * [Haskell (official site)](https://www.haskell.org/)
  * [Haskell (ru-wiki)](https://ru.wikipedia.org/wiki/Haskell)
  * [Comparison of functional programming languages](https://en.wikipedia.org/wiki/Comparison_of_functional_programming_languages)
+ Reallife examples
  * Facebook's [haxl](https://github.com/facebook/Haxl)
  * [NixOS](https://github.com/NixOS)
  * [pandoc](https://github.com/jgm/pandoc)
  * [hbro](https://github.com/k0ral/hbro)
  * [xmonad](https://github.com/xmonad)
  * [parsec](https://github.com/aslatter/parsec)
  * [ICFP](http://icfpcontest.org/)
  * Nice examples from here: https://wiki.haskell.org/Haskell_a_la_carte
+ FP and Haskell paradigms
  * immutability
  * purity
  * strong typing
  * lazy evaluation

### Lecture 2: Getting started with Haskell (by [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub"))
+ instructions of how to install haskell, cabal; couple words about ghci
+ IDE's for Haskell
  * https://wiki.haskell.org/IDEs
+ simple examples
  * type notation (fixed like Int or Double)
  * binary operations
  * calc-like structures
  * other simple examples in ghci
+ few words about modules and haskell infrastructure
+ suggest tutorials and other online useful courses
  * [LearnYouAHaskell](http://learnyouahaskell.com/)
  * [anton-k-github](http://anton-k.github.io/ru-haskell-book/book/home.html)
  * [Haskell in Real Life](http://book.realworldhaskell.org/read/)
  * [OHaskell](http://ohaskell.dshevchenko.biz/)
  * [FPComplete](https://www.fpcomplete.com/)

Week 2
------

> _Next two lectures contain a lot of examples on Java, C++, some of them will also be on Python, [Kotlin](http://kotlinlang.org/), [Rust](https://www.rust-lang.org/) and other languages_

### Lecture 3: Basic Syntax (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub"))
+ Functions
  * ordinary
  * generic
+ Difference between statement and expression
+ Lambda (anonymous functions)
+ **let** (variable declaration)
+ **where** clause
+ **if** expression
+ **guards**
+ **case** expression
+ Lists
+ Higher order functions
  * examples on other languages
  * standard Haskell HOFs: map, filter, foldr, etc.
+ Pattern matching  
+ Function composition: ($) (.)
+ Ranges
+ List comprehension

#### Presentation: http://slides.com/shersh/lecture-3/

### Lecture 4: Datas, Classes, Instances (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub"))
+ **type**: type aliases
+ ADT's (algebraic data types):
  * sum types (aka enums)
  * product types (aka **struct**'s in C++ or **class**'es in Java)j
+ **data** and examples
+ type classes: **class**
+ **instance**
  * compare to Java interface
  * examples of standard classes: _Eq_, _Ord_
+ **deriving** and _autoderiving_
+ Record syntax
+ type constraints (or type bounds)

#### Presentation: http://slides.com/shersh/lecture-4/
#### Homework 1: http://slides.com/shersh/homework-1/

Week 3
------
### Lecture 5: More on datatypes in Haskell (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub"))
+ type constraints on datatypes: data (Show a) => Exp a = Const a | Eq (Exp a) (Exp a)
+ introducing _Maybe_ without saying _monad_ word as some kind of nullable class
  * data Maybe a = Nothing | Just a
  * compare to C++ (boost::optional), Java (Optional<T>), Kotlin (Delegates.notNull())
+ _kinds_
+ higher order instances (instances for types with _kind_: \* -> \*)
+ instances of classes for other classes
+ **newtype**: newtype Sum a = Sum a
+ useful Monoid class:
  * examples and applications
  * foldrs on monoids
  * [Finger Tree](http://staff.city.ac.uk/~ross/papers/FingerTree.html)
+ Language Extensions
  * [TypeSynonyms](https://ghc.haskell.org/trac/haskell-prime/wiki/TypeSynonymInstances)
  * [FlexibleInstances](https://ghc.haskell.org/trac/haskell-prime/wiki/FlexibleInstances)
  * [GeneralizedNewtypeDeriving](https://ghc.haskell.org/trac/haskell-prime/wiki/NewtypeDeriving)
  * [MultiParamTypeClasses](https://wiki.haskell.org/Multi-parameter_type_class)
  * [RecordsWildCards](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/syntax-extns.html)

#### Presentation: http://slides.com/shersh/lecture-5/
#### Homework 2: http://slides.com/shersh/homework-2/

### Practice 1

Week 4
------

### CW1: Haskell Basics
1. Some simple program in a few lines
2. Implement some simple Data Structure
   * Stack with Min, Size, Unique, etc.
   * Queue on two stacks
   * Deque on two lists
   * smth else
3. Implement classes and instances for your DS from Task 2

### Practice 2: Accepting HW's after CW is done

Week 5
------  
### Lecture 6: Monads, part 1 (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub"))
+ _Maybe_ as example (boost::optional) (yes, again)
+ philosophy about null-safety, exception handling
+ monad class
  * bind
  * return
  * then
  * error
+ Maybe instance
+ List monad instance
+ Reader, Writer (logging with examples)

### Practice 3

L: LearnYouAHaskell (chapters 12, 13) http://learnyouahaskell.com/a-fistful-of-monads

HWP4: implement all examples from slides with Either monad instance (and instance itself too)

Announce HWT4 and HWP5 (so people can start earlier)

Week 6
------
### Lecture 7: Functors, Applicative Functors (by [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub"))
+ fmap
+ applicative
  * what for
  * pure
  * <*>
+ liftA
+ introduce monad Maybe, Either with no _monad_ word;
+ implement functor and applicative instances for Maybe, Either
+ mention about GHC 7.10 (assign myself)
+ examples:
  * [_ZipList_](https://en.wikibooks.org/wiki/Haskell/Applicative_Functors)
  * [_User_](https://pbrisbin.com/posts/applicative_functors/)
  * [_Applicative parser_](https://robots.thoughtbot.com/applicative-options-parsing-in-haskell)
  * [_Small things_](http://stackoverflow.com/questions/6570779/why-should-i-use-applicative-functors-in-functional-programming)
  * [_Accumulation of expression_](http://anton-k.github.io/ru-haskell-book/book/7.html)
  * [_Applicative command line arguments parser_](https://github.com/pcapriotti/optparse-applicative) !

### Practice 4

L: LearnYouAHaskell (chapter 11) http://learnyouahaskell.com/functors-applicative-functors-and-monoids

HWT1: implement <$>

HWT2: prove Functor laws

HWT3: prove Applicative Laws

HWP4 : some task on applicative


Week 7
------
### Lecture 8: Monads, part 2 (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub"))
+ _liftM_
+ _State_ monad
  * why newtype and more about record syntax
  * ex0: variable assignment (trivial, but useful for understand)
  * ex1: random numbers
  * ex2: stack
  * ex3: Dijkstra
  * where to find `State` monad in std library
+ **do** syntax sugar
+ MonadFish and MonadJoin

### Practice 5: accepting homeworks  

L: LearnYouAHaskell (chapters 12, 13) http://learnyouahaskell.com/a-fistful-of-monads

HWT4: prove monad laws

HWT5: prove equivalence of Monad, MonadJoin, MonadFunctor (Categories from ITMOPrelude)

HWP5: write a game. For example: 2 players, 10 steps, each step = random
points to a person, The winner is the one who has more. Here can be a labyrinth
random walking game, or Cows and Bulls game (classic)
HWP6: implement some algorithms or data structures with ST monad (DFA for example)

Week 8
------
### Lecture 9: IO (by [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub"))

_intro_

+ intro to IO and impure functions
+ do syntax and some imperative style
+ how to read from user input (lot of functions)
+ mapM_ and company
+ how to read from files (lot of functions)
+ streams
+ command line arguments

_efficient IO_  

+ bytes and bytestrings
+ OverloadedStrings
+ IOExceptions like in Java?

### Practice 6: Accepting HWP4 & HWP5 (in remaining time)

L: anton-k IO http://anton-k.github.io/ru-haskell-book/book/8.html
L: LearnYouAHaskell (chapter 9) http://learnyouahaskell.com/input-and-output
L: Real World Haskell (chapters 7-9) http://book.realworldhaskell.org/read/

HWP7: implement some grep-like program, searching in files or user input, reading commandline arguments
hw-hint: it is good to use applicative args parser: https://github.com/pcapriotti/optparse-applicative

Week 9
------
### Lecture 10: Monadic Parser (by [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub"))
+ Explaining Monadic Parser's idiom on examples
  * brackets parser
  * numbers parser
  * arithmetic expression parser
+ Parsec, Happy

### Practice 7: Accepting last hw's

HWP8: write some monadic parsers from scratch

Week 10
-------
### Lecture 11: Some Advanced Haskell (by [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub"))
+ arrows
+ vector
+ introducing StateT
+ difference from simple monads
+ examples and applications

### Practice 8: Accepting homeworks

HWP9: some mutable algorithm with transformers (convert list to set, dfs, smth else)
HWP10: Monadic parser with transformer monad (in education purpose)

Week 11
-------
### CW2: Monads
1. Write Functors instances
2. Write Monad instances
3. write smth small using simple monads (Maybe, Either, State)
4. write smth with StateTransformers or write some parsers

### Practice 9: in remaining time

**_Most fun part begins only now_**

Week 12
-------
### Lecture 12: Speeding up haskell (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub"))
+ remember haskell lazyness
+ _foldr_ vs. _foldl_
  * stack problems
  * _seq_, _deepseq_, _pseq_ (remember **newtype**)
+ foldl' + weak head normal form etc.
+ problems with list ++
  * DiffList
+ https://www.haskell.org/haskellwiki/ListT_done_right
+ Deforestation
  * explaining in simple words
  * formal algorithm
  * example of deforesting smth simple
+ Stream fusion

### Practice 10: Accepting HWP9-10

L: articles about deforestation and SF  

HWT6: fuse and deforest some functions in theory
HWP11: measure time of fused and naive functions, implementing Discrete cosine transformation (DCT) for example, some Segal-like algo

Week 13
-------
### Lecture 13: Zippers and Lens (by [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub"))
+ couple words about zippers and ZipperFS
  * _ZipList_
  * Deriviatives
+ Lens (lens vs zippers)
+ More Lens explanation and examples (one more intro to imperative style in haskell)

### Practice 11: Accepting HWP10 (in remaining time)

L: LearnYourHaskell (chapter 14) http://learnyouahaskell.com/zippers

HWP12: implement some algos on graphs using Lens
HWP13: Records with lens, create library for filetree walking, filtering, modifying (see System.Directory.Tree)  

Week 14
-------
### Lecture 14: Haskell Concurrency (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub"))
+ !!! http://chimera.labs.oreilly.com/books/1230000000929
+ profits of immutability
+ already have immutability and purity. Is it enough?
+ simple multithreaded:
  * ex1: fibonacci computation
  * ex2: primes sieve
+ _par_ implicit parallelism
  * comparison with Java 8 `parallelMap`
+ locks, waits, critical section
  * forks
  * thread intercommunication

### Practice 12: Accepting HWP12-13

L: haskell threads doc
L: RealWorldHaskell (Chapter 24. Concurrent and multicore programming)
     http://book.realworldhaskell.org/read/concurrent-and-multicore-programming.html
L: https://donsbot.wordpress.com/2009/09/05/defun-2009-multicore-programming-in-haskell-now/

HWP14: write some multithreaded program (producer-consumer queue or smth. more interesting)

Week 15
-------
### Lecture 15: Gui in Haskell (by [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub"))
+ gtk
+ wxwidgets
+ opengl!
+ api
+ simple examples
  * haskell-CG
  * xmonad as WM

### Practice 13: Accepting HWP14

L: docs

HWP15: write some program with GUI

Week Last
---------
### CW3: Haskell In Real World
1. deforest or fuse smth
2. some imperative program with lens
3. some concurrency program or program with gui

### Practice 14: Accepting everything

Uncovered topics
----------------
> Unfortunately there're some topics which are great but there is no time for them in course :(

+ couple words about `forall a. a -> a -> a` (intro and why we need this)
  * syntax sugar to get rid of _forall_
  * http://stackoverflow.com/questions/3071136/what-does-the-forall-keyword-in-haskell-ghc-do
  * forall, RankNTypes (http://sleepomeno.github.io/blog/2014/02/12/Explaining-Haskell-RankNTypes-for-all/)
+ GADT's:
  ```haskell
  {-# LANGUAGE GADTs #-}
  data Exp a where
      Const :: Show a => a -> Exp a
      Eq :: Exp a -> Exp a -> Exp a
   ```
+ CPS
+ type families (oop with haskell)
+ typed holes
+ Functional Dependencies, Associated Types
+ databases
+ networks
+ WEB, HTTP, JSON (Hakyll, Yesod, Snap)
+ Profiling
+ Testing
+ FFI
+ ghc internals
+ comonads
+ Zygohistomorphic prepromorphisms
+ ?????
+ PROFIT!!!!
