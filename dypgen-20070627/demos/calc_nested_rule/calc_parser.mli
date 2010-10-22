type token = [
  | `EOL
  | `DIV
  | `TIMES
  | `MINUS
  | `PLUS
  | `INT of (int)
  | `RPAREN
  | `LPAREN
]
module Dyp_priority_data :
sig
  val priority_data : Dyp.priority_data
  val default_priority : Dyp.priority
  val pi : Dyp.priority
  val pp : Dyp.priority
  val pt : Dyp.priority
end

val main : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> ((int) * Dyp.priority) list

