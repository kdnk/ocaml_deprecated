(* ��Ū���ե��ܥʥå�����Ƶ�����ȤȤ�˵��� *) 
(* fib : int -> int -> (int * int) *) 
let rec fib n c =                  (* c �Ϥ���ޤǤ˸ƤФ줿��� *) 
  let c0 = c + 1 in                (* �����󥿤� 1 ��ä���      *) 
  if n < 2 
  then (n, c0)                     (* �����󥿤�����֤�       *) 
  else let (r1, c1) = fib (n - 1) c0 in 
       (* c0 ����Ϥ���� fib (n - 1) ��ǤθƤӽФ����������� *) 
       let (r2, c2) = fib (n - 2) c1 in 
       (* c1 ����Ϥ���� fib (n - 2) ��ǤθƤӽФ����������� *) 
       (r1 + r2, c2)               (* c2 �����ΤθƤӽФ����    *) 
 
(* �ƥ��� *) 
let test = fib 8 0 = (21, 67) 