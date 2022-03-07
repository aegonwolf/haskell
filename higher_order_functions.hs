pass3 f = f 3

add1 x = x + 1

--try pass3 add1

-- take 3 functions as arguments, pass function g and x to f
compose f g x = f (g x)

mult2 x = 2 * x

--try compose add1 mult2 4 should output 9

--functions as values

--takes any input and always outputs seven
always7 = const 7

--map applys functions to every element in a list
double = map (2*)
plus1 = map (1+)

--make a list of 7s
always7list = map always7

--removeOdd with partial application and filters
isEven x = x `mod` 2 == 0
removeOdd = filter isEven --partial application of filter
--pass any list of integers to removeOdd and returns a list with only even

--combine map and filter
--map snd (filter fst [(True, 1), (False, 7), (True 11)])

-- Function composition with (.)
stringLength = length . show

-- if List empty returns False if List is not empty return True
notNull = not . null