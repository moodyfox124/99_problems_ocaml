let input_data1: ('a list) = ["a"; "b"; "c"; "d"];;
let input_data2 = [];;
let input_data = [input_data1; input_data2];;


let rec at (pos: int) (l: 'a list)  =
  match l with
  | curr :: _ when pos = 1 -> Some curr
  | _ :: rest when pos > 1 -> at (pos - 1) rest
  | _ -> None
;;

let () = match (at 3 input_data1) with
| None -> print_endline "None\n"
| Some(x) -> Printf.printf "result: %s\n" x;;


List.map (at 3) input_data;;
