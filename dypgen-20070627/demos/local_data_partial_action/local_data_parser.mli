type token =
  | EOL
  | EQUAL
  | IN
  | IDENT of (string)
  | LET
  | RPAREN
  | LPAREN
  | PLUS
  | INT of (int)

module Dyp_priority_data :
sig
  val priority_data : Dyp.priority_data
  val default_priority : Dyp.priority
end

val main : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> ((Parse_tree.tree) * Dyp.priority) list

