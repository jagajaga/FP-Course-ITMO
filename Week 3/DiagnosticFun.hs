module DiagnosticFun where

type Range = (Int, Int)

data Diagnostic t = D Range String

instance Show (Diagnostic t) where
  show (D r s) = "Range: " ++ show r ++ ", Message: " ++ s

data Warning
data Error

warningT = undefined :: Warning
errorT   = undefined :: Error

createDiagnostic :: t -> Range -> String -> Diagnostic t
createDiagnostic _ r s = D r s

d1 = createDiagnostic warningT (1, 2) "This is warning"
d2 = D (3, 4) "This is error" :: Diagnostic Error

overlaps :: Diagnostic t -> Diagnostic t -> Bool
overlaps (D (a, b) _) (D (c, d) _) = let l = max a c
                                         r = min b d
                                     in l <= r
