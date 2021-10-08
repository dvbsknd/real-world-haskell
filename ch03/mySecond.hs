mySecond :: [a] -> a
mySecond xs = if null (tail xs)
              then error "List is too short"
              else head (tail xs)
