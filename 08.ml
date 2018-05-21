type seiseki = {
  name: string;
  tensuu: int;
  seiseki: string;
} ;;

let tsuuchi gakusei = match gakusei with
    { name = n; tensuu = t; seiseki = s } ->
    n ^ " さんは " ^ string_of_int t ^ " 点で、成績は、" ^ s ^ "です。" ;;

print_string( tsuuchi { name = "asai"; tensuu = 70; seiseki = "B" }  ) ;;


type ekimei_t = {
  kanji: string;
  kana: string;
  shozoku: string;
}

let hyoji ekimei = match ekimei with
    {  kanji = k ; kana = ka; shozoku = s} ->
    s ^ ", " ^ k ^ "(" ^ ka ^ ")" ;;
