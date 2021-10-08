data Tree a = Node a (Tree a) (Tree a) | Empty deriving (Show)

simpleTree :: Tree [Char]
simpleTree = Node "parent" (Node "left child" Empty Empty)
                           (Node "right child" Empty Empty)

doubleTree :: Tree [Char]
doubleTree = Node "grandparent" simpleTree simpleTree

treeHeight :: Tree a -> Int
treeHeight Empty = 0
treeHeight (Node _ Empty Empty) = 1
treeHeight (Node _ l r) = 1 + biggerOf lht rht
    where biggerOf x y
            | x >= y = x
            | otherwise = y
          lht = treeHeight l
          rht = treeHeight r

treeHeight' :: Tree a -> Int
treeHeight' Empty = 0
treeHeight' (Node _ l r) = 1 + max (treeHeight' l) (treeHeight' r)
