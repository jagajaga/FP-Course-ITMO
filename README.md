Haskell ITMO course at CTD
==========================

> Here you can find plan and presentations on the Haskell course authored by
> [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub") and
> [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub").

> This course is always under development and always improving constantly because there's
> no limit for the best Haskell course.

## Course plan

All slides: https://slides.com/fp-ctd

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
+ [Lecture 13: Comonads](https://github.com/jagajaga/FP-Course-ITMO#lecture-13-comonads-by-arseniy-seroka-)
+ [Lecture 14: Enterprise Haskell](https://github.com/jagajaga/FP-Course-ITMO#lecture-14-enterprise-haskell-by-arseniy-seroka-)
+ [Lecture 15: Advanced type features](https://github.com/jagajaga/FP-Course-ITMO#lecture-15-advanced-type-features-by-dmitry-kovanikov-)
+ [Lecture 16: Idris](https://github.com/jagajaga/FP-Course-ITMO#lecture-16-idris-by-dmitry-kovanikov-)

## Lecture 1: Why FP and Haskell (by [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#lectures)
+ Official resources
  * [Haskell Lang (official site)](https://haskell-lang.org/)
  * [Haskell (official site)](https://www.haskell.org/)
  * [Stackage: stable source of Haskell packages](https://www.stackage.org/)
  * [Hackage: central package archive](http://hackage.haskell.org/)
+ Useful unofficial resources
  * [State of the Haskell ecosystem](https://github.com/Gabriel439/post-rfc/blob/master/sotu.md)
+ About Haskell & some wikis
  * [Haskell WikiBook](https://en.wikibooks.org/wiki/Haskell)
  * [Haskell Wiki](https://wiki.haskell.org/Haskell)
  * [Comparison of functional programming languages](https://en.wikipedia.org/wiki/Comparison_of_functional_programming_languages)
+ Try Haskell in web
  * [Try Haskell!](https://tryhaskell.org/)
  * [Repl.It](https://repl.it/languages/haskell)
  * [Haskell.Godbolt](https://haskell.godbolt.org/ "Observe GHC assembly")
+ Editors (and IDE's for Haskell)
  * [Haskell IDE chart (feature list of IDE's)](https://github.com/rainbyte/haskell-ide-chart)
  * [Configure your `ghci`](http://dev.stephendiehl.com/editor_talk.html)
+ Suggested tutorials and other useful online courses
  * In Russian
    - [OHaskell](https://www.ohaskell.guide/): Для совсем новичков, очень доступно, но очень мало
    - [anton-k-github](http://anton-k.github.io/ru-haskell-book/book/home.html): Покрываются более продвинутые вещи + теория
    - [Stepic: Haskell (part 1)](https://stepik.org/course/75/): Лучший онлайн курс на русском; прекрасен для самостоятельно изучения
    - [Stepic: Haskell (part 2)](https://stepik.org/course/693/): Продолжение лучшего курса
      - Dmitry Kovanikov: Обе части курса на Stepic покрывают лишь две трети данного курса на КТ
  * Books
    - [Haskell Programming From First Principles](http://haskellbook.com/): Best book currently
    - [LearnYouAHaskell](http://learnyouahaskell.com/): Free but won't help you much
    - [Intermediate Haskell](https://intermediatehaskell.com/): Advanced topics (not yet published)
  * Intensive & self-learning courses
    - [bitemyapp: learnhaskell](https://github.com/bitemyapp/learnhaskell):
      - Dmitry Kovanikov: personally I would recommend «Yorgey's cis194 course»
    - [Write Yourself a Scheme in 48 Hours](https://en.wikibooks.org/wiki/Write_Yourself_a_Scheme_in_48_Hours)
+ Reallife and relatively popular examples of Haskell applications
  * Standalone
    - [pandoc](https://pandoc.org/): Converter between different markup formats
    - [xmonad](http://xmonad.org/): Tiling window manager
    - [hledger](http://hledger.org/): Accounting program
    - [ShellCheck](https://www.shellcheck.net/): Finds bugs in your shell scripts
    - [Google's CodeWorld](https://github.com/google/codeworld): Educational computer programming environment using Haskell
  * Cryptocurrencies
    - [Cardano SL](https://cardanodocs.com): Cardano Settlement Layer
    - [RSCoin](https://github.com/input-output-hk/rscoin-haskell): Implementation of the RSCoin protocol
    - [Haskoin](https://github.com/haskoin/haskoin): Haskell implementation of the Bitcoin protocol
  * [A List of companies that use Haskell](https://github.com/erkmos/haskell-companies): ~100 companies (on 26 Aug 2017)
  * [What Haskell technologies should I probably be using on a daily basis (e.g. Xmonad)?](https://www.reddit.com/r/haskell/comments/4p82jy/what_haskell_technologies_should_i_probably_be/)
+ FP and Haskell paradigms (also extremely important language features)
  * Static types
  * Immutability by default
  * Purity by default
  * Non-null by default
  * Sum types
  * Lazy evaluation

#### Presentation (ru): http://camlunity.ru/swap/haskell/whyhaskell.pdf

## Lecture 2: Basic Syntax (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#lectures)
- Introduction to Haskell
  + Basic GHCi examples
  + Function & operators definition
  + Lists and functions on lists
- Haskell syntax
  + **let** (variable declaration)
  + **where** clause
  + **if** expression
  + **guards**
  + **case** expression
  + Higher order functions
  + Lambdas (anonymous functions)
- Polymoprhism
  + Parametric
  + Ad-hoc
+ LANGUAGE pragmas
+ Currying (aka partial application)
+ Pattern matching
+ List comprehension
+ Function application: ($)
+ Function composition: (.)

#### Presentation: http://slides.com/fp-ctd/lecture-2#/

## Lecture 3: Datas, Classes, Instances (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#lectures)
+ **type**: type aliases
+ ADT's (algebraic data types):
  * sum types (aka enums)
  * product types (aka **struct**'s in C++ or **class**'es in Java)
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

## Lecture 8: RealWorld (by [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#lectures)
+ Building _IO_ system from scratch
+ Introduce _IO_ monad
+ __do__ notation
  * Syntax sugar
  * Applicative Do
  * RebindableSyntax
+ Mutable data: [_IORef_](https://hackage.haskell.org/package/base-4.8.1.0/docs/Data-IORef.html) and [_IOArray_](https://hackage.haskell.org/package/array-0.5.1.0)
+ _sequence\__
+ Exceptions (_catch_, _throwIO_, custom exceptions, _bracket_, etc.)
+ _unsafePerformIO_ and _unsafeInterleaveIO_
+ Efficient String representations: _Text_, _ByteString_

#### Presentation 8: http://slides.com/fp-ctd/lecture-8#/

## Lecture 9: Monad Transformers (by [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#lectures)
+ Composing monads
+ MaybeIO example
+ _MonadTrans_
+ _MaybeT_ transformer
+ _ReaderT_ transformer
+ _mtl_ style of transformation

#### Presentation: http://slides.com/fp-ctd/lecture-9#/

## Lecture 10: Speeding up haskell (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#lectures)
+ List concatenation pitfalls and _Difference List_
+ _foldr_ vs. _foldl_ vs. _foldl'__
+ WHNF (weak head normal form)
+ _seq_, _deepseq_, _NFData_
+ Irrefutable patterns
+ BangPatterns
+ Strict Haskell
+ Space leaks
+ Deforestation
+ Stream Fusion
+ _ST_ monad (_STRef_, _STArray_)
+ Criterion

#### Presentation: http://slides.com/fp-ctd/lecture-10#/

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

## Lecture 13: Comonads (by [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#lectures)
+ Comonad type class & motivation
  * Identity comonad
+ Zippers
  * List zipper
  * Zipper via derivative
  * Game of Life
  * Array Zipper (image processing)
+ Comonads
  * Env
  * Traced
  * Stream (+ NonEmpty)
  * Store
+ *codo*-notation (aka *method*)
+ Comonad transformers

#### Presentation: http://slides.com/fp-ctd/lecture-13#/

## Lecture 14: Enterprise Haskell (by [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#lectures)
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

#### Presentation: http://slides.com/fp-ctd/lecture-14#/

## Lecture 15: Advanced type features (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#lectures)
+ **forall** keyword
  * _-XExplicitForall_
  * _-XExistensialQuantification_
  * _-XRank2Types_
  * _-XRankNTypes_
+ Examples for all
  * ShowBox
  * ST
  * Type constraints
  * Pattern matching on types
+ GADTs
  * Type safe arithmetic expressions
  * Parsing to GADT
+ _-XDataKinds_
  * Naturals
  * HList
  * Type level Symbols
  * Vectors with length in type
+ Extensible records
+ _-XTypeApplications_
+ _-XTypeOperators_


#### Presentation: http://slides.com/fp-ctd/lecture-15#/

## Lecture 16: Idris (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#lectures)

+ [Idris tutorial](http://docs.idris-lang.org/en/latest/tutorial/)
+ [Idris course](http://www.idris-lang.org/dependently-typed-functional-programming-with-idris-course-videos-and-slides/)
+ Paradigms
  * Totality
  * Strict evalution
  * Theorem proving
  * DSL
  * Extensible effects
+ Syntax difference with _Haskell_
  * : for type and :: for _cons_
  * Function overloading
  * Named typeclasses
  * !-idiom
  * [| |]-idiom
  * Records
+ Dependent types
  * `Vect` data type
  * `drop` for `Vect`
  * `isEmpty : Vect n a -> Bool`
  * `isSingleton : Bool -> Type`
  * Open and closed doors
  * _Total_ version of `head` function
  * `_|_`-eliminator
  * _Dependent pair_ and _filter_ for vectors
  * [Type safe `printf` implementation](https://www.youtube.com/watch?v=fVBck2Zngjo)
+ Simple examples of `Eff`
  * Tagging tree with labels (and counting leaves)

Uncovered topics
----------------
> Unfortunately there're some topics which are great but there is no time for them in this course :(

+ Pragmas: {-# UNPACK #-}, {-# INLINE #-}, {-# SPECIALIZE -#}, {-# RULE #-} etc.
+ Compiler optimizations
+ GHC internals & Core language
+ Generics
+ Type Families
+ Arrows
+ PureScript
+ LiquidHaskell
+ Agda
+ Even more advanced monads: Indexed, Effect & Super- monads
+ Zygohistomorphic prepromorphisms
