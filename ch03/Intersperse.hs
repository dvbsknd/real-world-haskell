-- ["foo", "bar", "baz"] -> "foo,bar,baz"
joinList :: a -> [[a]] -> [a]
joinList _ [] = []
joinList c (x:xs)
    | null xs = x
    | length xs == 1 = x ++ [c] ++ (head xs)
    | otherwise = x ++ [c] ++ joinList c xs
