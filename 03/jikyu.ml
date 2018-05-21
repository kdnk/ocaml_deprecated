let jikyu = 950 ;;
print_int((25 * jikyu) + (28 * jikyu) + (31 * jikyu));;
print_string("\n") ;;

let f x = 3 * x ;;

print_int(f 4) ;;
print_string("\n") ;;

let g x y = x * x + y * y - 4 ;;
print_int(g 3 2) ;;
print_string("\n") ;;

let kihonkyu = 100 ;;
let kyuyo x = kihonkyu + x * jikyu ;;

print_int(kyuyo 25 + kyuyo 28 + kyuyo 31) ;;
