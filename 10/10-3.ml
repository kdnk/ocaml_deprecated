(* 学生ひとり分のデータ（名前、点数、成績）を表す型 *)
type gakusei_t = {
  namae : string;       (* 名前 *)
  tensuu : int;         (* 点数 *)
  seiseki : string;     (* 成績 *)
}

let gakusei1 = {namae="nakamura"; tensuu=90; seiseki="A"}
let gakusei2 = {namae="miyahara"; tensuu=80; seiseki="A"}
let gakusei3 = {namae="sato"; tensuu=75; seiseki="B"}
let gakusei4 = {namae="idehara"; tensuu=70; seiseki="B"}
let gakusei5 = {namae="tsubata"; tensuu=65; seiseki="C"}
let gakusei6 = {namae="asai"; tensuu=60; seiseki="C"};;

let rec gakusei_insert list gakusei = match list with
    [] -> [gakusei]
  | { namae = na; tensuu = t; seiseki = s } as first :: rest ->
    if t < gakusei.tensuu then first :: gakusei_insert rest gakusei
    else gakusei :: list

let rec gakusei_ins_sort list = match list with
    [] -> []
  | { namae = n; tensuu = t; seiseki = s } as first :: rest ->
    gakusei_insert (gakusei_ins_sort rest) first;;

(* 学生のリストの例 *)
let lst1 = []
let lst2 = [gakusei2]
let lst3 = [gakusei3; gakusei4]
let lst4 = [gakusei4; gakusei3]
let lst5 = [gakusei4; gakusei1; gakusei6; gakusei5; gakusei2; gakusei3]

let test5 = gakusei_ins_sort lst1 = [] ;;
let test6 = gakusei_ins_sort lst2 = [gakusei2];;
let test7 = gakusei_ins_sort lst3 = [gakusei4; gakusei3];;
let test8 = gakusei_ins_sort lst4 = [gakusei4; gakusei3];;
let test9 = gakusei_ins_sort lst5
            = [gakusei6; gakusei5; gakusei4; gakusei3; gakusei2; gakusei1];;

print_string(string_of_bool test5) ;;
print_string("\n") ;;
print_string(string_of_bool test6) ;;
print_string("\n") ;;
print_string(string_of_bool test7) ;;
print_string("\n") ;;
print_string(string_of_bool test7) ;;
print_string("\n") ;;
print_string(string_of_bool test8) ;;
print_string("\n") ;;
print_string(string_of_bool test9) ;;
print_string("\n") ;;
