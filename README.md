Haskell ITMO course at CTD
==========================

> Here you can find plan and presentations on the Haskell course authored by
> [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub") and
> [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub").

> This course is always under development and always improving constantly because there's
> no limit for the best Haskell course.

## Course plan

All slides: https://slides.com/fp-ctd

+ [Lecture 0: Why FP and Haskell](https://github.com/jagajaga/FP-Course-ITMO#lecture-1-why-fp-and-haskell-by-arseniy-seroka-)
+ [Lecture 2: Basic Syntax](https://github.com/jagajaga/FP-Course-ITMO#lecture-2-basic-syntax-by-dmitry-kovanikov-)
+ [Lecture 3: Datas, Classes, Instances](https://github.com/jagajaga/FP-Course-ITMO#lecture-3-datas-classes-instances-by-dmitry-kovanikov-)
+ [Lecture 4: Kinda monoidal types](https://github.com/jagajaga/FP-Course-ITMO#lecture-4-kinda-monoidal-types-by-dmitry-kovanikov-)
+ [Lecture 5: Monads, part 1](https://github.com/jagajaga/FP-Course-ITMO#lecture-5-monads-part-1-by-dmitry-kovanikov-)
+ [Lecture 6: Functors, Applicative Functors](https://github.com/jagajaga/FP-Course-ITMO#lecture-6-functors-applicative-functors-by-arseniy-seroka-)
+ [Lecture 6.5: Parser combinators and Property-based-testing](https://github.com/jagajaga/FP-Course-ITMO#lecture-65-parser-combinators-and-property-based-testing-by-dmitry-kovanikov-)
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
+ [_Uncovered topics_](https://github.com/jagajaga/FP-Course-ITMO#uncovered-topics-)

Templates for homework: https://github.com/ChShersh/fp-homework-templates

## Lecture 0: Why FP and Haskell (by [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#course-plan)
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

## Lecture 1. Stack. How to build/run/test
* GHC, GHCi
* Haskell project structure
* Stack. Features
* How stack works. Snapshots
* `.cabal` and `.yaml` files
* Basic comands

## Lecture 2: Basic Syntax (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#course-plan)
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

## Lecture 3: Datas, Classes, Instances (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#course-plan)
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
+ **`-ddump-deriv`**
+ [_-XGeneralizedNewtypeDeriving_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#generalised-derived-instances-for-newtypes)
+ [Modules cheatsheet](http://slides.com/fp-ctd/lecture-3#/39)
+ Church-encoding ADT
+ Type classes as Dictionaries
+ [_`coerce`_](https://hackage.haskell.org/package/base/docs/Data-Coerce.html#v:coerce)

#### Presentation: http://slides.com/fp-ctd/lecture-3#/

## Lecture 4: Kinda monoidal types (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#course-plan)
+ Phantom types
+ **forall** keyword
  * [_-XExplicitForall_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#explicit-universal-quantification-forall)
  * [_-XExistentialQuantification_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#existentially-quantified-data-constructors)
  * [_-XRank2Types_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#arbitrary-rank-polymorphism)
  * [_-XRankNTypes_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#arbitrary-rank-polymorphism)
+ _kinds_
  * Basic kinds
  * Kind polymorphism ([TypeInType](http://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#kind-polymorphism-and-type-in-type))
  * [Constraint kind](http://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#the-constraint-kind)
+ Higher kinded types
+ Math in programming
  * [_`Semigroup`_](http://hackage.haskell.org/package/base/docs/Data-Semigroup.html#t:Semigroup) and [_`Monoid`_](http://hackage.haskell.org/package/base/docs/Data-Monoid.html#t:Monoid)
  * A lot of examples
  * [Finger Tree](http://staff.city.ac.uk/~ross/papers/FingerTree.html)
+ [_`foldr`_](http://hackage.haskell.org/package/base/docs/Data-Foldable.html#v:foldr) and [_`foldl`_](http://hackage.haskell.org/package/base/docs/Data-Foldable.html#v:foldl)
+ [_`Foldable`_](http://hackage.haskell.org/package/base/docs/Data-Foldable.html#t:Foldable) type class

#### Presentation: http://slides.com/fp-ctd/lecture-4#/

## Lecture 5: Monads, part 1 (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#course-plan)
+ Talk about boxes
+ What is Monad?
+ [_`Monad`_](http://hackage.haskell.org/package/base/docs/Prelude.html#t:Monad) type class
+ Monad laws
+ [_`Maybe`_](http://hackage.haskell.org/package/base/docs/Prelude.html#t:Maybe) as example, philosophy about null-safety
+ Equational reasoning
+ Proving Monad laws for Maybe
+ [_`Identity`_](http://hackage.haskell.org/package/base/docs/Data-Functor-Identity.html#t:Identity) monad instance
+ [_`Either`_](http://hackage.haskell.org/package/base/docs/Data-Either.html#t:Either) monad instance
+ Monad composition
+ [_`List`_](http://hackage.haskell.org/package/mtl/docs/Control-Monad-List.html#t:ListT) monad instance
+ then : [_`>>`_](http://hackage.haskell.org/package/base/docs/Prelude.html#v:-62--62-)
+ List monad nondeterminism
+ [_`join`_](http://hackage.haskell.org/package/base/docs/Control-Monad.html#v:join)
+ Weird custom monads
+ Useful Monad functions

#### Presentation: http://slides.com/fp-ctd/lecture-5#/

## Lecture 6: Functors, Applicative Functors (by [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#course-plan)
+ [_`Functor`_](http://hackage.haskell.org/package/base/docs/Prelude.html#t:Functor)
+ [_`Bifunctor`_](http://hackage.haskell.org/package/base/docs/Data-Bifunctor.html#t:Bifunctor)
+ [_`Applicative`_](http://hackage.haskell.org/package/base/docs/Control-Applicative.html#t:Applicative)
  * [_`ZipList`_](http://hackage.haskell.org/package/base/docs/Control-Applicative.html#t:ZipList)
+ [_`liftAN`_](http://hackage.haskell.org/package/base/docs/Control-Applicative.html#v:liftA) & Applicative style programming
+ [_`Alternative`_](http://hackage.haskell.org/package/base/docs/Control-Applicative.html#t:Alternative)
+ List comprehension syntax sugar
+ [_`Traversable`_](http://hackage.haskell.org/package/base/docs/Data-Traversable.html#t:Traversable) type class (and instances for [_`Maybe`_](http://hackage.haskell.org/package/base/docs/Prelude.html#t:Maybe), [_`List`_](http://hackage.haskell.org/package/mtl/docs/Control-Monad-List.html#t:ListT))
+ Automatic deriving
  * [_-XDeriveFunctor_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#deriving-functor-instances)
  * [_-XDeriveFoldable_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#deriving-foldable-instances)
  * [_-XDeriveTraversable_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#deriving-traversable-instances)
+ Type hierarchy proposals
  * [AMP](https://ghc.haskell.org/trac/ghc/ticket/8004) (Applicative/Monad proposal)
  * [FTP](https://ghc.haskell.org/trac/ghc/wiki/Prelude710/FTP) (Foldable/Traversable proposal)
  * [MRP](https://ghc.haskell.org/trac/ghc/wiki/Proposal/MonadOfNoReturn) (Monad of no return/>> proposal)
  * [MFP](https://prime.haskell.org/wiki/Libraries/Proposals/MonadFail) (MonadFail proposal)
+ Type classes hierarchy

#### Presentation: http://slides.com/fp-ctd/lecture-6#/

## Lecture 6.5: Parser combinators and Property-based-testing (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#course-plan)
+ Idea of parsing and parser combinators
+ `Parser` type
  * Basic parsers
  * Instances: `Functor`, `Applicative`, `Monad`, `Alternative`
  * Usage examples
+ Testing
  * [`hspec`](http://hackage.haskell.org/package/hspec)
  * [`hedgehog`](http://hackage.haskell.org/package/hedgehog)
  * [`tasty`](http://hackage.haskell.org/package/tasty)

#### Presentation: http://slides.com/fp-ctd/lecture-65#/

## Lecture 7: Monads, part 2 (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#course-plan)
+ [_`Writer`_](http://hackage.haskell.org/package/mtl/docs/Control-Monad-Writer-Lazy.html#g:2) monad
+ [_`Reader`_](http://hackage.haskell.org/package/mtl/docs/Control-Monad-Reader.html#g:2) monad
+ Typed holes
+ Partial type signatures
+ [_`State`_](http://hackage.haskell.org/package/mtl/docs/Control-Monad-State-Lazy.html#t:State) monad
+ [_`Cont`_](http://hackage.haskell.org/package/mtl/docs/Control-Monad-Cont.html#t:Cont) monad and Continuation Passing Style (CPS)
  * Continuations as callbacks
  * [_`Cont`_](http://hackage.haskell.org/package/mtl/docs/Control-Monad-Cont.html#t:Cont) datatype and monadic example
  * [_`MonadCont`_](http://hackage.haskell.org/package/mtl/docs/Control-Monad-Cont.html#t:MonadCont) and [_`callCC`_](http://hackage.haskell.org/package/mtl/docs/Control-Monad-Cont-Class.html#v:callCC)

#### Presentation: http://slides.com/fp-ctd/lecture-7#/

## Lecture 8: RealWorld (by [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#course-plan)
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
+ [_`unsafePerformIO`_](http://hackage.haskell.org/package/base/docs/System-IO-Unsafe.html#v:unsafePerformIO) and [_`unsafeInterleaveIO`_](http://hackage.haskell.org/package/base/docs/System-IO-Unsafe.html#v:unsafeInterleaveIO)
+ Efficient String representations: [_`Text`_](http://hackage.haskell.org/package/text/docs/Data-Text.html#t:Text), [_`ByteString`_](http://hackage.haskell.org/package/bytestring/docs/Data-ByteString.html#t:ByteString)

#### Presentation 8: http://slides.com/fp-ctd/lecture-8#/

## Lecture 9: Monad Transformers (by [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#course-plan)
+ Monads as Effects
+ Composing monads
+ [_`Compose`_](https://hackage.haskell.org/package/base/docs/Data-Functor-Compose.html#t:Compose) data type
+ [_`MaybeIO`_](https://wiki.haskell.org/Monad_Transformers_Tutorial) example
+ [_`MonadTrans`_](https://hackage.haskell.org/package/transformers/docs/Control-Monad-Trans-Class.html#t:MonadTrans) type class
+ [_`MaybeT`_](https://hackage.haskell.org/package/transformers/docs/Control-Monad-Trans-Maybe.html#t:MaybeT) transformer
+ [_`ReaderT`_](https://hackage.haskell.org/package/mtl/docs/Control-Monad-Reader.html#t:ReaderT) transformer
+ Comparison of transformers and old types
+ [_`ListT`_](https://hackage.haskell.org/package/mtl/docs/Control-Monad-List.html#t:ListT) transformer
+ [_`MonadIO`_](https://hackage.haskell.org/package/base/docs/Control-Monad-IO-Class.html#t:MonadIO) (why IO is so special?)
+ [_`MonadThrow`_](https://hackage.haskell.org/package/exceptions/docs/Control-Monad-Catch.html#t:MonadThrow) type class
+ [_`MonadError`_](https://hackage.haskell.org/package/mtl/docs/Control-Monad-Error.html#t:MonadError) type class
+ [`mtl`](https://hackage.haskell.org/package/mtl) style of transformation
+ [_`CoroutineT`_](https://en.wikibooks.org/wiki/Haskell/Continuation_passing_style#Example:_coroutines) fun example
+ To Extensible effects and beyond
[//]: # (Didn't find MaybeIO and CoroutineT)

#### Presentation: http://slides.com/fp-ctd/lecture-9#/

## Lecture 10: Speeding up haskell (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#course-plan)
+ List concatenation pitfalls and _Difference List_
+ Lazy evaluation order, WHNF, NF
+ Pattern matching as evaluation
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
+ [_`Criterion`_](https://hackage.haskell.org/package/criterion/docs/Criterion.html)
+ [`loop`](https://hackage.haskell.org/package/loop) package
+ [`ilist`](https://hackage.haskell.org/package/ilist) package
+ [`vector`](https://hackage.haskell.org/package/vector) package

#### Presentation: http://slides.com/fp-ctd/lecture-10#/

## Lecture 11: Template Haskell and Lens (by [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#course-plan)
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
  * Boilerplating tuple code
  * Haskell AST
  * Splices
+ [_-XQuasiQuotes_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#template-haskell-quasi-quotation)
+ Generate instances with [`TH`](https://hackage.haskell.org/package/template-haskell)

#### Presentation: http://slides.com/fp-ctd/lecture-11#/

## Lecture 12: Parallel and Concurrent Haskell (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#course-plan)
+ Advantages of immutability and purity
+ Haskell parallelism with [_`rpar`_](https://hackage.haskell.org/package/parallel/docs/Control-Parallel-Strategies.html#v:rpar) and [_`rseq`_](https://hackage.haskell.org/package/parallel/docs/Control-Parallel-Strategies.html#v:rseq)
+ Spark pool, GC and sparks
+ Threadscope
+ Strategies
+ [_`Par`_](https://hackage.haskell.org/package/monad-par/docs/Control-Monad-Par.html#t:Par) monad examples
+ Difference between _Parallelism_ and _Concurrency_
+ [_`forkIO`_](https://hackage.haskell.org/package/base/docs/Control-Concurrent.html#v:forkIO) and [_`MVar`_](https://hackage.haskell.org/package/base/docs/Control-Concurrent-MVar.html#t:MVar)
+ Transactions: [_`STM`_](https://hackage.haskell.org/package/base/docs/GHC-Conc.html#t:STM), [_`TVar`_](https://hackage.haskell.org/package/base/docs/GHC-Conc.html#t:TVar)
+ [`Async`](https://hackage.haskell.org/package/async)

#### Presentation: http://slides.com/fp-ctd/lecture-12#/

## Lecture 13: Comonads (by [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#course-plan)
+ [_`Comonad`_](https://hackage.haskell.org/package/comonad/docs/Control-Comonad.html#t:Comonad) type class & motivation
  * [_`Identity`_](https://hackage.haskell.org/package/base/docs/Data-Functor-Identity.html#t:Identity) comonad
+ Zippers
  * List zipper
  * Game of Life
+ _Indexed array_ comonad for image processing
+ Comonadic 2D-parser
+ Type algebra
  * Types as functions (sum, product, type variables)
  * Type isomorphisms
  * Zippers as deriviation: List zipper, Tree zipper
+ Comonads as OOP patterns
  * [_`Env`_](https://hackage.haskell.org/package/comonad/docs/Control-Comonad-Trans-Env.html#t:Env)
  * [_`Traced`_](https://hackage.haskell.org/package/comonad/docs/Control-Comonad-Traced.html#t:Traced)
  * Stream (+ NonEmpty)
  * [_`Store`_](https://hackage.haskell.org/package/comonad/docs/Control-Comonad-Store.html#t:Store)
+ [**`codo`**`-notation`](https://hackage.haskell.org/package/codo-notation) (aka *method*)
+ Comonad transformers

#### Presentation: http://slides.com/fp-ctd/lecture-13#/

## Lecture 14: Enterprise Haskell (by [Arseniy Seroka](https://github.com/jagajaga "jagajaga's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#course-plan)
+ Build tools
  * Cabal
  * Stack
  * Nix
+ Testing: HSpec, QuickCheck
+ FFI
+ GUI: [`gtk`](https://hackage.haskell.org/package/gtk) (online demo)
+ Databases
  * SQL
  * [`acid-state`](https://hackage.haskell.org/package/acid-state)
+ [_`Network.HTTP`_](https://hackage.haskell.org/package/HTTP/docs/Network-HTTP.html)
+ [_`Web.Scotty`_](https://hackage.haskell.org/package/scotty/docs/Web-Scotty.html)

#### Presentation: http://slides.com/fp-ctd/lecture-14#/

## Lecture 15: Advanced type features (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#course-plan)
+ Examples for all
  * ShowBox
  * ST
  * Type constraints
  * Pattern matching on types
+ [_GADTs_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#generalised-algebraic-data-types-gadts): type variables, pattern matching, type refinement
  * Type safe arithmetic expressions
  * Parsing to GADT
+ [_-XDataKinds_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#datatype-promotion)
  * [_`Naturals`_](https://hackage.haskell.org/package/base/docs/Numeric-Natural.html#t:Natural)
  * [`HList`](https://hackage.haskell.org/package/HList)
  * Type level Symbols
  * Vectors with length in type
+ Extensible records
+ [_-XTypeApplications_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#visible-type-application)
+ [_-XTypeOperators_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#type-operators)


#### Presentation: http://slides.com/fp-ctd/lecture-15#/

## Lecture 16: Idris (by [Dmitry Kovanikov](https://github.com/ChShersh "ChShersh's GitHub")) [↑](https://github.com/jagajaga/FP-Course-ITMO#course-plan)

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

Uncovered topics [↑](https://github.com/jagajaga/FP-Course-ITMO#course-plan)
----------------
> Unfortunately there're some topics which are great but there is no time for them in this course :(

+ [_-XTypeFamilies_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#type-families)
+ [_`Generics`_](https://hackage.haskell.org/package/base/docs/GHC-Generics.html)
+ Pragmas: [_{-# UNPACK #-}_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#unpack-pragma), [_{-# INLINE #-}_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#inline-pragma), [_{-# SPECIALIZE -#}_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#specialize-pragma), [_{-# RULES #-}_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#rules-pragma) etc.
+ GHC compilation process, GHC internals & Core language
+ [`LiquidHaskell`](https://hackage.haskell.org/package/liquidhaskell)
+ [_-XArrows_](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/glasgow_exts.html#arrow-notation) and [_`Arrow`_](http://hackage.haskell.org/package/base/docs/Control-Arrow.html#t:Arrow)
+ [`PureScript`](http://www.purescript.org/)
+ [`Agda`](http://wiki.portal.chalmers.se/agda/pmwiki.php)
+ Even more advanced monads: Indexed, Effect & Super- monads
+ [Zygohistomorphic prepromorphisms](https://wiki.haskell.org/Zygohistomorphic_prepromorphisms)
