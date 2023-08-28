let input_data1: ('a list) = ["a"; "b"; "c"; "d"];;
let input_data2 = [];;

let rec rev (l: 'a list) = 
  match l with
  | [] -> l
  | head :: rest -> (rev rest) @ [head]
;;

(* This function is tail-recursive: it uses a constant amount of
     stack memory regardless of list size. *)

(* Taken from solution *)

let rev l =
  let rec aux acc = function
    | [] -> acc
    | h :: t -> aux (h :: acc) t in
  aux [] l
;;