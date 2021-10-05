## p25

1. Types of expressions
  - `False :: Bool `
  - `(["foo", "bar"], 'a') :: ([[Char]], Char)`
  - `[(True, []), (False, [['a']])] :: [(Bool,[[Char]])]`

## p39

1. From `last :: [a] -> a`,
  - It could:
    - Extract any element from a list
    - Produce the sum or product of items in a list
    - Return a Boolean from a list of Booleans (like if all are `True` return `True`)
  - It could not:
    - Produce a list from another list
    - Produce a different type to what's contained in the list
1. See `lastButOne.hs`.
1. It doesn't handle empty lists, throwing `*** Exception: Prelude.tail: empty list`.

## p60

1. See `listADT.hs`.
1. See `Tree.hs`.
