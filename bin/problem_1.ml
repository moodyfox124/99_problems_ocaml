let input_data1: ('a list) = ["a"; "b"; "c"; "d"];;
let input_data2 = [];;

let input_data = [input_data1; input_data2];;

let rec last l =
  match l with
  | [] -> None
  | [x] -> Some x
  | _ :: rest -> last rest;;

let print_result_opt r =
  match r with
  | None -> print_endline "No result"
  | Some x -> print_endline x;;

let () = List.iter print_result_opt (List.map last input_data);;