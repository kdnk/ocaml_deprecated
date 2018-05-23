let rec fac n =
  if n = 0
  then 1
  else n * fac n - 1


let rec power m n =
  if n = 0
  then 1
  else m * power m n - 1
