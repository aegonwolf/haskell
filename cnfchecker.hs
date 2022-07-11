data Literal a = Prop a | NotProp a deriving (Eq, Show)

type Clause a = [Literal a]
type CNF a = [Clause a]

var :: Literal a -> a 
var (Prop a) = a 
var (NotProp a) = a

neg :: Literal a -> Literal a 
neg (Prop a) = (NotProp a)
neg (NotProp a) = (Prop a)

taut :: Eq a => Clause a -> Bool
taut [] = False
taut (x:[]) = False
taut a = null [x | x <- a, x `elem` negated]
 where negated = map neg a

complVar :: Eq a => Clause a -> Clause a -> [a]
complVar ys xs = [var x | x <- combined, x `elem` (map neg combined)]
 where combined = xs ++ ys