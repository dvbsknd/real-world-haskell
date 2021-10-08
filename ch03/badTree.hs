data Tree a = Node a (Tree a) (Tree a) | Empty deriving (Show)

simpleTree :: Tree [Char]
simpleTree = Node "parent" (Node "left child" Empty Empty)
                           (Node "right child" Empty Empty)

nodesAreSame :: (Eq a) => Tree a -> Tree a -> Bool
nodesAreSame (Node a _ _) (Node b _ _)
    | a == b = True
    | otherwise = False
