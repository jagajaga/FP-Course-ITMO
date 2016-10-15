Haskell ITMO course at CTD
==========================

> Here you can find plan and presentations on the Haskell course authored by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub") and [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub").

## Course plan

#### Lectures
+ [Lecture 1: Why FP and Haskell](https://github.com/jagajaga/FP-Course-ITMO#lecture-1-why-fp-and-haskell-by-arseniy-seroka-)
+ [Lecture 2: Basic Syntax](https://github.com/jagajaga/FP-Course-ITMO#lecture-2-basic-syntax-by-dmitry-kovanikov-)
+ [Lecture 3: Datas, Classes, Instances](https://github.com/jagajaga/FP-Course-ITMO#lecture-3-datas-classes-instances-by-dmitry-kovanikov-)
+ [Lecture 4: Kinda Monoids](https://github.com/jagajaga/FP-Course-ITMO#lecture-4-kinda-monoids-by-dmitry-kovanikov-)
+ [Lecture 5: Monads, part 1](https://github.com/jagajaga/FP-Course-ITMO#lecture-5-monads-part-1-by-dmitry-kovanikov-)
+ [Lecture 6: Functors, Applicative Functors](https://github.com/jagajaga/FP-Course-ITMO#lecture-6-functors-applicative-functors-by-arseniy-seroka-)
+ [Lecture 7: Monads, part 2](https://github.com/jagajaga/FP-Course-ITMO#lecture-7-monads-part-2-by-dmitry-kovanikov-)
+ [Lecture 8: RealWorld](https://github.com/jagajaga/FP-Course-ITMO#lecture-8-realworld-by-arseniy-seroka-)
+ [Lecture 9: Monad Transformers](https://github.com/jagajaga/FP-Course-ITMO#lecture-9-monad-transformers-by-arseniy-seroka-)
+ [Lecture 10: Speeding up Haskell](https://github.com/jagajaga/FP-Course-ITMO#lecture-10-speeding-up-haskell-by-dmitry-kovanikov-)
+ [Lecture 11: Template Haskell and Lens](https://github.com/jagajaga/FP-Course-ITMO#lecture-11-template-haskell-and-lens-by-arseniy-seroka-)
+ [Lecture 12: Parallel and Concurrent Haskell](https://github.com/jagajaga/FP-Course-ITMO#lecture-12-parallel-and-concurrent-haskell-by-dmitry-kovanikov-)
+ [Lecture 13: Enterprise Haskell](https://github.com/jagajaga/FP-Course-ITMO#lecture-13-enterprise-haskell-by-arseniy-seroka-)
+ [Lecture 14: Comonads](https://github.com/jagajaga/FP-Course-ITMO#lecture-14-comonads-by-arseniy-seroka-)
+ [Lecture 15: Advanced types, part 2](https://github.com/jagajaga/FP-Course-ITMO#lecture-15-advanced-types-part-2-by-dmitry-kovanikov-)
+ [Lecture 16: TBA](https://github.com/jagajaga/FP-Course-ITMO#lecture-16-tba-)

#### Homeworks
[Homework 1](http://slides.com/fp-ctd/hw-1#/) | [Homework 2](http://slides.com/fp-ctd/hw-2#/) | [Homework 3](http://slides.com/fp-ctd/hw-3#/) | [Homework 4](http://slides.com/fp-ctd/hw-4#/) | [Homework 5](http://slides.com/fp-ctd/hw-5#/) | [Homework 6](http://slides.com/fp-ctd/hw-6#/) | [Homework 7](http://slides.com/fp-ctd/hw-7#/) | [Homework 8](http://slides.com/fp-ctd/hw-8#/) | [Homework 9](http://slides.com/fp-ctd/hw-9#/) | [Homework 10](http://slides.com/fp-ctd/hw-10#/) | [Homework 11](http://slides.com/fp-ctd/hw-11#/) | [Homework 12](http://slides.com/fp-ctd/hw-12#/) | [Homework 13](http://slides.com/fp-ctd/hw-13#/)

## Lecture 1: Why FP and Haskell (by [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#lectures)
+ About Haskell
  * [Haskell Lang (official site)](https://haskell-lang.org/)
  * [Haskell (wiki)](https://en.wikibooks.org/wiki/Haskell)
  * [Comparison of functional programming languages](https://en.wikipedia.org/wiki/Comparison_of_functional_programming_languages)
+ Reallife examples
  * Facebook's [haxl](https://github.com/facebook/Haxl)
  * [pandoc](https://github.com/jgm/pandoc)
  * [hbro](https://github.com/k0ral/hbro)
  * [xmonad](https://github.com/xmonad)
  * [Leksah: Haskell IDE](http://leksah.org/)
  * [darcs](http://darcs.net/)
  * [git-annex](http://git-annex.branchable.com/)
  * [RSCoin implementation](https://github.com/input-output-hk/rscoin-haskell)
  * [Different tehcnologies](https://www.reddit.com/r/haskell/comments/4p82jy/what_haskell_technologies_should_i_probably_be/)
+ FP and Haskell paradigms
  * Immutability
  * Purity
  * Strong typing
  * Lazy evaluation
+ Instructions of how to intall ghc and stack; couple words about ghci
+ Editors for Haskell
  * [IDE's](https://wiki.haskell.org/IDEs)
  * [Editor tooling](http://dev.stephendiehl.com/editor_talk.html)
+ Suggested tutorials and other useful online courses
  * [Try Haskell!](https://tryhaskell.org/)
  * [OHaskell](http://ohaskell.dshevchenko.biz/)
  * [bitemyapp: learnhaskell](https://github.com/bitemyapp/learnhaskell)
  * [LearnYouAHaskell](http://learnyouahaskell.com/)
  * [anton-k-github (ru)](http://anton-k.github.io/ru-haskell-book/book/home.html)
  * [SchoolOfHaskell](https://www.schoolofhaskell.com/)
  * [YAHT](https://en.wikibooks.org/wiki/Yet_Another_Haskell_Tutorial)
  * [How I start Haskell](http://www.howistart.org/posts/haskell/1)
  * [StackOverflow :: Getting Started with Haskell](http://stackoverflow.com/questions/1012573/getting-started-with-haskell?rq=1)

#### Presentation (ru): http://camlunity.ru/swap/haskell/whyhaskell.pdf

## Lecture 2: Basic Syntax (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#lectures)
+ Difference between statement and expression
+ Functions
  * ordinary
  * generic
+ Lists and functions on lists
+ Lambdas (anonymous functions)
+ **let** (variable declaration)
+ **where** clause
+ **if** expression
+ **guards**
+ **case** expression
+ Higher order functions
  * examples on other languages
  * standard Haskell HOFs: map, filter, foldr, etc.
+ Currying (aka partial application)
+ Pattern matching
+ Function composition and application: (.) ($)
+ Ranges
+ List comprehension

#### Presentation: http://slides.com/fp-ctd/lecture-2#/
#### Homework 1: http://slides.com/fp-ctd/hw-1#/

## Lecture 3: Datas, Classes, Instances (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#lectures)
+ **type**: type aliases
+ ADT's (algebraic data types):
  * sum types (aka enums)
  * product types (aka **struct**'s in C++ or **class**'es in Java)j
+ **data** and examples
+ Record syntax
+ Type classes: **class**
+ **instance**
  * compare to Java interface
  * examples of standard classes: _Eq_, _Ord_
+ **deriving**
+ Type constraints (or type bounds)
+ Type classes as Dictionaries
+ Deprecated _DataTypeContexts_
+ Modules cheatsheet

#### Presentation: http://slides.com/fp-ctd/lecture-3#/
#### Homework 2: http://slides.com/fp-ctd/hw-2#/

## Lecture 4: Kinda Monoids (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#lectures)
+ **newtype**
+ Phantom types
+ _kinds_
  * Basic kinds
  * Kind polymorphism ([TypeInType](http://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#kind-polymorphism-and-type-in-type))
  * [Constraint kind](http://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#the-constraint-kind)
+ Higher kinded types
+ _foldr_ and _foldl_
+ Useful _Monoid_ class:
  * examples and applications
  * foldrs on monoids
  * [Finger Tree](http://staff.city.ac.uk/~ross/papers/FingerTree.html)
+ _Foldable_ type class
+ Language Extensions
  * [TypeSynonyms](https://ghc.haskell.org/trac/haskell-prime/wiki/TypeSynonymInstances)
  * [FlexibleInstances](https://ghc.haskell.org/trac/haskell-prime/wiki/FlexibleInstances)
  * [GeneralizedNewtypeDeriving](https://ghc.haskell.org/trac/haskell-prime/wiki/NewtypeDeriving)
  * [MultiParamTypeClasses](https://wiki.haskell.org/Multi-parameter_type_class)
  * [DuplicateRecordFields](http://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#duplicate-record-fields)
  * [MultiWayIf & ViewPatterns](https://www.schoolofhaskell.com/school/to-infinity-and-beyond/pick-of-the-week/guide-to-ghc-extensions/basic-syntax-extensions)
  * [RecordsWildCards](http://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#record-wildcards)

#### Presentation: http://slides.com/fp-ctd/lecture-4#/
#### Homework 3: http://slides.com/fp-ctd/hw-3#/

## Lecture 5: Monads, part 1 (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#lectures)
+ Talk about boxes
+ What is Monad?
+ Monad type class with some additions, monad laws
+ _Maybe_ as example, philosophy about null-safety
+ _Identity_ monad instance
+ _Either_ monad instance
+ _then_, monad composition
+ _List_ monad instance
+ _join_
+ useful Monad functions

#### Presentation: http://slides.com/fp-ctd/lecture-5#/
#### Homework 4: http://slides.com/fp-ctd/hw-4#/

## Lecture 6: Functors, Applicative Functors (by [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#lectures)
+ _Functor_
+ _Bifunctor_
+ _Applicative_
  * ZipList
+ _liftAN_ & Applicative style programming
+ _Alternative_
+ List comprehension syntax sugar
+ _Traversable_ type class (and instances for _Maybe_, _List_)
+ Automatic deriving
  * [DeriveFunctor](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#deriving-functor-instances)
  * [DeriveFoldable](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#deriving-foldable-instances)
  * [DeriveTraversable](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#deriving-traversable-instances)
+ Type hierarchy proposals
  * [AMP](https://ghc.haskell.org/trac/ghc/ticket/8004) (Applicative/Monad proposal)
  * [FTP](https://ghc.haskell.org/trac/ghc/wiki/Prelude710/FTP) (Foldable/Traversable proposal)
  * [MRP](https://ghc.haskell.org/trac/ghc/wiki/Proposal/MonadOfNoReturn) (Monad of no return/>> proposal)
  * [MFP](https://prime.haskell.org/wiki/Libraries/Proposals/MonadFail) (MonadFail proposal)
+ Type classes hierarchy

#### Presentation: http://slides.com/fp-ctd/lecture-6#/
#### Homework 5: http://slides.com/fp-ctd/hw-5#/

## Lecture 7: Monads, part 2 (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#lectures)
+ _Writer_ monad
+ _Reader_ monad
+ Typed holes
+ Partial type signatures
+ _State_ monad
  * example 1: stack as state
  * example 2: depth first search
  * where to find _State_ monad in std library, different useful functions
+ _RWS_ monad
+ _Cont_ monad and Continuation Passing Style (CPS)
  * Continuations as callbacks
  * _Cont_ datatype and monadic exampe
  * _MonadCont_ and _callCC_

#### Presentation: http://slides.com/fp-ctd/lecture-7#/
#### Homework 6: http://slides.com/fp-ctd/hw-6#/

## Lecture 8: RealWorld (by [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#lectures)
+ Recall pure functions
+ Realize impureness of IO
+ Building IO system from scratch
+ Introduce IO monad
+ _do_ notation, syntax sugar
+ Mutable data: [_IORef_](https://hackage.haskell.org/package/base-4.8.1.0/docs/Data-IORef.html) and [_IOArray_](https://hackage.haskell.org/package/array-0.5.1.0)
+ _sequence\__
+ Exceptions (_catch_, _throwIO_, etc.)
+ _unsafePerformIO_ and _unsafeInterleaveIO_
+ Efficient Strint representations: _Text_, _ByteString_

#### Presentation 8: http://slides.com/fp-ctd/lecture-8#/
#### Homework 7: http://slides.com/fp-ctd/hw-7#/

## Lecture 9: Monad Transformers (by [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#lectures)
+ Composing monads
+ MaybeIO example
+ _MonadTrans_
+ _MaybeT_ transformer
+ _ReaderT_ transformer
+ _mtl_ style of transformation

#### Presentation: http://slides.com/fp-ctd/lecture-9#/
#### Homework 8: http://slides.com/fp-ctd/hw-8#/

## Lecture 10: Speeding up haskell (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#lectures)
+ List concatenation pitfalls and _Difference List_
+ _foldr_ vs. _foldl_ vs. _foldl'__
+ WHNF (weak head normal form)
+ _seq_, _deepseq_, _NFData_
+ Irrefutable patterns
+ BangPatterns
+ Deforestation
+ Stream Fusion
+ _ST_ monad (_STRef_, _STArray_)
+ Criterion

#### Presentation: http://slides.com/fp-ctd/lecture-10#/
#### Homework 9: http://slides.com/fp-ctd/hw-9#/

## Lecture 11: Template Haskell and Lens (by [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#lectures)
+ Template Haskell
  * boilerplating tuple code
  * Generate Automatic Instances
+ Lens
  * Creating our simple lens
  * Introducing real Lens'
  * Nice example with real lens (_view_, _traversed_, _filtered_, _zoom_)
+ Prism

#### Presentation: http://slides.com/fp-ctd/lecture-11#/
#### Homework 10: http://slides.com/fp-ctd/hw-10#/

## Lecture 12: Parallel and Concurrent Haskell (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#lectures)
+ Advantages of immutability and purity
+ Haskell parallelism with `rpar` and `rseq`
+ Threadscope
+ Strategies
+ _Par_ monad examples
+ Difference between _Parallelism_ and _Concurrency_
+ _forkIO_ and _MVar_
+ Transactions: STM, TVar
+ Async

#### Presentation: http://slides.com/fp-ctd/lecture-12#/
#### Homework 11: http://slides.com/fp-ctd/hw-11#/

## Lecture 13: Enterprise Haskell (by [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#lectures)
+ Build tools
  * Cabal
  * Stack
  * Nix
+ Testing: HSpec, QuickCheck
+ FFI
+ GUI: gtk (online demo)
+ Databases
  * SQL
  * acid-state
+ Network.HTTP
+ Web.Scotty

#### Presentation: http://slides.com/fp-ctd/lecture-13#/
#### Homework 12: http://slides.com/fp-ctd/hw-12#/

## Lecture 14: Comonads (by [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#lectures)
+ Zippers
  * List zipper
  * Zipper via derivative
+ Comonad
  * Game of Life

#### Presentation: http://slides.com/fp-ctd/lecture-14#/
#### Homework 12: http://slides.com/fp-ctd/hw-13#/

## Lecture 15: Advanced types, part 2 (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#lectures)
+ GADTs
+ **forall**
+ _ExistensialQuantification_, _Rank2Types_, _RankNTypes_
+ Examples
  * ShowBox
  * ST
  * Type constraints
+ Free monad
+ Rank'N'Classy

#### Presentation: http://slides.com/fp-ctd/lecture-15#/

## Lecture 16: TBA [↑](https://github.com/jagajaga/FP-Course-ITMO#lectures)

Uncovered topics
----------------
> Unfortunately there're some topics which are great but there is no time for them in this course :(

+ Advanced monads: Effect Monad (IxMonad was earlier, now deprecated)
+ Pragmas: {-# UNPACK #-}, {-# INLINE #-}, etc.
+ Compiler optimizations
+ Streams, Pipes, Conduit
+ Network and WEB (Yesod, Snap, Warp, Hakyll, CloudHaskell)
+ JSON, CSV (Aeson)
+ Testing (SmallCheck)
+ Ghc internals
+ Zygohistomorphic prepromorphisms
