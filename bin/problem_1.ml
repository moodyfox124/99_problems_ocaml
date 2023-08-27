let input_data1 = ["a"; "b"; "c"; "d"];;
let _input_data2 = [];;

let rec last l =
  match l with
  | [] -> None
  | [x] -> Some x
  | _ :: rest -> last rest;;

let () = match last input_data1 with
|None -> print_endline "Empty list"
|Some x -> print_endline x;;