open Ast
open Tokenizer
       
let parse tokens =

  let rec expr tokens =
    let (ast1, tokens) = term tokens
    in
    match tokens with
    | Tokenizer.Or :: tokens ->
       let (ast2, tokens) = expr tokens
       in
       (Ast.Or{left=ast1; right=ast2}, tokens)
    | _ -> (ast1, tokens)
        
  and term tokens =
    let (ast1, tokens) = factor tokens
    in
    match tokens with
    | Tokenizer.And :: tokens ->
       let (ast2, tokens) = term tokens
       in
       (Ast.And {left=ast1; right=ast2}, tokens)
         
    | _ -> (ast1, tokens)

  and factor tokens =
    match tokens with
    | Tokenizer.True :: tokens -> (Ast.Literal 1, tokens)
    | Tokenizer.False :: tokens -> (Ast.Literal 0, tokens)
    | Tokenizer.Not :: tokens ->
       let (ast, tokens) = expr tokens
       in
       (Ast.Not ast, tokens)
    | Tokenizer.LPar :: tokens ->
       let (ast, tokens) = expr tokens
       in
       (match tokens with
       | Tokenizer.RPar :: tokens -> (ast, tokens)
       | _ -> failwith "Missing closing paren")

    | _ -> failwith "bad input"
  in
  let (ast, tokens) = expr tokens
  in
  match tokens with
  | [] -> ast
  | _ -> failwith "Something hanging around after your program"
      
    
