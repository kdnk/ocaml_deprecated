let rec contain_zero lst = match lst with
    [] -> false
  | first :: rest -> if first = 0 then true
    else contain_zero rest


let rec sum list = match list with
    [] -> 0
  | first :: rest -> first + sum rest ;;

let rec sum list =



type student_t = {
  name: string;
  score: int;
  grade: string;
} ;;

let rec count_A list = match list with
    [] -> 0
  | first :: rest -> match first with
      { name = n; score = s; grade = g; } -> (if g = "A" then 1 else 0) + count_A rest;;


print_int(count_A [
    {
      name = "Momo taro";
      score = 90;
      grade = "A";
    };
    {
      name = "Momo taro";
      score = 90;
      grade = "A";
    }
  ]) ;;
print_string("\n") ;;
