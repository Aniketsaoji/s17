open Tokenizer
open Parser
open Ast
open Eval
open Value

let rec repl () =
  let _ = Printf.printf "Righty> " in
  let s = read_line ()
  in
  match s = "quit" with
  | true -> ()
  | false ->
     let tokens = Tokenizer.tokenize s in
     let ast = Parser.parse tokens in
     let astS = Ast.format ast in
     let value = Eval.eval ast in
     let valueS = Value.format value in
     let _ = Printf.printf "\nvalue of %s is %s\n" astS valueS
     in
     repl ()
          
let _ = repl()
