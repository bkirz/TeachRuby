type token =
  | T_EOF
  | K_CLASS of (Lexing.position)
  | K_METACLASS of (Lexing.position)
  | K_MODULE of (Lexing.position)
  | K_INTERFACE of (Lexing.position)
  | K_ALIAS of (Lexing.position)
  | K_REQUIRE of (Lexing.position)
  | K_END of (Lexing.position)
  | K_OR of (Lexing.position)
  | K_SELF of (Lexing.position)
  | T_BEGIN_LINE of (Lexing.position)
  | T_SEMICOLON of (Lexing.position)
  | T_COLON of (Lexing.position)
  | T_DOUBLE_COLON of (Lexing.position)
  | T_DOT of (Lexing.position)
  | T_STAR of (Lexing.position)
  | T_QUESTION of (Lexing.position)
  | T_CARROT of (Lexing.position)
  | T_BANG of (Lexing.position)
  | T_RARROW of (Lexing.position)
  | T_LPAREN of (Lexing.position)
  | T_RPAREN of (Lexing.position)
  | T_LESS of (Lexing.position)
  | T_GREATER of (Lexing.position)
  | T_COMMA of (Lexing.position)
  | T_LBRACKET of (Lexing.position)
  | T_RBRACKET of (Lexing.position)
  | T_LBRACE of (Lexing.position)
  | T_RBRACE of (Lexing.position)
  | T_SUBTYPE of (Lexing.position)
  | T_STRING of (Lexing.position * string)
  | T_IVAR of (Lexing.position * string)
  | T_CVAR of (Lexing.position * string)
  | T_GVAR of (Lexing.position * string)
  | T_CONST_ID of (Lexing.position * string)
  | T_TYPE_ID of (Lexing.position * string)
  | T_METHOD_NAME of (Lexing.position * string)

val e_method :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Annotation.t
val e_class :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Annotation.t
val e_expr :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Annotation.t
val interface_file :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Annotation.interface
