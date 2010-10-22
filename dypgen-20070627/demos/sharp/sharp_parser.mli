type token =
  | Eof_token
  | Rpar
  | Lpar
  | And_token
  | Sharp
  | Time
  | Plus
  | Int of (int)

module Dyp_priority_data :
sig
  val priority_data : Dyp.priority_data
  val default_priority : Dyp.priority
end

val main : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> ((int) * Dyp.priority) list

