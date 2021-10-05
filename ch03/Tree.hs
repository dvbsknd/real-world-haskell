data Tree a = Node a (Tree a) (Tree a) | Empty deriving (Show)

simpleTree :: Tree [Char]
simpleTree = Node "parent" (Node "left child" Empty Empty)
                           (Node "right child" Empty Empty)

data MaybeTree a = MaybeNode a (Maybe (MaybeTree a)) (Maybe (MaybeTree a)) deriving (Show)

maybeTree :: MaybeTree [Char]
maybeTree = MaybeNode "parent"
                (Just (MaybeNode "left child" Nothing Nothing))
                (Just (MaybeNode "right child" Nothing Nothing))
