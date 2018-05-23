let rec merge list1 list2 = match (list1, list2) with
    ([], []) -> []
  | ([], first :: rest) -> list2
  | (first :: rest, []) -> list1
  | (first1 :: rest1, first2 :: rest2) ->
    if first1 < first2 then
      first1 :: merge rest1 list2
    else first2 :: merge list1 rest2 ;;
