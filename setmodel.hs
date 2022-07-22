-- Set is a binary search tree Elem x lt rt where all elems in lt < x and rt > x
data Set h = Empty | Elem h (Set h) (Set h)
             deriving(Eq, Ord, Show)

--first case empty tree
--second case single root
-- third case tree with branches
add :: Ord h => Set h -> h -> Set h
add (Empty) y = (Elem y Empty Empty)
add (Elem x lt rt) y
 | y < x = (Elem x nlt rt)
 | y > x = (Elem x lt nrt)
 | otherwise = (Elem x lt rt)
 where nlt = add lt y
       nrt = add rt y

query :: Ord h => Set h -> h -> Bool
query Empty y = False
query (Elem x lt rt) y
 | x == y = True
 | y < x = query lt y 
 | otherwise = query rt y 


data BloomFilter v h = BloomFilter [v->h] (Set h)

showBloom (BloomFilter foolist h) = foolist

insert :: Ord h => BloomFilter v h -> v -> BloomFilter v h 
insert (BloomFilter v h) value = BloomFilter v (foldl add h (map(\f -> f value) v))