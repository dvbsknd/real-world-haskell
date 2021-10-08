import Data.List (sortBy)
sortMetaList :: [[a]] -> [[a]]
sortMetaList = sortBy (\a b -> compare (length a) (length b))
