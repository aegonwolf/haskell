f (start:rest) x = (start + x):(start:rest)

psum xs = reverse (foldl f (0:[]) xs)

data T a = T1 | T2 (T a) String (T a) Int | T3 (T a) (T a) (T a)


foldT foldT1 foldT2 foldT3 t = go t
 where go T1 = foldT1
       go (T2 t1 s t2 i)= foldT2 (go t1) s (go t2) i
       go (T3 t1 t2 t3) = foldT3 (go t1)(go t2)(go t3)
 
 
g x acc 
 | x == '#' = [acc]
 | otherwise = [acc]

splitlist :: [Char] -> [String] -> [Char] -> Char -> [String]
splitlist string list word sep
 | string == "" = word:"":list
 | head string == sep = splitlist (tail string) (word:list) "" sep
 | otherwise = splitlist (tail string) list (word ++ [head string]) sep