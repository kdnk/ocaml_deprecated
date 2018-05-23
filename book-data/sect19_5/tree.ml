(* ���餫���� sect19_3/tree.ml ���ɤ߹���Ǥ���ɬ�פ��� *) 
#use "sect19_3/tree.ml" 
 
module Tree : Tree_t = struct 
  (* ��ʬ�ڤ�ɽ���� *) 
  type ('a, 'b) t = Empty 
                  | Node of ('a, 'b) t * 'a * 'b * ('a, 'b) t 
 
  (* ������ *) 
  let empty = Empty 
 
  (* ��Ū��tree �˥����� k ���ͤ� v �����������ڤ��֤� *) 
  (* insert : ('a, 'b) t -> 'a -> 'b -> ('a, 'b) t *) 
  let rec insert tree k v = match tree with 
     Empty -> Node (Empty, k, v, Empty) 
   | Node (left, key, value, right) -> 
       if k = key then Node (left, key, v, right) 
       else if k < key 
            then Node (insert left k v, key, value, right) 
            else Node (left, key, value, insert right k v) 
 
  (* ��Ū��tree ����Υ��� k ���б������ͤ�õ�����֤� *) 
  (* �ߤĤ���ʤ�����㳰 Not_found �򵯤��� *) 
  (* search : ('a, 'b) t -> 'a -> 'b *) 
  let rec search tree k = match tree with 
     Empty -> raise Not_found 
   | Node (left, key, value, right) -> 
       if k = key then value 
       else if k < key then search left k 
                       else search right k 
end 