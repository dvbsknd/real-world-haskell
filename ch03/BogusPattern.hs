data Fruit = Apple | Orange deriving (Show)

apple = "apple"
orange = "orange"

whichFruit :: String -> Fruit
whichFruit f = case f of
               apple -> Apple
               orange -> Orange

equational apple  = Apple
equational orange = Orange

betterFruit :: String -> Fruit
betterFruit f = case f of
               "apple" -> Apple
               "orange" -> Orange
