let input_data1: ('a list) = ["a"; "b"; "c"; "d"];;
let input_data2 = [];;
let input_data = [input_data1; input_data2];;

let rec last_two l =
  match l with
  | [] | [_] -> None
  | [a; b] -> Some(a, b)
  | _ :: rest -> last_two rest;;

  let print_result_opt r =
    match r with
    | None -> print_endline "No result"
    | Some(x, v) -> print_endline (x print_endline v);;
  
  let () = List.iter print_result_opt (List.map last_two input_data);;