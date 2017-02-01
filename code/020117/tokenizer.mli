
type t = True | False | And | Or | Not | LPar | RPar

val format : t -> string
val tokenize : string -> t list
