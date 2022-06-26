maximum' :: (Ord a) => [a] -> a  
maximum' [] = error "maximum of empty list"  
maximum' [x] = x  
maximum' (x:xs)   
 | x > maxTail = x  
 | otherwise = maxTail  
 where maxTail = maximum' xs  

--take' :: (Num i, Ord i) => i -> [a] -> [a]  
--take' n _
-- | n <= 0 = []
-- | take' n [] = []
-- | take' n (x:xs) = x : take' (n-1) xs

--     take' :: (Num i, Ord i) => i -> [a] -> [a]  
--    take' n _  
--        | n <= 0   = []  
--    take' _ []     = []  
--    take' n (x:xs) = x : take' (n-1) xs  

quicksort :: (Ord a) => [a] -> [a]  
quicksort [] = []  
quicksort (x:xs) =   
    let smallerSorted = quicksort [a | a <- xs, a <= x]  --part of the list that is smaller than head
        biggerSorted = quicksort [a | a <- xs, a > x]  -- part of the list that is larger than head
    in  smallerSorted ++ [x] ++ biggerSorted  

quicksortf :: (Ord a) => [a] -> [a]    
quicksortf [] = []    
quicksortf (x:xs) =     
    let smallerSorted = quicksortf (filter (<=x) xs)  
        biggerSorted = quicksortf (filter (>x) xs)   
    in  smallerSorted ++ [x] ++ biggerSorted 


-- find the largest number under 100,000 that's divisible by 3829
largestDivisible :: (Integral a) => a
largestDivisible = head [x | x <- [100000, 99999..], x `mod` 3829 == 0]


largestDivisiblef :: (Integral a) => a  
largestDivisiblef = head (filter p [100000,99999..])  
    where p x = x `mod` 3829 == 0  