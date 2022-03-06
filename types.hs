data Point = Point Double Double
data Point3D = Point3D Double Double Double

distance :: Point -> Point -> Double
distance (Point x1 y1) (Point x2 y2)
 sqrt (dx * dx + dy * dy)
 where dx = x1 - x2
       dy = y1 - y2

distance3 :: Point -> Point -> Double
distance (Point x1 y1 z1) (Point x2 y2 z2)
 sqrt (dx * dx + dy * dy + dz * dz)
 where dx = x1 - x2
       dy = y1 - y2
       dz = z1 - z2

