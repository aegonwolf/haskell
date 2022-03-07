square x = x * x
-- multiplies the largest of a and b by x
multMax a b x = (max a b) * x
--simple conditional function
posOrNeg x =
 if x >= 0
  then "Positive"
  else "Negative"

--Recursion
-- 2 to the power of n
pow2 n = 
 if n == 0
  then 1
  else 2 * (pow2 (n - 1))

-- repeat a string n times
repeatString str n = 
 if n == 0
   then ""
   else str ++ (repeatString str (n-1))

l = [1,2,3]
empty = []
--prepend ":" does not modify l, creates a new list
y = 0: l -- [0, 1, 2, 3]

x' = 1 : (2 : (3 : []))
x'' = 1 : 2 : 3 : []

concatenated = x' ++ x'' -- [1,2,3, 1, 2, 3]

middle_element = head (tail l) -- [2] 2nd element

--recursively double every number in a list
double nums = 
 if null nums
  then []
  else (2 * (head nums)) : (double (tail nums))

-- Pattern Matching

isEmpty [] = "empty"
isEmpty (x : xs) = "not empty"

-- Guards
removeOdd [] = []
removeOdd (x: xs)
 | mod x 2 == 0 = x : (removeOdd xs)
 | otherwise = removeOdd xs

 -- case expressions
 double casenums = case nums of
  [] -> []
  x( : xs) -> (2 * x) : (double xs)

  --let binding
fancySeven = 
  let a = 3
  in 2 * a + 1

fancyNine = 
  let x = 5
      y = 4
  in x + y

fancySeven_where = 2 * a + 1
 where a = 3