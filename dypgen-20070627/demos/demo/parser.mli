type token =
  | EOF
  | TOKEN of (string)
  | SEMICOLON
  | COLONCOLON
  | RBRACK
  | LBRACK
  | COLONEQUAL
  | EQUAL
  | IN
  | DEFINE
  | INT of (int)
  | LIDENT of (string)
  | UIDENT of (string)
  | COMMA
  | RPAREN
  | LPAREN

module Dyp_priority_data :
sig
  val priority_data : Dyp.priority_data
  val default_priority : Dyp.priority
end

val main : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> ((Parse_tree.expr) * Dyp.priority) list

