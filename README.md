Haskell ITMO course at CTD
==========================

Here you can find plan and presentations on the Haskell course authored by
[Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub") and
[Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub").

This course is always under development and always improving constantly because there's
no limit for the best Haskell course.

You can always contact us via fp.ctd.itmo [at] serokell.io

## Course plan

All slides: https://slides.com/fp-ctd

+ [Lecture 0: Why FP and Haskell](#lecture-0)
+ [Lecture 1: Stack build tool](#lecture-1)
+ [Lecture 2: Basic Syntax](#lecture-2)
+ [Lecture 3: Datas, Classes, Instances](#lecture-3)
+ [Lecture 4: Basic typeclasses: Monoid. Functor. Applicative](#lecture-4)
+ [Lecture 5: Monads](#lecture-5)
+ [Slides: Parser combinators and Property-based-testing](#lecture-5-continue)
+ [Lecture 6: RealWorld](#lecture-6)
+ [Lecture 7: Monad Transformers](#lecture-7)
+ [Lecture 8: Speeding up Haskell](#lecture-8)
+ [Lecture 9: Parallel and Concurrent Haskell](#lecture-9)
+ [Lecture 10: Template Haskell and Lens](#lecture-10)
+ [Lecture 11: Brand new DSL world](#lecture-11)
+ [Lecture 12: Some fun with kinds](#lecture-12)
+ [Lecture 13: Comonads](#lecture-13)
+ [_Uncovered topics_](#uncovered-topics-)

Templates for homework: https://github.com/ChShersh/fp-homework-templates

## <a name="lecture-0">Lecture 0: Why FP and Haskell</a> [↑](#course-plan)
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

#### Introductory presentation: [here](FP-Introduction.pdf)

## <a name="lecture-1">Lecture 1. Stack. How to build/run/test</a> [↑](#course-plan)
* GHC, GHCi
* Haskell project structure
* Stack. Features
* How stack works. Snapshots
* `.cabal` and `.yaml` files
* Basic comands

#### Presentation: https://slides.com/fp-ctd/lecture-1#/

## <a name="lecture-2">Lecture 2: Basic Syntax</a> [↑](#course-plan)
- Introduction to Haskell
  + Basic GHCi examples
  + Function & operators definition
  + Lists and functions on lists
- Haskell syntax
  + **let** (variable declaration)
  + **where** clause
  + **if** expression
  + Guards
  + **case** expression
  + Higher order functions
  + Lambdas (anonymous functions)
- Polymoprhism
  + Parametric
  + Ad-hoc
- LANGUAGE pragmas
  + [_-XTupleSections_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#tuple-sections)
  + [_-XLambdaCase_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#lambda-case)
  + [_-XViewPatterns_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#view-patterns)
+ Currying (aka partial application)
+ Pattern matching
+ List comprehension
+ Function application: ([_`$`_](https://hackage.haskell.org/package/base/docs/Prelude.html#v:-36-))
+ Function composition: ([_`.`_](https://hackage.haskell.org/package/base/docs/Prelude.html#v:.))
+ Lazy evaluation (erathosphene sieve, fibonacci numbers, repmin)

#### Presentation: http://slides.com/fp-ctd/lecture-2#/

## <a name="lecture-3">Lecture 3: Datas, Classes, Instances</a> [↑](#course-plan)
+ **type**: type aliases
+ ADT's (algebraic data types):
  * product types
  * sum types
+ **data** and examples
+ Record syntax
  * [_-XDuplicateRecordFields_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#duplicate-record-fields)
  * [_-XRecordWildCards_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#record-wildcards)
+ **newtype**
+ Type classes: **class**
+ **instance**
  * compare to Java interface
  * [_-XInstanceSigs_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#instance-signatures-type-signatures-in-instance-declarations)
  * examples of standard classes: [_`Eq`_](http://hackage.haskell.org/package/base/docs/Prelude.html#t:Eq), [_`Ord`_](http://hackage.haskell.org/package/base/docs/Prelude.html#t:Ord), [_`Num`_](https://hackage.haskell.org/package/base/docs/Prelude.html#t:Num), [_`Show`_](https://hackage.haskell.org/package/base/docs/Prelude.html#t:Show), [_`Read`_](https://hackage.haskell.org/package/base/docs/Prelude.html#t:Read)
+ **deriving**
+ [_-XGeneralizedNewtypeDeriving_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#generalised-derived-instances-for-newtypes)
+ [Modules cheatsheet](http://slides.com/fp-ctd/lecture-3#/39)
+ Church-encoding ADT

#### Presentation: http://slides.com/fp-ctd/lecture-3#/

## <a name="lecture-4">Lecture 4: Basic typeclasses: Monoid. Functor. Applicative</a> [↑](#course-plan)
+ Math in programming
  * [_`Semigroup`_](http://hackage.haskell.org/package/base/docs/Data-Semigroup.html#t:Semigroup) and [_`Monoid`_](http://hackage.haskell.org/package/base/docs/Data-Monoid.html#t:Monoid)
  * A lot of examples
+ [_`foldr`_](http://hackage.haskell.org/package/base/docs/Data-Foldable.html#v:foldr) and [_`foldl`_](http://hackage.haskell.org/package/base/docs/Data-Foldable.html#v:foldl)
+ [_`Foldable`_](http://hackage.haskell.org/package/base/docs/Data-Foldable.html#t:Foldable) type class
+ [_`Functor`_](http://hackage.haskell.org/package/base/docs/Prelude.html#t:Functor)
+ [_`Applicative`_](http://hackage.haskell.org/package/base/docs/Control-Applicative.html#t:Applicative)
+ [_`liftAN`_](http://hackage.haskell.org/package/base/docs/Control-Applicative.html#v:liftA) & Applicative style programming
+ [_`Alternative`_](http://hackage.haskell.org/package/base/docs/Control-Applicative.html#t:Alternative)
+ List comprehension syntax sugar
+ [_`Traversable`_](http://hackage.haskell.org/package/base/docs/Data-Traversable.html#t:Traversable) type class (and instances for [_`Maybe`_](http://hackage.haskell.org/package/base/docs/Prelude.html#t:Maybe), [_`List`_](http://hackage.haskell.org/package/mtl/docs/Control-Monad-List.html#t:ListT))
+ Automatic deriving
  * [_-XDeriveFunctor_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#deriving-functor-instances)
  * [_-XDeriveFoldable_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#deriving-foldable-instances)
  * [_-XDeriveTraversable_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#deriving-traversable-instances)
+ Phantom types
+ Type extensions:
  * [-XScopedTypeVariables](https://downloads.haskell.org/~ghc/5.00/docs/set/scoped-type-variables.html)
  * [-XTypeApplications](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#extension-TypeApplications)
  * [-XAllowAmbiguousTypes](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html?highlight=ambiguous#extension-AllowAmbiguousTypes)

#### Presentation: http://slides.com/fp-ctd/lecture-4#/

## <a name="lecture-5">Lecture 5: Monads</a> [↑](#course-plan)
+ Typed holes
+ What is Monad?
+ [_`Monad`_](http://hackage.haskell.org/package/base/docs/Prelude.html#t:Monad) type class
+ Monad laws
+ [_`State`_](http://hackage.haskell.org/package/mtl/docs/Control-Monad-State-Lazy.html#t:State) monad
+ [_`Reader`_](http://hackage.haskell.org/package/mtl/docs/Control-Monad-Reader.html#g:2) monad
+ [_`Maybe`_](http://hackage.haskell.org/package/base/docs/Prelude.html#t:Maybe) as example, philosophy about null-safety
+ [_`Either`_](http://hackage.haskell.org/package/base/docs/Data-Either.html#t:Either) monad instance
+ Monad laws

#### Presentation: http://slides.com/fp-ctd/lecture-5-2019#/

## <a name="lecture-5-continue">Slides: Parser combinators and Property-based-testing</a> [↑](#course-plan)
+ Idea of parsing and parser combinators
+ `Parser` type
  * Basic parsers
  * Instances: `Functor`, `Applicative`, `Monad`, `Alternative`
  * Usage examples
+ Testing
  * [`hspec`](http://hackage.haskell.org/package/hspec)
  * [`hedgehog`](http://hackage.haskell.org/package/hedgehog)
  * [`tasty`](http://hackage.haskell.org/package/tasty)
  * Continuations as callbacks
  * [_`Cont`_](http://hackage.haskell.org/package/mtl/docs/Control-Monad-Cont.html#t:Cont) datatype and monadic example

#### Presentation: http://slides.com/fp-ctd/lecture-55#/

## <a name="lecture-6">Lecture 6: RealWorld</a> [↑](#course-plan)
+ Building _IO_ system from scratch
+ Introduce [_`IO`_](http://hackage.haskell.org/package/base/docs/Prelude.html#t:IO) monad
+ **do** notation
  * Syntax sugar
  * [_-XApplicativeDo_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#applicative-do-notation)
  * [_-XRebindableSyntax_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#rebindable-syntax-and-the-implicit-prelude-import)
+ Lazy I/O
+ FFI
+ Mutable data: [_`IORef`_](https://hackage.haskell.org/package/base/docs/Data-IORef.html#t:IORef) and [_`IOArray`_](http://hackage.haskell.org/package/array/docs/Data-Array-IO.html#t:IOArray)
+ Exceptions ([_`catch`_](http://hackage.haskell.org/package/base/docs/Control-Exception-Base.html#v:catch), [_`throwIO`_](http://hackage.haskell.org/package/base/docs/Control-Exception-Base.html#v:throwIO), custom exceptions, [_`bracket`_](http://hackage.haskell.org/package/base/docs/Control-Exception.html#v:bracket), etc.)
+ [_`unsafePerformIO`_](http://hackage.haskell.org/package/base/docs/System-IO-Unsafe.html#v:unsafePerformIO) 
+ Efficient String representations: [_`Text`_](http://hackage.haskell.org/package/text/docs/Data-Text.html#t:Text), [_`ByteString`_](http://hackage.haskell.org/package/bytestring/docs/Data-ByteString.html#t:ByteString)

#### Presentation: http://slides.com/fp-ctd/lecture-6#/

## <a name="lecture-7">Lecture 7: Monad Transformers</a> [↑](#course-plan)
+ Monads as Effects
+ Composing monads
+ [_`MonadIO`_](https://hackage.haskell.org/package/base/docs/Control-Monad-IO-Class.html#t:MonadIO)
+ [_`MonadTrans`_](https://hackage.haskell.org/package/transformers/docs/Control-Monad-Trans-Class.html#t:MonadTrans) type class
+ [_`MaybeT`_](https://hackage.haskell.org/package/transformers/docs/Control-Monad-Trans-Maybe.html#t:MaybeT) transformer
+ [_`ReaderT`_](https://hackage.haskell.org/package/mtl/docs/Control-Monad-Reader.html#t:ReaderT) transformer
+ Comparison of transformers and old types
+ [_`MonadThrow`_](https://hackage.haskell.org/package/exceptions/docs/Control-Monad-Catch.html#t:MonadThrow) type class
+ [_`MonadError`_](https://hackage.haskell.org/package/mtl/docs/Control-Monad-Error.html#t:MonadError) type class
+ [`mtl`](https://hackage.haskell.org/package/mtl) style of transformation
[//]: # (Didn't find MaybeIO and CoroutineT)

#### Presentation: http://slides.com/fp-ctd/lecture-7#/

## <a name="lecture-8">Lecture 8: Speeding up Haskell</a> [↑](#course-plan)
+ List concatenation pitfalls and _Difference List_
+ [_`seq`_](https://hackage.haskell.org/package/base/docs/Prelude.html#v:seq), [_`deepseq`_](https://hackage.haskell.org/package/deepseq/docs/Control-DeepSeq.html#v:deepseq), [_`NFData`_](https://hackage.haskell.org/package/deepseq/docs/Control-DeepSeq.html#t:NFData)
+ [_-XBangPatterns_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#bang-patterns-informal)
+ [_`foldr`_](http://hackage.haskell.org/package/base/docs/Data-Foldable.html#v:foldr) vs. [_`foldl`_](http://hackage.haskell.org/package/base/docs/Data-Foldable.html#v:foldl) vs. [_`foldl'`_](https://hackage.haskell.org/package/base/docs/Data-List.html#v:foldl-39-)
+ Irrefutable patterns
+ Strict Haskell
+ Space leaks
+ Deforestation
+ Stream Fusion
+ Couple words about _Rewrite Rules_
+ [_`ST`_](https://hackage.haskell.org/package/base/docs/Control-Monad-ST.html#t:ST) monad ([_`STRef`_](https://hackage.haskell.org/package/base/docs/Data-STRef.html#t:STRef), [_`STArray`_](https://hackage.haskell.org/package/array/docs/Data-Array-ST.html#t:STArray))

#### Presentation: http://slides.com/fp-ctd/lecture-10#/

## <a name="lecture-9">Lecture 9: Parallel and Concurrent Haskell</a> [↑](#course-plan)
+ Concurrency with Haskell lightweight threads. [_`forkIO`_](https://hackage.haskell.org/package/base/docs/Control-Concurrent.html#v:forkIO) and [_`MVar`_](https://hackage.haskell.org/package/base/docs/Control-Concurrent-MVar.html#t:MVar).
+ Synchronization between threads
+ Exceptions revisited
+ [`Async`](https://hackage.haskell.org/package/async)
+ STM (Software Transaction Memory). [_`STM`_](https://hackage.haskell.org/package/base/docs/GHC-Conc.html#t:STM), [_`TVar`_](https://hackage.haskell.org/package/base/docs/GHC-Conc.html#t:TVar).
+ Parallelism with Sparks. [Eval monad](https://hackage.haskell.org/package/parallel/docs/Control-Parallel-Strategies.html#v:rpar)
+ Inspecting your concurrency (ThreadScope)

#### Presentation: https://slides.com/fp-ctd/lecture-09#/

## <a name="lecture-10">Lecture 10: Template Haskell and Lens</a> [↑](#course-plan)
+ Lens
  * Implementing naive data lenses
  * Introducing real Lens'
  * lens, view, set, over definition and explanation
  * 3-step lens guide
  * [`microlens`](http://hackage.haskell.org/package/microlens)-family
  * Nice example with real lens ([_`view`_](https://hackage.haskell.org/package/lens/docs/Control-Lens-Getter.html#v:view), [_`traversed`_](https://hackage.haskell.org/package/lens/docs/Control-Lens-Traversal.html#v:traversed), [_`filtered`_](https://hackage.haskell.org/package/lens/docs/Control-Lens-Fold.html#v:filtered), [_`zoom`_](https://hackage.haskell.org/package/lens/docs/Control-Lens-Zoom.html#v:zoom))
  * [_`Prism`_](https://hackage.haskell.org/package/lens/docs/Control-Lens-Prism.html#t:Prism)
  * Affine traversals
+ **`-XCPP`**
+ Template Haskell

#### Presentation: https://slides.com/fp-ctd/lecture-10-17#/

## <a name="lecture-11">Lecture 11: Brand new DSL world</a> [↑](#course-plan)

+ GADTs
+ Existential type
+ Rank N types
+ DSL

#### Presentation: https://slides.com/fp-ctd/lecture-11#/

## <a name="lecture-12">Lecture 12: Some fun with kinds </a> [↑](#course-plan)

+ Kinds
+ -XTypeOperators
+ -XDataKinds. Data promotion
+ Heterogeneous lists
+ Type symbols
+ Data and type families
+ Free monads

#### Presentation: https://slides.com/fp-ctd/lecture-12#/

## <a name="lecture-13">Lecture 13: Comonads</a> [↑](#course-plan)
+ [_`Comonad`_](https://hackage.haskell.org/package/comonad/docs/Control-Comonad.html#t:Comonad) type class & motivation
  * [_`Identity`_](https://hackage.haskell.org/package/base/docs/Data-Functor-Identity.html#t:Identity) comonad
+ Zippers
  * List zipper
  * Game of Life
+ Comonads as OOP patterns
  * [_`Env`_](https://hackage.haskell.org/package/comonad/docs/Control-Comonad-Trans-Env.html#t:Env)
  * [_`Traced`_](https://hackage.haskell.org/package/comonad/docs/Control-Comonad-Traced.html#t:Traced)
+ [**`codo`**`-notation`](https://hackage.haskell.org/package/codo-notation) (aka *method*)

#### Presentation:  https://slides.com/artemyurchenko/lecture-13-comonads#/

<!---

## <a name="lecture-16">Lecture 16: Idris</a> [↑](#course-plan)

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
-->

Uncovered topics [↑](#course-plan)
----------------
> Unfortunately there're some topics which are great but there is no time for them in this course :(

+ [_`Generics`_](https://hackage.haskell.org/package/base/docs/GHC-Generics.html)
+ Pragmas: [_{-# UNPACK #-}_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#unpack-pragma), [_{-# INLINE #-}_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#inline-pragma), [_{-# SPECIALIZE -#}_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#specialize-pragma), [_{-# RULES #-}_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#rules-pragma) etc.
+ GHC compilation process, GHC internals & Core language
+ [`LiquidHaskell`](https://hackage.haskell.org/package/liquidhaskell)
+ [_-XArrows_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#arrow-notation) and [_`Arrow`_](http://hackage.haskell.org/package/base/docs/Control-Arrow.html#t:Arrow)
+ [`PureScript`](http://www.purescript.org/)
+ [`Agda`](http://wiki.portal.chalmers.se/agda/pmwiki.php)
+ Even more advanced monads: Indexed, Effect & Super- monads
+ [Zygohistomorphic prepromorphisms](https://wiki.haskell.org/Zygohistomorphic_prepromorphisms)
