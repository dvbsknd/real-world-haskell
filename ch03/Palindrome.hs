palindrome :: [a] -> [a]
palindrome [] = []
palindrome xs = xs ++ (reverse xs)

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome [] = True
isPalindrome xs = deepEqual xs (reverse xs)
    where deepEqual [] [] = True
          deepEqual (x:xs) (y:ys)
            | x == y = True && deepEqual xs ys
            | otherwise = False

-- deepEqual is redundant because (==) will compare
-- all items in a list already
isPalindrome' :: (Eq a) => [a] -> Bool
isPalindrome' [] = True
isPalindrome' xs = xs == reverse xs
