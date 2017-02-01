open Ast
open Value

let rec eval expr =
  match expr with
  | Ast.Literal i -> Value.Literal i

  | Ast.Or {left; right} ->
     (match (eval left, eval right) with
      | (Value.Literal 0, Value.Literal 0) -> Value.Literal 0
      | _ -> Value.Literal 1)
                          
  | Ast.And {left; right} ->
     (match (eval left, eval right) with
      | (Value.Literal 1, Value.Literal 1) -> Value.Literal 1
      | _ -> Value.Literal 0)

  | Ast.Not expr ->
     let v = eval expr
     in
     match v with
     | Value.Literal 0 -> Value.Literal 1
     | Value.Literal _ -> Value.Literal 0
