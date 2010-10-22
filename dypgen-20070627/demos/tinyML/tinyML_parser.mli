type token = [
  | `TOKEN of (string)
  | `LIDENT of (string)
  | `UIDENT of (string)
  | `INT of (int)
  | `EOF
  | `APPEND
  | `LESS
  | `GREATER
  | `SEMICOLON
  | `COLONCOLON
  | `RBRACK
  | `LBRACK
  | `COLONEQUAL
  | `EQUAL
  | `AND
  | `IN
  | `DEFINE
  | `REC
  | `LET
  | `ARROW
  | `COMMA
  | `WITH
  | `MATCH
  | `BAR
  | `RPAREN
  | `LPAREN
]
module Dyp_priority_data :
sig
  val priority_data : Dyp.priority_data
  val default_priority : Dyp.priority
end

val main : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> ((Parse_tree.expr) * Dyp.priority) list

