data List a = Cons a (List a)
            | Nil
              deriving (Show)

fromList :: [a] -> List a
fromList (x:xs) = Cons x (fromList xs)
fromList []     = Nil

toList :: List a -> [a]
toList Nil = []
toList (Cons x y) = x : (toList y)
