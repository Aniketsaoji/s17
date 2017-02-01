let explode s =
  let rec exp i l =
    match i < 0 with
    | true  -> l
    | false -> exp (i - 1) (s.[i] :: l)
  in
  exp (String.length s - 1) []

let rec implode cs =
  match cs with
  | [] -> ""
  | c :: cs -> (Char.escaped c) ^ (implode cs)
