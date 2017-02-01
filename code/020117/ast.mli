type t = Literal of int
       | Or of {left : t; right : t}
       | And of {left : t; right : t}
       | Not of t

val format : t -> string

                 
