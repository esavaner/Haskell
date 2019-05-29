f [] = []
f [x] = [x]
f (x:xs) = 
  let 
    y = x ++ f [a | a <-xs, a == x]
    z = x ++ f [a | a <-xs, a /= x]
  in (y, z)