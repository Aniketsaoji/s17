
let fmt = Printf.sprintf

type t = Literal of int

let format literal =
  match literal with
  | Literal 0 -> "f"
  | Literal 1 -> "t"
  | _ -> failwith "cannot happen"
