 data RGB = RGB Int Int Int
--RGB is not in the Eq type classs so elem won't work on it
--need to create an instance of RGB in Eq timeclass

elem :: Eq a => a -> [a] -> Bool
--need above type class constraint
--haskell has no def of ==
elem _ [] = False
elem x (y: ys)
 | x == y = True
 | otherwise = elem x ys

 instance Eq RGB where -- Left RGB equals right RGB
 	(RGB r1 g1 b1) == (RGB r2 g2 b2) = 		--if ...
 		(r1 == r2) && (g1 == g2) && (b1 == b2)

colors = [RGB 255 0 0, RGB 0 255 0, RGB 0 0 255]
green = RGB 0 255 0
greenInColors = elem green colors

 data RGB = RGB Int Int Int
  deriving Eq --derive instance automatically
  --deriving only works on Eq, Ord, Show, Read

 class Eq' a where 
 	(==) :: a -> a -> Bool --equal
 	(/=) :: a -> a -> Bool --not equal