open Util
       
type t = True | False | And | Or | Not | LPar | RPar

let format token =
  match token with
  | True  -> "t"
  | False -> "f"
  | And   -> "&&"
  | Or    -> "||"
  | Not   -> "!"
  | LPar  -> "("
  | RPar  -> ")"

(* tokenize : string -> t list
*)
let tokenize input =
  let chars = Util.explode input in
  let rec tokenize chars =
    match chars with
    | [] -> []
    | ' ' :: chars -> tokenize chars
    | 't' :: chars -> True :: tokenize chars
    | 'f' :: chars -> False :: tokenize chars
    | '|' :: '|' :: chars -> Or :: tokenize chars
    | '&' :: '&' :: chars -> And :: tokenize chars
    | '!' :: chars -> Not :: tokenize chars
    | '(' :: chars -> LPar :: tokenize chars
    | ')' :: chars -> RPar :: tokenize chars
    | _ -> failwith "Tokenizer.tokenize : this can't happen."
  in
  tokenize chars
                                            
