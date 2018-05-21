let jikyu = 850 ;;
let baito_kyuyo years hours = (jikyu + 100 * years) * hours ;;

print_int(baito_kyuyo 1 30) ;;
print_string("\n") ;;

let f2 x = 3.0 *. x ;;
print_float(f2 2.5) ;;
