fibLouis :: Int -> Int
fibLouis 0 = 1
fibLouis 1 = 1
fibLouis n = fibLouis (n - 1) + fibLouis (n - 2)

fibEva :: Int -> Int
fibEva n = fst (aux n)
 where aux 0 = (0, 1)
       aux n = next (aux (n-1))
       next (a, b) = (b, a + b)