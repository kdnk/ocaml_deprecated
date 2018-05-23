let rec add_to_each n list = match list with
    [] -> []
  | first :: rest -> (n :: first) :: add_to_each n rest

(* let test4 = add_to_each 1 [[2]; [2; 3]; [2; 3; 4]] = [[1; 2]; [1; 2; 3]; [1; 2; 3; 4]] ;;
   print_string(string_of_bool test4) ;;
   print_string("\n") ;; *)

let rec prefix list = match list with
    [] -> []
  | first :: rest -> [first] :: add_to_each first (prefix rest) ;;

(* print_list(prefix [1; 2; 3; 4]) *)


(* let test8 = prefix [1; 2; 3; 4] = [[1]; [1; 2]; [1; 2; 3]; [1; 2; 3; 4]] ;;
   print_string(string_of_bool test8) ;;
   print_string("\n") ;; *)


let rec insert list n = match list with
    [] -> [n]
  | first :: rest ->
    if first < n then first :: insert rest n
    else n :: list

(* let test1 = insert [1; 3; 4; 7; 8] 5  = [1; 3; 4; 5; 7; 8] ;;
   print_string(string_of_bool test1) ;;
   print_string("\n") ;; *)

let test1 = insert [] 3 = [3]
let test2 = insert [1] 3 = [1; 3]
let test3 = insert [3] 1 = [1; 3]
let test4 = insert [1; 3; 4; 7; 8] 5 = [1; 3; 4; 5; 7; 8] ;;
print_string(string_of_bool test1) ;;
print_string("\n") ;;
print_string(string_of_bool test2) ;;
print_string("\n") ;;
print_string(string_of_bool test3) ;;
print_string("\n") ;;
print_string(string_of_bool test4) ;;
print_string("\n") ;;

let rec ins_sort list = match list with
    [] -> []
  | first :: rest -> insert(ins_sort rest) first ;;

let test1 = ins_sort [] = [] ;;
let test2 = ins_sort [1] = [1] ;;
let test3 = ins_sort [3; 1] = [1; 3]  ;;
let test4 = ins_sort [1; 3] = [1; 3] ;;
let test5 = ins_sort [5; 3; 8; 1; 7; 4] = [1; 3; 4; 5; 7; 8] ;;
print_string(string_of_bool test1) ;;
print_string("\n") ;;
print_string(string_of_bool test2) ;;
print_string("\n") ;;
print_string(string_of_bool test3) ;;
print_string("\n") ;;
print_string(string_of_bool test4) ;;
print_string("\n") ;;
print_string(string_of_bool test5) ;;
print_string("\n") ;;
