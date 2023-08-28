let input_data1: ('a list) = ["a"; "b"; "c"; "d"];;
let input_data2 = [];;

let rec length (l: 'a list) = 
  match l with
  | [] -> 0
  | _ :: rest -> 1 + length rest
;;

(* This function is tail-recursive: it uses a constant amount of
     stack memory regardless of list size. *)

(* Taken from solution *)
let length_tail_recurcive l =
  let rec aux n = function
  | [] -> n
  | _ :: rest -> aux (n + 1) rest
in aux 0 l
;;

let length_imperative l =
  let result = ref 0 in
  let yd = ref l in
  while !yd != [] do
    result := !result + 1;
    yd := List.tl !yd
  done;
  !result
;;
