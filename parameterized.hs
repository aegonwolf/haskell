-- maybe is not a type but if you supply a type "a" it will produce a type
data Mymaybe a = MyJust a | MyNothing

--x :: Maybe Int
--x = Nothing

fromMaybe :: a -> Maybe a -> a
fromMaybe defaultVal Nothing = defaultVal
fromMaybe _ (Just x) = x
