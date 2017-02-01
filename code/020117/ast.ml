let fmt = Printf.sprintf
            
type t = Literal of int
       | Or of {left : t; right : t}
       | And of {left : t; right : t}
       | Not of t

let rec format t =
  match t with
  | Literal 0 -> "f"
  | Literal 1 -> "t"
  | Literal _ -> failwith "Ast.format: cannot happen."
  | Or {left; right} -> fmt "(%s || %s)" (format left) (format right)
  | And {left; right} -> fmt "(%s && %s)" (format left) (format right)
  | Not t -> fmt "!%s" (format t)

                 
