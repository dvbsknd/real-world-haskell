-- Consider three two-dimensional points a, b, and c. Take the angle between
-- segment a -> b and segment b -> c, it either turns left or right or forms
-- a straight line.
data Direction = Leftward | Straight | Rightward deriving (Show)
data Coordinates = Coordinates Point Point Point deriving (Show)
type Point = (Float,Float)

test1 = Coordinates (1,2) (3,4) (5,6)

getDirection :: Coordinates -> Direction
getDirection (Coordinates a b c)
    | ab > bc = Rightward
    | bc < ab = Leftward
    | otherwise = Straight
    where ab = calcAngle b a
          bc = calcAngle c b

calcAngle :: Point -> Point -> Float
calcAngle (px,py) (ox,oy) = atan2 (py-oy) (px-ox)
