let rec minimum list = match list with
    [] -> max_int
  | first :: rest ->
    if first < minimum rest
    then first
    else minimum rest
;;


let rec min list = match list with
    [] -> max_int
  | first :: rest ->
    let min_rest = min rest in
    if first < min_rest then first else min_rest ;;
