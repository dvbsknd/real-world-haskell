meanList :: (Fractional a) => [a] -> a
meanList [] = 0
meanList xs = (sum xs) / fromIntegral (length xs)
