-- head takes a list with elements of type a and returns something of type a
head :: [a] -> a
head (x:xs) = x -- returns first element in list

-- repeated type variables always mean same type
-- return head of different type, doesn't work!
badHead :: [a] -> b
badHead (x:xs) = x --makes no sense for x to be different type because haskell lists are same type

--empty_list is a list of any type
empty_list :: [a]
empty_list = []

--type inference will figure out what type a list should be
list_double = 3.3 : empty_list
list_char = 'a' : empty_list

--takes a list of any type and returns an Int
length :: [a] -> Int
length [] = 0
length (x:xs) = 1 + length xs 

-- this doesn't work because some stuff you can't add (strings?)
badSum :: [a] -> a
badSum [] = 0
badSum (x : xs) = x + sum xs

-- sum is a function which for any numeric type a takes a value of type a and returns type a
sum :: Num a => [a] -> a
sum [] = 0
sum (x : xs) = x + sum xs

-- to_string constrained typedef
show :: Show a => a -> [Char]

-- can have more than one constraint use ()
-- require a to be in the num typeclass and in the show typeclass
showSum :: (Num a, Show a) => [a] -> [Char]
showSum xs = show (sum xs)