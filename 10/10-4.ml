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

let lst1 = []
let lst2 = [gakusei2]
let lst3 = [gakusei3; gakusei4]
let lst4 = [gakusei4; gakusei3]
let lst5 = [gakusei4; gakusei1; gakusei6; gakusei5; gakusei2; gakusei3]

let rec shukei list = match list with
    [] -> (0, 0, 0, 0)
  | {namae = n; tensuu = t; seiseki = s} :: rest ->
    let shukei_rest = shukei rest in
    match shukei_rest with
      (a, b, c, d) ->
      if s = "A" then (a + 1, b, c, d)
      else if s = "B" then (a, b + 1, c, d)
      else if s = "C" then (a, b, c + 1, d)
      else (a, b, c, d + 1)
