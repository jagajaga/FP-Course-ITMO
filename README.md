Haskell ITMO course at CTD
==========================

***

**_work in progress, stay tuned!_**

***

**lectures covered:** 9 (15)

**homeworks covered:** 6 (10)

> Here you can find plan and presentations on the Haskell course authored by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub") and [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub"). Homeworks are written in russian for students.

### Course plan
+ [Week 1](https://github.com/jagajaga/FP-Course-2015#week-1)
  * [Lecture 1: Why FP and Haskell](https://github.com/jagajaga/FP-Course-2015#lecture-1-why-fp-and-haskell-by-arseniy-seroka)
  * [Lecture 2: Getting started with Haskell](https://github.com/jagajaga/FP-Course-2015#lecture-2-getting-started-with-haskell-by-arseniy-seroka)
+ [Week 2](https://github.com/jagajaga/FP-Course-2015#week-2)
  * [Lecture 3: Basic Syntax](https://github.com/jagajaga/FP-Course-2015#lecture-3-basic-syntax-by-dmitry-kovanikov)
  * [Lecture 4: Datas, Classes, Instances](https://github.com/jagajaga/FP-Course-2015#lecture-4-datas-classes-instances-by-dmitry-kovanikov)
  * [Homework 1](http://slides.com/shersh/homework-1/)
+ [Week 3](https://github.com/jagajaga/FP-Course-2015#week-3)
  * [Lecture 5: More on datatypes in Haskell](https://github.com/jagajaga/FP-Course-2015#lecture-5-more-on-datatypes-in-haskell-by-dmitry-kovanikov)
  * [Homework 2](http://slides.com/shersh/homework-2/)
+ [Week 4: CW1](https://github.com/jagajaga/FP-Course-2015#week-4)
+ [Week 5](https://github.com/jagajaga/FP-Course-2015#week-5)
  * [Lecture 6: Monads, part 1](https://github.com/jagajaga/FP-Course-2015#lecture-6-monads-part-1-by-dmitry-kovanikov)
  * [Homework 3](http://slides.com/shersh/homework-3/)
+ [Week 6](https://github.com/jagajaga/FP-Course-2015#week-6)
  * [Lecture 7: Functors, Applicative Functors](https://github.com/jagajaga/FP-Course-2015#lecture-7-functors-applicative-functors-by-arseniy-seroka)
  * [Homework 4](https://docs.google.com/presentation/d/1dP17Ktys1nGTtGD7Eguty7I4CRUWY5C0MzTTxc3H_xs/edit#slide=id.p)
+ [Week 7](https://github.com/jagajaga/FP-Course-2015#week-7)
  * [Lecture 8: Monads, part 2](https://github.com/jagajaga/FP-Course-2015#lecture-8-monads-part-2-by-dmitry-kovanikov)
  * [Homework 5](http://slides.com/shersh/homework-5/)
+ [Week 8](https://github.com/jagajaga/FP-Course-2015#week-8)
  * [Lecture 9: IO](https://github.com/jagajaga/FP-Course-2015#lecture-9-io-by-arseniy-seroka)
  * [Bonus: Intro to category theory](123)
  * [Homework 6](http://slides.com/shersh/homework-6/)

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
+ suggested tutorials and other online useful courses
  * [LearnYouAHaskell](http://learnyouahaskell.com/)
  * [anton-k-github](http://anton-k.github.io/ru-haskell-book/book/home.html)
  * [Haskell in Real Life](http://book.realworldhaskell.org/read/)
  * [OHaskell](http://ohaskell.dshevchenko.biz/)
  * [FPComplete](https://www.fpcomplete.com/)
  * [YAHT](https://en.wikibooks.org/wiki/Yet_Another_Haskell_Tutorial)

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
+ Currying (aka partial application)
+ Pattern matching  
+ Function composition and application: (.) ($)
+ Ranges
+ List comprehension

#### Presentation: http://slides.com/shersh/lecture-3/

### Lecture 4: Datas, Classes, Instances (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub"))
+ **type**: type aliases
+ ADT's (algebraic data types):
  * sum types (aka enums)
  * product types (aka **struct**'s in C++ or **class**'es in Java)j
+ **data** and examples
+ Type classes: **class**
+ **instance**
  * compare to Java interface
  * examples of standard classes: _Eq_, _Ord_
+ **deriving** and _autoderiving_
+ Record syntax
+ Type constraints (or type bounds)

#### Presentation: http://slides.com/shersh/lecture-4/
#### Homework 1: http://slides.com/shersh/homework-1/

Week 3
------
### Lecture 5: More on datatypes in Haskell (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub"))
+ DataType contexts: data (Show a) => Exp a = Const a | Eq (Exp a) (Exp a)
+ Introducing _Maybe_
  * **data** Maybe a = Nothing | Just a
  * compare to C++ (boost::optional), Java (Optional<T>)
+ _kinds_
+ Higher order instances (instances for types with _kind_: \* -> \*)
+ Using of types to store information
+ **newtype**: newtype Sum a = Sum a
+ _foldr_ and _foldl_
+ Useful _Monoid_ class:
  * examples and applications
  * foldrs on monoids
  * [Finger Tree](http://staff.city.ac.uk/~ross/papers/FingerTree.html)
+ Language Extensions
  * [OverloadedStrings](http://kwangyulseo.com/tag/overloadedstrings/)
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
1. Some simple program in 2 lines
2. Some simple program in 3-7 lines
3. Implement some simple Data Structure
4. Implement some type classes

### Practice 2: HW1 deadline

Week 5
------  
### Lecture 6: Monads, part 1 (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub"))
+ Talk about boxes
+ Monad type class with some additions, monad laws
+ _Maybe_ as example, philosophy about null-safety
+ _Identity_ monad instance
+ _Either_ monad instance
+ _then_, monad composition
+ _List_ monad instance
+ _join_
+ useful Monad functions

#### Presentation: http://slides.com/shersh/lecture-6/
#### Homework 3: http://slides.com/shersh/homework-3/

### Practice 3: HW2 deadline

Week 6
------
### Lecture 7: Functors, Applicative Functors (by [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub"))
+ fmap
+ _Functor_ type class with examples (_Maybe_, _List_, _Function_)
+ _Applicative_ type class with examples (_Maybe_, _List_, _Function_)
  * what for
  * pure
  * <*>
+ liftAN
+ _Foldable_ type class
+ _Traversable_ type class (and instances for _Maybe_, _List_)
+ Type classed hierarchy (_Foldable_, _Functor_, _Functor_, _Applicative_, _Alternative_, _Monad_, _MonadPlus_)
+ examples:
  * [_ZipList_](https://en.wikibooks.org/wiki/Haskell/Applicative_Functors)
  * [_User_](https://pbrisbin.com/posts/applicative_functors/)
  * [_Applicative parser_](https://robots.thoughtbot.com/applicative-options-parsing-in-haskell)
  * [_Small things_](http://stackoverflow.com/questions/6570779/why-should-i-use-applicative-functors-in-functional-programming)
  * [_Accumulation of expression_](http://anton-k.github.io/ru-haskell-book/book/7.html)
  * [_Applicative command line arguments parser_](https://github.com/pcapriotti/optparse-applicative) !

##### Read: [LearnYouAHaskell (chapter 11)](http://learnyouahaskell.com/functors-applicative-functors-and-monoids)

#### [Presentation](https://docs.google.com/presentation/d/1pu1TMSh5Xq4SuxBUdmTsVPqrY_LLRHnup6SW8RSIRO4/edit?usp=sharing)
#### [Homework 4](https://docs.google.com/presentation/d/1dP17Ktys1nGTtGD7Eguty7I4CRUWY5C0MzTTxc3H_xs/edit?usp=sharing)

### Practice 4

Week 7
------
### Lecture 8: Monads, part 2 (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub"))
+ _Writer_ monad
+ _Reader_ monad
+ Typed holes (since ghc 7.8)
+ _State_ monad
  * example 1: stack as state
  * example 2: depth first search
  * where to find _State_ monad in std library, different useful functions

#### Presentation: http://slides.com/shersh/lecture-8/
#### Homework 5: http://slides.com/shersh/homework-5/

### Practice 5: HW3 deadline

Week 8
------
### Lecture 9: IO (by [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub"))

+ Recall pure functions
+ Realize impureness of IO
+ Building IO system
+ Introduce IO monad
+ _do_ notation, syntax sugar
+ Mutable data: [_IORef_](https://hackage.haskell.org/package/base-4.8.1.0/docs/Data-IORef.html) and [_IOArray_](https://hackage.haskell.org/package/array-0.5.1.0)
+ _sequence\__
+ Exceptions (_catch_, _throwIO_, etc.)

### Bonus: Intro to category theory (by [Nikita Lisitsa](https://github.com/lisyarus "lisyarus's GitHub"))
Answering on question: Why monad is monoid in category of endofunctors?
#### [Category Theory: Intro](http://slides.com/lisyarus/category-theory-1/)

##### Read: 
+ [LearnYouAHaskell (chapter 9)](http://learnyouahaskell.com/input-and-output)
+ [IO inside](https://wiki.haskell.org/IO_inside)
+ [anton-k IO](http://anton-k.github.io/ru-haskell-book/book/8.html)
+ [Real World Haskell (chapters 7-9)](http://book.realworldhaskell.org/read/)

#### [Presentation](https://docs.google.com/presentation/d/1e1qswvzO2iZoUKRdnaQ6Ymv6BIaqW-PrEJZ8Ck2vIdQ/edit?usp=sharing)
#### Homework 6: http://slides.com/shersh/homework-6/

### Practice 6: HW4 deadline

Week 9
------
### Lecture 10: Monadic Parser (by [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub"))
+ Explaining Monadic Parser's idiom on examples
  * brackets parser
  * numbers parser
  * arithmetic expression parser
+ Parsec, Happy

### Practice 7: HW5 deadline

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
+ CPS
+ GADT's:
  ```haskell
  {-# LANGUAGE GADTs #-}
  data Exp a where
      Const :: Show a => a -> Exp a
      Eq :: Exp a -> Exp a -> Exp a
   ```
+ type families (oop with haskell)
+ Functional Dependencies, Associated Types
+ databases
+ networks
+ WEB, HTTP, JSON (Hakyll, Yesod, Snap)
+ Profiling
+ Testing
+ FFI
+ {-# UNPACK #-}, {-# INLINE #-}
+ BangPatterns, !
+ Free Monad
+ ghc internals
+ comonads
+ Zygohistomorphic prepromorphisms
+ ?????
+ PROFIT!!!!
