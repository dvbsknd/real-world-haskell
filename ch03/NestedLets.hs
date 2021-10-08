foo = let a = 1
      in let b = 2
         in a + b

bar = let x = 1
      in ((let x = "foo" in x), x)

-- Will ignore the param and can therefore have
-- any type
quux :: a -> [Char]
quux a = let a = "foo"
         in a ++ "eek!"
