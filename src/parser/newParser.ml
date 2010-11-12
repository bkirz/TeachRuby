type token =
  | T_EOF
  | T_EOL
  | T_INTERP_END of (string * Lexing.position)
  | T_INTERP_STR of (string * Lexing.position)
  | T_ATOM_BEG of (Lexing.position)
  | T_REGEXP of (Ast.interp_string * string * Lexing.position)
  | T_REGEXP_MOD of (string)
  | T_REGEXP_BEG of (Lexing.position)
  | T_USER_BEG of (string * Lexing.position)
  | T_TICK_BEG of (Lexing.position)
  | T_DOUBLE_BEG of (Lexing.position)
  | T_USER_STRING of (string * Ast.interp_string * Lexing.position)
  | T_DOUBLE_STRING of (Ast.interp_string * Lexing.position)
  | T_SINGLE_STRING of (string * Lexing.position)
  | K_FALSE of (Lexing.position)
  | K_TRUE of (Lexing.position)
  | K_SELF of (Lexing.position)
  | K_YIELD of (Lexing.position)
  | K_NIL of (Lexing.position)
  | K_lEND of (Lexing.position)
  | K_lBEGIN of (Lexing.position)
  | K_NOT of (Lexing.position)
  | K_OR of (Lexing.position)
  | K_AND of (Lexing.position)
  | K_RETURN of (Lexing.position)
  | K_DO of (Lexing.position)
  | K_IN of (Lexing.position)
  | K_FOR of (Lexing.position)
  | K_UNTIL of (Lexing.position)
  | K_WHILE of (Lexing.position)
  | K_WHEN of (Lexing.position)
  | K_CASE of (Lexing.position)
  | K_ELSE of (Lexing.position)
  | K_ELSIF of (Lexing.position)
  | K_THEN of (Lexing.position)
  | K_UNLESS of (Lexing.position)
  | K_IF of (Lexing.position)
  | K_ENSURE of (Lexing.position)
  | K_RESCUE of (Lexing.position)
  | K_BEGIN of (Lexing.position)
  | K_UNDEF of (Lexing.position)
  | K_ALIAS of (Lexing.position)
  | K_END of (Lexing.position)
  | K_DEF of (string*Lexing.position)
  | K_MODULE of (string*Lexing.position)
  | K_CLASS of (string*Lexing.position)
  | T_BUILTIN_VAR of (string * Lexing.position)
  | T_FLOAT of (string * float * Lexing.position)
  | T_BIGNUM of (Big_int.big_int * Lexing.position)
  | T_FIXNUM of (int * Lexing.position)
  | T_ATOM of (Ast.interp_string * Lexing.position)
  | T_CLASS_VAR of (string * Lexing.position)
  | T_INST_VAR of (string * Lexing.position)
  | T_GLOBAL_VAR of (string * Lexing.position)
  | T_LID of (string * Lexing.position)
  | T_UID of (string * Lexing.position)
  | T_CAST of (string * string * Lexing.position)
  | T_USCOPE of (Lexing.position)
  | T_SCOPE of (Lexing.position)
  | T_SEMICOLON of (Lexing.position)
  | T_UAMPER of (Lexing.position)
  | T_AMPER of (Lexing.position)
  | T_TILDE of (Lexing.position)
  | T_BANG of (Lexing.position)
  | T_VBAR of (Lexing.position)
  | T_CARROT of (Lexing.position)
  | T_COLON of (Lexing.position)
  | T_QUESTION of (Lexing.position)
  | T_PERCENT of (Lexing.position)
  | T_SLASH of (Lexing.position)
  | T_USTAR of (Lexing.position)
  | T_STAR of (Lexing.position)
  | T_RBRACE of (Lexing.position)
  | T_LBRACE_ARG of (Lexing.position)
  | T_LBRACE of (Lexing.position)
  | T_RBRACK of (Lexing.position)
  | T_LBRACK of (Lexing.position)
  | T_LBRACK_ARG of (Lexing.position)
  | T_RPAREN of (Lexing.position)
  | T_LPAREN_ARG of (Lexing.position)
  | T_LPAREN of (Lexing.position)
  | T_ASSOC of (Lexing.position)
  | T_OP_ASGN of (string*Lexing.position)
  | T_RSHFT of (Lexing.position)
  | T_LSHFT of (Lexing.position)
  | T_DOT3 of (Lexing.position)
  | T_DOT2 of (Lexing.position)
  | T_NMATCH of (Lexing.position)
  | T_MATCH of (Lexing.position)
  | T_OROP of (Lexing.position)
  | T_ANDOP of (Lexing.position)
  | T_GT of (Lexing.position)
  | T_LT of (Lexing.position)
  | T_LEQ of (Lexing.position)
  | T_GEQ of (Lexing.position)
  | T_NEQ of (Lexing.position)
  | T_EQQ of (Lexing.position)
  | T_EQ of (Lexing.position)
  | T_ASSIGN of (Lexing.position)
  | T_CMP of (Lexing.position)
  | T_POW of (Lexing.position)
  | T_UMINUS of (Lexing.position)
  | T_MINUS of (Lexing.position)
  | T_UPLUS of (Lexing.position)
  | T_PLUS of (Lexing.position)
  | T_COMMA of (Lexing.position)
  | T_DOT of (Lexing.position)

module Dyp_symbols =
struct
  let arg = 1
  let arg_comma_list_trail = 2
  let arg_comma_nonempty_list = 3
  let arg_comma_star_list = 4
  let array_body = 5
  let array_body_rest = 6
  let array_item = 7
  let assign_op = 8
  let assignable = 9
  let bin_op = 10
  let body_exn = 11
  let brace_codeblock = 12
  let call_args = 13
  let case_else = 14
  let class_inheritance = 15
  let code_block = 16
  let code_block_body = 17
  let command = 18
  let command_codeblock = 19
  let command_name = 20
  let constant = 21
  let do_codeblock = 22
  let do_sep = 23
  let ensure_clause = 24
  let eol_or_semi = 25
  let eols = 26
  let expr = 27
  let formal_arg = 28
  let formal_arg_list = 29
  let formal_arg_nonempty_list = 30
  let func = 31
  let identifier = 32
  let if_else_clauses = 33
  let interp_code = 34
  let interp_str = 35
  let interp_str_work = 36
  let keyword_as_id = 37
  let lhs = 38
  let lhs_assign_op = 39
  let lhs_prune_binop = 40
  let lhs_pruned_assign_op = 41
  let lparen = 42
  let main = 43
  let message_identifier = 44
  let meth_or_atom = 45
  let meth_or_atom_list = 46
  let method_formals = 47
  let method_name = 48
  let mlhs = 49
  let mlhs_assign_op = 50
  let mlhs_clean = 51
  let mlhs_item = 52
  let mlhs_rest = 53
  let mrhs = 54
  let one_string = 55
  let primary = 56
  let rescue_clause = 57
  let rescue_list = 58
  let rescue_list_rest = 59
  let scope_begin = 60
  let scope_class = 61
  let scope_def = 62
  let scope_end = 63
  let scope_module = 64
  let scoped_id = 65
  let seen_id = 66
  let some_eols = 67
  let star_amper = 68
  let stmt = 69
  let stmt_list = 70
  let string = 71
  let then_sep = 72
  let topcall = 73
  let unary_op = 74
  let when_clauses = 75
  let t_T_EOF = 2
  let t_T_EOL = 3
  let t_T_INTERP_END = 4
  let t_T_INTERP_STR = 5
  let t_T_ATOM_BEG = 6
  let t_T_REGEXP = 7
  let t_T_REGEXP_MOD = 8
  let t_T_REGEXP_BEG = 9
  let t_T_USER_BEG = 10
  let t_T_TICK_BEG = 11
  let t_T_DOUBLE_BEG = 12
  let t_T_USER_STRING = 13
  let t_T_DOUBLE_STRING = 14
  let t_T_SINGLE_STRING = 15
  let t_K_FALSE = 16
  let t_K_TRUE = 17
  let t_K_SELF = 18
  let t_K_YIELD = 19
  let t_K_NIL = 20
  let t_K_lEND = 21
  let t_K_lBEGIN = 22
  let t_K_NOT = 23
  let t_K_OR = 24
  let t_K_AND = 25
  let t_K_RETURN = 26
  let t_K_DO = 27
  let t_K_IN = 28
  let t_K_FOR = 29
  let t_K_UNTIL = 30
  let t_K_WHILE = 31
  let t_K_WHEN = 32
  let t_K_CASE = 33
  let t_K_ELSE = 34
  let t_K_ELSIF = 35
  let t_K_THEN = 36
  let t_K_UNLESS = 37
  let t_K_IF = 38
  let t_K_ENSURE = 39
  let t_K_RESCUE = 40
  let t_K_BEGIN = 41
  let t_K_UNDEF = 42
  let t_K_ALIAS = 43
  let t_K_END = 44
  let t_K_DEF = 45
  let t_K_MODULE = 46
  let t_K_CLASS = 47
  let t_T_BUILTIN_VAR = 48
  let t_T_FLOAT = 49
  let t_T_BIGNUM = 50
  let t_T_FIXNUM = 51
  let t_T_ATOM = 52
  let t_T_CLASS_VAR = 53
  let t_T_INST_VAR = 54
  let t_T_GLOBAL_VAR = 55
  let t_T_LID = 56
  let t_T_UID = 57
  let t_T_CAST = 58
  let t_T_USCOPE = 59
  let t_T_SCOPE = 60
  let t_T_SEMICOLON = 61
  let t_T_UAMPER = 62
  let t_T_AMPER = 63
  let t_T_TILDE = 64
  let t_T_BANG = 65
  let t_T_VBAR = 66
  let t_T_CARROT = 67
  let t_T_COLON = 68
  let t_T_QUESTION = 69
  let t_T_PERCENT = 70
  let t_T_SLASH = 71
  let t_T_USTAR = 72
  let t_T_STAR = 73
  let t_T_RBRACE = 74
  let t_T_LBRACE_ARG = 75
  let t_T_LBRACE = 76
  let t_T_RBRACK = 77
  let t_T_LBRACK = 78
  let t_T_LBRACK_ARG = 79
  let t_T_RPAREN = 80
  let t_T_LPAREN_ARG = 81
  let t_T_LPAREN = 82
  let t_T_ASSOC = 83
  let t_T_OP_ASGN = 84
  let t_T_RSHFT = 85
  let t_T_LSHFT = 86
  let t_T_DOT3 = 87
  let t_T_DOT2 = 88
  let t_T_NMATCH = 89
  let t_T_MATCH = 90
  let t_T_OROP = 91
  let t_T_ANDOP = 92
  let t_T_GT = 93
  let t_T_LT = 94
  let t_T_LEQ = 95
  let t_T_GEQ = 96
  let t_T_NEQ = 97
  let t_T_EQQ = 98
  let t_T_EQ = 99
  let t_T_ASSIGN = 100
  let t_T_CMP = 101
  let t_T_POW = 102
  let t_T_UMINUS = 103
  let t_T_MINUS = 104
  let t_T_UPLUS = 105
  let t_T_PLUS = 106
  let t_T_COMMA = 107
  let t_T_DOT = 108
  let get_token_name t = match t with
    | T_EOF -> t_T_EOF
    | T_EOL -> t_T_EOL
    | T_INTERP_END _ -> t_T_INTERP_END
    | T_INTERP_STR _ -> t_T_INTERP_STR
    | T_ATOM_BEG _ -> t_T_ATOM_BEG
    | T_REGEXP _ -> t_T_REGEXP
    | T_REGEXP_MOD _ -> t_T_REGEXP_MOD
    | T_REGEXP_BEG _ -> t_T_REGEXP_BEG
    | T_USER_BEG _ -> t_T_USER_BEG
    | T_TICK_BEG _ -> t_T_TICK_BEG
    | T_DOUBLE_BEG _ -> t_T_DOUBLE_BEG
    | T_USER_STRING _ -> t_T_USER_STRING
    | T_DOUBLE_STRING _ -> t_T_DOUBLE_STRING
    | T_SINGLE_STRING _ -> t_T_SINGLE_STRING
    | K_FALSE _ -> t_K_FALSE
    | K_TRUE _ -> t_K_TRUE
    | K_SELF _ -> t_K_SELF
    | K_YIELD _ -> t_K_YIELD
    | K_NIL _ -> t_K_NIL
    | K_lEND _ -> t_K_lEND
    | K_lBEGIN _ -> t_K_lBEGIN
    | K_NOT _ -> t_K_NOT
    | K_OR _ -> t_K_OR
    | K_AND _ -> t_K_AND
    | K_RETURN _ -> t_K_RETURN
    | K_DO _ -> t_K_DO
    | K_IN _ -> t_K_IN
    | K_FOR _ -> t_K_FOR
    | K_UNTIL _ -> t_K_UNTIL
    | K_WHILE _ -> t_K_WHILE
    | K_WHEN _ -> t_K_WHEN
    | K_CASE _ -> t_K_CASE
    | K_ELSE _ -> t_K_ELSE
    | K_ELSIF _ -> t_K_ELSIF
    | K_THEN _ -> t_K_THEN
    | K_UNLESS _ -> t_K_UNLESS
    | K_IF _ -> t_K_IF
    | K_ENSURE _ -> t_K_ENSURE
    | K_RESCUE _ -> t_K_RESCUE
    | K_BEGIN _ -> t_K_BEGIN
    | K_UNDEF _ -> t_K_UNDEF
    | K_ALIAS _ -> t_K_ALIAS
    | K_END _ -> t_K_END
    | K_DEF _ -> t_K_DEF
    | K_MODULE _ -> t_K_MODULE
    | K_CLASS _ -> t_K_CLASS
    | T_BUILTIN_VAR _ -> t_T_BUILTIN_VAR
    | T_FLOAT _ -> t_T_FLOAT
    | T_BIGNUM _ -> t_T_BIGNUM
    | T_FIXNUM _ -> t_T_FIXNUM
    | T_ATOM _ -> t_T_ATOM
    | T_CLASS_VAR _ -> t_T_CLASS_VAR
    | T_INST_VAR _ -> t_T_INST_VAR
    | T_GLOBAL_VAR _ -> t_T_GLOBAL_VAR
    | T_LID _ -> t_T_LID
    | T_UID _ -> t_T_UID
    | T_CAST _ -> t_T_CAST
    | T_USCOPE _ -> t_T_USCOPE
    | T_SCOPE _ -> t_T_SCOPE
    | T_SEMICOLON _ -> t_T_SEMICOLON
    | T_UAMPER _ -> t_T_UAMPER
    | T_AMPER _ -> t_T_AMPER
    | T_TILDE _ -> t_T_TILDE
    | T_BANG _ -> t_T_BANG
    | T_VBAR _ -> t_T_VBAR
    | T_CARROT _ -> t_T_CARROT
    | T_COLON _ -> t_T_COLON
    | T_QUESTION _ -> t_T_QUESTION
    | T_PERCENT _ -> t_T_PERCENT
    | T_SLASH _ -> t_T_SLASH
    | T_USTAR _ -> t_T_USTAR
    | T_STAR _ -> t_T_STAR
    | T_RBRACE _ -> t_T_RBRACE
    | T_LBRACE_ARG _ -> t_T_LBRACE_ARG
    | T_LBRACE _ -> t_T_LBRACE
    | T_RBRACK _ -> t_T_RBRACK
    | T_LBRACK _ -> t_T_LBRACK
    | T_LBRACK_ARG _ -> t_T_LBRACK_ARG
    | T_RPAREN _ -> t_T_RPAREN
    | T_LPAREN_ARG _ -> t_T_LPAREN_ARG
    | T_LPAREN _ -> t_T_LPAREN
    | T_ASSOC _ -> t_T_ASSOC
    | T_OP_ASGN _ -> t_T_OP_ASGN
    | T_RSHFT _ -> t_T_RSHFT
    | T_LSHFT _ -> t_T_LSHFT
    | T_DOT3 _ -> t_T_DOT3
    | T_DOT2 _ -> t_T_DOT2
    | T_NMATCH _ -> t_T_NMATCH
    | T_MATCH _ -> t_T_MATCH
    | T_OROP _ -> t_T_OROP
    | T_ANDOP _ -> t_T_ANDOP
    | T_GT _ -> t_T_GT
    | T_LT _ -> t_T_LT
    | T_LEQ _ -> t_T_LEQ
    | T_GEQ _ -> t_T_GEQ
    | T_NEQ _ -> t_T_NEQ
    | T_EQQ _ -> t_T_EQQ
    | T_EQ _ -> t_T_EQ
    | T_ASSIGN _ -> t_T_ASSIGN
    | T_CMP _ -> t_T_CMP
    | T_POW _ -> t_T_POW
    | T_UMINUS _ -> t_T_UMINUS
    | T_MINUS _ -> t_T_MINUS
    | T_UPLUS _ -> t_T_UPLUS
    | T_PLUS _ -> t_T_PLUS
    | T_COMMA _ -> t_T_COMMA
    | T_DOT _ -> t_T_DOT
  let str_token t = match t with
    | T_EOF -> "T_EOF"
    | T_EOL -> "T_EOL"
    | T_INTERP_END _ -> "T_INTERP_END"
    | T_INTERP_STR _ -> "T_INTERP_STR"
    | T_ATOM_BEG _ -> "T_ATOM_BEG"
    | T_REGEXP _ -> "T_REGEXP"
    | T_REGEXP_MOD s -> "T_REGEXP_MOD("^s^")"
    | T_REGEXP_BEG _ -> "T_REGEXP_BEG"
    | T_USER_BEG _ -> "T_USER_BEG"
    | T_TICK_BEG _ -> "T_TICK_BEG"
    | T_DOUBLE_BEG _ -> "T_DOUBLE_BEG"
    | T_USER_STRING _ -> "T_USER_STRING"
    | T_DOUBLE_STRING _ -> "T_DOUBLE_STRING"
    | T_SINGLE_STRING _ -> "T_SINGLE_STRING"
    | K_FALSE _ -> "K_FALSE"
    | K_TRUE _ -> "K_TRUE"
    | K_SELF _ -> "K_SELF"
    | K_YIELD _ -> "K_YIELD"
    | K_NIL _ -> "K_NIL"
    | K_lEND _ -> "K_lEND"
    | K_lBEGIN _ -> "K_lBEGIN"
    | K_NOT _ -> "K_NOT"
    | K_OR _ -> "K_OR"
    | K_AND _ -> "K_AND"
    | K_RETURN _ -> "K_RETURN"
    | K_DO _ -> "K_DO"
    | K_IN _ -> "K_IN"
    | K_FOR _ -> "K_FOR"
    | K_UNTIL _ -> "K_UNTIL"
    | K_WHILE _ -> "K_WHILE"
    | K_WHEN _ -> "K_WHEN"
    | K_CASE _ -> "K_CASE"
    | K_ELSE _ -> "K_ELSE"
    | K_ELSIF _ -> "K_ELSIF"
    | K_THEN _ -> "K_THEN"
    | K_UNLESS _ -> "K_UNLESS"
    | K_IF _ -> "K_IF"
    | K_ENSURE _ -> "K_ENSURE"
    | K_RESCUE _ -> "K_RESCUE"
    | K_BEGIN _ -> "K_BEGIN"
    | K_UNDEF _ -> "K_UNDEF"
    | K_ALIAS _ -> "K_ALIAS"
    | K_END _ -> "K_END"
    | K_DEF _ -> "K_DEF"
    | K_MODULE _ -> "K_MODULE"
    | K_CLASS _ -> "K_CLASS"
    | T_BUILTIN_VAR _ -> "T_BUILTIN_VAR"
    | T_FLOAT _ -> "T_FLOAT"
    | T_BIGNUM _ -> "T_BIGNUM"
    | T_FIXNUM _ -> "T_FIXNUM"
    | T_ATOM _ -> "T_ATOM"
    | T_CLASS_VAR _ -> "T_CLASS_VAR"
    | T_INST_VAR _ -> "T_INST_VAR"
    | T_GLOBAL_VAR _ -> "T_GLOBAL_VAR"
    | T_LID _ -> "T_LID"
    | T_UID _ -> "T_UID"
    | T_CAST _ -> "T_CAST"
    | T_USCOPE _ -> "T_USCOPE"
    | T_SCOPE _ -> "T_SCOPE"
    | T_SEMICOLON _ -> "T_SEMICOLON"
    | T_UAMPER _ -> "T_UAMPER"
    | T_AMPER _ -> "T_AMPER"
    | T_TILDE _ -> "T_TILDE"
    | T_BANG _ -> "T_BANG"
    | T_VBAR _ -> "T_VBAR"
    | T_CARROT _ -> "T_CARROT"
    | T_COLON _ -> "T_COLON"
    | T_QUESTION _ -> "T_QUESTION"
    | T_PERCENT _ -> "T_PERCENT"
    | T_SLASH _ -> "T_SLASH"
    | T_USTAR _ -> "T_USTAR"
    | T_STAR _ -> "T_STAR"
    | T_RBRACE _ -> "T_RBRACE"
    | T_LBRACE_ARG _ -> "T_LBRACE_ARG"
    | T_LBRACE _ -> "T_LBRACE"
    | T_RBRACK _ -> "T_RBRACK"
    | T_LBRACK _ -> "T_LBRACK"
    | T_LBRACK_ARG _ -> "T_LBRACK_ARG"
    | T_RPAREN _ -> "T_RPAREN"
    | T_LPAREN_ARG _ -> "T_LPAREN_ARG"
    | T_LPAREN _ -> "T_LPAREN"
    | T_ASSOC _ -> "T_ASSOC"
    | T_OP_ASGN _ -> "T_OP_ASGN"
    | T_RSHFT _ -> "T_RSHFT"
    | T_LSHFT _ -> "T_LSHFT"
    | T_DOT3 _ -> "T_DOT3"
    | T_DOT2 _ -> "T_DOT2"
    | T_NMATCH _ -> "T_NMATCH"
    | T_MATCH _ -> "T_MATCH"
    | T_OROP _ -> "T_OROP"
    | T_ANDOP _ -> "T_ANDOP"
    | T_GT _ -> "T_GT"
    | T_LT _ -> "T_LT"
    | T_LEQ _ -> "T_LEQ"
    | T_GEQ _ -> "T_GEQ"
    | T_NEQ _ -> "T_NEQ"
    | T_EQQ _ -> "T_EQQ"
    | T_EQ _ -> "T_EQ"
    | T_ASSIGN _ -> "T_ASSIGN"
    | T_CMP _ -> "T_CMP"
    | T_POW _ -> "T_POW"
    | T_UMINUS _ -> "T_UMINUS"
    | T_MINUS _ -> "T_MINUS"
    | T_UPLUS _ -> "T_UPLUS"
    | T_PLUS _ -> "T_PLUS"
    | T_COMMA _ -> "T_COMMA"
    | T_DOT _ -> "T_DOT"
end

type ('arg,'arg_comma_list_trail,'arg_comma_nonempty_list,'arg_comma_star_list,'array_body,'array_body_rest,'array_item,'assign_op,'assignable,'bin_op,'body_exn,'brace_codeblock,'call_args,'case_else,'class_inheritance,'code_block,'code_block_body,'command,'command_codeblock,'command_name,'constant,'do_codeblock,'do_sep,'ensure_clause,'eol_or_semi,'eols,'expr,'formal_arg,'formal_arg_list,'formal_arg_nonempty_list,'func,'identifier,'if_else_clauses,'interp_code,'interp_str,'interp_str_work,'keyword_as_id,'lhs,'lhs_assign_op,'lhs_prune_binop,'lhs_pruned_assign_op,'lparen,'message_identifier,'meth_or_atom,'meth_or_atom_list,'method_formals,'method_name,'mlhs,'mlhs_assign_op,'mlhs_clean,'mlhs_item,'mlhs_rest,'mrhs,'one_string,'primary,'rescue_clause,'rescue_list,'rescue_list_rest,'scope_begin,'scope_class,'scope_def,'scope_end,'scope_module,'scoped_id,'seen_id,'some_eols,'star_amper,'stmt,'stmt_list,'string,'then_sep,'topcall,'unary_op,'when_clauses) obj =
  | Obj_K_ALIAS of (Lexing.position)
  | Obj_K_AND of (Lexing.position)
  | Obj_K_BEGIN of (Lexing.position)
  | Obj_K_CASE of (Lexing.position)
  | Obj_K_CLASS of (string*Lexing.position)
  | Obj_K_DEF of (string*Lexing.position)
  | Obj_K_DO of (Lexing.position)
  | Obj_K_ELSE of (Lexing.position)
  | Obj_K_ELSIF of (Lexing.position)
  | Obj_K_END of (Lexing.position)
  | Obj_K_ENSURE of (Lexing.position)
  | Obj_K_FALSE of (Lexing.position)
  | Obj_K_FOR of (Lexing.position)
  | Obj_K_IF of (Lexing.position)
  | Obj_K_IN of (Lexing.position)
  | Obj_K_MODULE of (string*Lexing.position)
  | Obj_K_NIL of (Lexing.position)
  | Obj_K_NOT of (Lexing.position)
  | Obj_K_OR of (Lexing.position)
  | Obj_K_RESCUE of (Lexing.position)
  | Obj_K_RETURN of (Lexing.position)
  | Obj_K_SELF of (Lexing.position)
  | Obj_K_THEN of (Lexing.position)
  | Obj_K_TRUE of (Lexing.position)
  | Obj_K_UNDEF of (Lexing.position)
  | Obj_K_UNLESS of (Lexing.position)
  | Obj_K_UNTIL of (Lexing.position)
  | Obj_K_WHEN of (Lexing.position)
  | Obj_K_WHILE of (Lexing.position)
  | Obj_K_YIELD of (Lexing.position)
  | Obj_K_lBEGIN of (Lexing.position)
  | Obj_K_lEND of (Lexing.position)
  | Obj_T_AMPER of (Lexing.position)
  | Obj_T_ANDOP of (Lexing.position)
  | Obj_T_ASSIGN of (Lexing.position)
  | Obj_T_ASSOC of (Lexing.position)
  | Obj_T_ATOM of (Ast.interp_string * Lexing.position)
  | Obj_T_ATOM_BEG of (Lexing.position)
  | Obj_T_BANG of (Lexing.position)
  | Obj_T_BIGNUM of (Big_int.big_int * Lexing.position)
  | Obj_T_BUILTIN_VAR of (string * Lexing.position)
  | Obj_T_CARROT of (Lexing.position)
  | Obj_T_CAST of (string * string * Lexing.position)
  | Obj_T_CLASS_VAR of (string * Lexing.position)
  | Obj_T_CMP of (Lexing.position)
  | Obj_T_COLON of (Lexing.position)
  | Obj_T_COMMA of (Lexing.position)
  | Obj_T_DOT of (Lexing.position)
  | Obj_T_DOT2 of (Lexing.position)
  | Obj_T_DOT3 of (Lexing.position)
  | Obj_T_DOUBLE_BEG of (Lexing.position)
  | Obj_T_DOUBLE_STRING of (Ast.interp_string * Lexing.position)
  | Obj_T_EOF
  | Obj_T_EOL
  | Obj_T_EQ of (Lexing.position)
  | Obj_T_EQQ of (Lexing.position)
  | Obj_T_FIXNUM of (int * Lexing.position)
  | Obj_T_FLOAT of (string * float * Lexing.position)
  | Obj_T_GEQ of (Lexing.position)
  | Obj_T_GLOBAL_VAR of (string * Lexing.position)
  | Obj_T_GT of (Lexing.position)
  | Obj_T_INST_VAR of (string * Lexing.position)
  | Obj_T_INTERP_END of (string * Lexing.position)
  | Obj_T_INTERP_STR of (string * Lexing.position)
  | Obj_T_LBRACE of (Lexing.position)
  | Obj_T_LBRACE_ARG of (Lexing.position)
  | Obj_T_LBRACK of (Lexing.position)
  | Obj_T_LBRACK_ARG of (Lexing.position)
  | Obj_T_LEQ of (Lexing.position)
  | Obj_T_LID of (string * Lexing.position)
  | Obj_T_LPAREN of (Lexing.position)
  | Obj_T_LPAREN_ARG of (Lexing.position)
  | Obj_T_LSHFT of (Lexing.position)
  | Obj_T_LT of (Lexing.position)
  | Obj_T_MATCH of (Lexing.position)
  | Obj_T_MINUS of (Lexing.position)
  | Obj_T_NEQ of (Lexing.position)
  | Obj_T_NMATCH of (Lexing.position)
  | Obj_T_OP_ASGN of (string*Lexing.position)
  | Obj_T_OROP of (Lexing.position)
  | Obj_T_PERCENT of (Lexing.position)
  | Obj_T_PLUS of (Lexing.position)
  | Obj_T_POW of (Lexing.position)
  | Obj_T_QUESTION of (Lexing.position)
  | Obj_T_RBRACE of (Lexing.position)
  | Obj_T_RBRACK of (Lexing.position)
  | Obj_T_REGEXP of (Ast.interp_string * string * Lexing.position)
  | Obj_T_REGEXP_BEG of (Lexing.position)
  | Obj_T_REGEXP_MOD of (string)
  | Obj_T_RPAREN of (Lexing.position)
  | Obj_T_RSHFT of (Lexing.position)
  | Obj_T_SCOPE of (Lexing.position)
  | Obj_T_SEMICOLON of (Lexing.position)
  | Obj_T_SINGLE_STRING of (string * Lexing.position)
  | Obj_T_SLASH of (Lexing.position)
  | Obj_T_STAR of (Lexing.position)
  | Obj_T_TICK_BEG of (Lexing.position)
  | Obj_T_TILDE of (Lexing.position)
  | Obj_T_UAMPER of (Lexing.position)
  | Obj_T_UID of (string * Lexing.position)
  | Obj_T_UMINUS of (Lexing.position)
  | Obj_T_UPLUS of (Lexing.position)
  | Obj_T_USCOPE of (Lexing.position)
  | Obj_T_USER_BEG of (string * Lexing.position)
  | Obj_T_USER_STRING of (string * Ast.interp_string * Lexing.position)
  | Obj_T_USTAR of (Lexing.position)
  | Obj_T_VBAR of (Lexing.position)
  | Obj_arg of 'arg
  | Obj_arg_comma_list_trail of 'arg_comma_list_trail
  | Obj_arg_comma_nonempty_list of 'arg_comma_nonempty_list
  | Obj_arg_comma_star_list of 'arg_comma_star_list
  | Obj_array_body of 'array_body
  | Obj_array_body_rest of 'array_body_rest
  | Obj_array_item of 'array_item
  | Obj_assign_op of 'assign_op
  | Obj_assignable of 'assignable
  | Obj_bin_op of 'bin_op
  | Obj_body_exn of 'body_exn
  | Obj_brace_codeblock of 'brace_codeblock
  | Obj_call_args of 'call_args
  | Obj_case_else of 'case_else
  | Obj_class_inheritance of 'class_inheritance
  | Obj_code_block of 'code_block
  | Obj_code_block_body of 'code_block_body
  | Obj_command of 'command
  | Obj_command_codeblock of 'command_codeblock
  | Obj_command_name of 'command_name
  | Obj_constant of 'constant
  | Obj_do_codeblock of 'do_codeblock
  | Obj_do_sep of 'do_sep
  | Obj_ensure_clause of 'ensure_clause
  | Obj_eol_or_semi of 'eol_or_semi
  | Obj_eols of 'eols
  | Obj_expr of 'expr
  | Obj_formal_arg of 'formal_arg
  | Obj_formal_arg_list of 'formal_arg_list
  | Obj_formal_arg_nonempty_list of 'formal_arg_nonempty_list
  | Obj_func of 'func
  | Obj_identifier of 'identifier
  | Obj_if_else_clauses of 'if_else_clauses
  | Obj_interp_code of 'interp_code
  | Obj_interp_str of 'interp_str
  | Obj_interp_str_work of 'interp_str_work
  | Obj_keyword_as_id of 'keyword_as_id
  | Obj_lhs of 'lhs
  | Obj_lhs_assign_op of 'lhs_assign_op
  | Obj_lhs_prune_binop of 'lhs_prune_binop
  | Obj_lhs_pruned_assign_op of 'lhs_pruned_assign_op
  | Obj_lparen of 'lparen
  | Obj_main of (Ast.expr list)
  | Obj_message_identifier of 'message_identifier
  | Obj_meth_or_atom of 'meth_or_atom
  | Obj_meth_or_atom_list of 'meth_or_atom_list
  | Obj_method_formals of 'method_formals
  | Obj_method_name of 'method_name
  | Obj_mlhs of 'mlhs
  | Obj_mlhs_assign_op of 'mlhs_assign_op
  | Obj_mlhs_clean of 'mlhs_clean
  | Obj_mlhs_item of 'mlhs_item
  | Obj_mlhs_rest of 'mlhs_rest
  | Obj_mrhs of 'mrhs
  | Obj_one_string of 'one_string
  | Obj_primary of 'primary
  | Obj_rescue_clause of 'rescue_clause
  | Obj_rescue_list of 'rescue_list
  | Obj_rescue_list_rest of 'rescue_list_rest
  | Obj_scope_begin of 'scope_begin
  | Obj_scope_class of 'scope_class
  | Obj_scope_def of 'scope_def
  | Obj_scope_end of 'scope_end
  | Obj_scope_module of 'scope_module
  | Obj_scoped_id of 'scoped_id
  | Obj_seen_id of 'seen_id
  | Obj_some_eols of 'some_eols
  | Obj_star_amper of 'star_amper
  | Obj_stmt of 'stmt
  | Obj_stmt_list of 'stmt_list
  | Obj_string of 'string
  | Obj_then_sep of 'then_sep
  | Obj_topcall of 'topcall
  | Obj_unary_op of 'unary_op
  | Obj_when_clauses of 'when_clauses

module Dyp_symbols_array =
struct
  let str_non_ter =
  [|"S'";
    "arg";
    "arg_comma_list_trail";
    "arg_comma_nonempty_list";
    "arg_comma_star_list";
    "array_body";
    "array_body_rest";
    "array_item";
    "assign_op";
    "assignable";
    "bin_op";
    "body_exn";
    "brace_codeblock";
    "call_args";
    "case_else";
    "class_inheritance";
    "code_block";
    "code_block_body";
    "command";
    "command_codeblock";
    "command_name";
    "constant";
    "do_codeblock";
    "do_sep";
    "ensure_clause";
    "eol_or_semi";
    "eols";
    "expr";
    "formal_arg";
    "formal_arg_list";
    "formal_arg_nonempty_list";
    "func";
    "identifier";
    "if_else_clauses";
    "interp_code";
    "interp_str";
    "interp_str_work";
    "keyword_as_id";
    "lhs";
    "lhs_assign_op";
    "lhs_prune_binop";
    "lhs_pruned_assign_op";
    "lparen";
    "main";
    "message_identifier";
    "meth_or_atom";
    "meth_or_atom_list";
    "method_formals";
    "method_name";
    "mlhs";
    "mlhs_assign_op";
    "mlhs_clean";
    "mlhs_item";
    "mlhs_rest";
    "mrhs";
    "one_string";
    "primary";
    "rescue_clause";
    "rescue_list";
    "rescue_list_rest";
    "scope_begin";
    "scope_class";
    "scope_def";
    "scope_end";
    "scope_module";
    "scoped_id";
    "seen_id";
    "some_eols";
    "star_amper";
    "stmt";
    "stmt_list";
    "string";
    "then_sep";
    "topcall";
    "unary_op";
    "when_clauses";|]
  let token_name_array =
    [|"token_epsilon";"dummy_token_main";"T_EOF";"T_EOL";"T_INTERP_END";"T_INTERP_STR";"T_ATOM_BEG";"T_REGEXP";"T_REGEXP_MOD";"T_REGEXP_BEG";"T_USER_BEG";"T_TICK_BEG";"T_DOUBLE_BEG";"T_USER_STRING";"T_DOUBLE_STRING";"T_SINGLE_STRING";"K_FALSE";"K_TRUE";"K_SELF";"K_YIELD";"K_NIL";"K_lEND";"K_lBEGIN";"K_NOT";"K_OR";"K_AND";"K_RETURN";"K_DO";"K_IN";"K_FOR";"K_UNTIL";"K_WHILE";"K_WHEN";"K_CASE";"K_ELSE";"K_ELSIF";"K_THEN";"K_UNLESS";"K_IF";"K_ENSURE";"K_RESCUE";"K_BEGIN";"K_UNDEF";"K_ALIAS";"K_END";"K_DEF";"K_MODULE";"K_CLASS";"T_BUILTIN_VAR";"T_FLOAT";"T_BIGNUM";"T_FIXNUM";"T_ATOM";"T_CLASS_VAR";"T_INST_VAR";"T_GLOBAL_VAR";"T_LID";"T_UID";"T_CAST";"T_USCOPE";"T_SCOPE";"T_SEMICOLON";"T_UAMPER";"T_AMPER";"T_TILDE";"T_BANG";"T_VBAR";"T_CARROT";"T_COLON";"T_QUESTION";"T_PERCENT";"T_SLASH";"T_USTAR";"T_STAR";"T_RBRACE";"T_LBRACE_ARG";"T_LBRACE";"T_RBRACK";"T_LBRACK";"T_LBRACK_ARG";"T_RPAREN";"T_LPAREN_ARG";"T_LPAREN";"T_ASSOC";"T_OP_ASGN";"T_RSHFT";"T_LSHFT";"T_DOT3";"T_DOT2";"T_NMATCH";"T_MATCH";"T_OROP";"T_ANDOP";"T_GT";"T_LT";"T_LEQ";"T_GEQ";"T_NEQ";"T_EQQ";"T_EQ";"T_ASSIGN";"T_CMP";"T_POW";"T_UMINUS";"T_MINUS";"T_UPLUS";"T_PLUS";"T_COMMA";"T_DOT"|]
  let test_cons =  [|
    (fun x -> match x with Obj_arg _ -> true | _ -> false);
    (fun x -> match x with Obj_arg_comma_list_trail _ -> true | _ -> false);
    (fun x -> match x with Obj_arg_comma_nonempty_list _ -> true | _ -> false);
    (fun x -> match x with Obj_arg_comma_star_list _ -> true | _ -> false);
    (fun x -> match x with Obj_array_body _ -> true | _ -> false);
    (fun x -> match x with Obj_array_body_rest _ -> true | _ -> false);
    (fun x -> match x with Obj_array_item _ -> true | _ -> false);
    (fun x -> match x with Obj_assign_op _ -> true | _ -> false);
    (fun x -> match x with Obj_assignable _ -> true | _ -> false);
    (fun x -> match x with Obj_bin_op _ -> true | _ -> false);
    (fun x -> match x with Obj_body_exn _ -> true | _ -> false);
    (fun x -> match x with Obj_brace_codeblock _ -> true | _ -> false);
    (fun x -> match x with Obj_call_args _ -> true | _ -> false);
    (fun x -> match x with Obj_case_else _ -> true | _ -> false);
    (fun x -> match x with Obj_class_inheritance _ -> true | _ -> false);
    (fun x -> match x with Obj_code_block _ -> true | _ -> false);
    (fun x -> match x with Obj_code_block_body _ -> true | _ -> false);
    (fun x -> match x with Obj_command _ -> true | _ -> false);
    (fun x -> match x with Obj_command_codeblock _ -> true | _ -> false);
    (fun x -> match x with Obj_command_name _ -> true | _ -> false);
    (fun x -> match x with Obj_constant _ -> true | _ -> false);
    (fun x -> match x with Obj_do_codeblock _ -> true | _ -> false);
    (fun x -> match x with Obj_do_sep _ -> true | _ -> false);
    (fun x -> match x with Obj_ensure_clause _ -> true | _ -> false);
    (fun x -> match x with Obj_eol_or_semi _ -> true | _ -> false);
    (fun x -> match x with Obj_eols _ -> true | _ -> false);
    (fun x -> match x with Obj_expr _ -> true | _ -> false);
    (fun x -> match x with Obj_formal_arg _ -> true | _ -> false);
    (fun x -> match x with Obj_formal_arg_list _ -> true | _ -> false);
    (fun x -> match x with Obj_formal_arg_nonempty_list _ -> true | _ -> false);
    (fun x -> match x with Obj_func _ -> true | _ -> false);
    (fun x -> match x with Obj_identifier _ -> true | _ -> false);
    (fun x -> match x with Obj_if_else_clauses _ -> true | _ -> false);
    (fun x -> match x with Obj_interp_code _ -> true | _ -> false);
    (fun x -> match x with Obj_interp_str _ -> true | _ -> false);
    (fun x -> match x with Obj_interp_str_work _ -> true | _ -> false);
    (fun x -> match x with Obj_keyword_as_id _ -> true | _ -> false);
    (fun x -> match x with Obj_lhs _ -> true | _ -> false);
    (fun x -> match x with Obj_lhs_assign_op _ -> true | _ -> false);
    (fun x -> match x with Obj_lhs_prune_binop _ -> true | _ -> false);
    (fun x -> match x with Obj_lhs_pruned_assign_op _ -> true | _ -> false);
    (fun x -> match x with Obj_lparen _ -> true | _ -> false);
    (fun x -> match x with Obj_main _ -> true | _ -> false);
    (fun x -> match x with Obj_message_identifier _ -> true | _ -> false);
    (fun x -> match x with Obj_meth_or_atom _ -> true | _ -> false);
    (fun x -> match x with Obj_meth_or_atom_list _ -> true | _ -> false);
    (fun x -> match x with Obj_method_formals _ -> true | _ -> false);
    (fun x -> match x with Obj_method_name _ -> true | _ -> false);
    (fun x -> match x with Obj_mlhs _ -> true | _ -> false);
    (fun x -> match x with Obj_mlhs_assign_op _ -> true | _ -> false);
    (fun x -> match x with Obj_mlhs_clean _ -> true | _ -> false);
    (fun x -> match x with Obj_mlhs_item _ -> true | _ -> false);
    (fun x -> match x with Obj_mlhs_rest _ -> true | _ -> false);
    (fun x -> match x with Obj_mrhs _ -> true | _ -> false);
    (fun x -> match x with Obj_one_string _ -> true | _ -> false);
    (fun x -> match x with Obj_primary _ -> true | _ -> false);
    (fun x -> match x with Obj_rescue_clause _ -> true | _ -> false);
    (fun x -> match x with Obj_rescue_list _ -> true | _ -> false);
    (fun x -> match x with Obj_rescue_list_rest _ -> true | _ -> false);
    (fun x -> match x with Obj_scope_begin _ -> true | _ -> false);
    (fun x -> match x with Obj_scope_class _ -> true | _ -> false);
    (fun x -> match x with Obj_scope_def _ -> true | _ -> false);
    (fun x -> match x with Obj_scope_end _ -> true | _ -> false);
    (fun x -> match x with Obj_scope_module _ -> true | _ -> false);
    (fun x -> match x with Obj_scoped_id _ -> true | _ -> false);
    (fun x -> match x with Obj_seen_id _ -> true | _ -> false);
    (fun x -> match x with Obj_some_eols _ -> true | _ -> false);
    (fun x -> match x with Obj_star_amper _ -> true | _ -> false);
    (fun x -> match x with Obj_stmt _ -> true | _ -> false);
    (fun x -> match x with Obj_stmt_list _ -> true | _ -> false);
    (fun x -> match x with Obj_string _ -> true | _ -> false);
    (fun x -> match x with Obj_then_sep _ -> true | _ -> false);
    (fun x -> match x with Obj_topcall _ -> true | _ -> false);
    (fun x -> match x with Obj_unary_op _ -> true | _ -> false);
    (fun x -> match x with Obj_when_clauses _ -> true | _ -> false)|]
  let cons_of_nt =
  [|0;
    0;
    1;
    2;
    3;
    4;
    5;
    6;
    7;
    8;
    9;
    10;
    11;
    12;
    13;
    14;
    15;
    16;
    17;
    18;
    19;
    20;
    21;
    22;
    23;
    24;
    25;
    26;
    27;
    28;
    29;
    30;
    31;
    32;
    33;
    34;
    35;
    36;
    37;
    38;
    39;
    40;
    41;
    42;
    43;
    44;
    45;
    46;
    47;
    48;
    49;
    50;
    51;
    52;
    53;
    54;
    55;
    56;
    57;
    58;
    59;
    60;
    61;
    62;
    63;
    64;
    65;
    66;
    67;
    68;
    69;
    70;
    71;
    72;
    73;
    74|]
  let str_cons o = match o with
    | Obj_arg _ -> "Obj_arg"
    | Obj_arg_comma_list_trail _ -> "Obj_arg_comma_list_trail"
    | Obj_arg_comma_nonempty_list _ -> "Obj_arg_comma_nonempty_list"
    | Obj_arg_comma_star_list _ -> "Obj_arg_comma_star_list"
    | Obj_array_body _ -> "Obj_array_body"
    | Obj_array_body_rest _ -> "Obj_array_body_rest"
    | Obj_array_item _ -> "Obj_array_item"
    | Obj_assign_op _ -> "Obj_assign_op"
    | Obj_assignable _ -> "Obj_assignable"
    | Obj_bin_op _ -> "Obj_bin_op"
    | Obj_body_exn _ -> "Obj_body_exn"
    | Obj_brace_codeblock _ -> "Obj_brace_codeblock"
    | Obj_call_args _ -> "Obj_call_args"
    | Obj_case_else _ -> "Obj_case_else"
    | Obj_class_inheritance _ -> "Obj_class_inheritance"
    | Obj_code_block _ -> "Obj_code_block"
    | Obj_code_block_body _ -> "Obj_code_block_body"
    | Obj_command _ -> "Obj_command"
    | Obj_command_codeblock _ -> "Obj_command_codeblock"
    | Obj_command_name _ -> "Obj_command_name"
    | Obj_constant _ -> "Obj_constant"
    | Obj_do_codeblock _ -> "Obj_do_codeblock"
    | Obj_do_sep _ -> "Obj_do_sep"
    | Obj_ensure_clause _ -> "Obj_ensure_clause"
    | Obj_eol_or_semi _ -> "Obj_eol_or_semi"
    | Obj_eols _ -> "Obj_eols"
    | Obj_expr _ -> "Obj_expr"
    | Obj_formal_arg _ -> "Obj_formal_arg"
    | Obj_formal_arg_list _ -> "Obj_formal_arg_list"
    | Obj_formal_arg_nonempty_list _ -> "Obj_formal_arg_nonempty_list"
    | Obj_func _ -> "Obj_func"
    | Obj_identifier _ -> "Obj_identifier"
    | Obj_if_else_clauses _ -> "Obj_if_else_clauses"
    | Obj_interp_code _ -> "Obj_interp_code"
    | Obj_interp_str _ -> "Obj_interp_str"
    | Obj_interp_str_work _ -> "Obj_interp_str_work"
    | Obj_keyword_as_id _ -> "Obj_keyword_as_id"
    | Obj_lhs _ -> "Obj_lhs"
    | Obj_lhs_assign_op _ -> "Obj_lhs_assign_op"
    | Obj_lhs_prune_binop _ -> "Obj_lhs_prune_binop"
    | Obj_lhs_pruned_assign_op _ -> "Obj_lhs_pruned_assign_op"
    | Obj_lparen _ -> "Obj_lparen"
    | Obj_main _ -> "Obj_main"
    | Obj_message_identifier _ -> "Obj_message_identifier"
    | Obj_meth_or_atom _ -> "Obj_meth_or_atom"
    | Obj_meth_or_atom_list _ -> "Obj_meth_or_atom_list"
    | Obj_method_formals _ -> "Obj_method_formals"
    | Obj_method_name _ -> "Obj_method_name"
    | Obj_mlhs _ -> "Obj_mlhs"
    | Obj_mlhs_assign_op _ -> "Obj_mlhs_assign_op"
    | Obj_mlhs_clean _ -> "Obj_mlhs_clean"
    | Obj_mlhs_item _ -> "Obj_mlhs_item"
    | Obj_mlhs_rest _ -> "Obj_mlhs_rest"
    | Obj_mrhs _ -> "Obj_mrhs"
    | Obj_one_string _ -> "Obj_one_string"
    | Obj_primary _ -> "Obj_primary"
    | Obj_rescue_clause _ -> "Obj_rescue_clause"
    | Obj_rescue_list _ -> "Obj_rescue_list"
    | Obj_rescue_list_rest _ -> "Obj_rescue_list_rest"
    | Obj_scope_begin _ -> "Obj_scope_begin"
    | Obj_scope_class _ -> "Obj_scope_class"
    | Obj_scope_def _ -> "Obj_scope_def"
    | Obj_scope_end _ -> "Obj_scope_end"
    | Obj_scope_module _ -> "Obj_scope_module"
    | Obj_scoped_id _ -> "Obj_scoped_id"
    | Obj_seen_id _ -> "Obj_seen_id"
    | Obj_some_eols _ -> "Obj_some_eols"
    | Obj_star_amper _ -> "Obj_star_amper"
    | Obj_stmt _ -> "Obj_stmt"
    | Obj_stmt_list _ -> "Obj_stmt_list"
    | Obj_string _ -> "Obj_string"
    | Obj_then_sep _ -> "Obj_then_sep"
    | Obj_topcall _ -> "Obj_topcall"
    | Obj_unary_op _ -> "Obj_unary_op"
    | Obj_when_clauses _ -> "Obj_when_clauses"
    | _ -> failwith "str_cons, unexpected constructor"
end

module Dyp_parameters =
struct
  let token_nb = 109
  let undef_nt = true
  let entry_points = [(Dyp_symbols.main,1)]
  let str_token_name t = Dyp_symbols_array.token_name_array.(t)
  let priority_names = [|"default_priority"|]
  let merge_warning = false
end

module Dyp_runtime = Dyp.Make_dyp(Dyp_parameters)
module Dyp_engine = Dyp_runtime.Parser_PIA

module Dyp_aux_functions =
struct
  let datadyn = Dyp_runtime.Tools.init_datadyn
["arg",0,"Obj_arg";"arg_comma_list_trail",1,"Obj_arg_comma_list_trail";"arg_comma_nonempty_list",2,"Obj_arg_comma_nonempty_list";"arg_comma_star_list",3,"Obj_arg_comma_star_list";"array_body",4,"Obj_array_body";"array_body_rest",5,"Obj_array_body_rest";"array_item",6,"Obj_array_item";"assign_op",7,"Obj_assign_op";"assignable",8,"Obj_assignable";"bin_op",9,"Obj_bin_op";"body_exn",10,"Obj_body_exn";"brace_codeblock",11,"Obj_brace_codeblock";"call_args",12,"Obj_call_args";"case_else",13,"Obj_case_else";"class_inheritance",14,"Obj_class_inheritance";"code_block",15,"Obj_code_block";"code_block_body",16,"Obj_code_block_body";"command",17,"Obj_command";"command_codeblock",18,"Obj_command_codeblock";"command_name",19,"Obj_command_name";"constant",20,"Obj_constant";"do_codeblock",21,"Obj_do_codeblock";"do_sep",22,"Obj_do_sep";"ensure_clause",23,"Obj_ensure_clause";"eol_or_semi",24,"Obj_eol_or_semi";"eols",25,"Obj_eols";"expr",26,"Obj_expr";"formal_arg",27,"Obj_formal_arg";"formal_arg_list",28,"Obj_formal_arg_list";"formal_arg_nonempty_list",29,"Obj_formal_arg_nonempty_list";"func",30,"Obj_func";"identifier",31,"Obj_identifier";"if_else_clauses",32,"Obj_if_else_clauses";"interp_code",33,"Obj_interp_code";"interp_str",34,"Obj_interp_str";"interp_str_work",35,"Obj_interp_str_work";"keyword_as_id",36,"Obj_keyword_as_id";"lhs",37,"Obj_lhs";"lhs_assign_op",38,"Obj_lhs_assign_op";"lhs_prune_binop",39,"Obj_lhs_prune_binop";"lhs_pruned_assign_op",40,"Obj_lhs_pruned_assign_op";"lparen",41,"Obj_lparen";"main",42,"Obj_main";"message_identifier",43,"Obj_message_identifier";"meth_or_atom",44,"Obj_meth_or_atom";"meth_or_atom_list",45,"Obj_meth_or_atom_list";"method_formals",46,"Obj_method_formals";"method_name",47,"Obj_method_name";"mlhs",48,"Obj_mlhs";"mlhs_assign_op",49,"Obj_mlhs_assign_op";"mlhs_clean",50,"Obj_mlhs_clean";"mlhs_item",51,"Obj_mlhs_item";"mlhs_rest",52,"Obj_mlhs_rest";"mrhs",53,"Obj_mrhs";"one_string",54,"Obj_one_string";"primary",55,"Obj_primary";"rescue_clause",56,"Obj_rescue_clause";"rescue_list",57,"Obj_rescue_list";"rescue_list_rest",58,"Obj_rescue_list_rest";"scope_begin",59,"Obj_scope_begin";"scope_class",60,"Obj_scope_class";"scope_def",61,"Obj_scope_def";"scope_end",62,"Obj_scope_end";"scope_module",63,"Obj_scope_module";"scoped_id",64,"Obj_scoped_id";"seen_id",65,"Obj_seen_id";"some_eols",66,"Obj_some_eols";"star_amper",67,"Obj_star_amper";"stmt",68,"Obj_stmt";"stmt_list",69,"Obj_stmt_list";"string",70,"Obj_string";"then_sep",71,"Obj_then_sep";"topcall",72,"Obj_topcall";"unary_op",73,"Obj_unary_op";"when_clauses",74,"Obj_when_clauses"]
["Obj_arg";"Obj_arg_comma_list_trail";"Obj_arg_comma_nonempty_list";"Obj_arg_comma_star_list";"Obj_array_body";"Obj_array_body_rest";"Obj_array_item";"Obj_assign_op";"Obj_assignable";"Obj_bin_op";"Obj_body_exn";"Obj_brace_codeblock";"Obj_call_args";"Obj_case_else";"Obj_class_inheritance";"Obj_code_block";"Obj_code_block_body";"Obj_command";"Obj_command_codeblock";"Obj_command_name";"Obj_constant";"Obj_do_codeblock";"Obj_do_sep";"Obj_ensure_clause";"Obj_eol_or_semi";"Obj_eols";"Obj_expr";"Obj_formal_arg";"Obj_formal_arg_list";"Obj_formal_arg_nonempty_list";"Obj_func";"Obj_identifier";"Obj_if_else_clauses";"Obj_interp_code";"Obj_interp_str";"Obj_interp_str_work";"Obj_keyword_as_id";"Obj_lhs";"Obj_lhs_assign_op";"Obj_lhs_prune_binop";"Obj_lhs_pruned_assign_op";"Obj_lparen";"Obj_main";"Obj_message_identifier";"Obj_meth_or_atom";"Obj_meth_or_atom_list";"Obj_method_formals";"Obj_method_name";"Obj_mlhs";"Obj_mlhs_assign_op";"Obj_mlhs_clean";"Obj_mlhs_item";"Obj_mlhs_rest";"Obj_mrhs";"Obj_one_string";"Obj_primary";"Obj_rescue_clause";"Obj_rescue_list";"Obj_rescue_list_rest";"Obj_scope_begin";"Obj_scope_class";"Obj_scope_def";"Obj_scope_end";"Obj_scope_module";"Obj_scoped_id";"Obj_seen_id";"Obj_some_eols";"Obj_star_amper";"Obj_stmt";"Obj_stmt_list";"Obj_string";"Obj_then_sep";"Obj_topcall";"Obj_unary_op";"Obj_when_clauses"]
  let get_token_value t = match t with
    | T_EOF -> Obj_T_EOF
    | T_EOL -> Obj_T_EOL
    | T_INTERP_END x -> Obj_T_INTERP_END x
    | T_INTERP_STR x -> Obj_T_INTERP_STR x
    | T_ATOM_BEG x -> Obj_T_ATOM_BEG x
    | T_REGEXP x -> Obj_T_REGEXP x
    | T_REGEXP_MOD x -> Obj_T_REGEXP_MOD x
    | T_REGEXP_BEG x -> Obj_T_REGEXP_BEG x
    | T_USER_BEG x -> Obj_T_USER_BEG x
    | T_TICK_BEG x -> Obj_T_TICK_BEG x
    | T_DOUBLE_BEG x -> Obj_T_DOUBLE_BEG x
    | T_USER_STRING x -> Obj_T_USER_STRING x
    | T_DOUBLE_STRING x -> Obj_T_DOUBLE_STRING x
    | T_SINGLE_STRING x -> Obj_T_SINGLE_STRING x
    | K_FALSE x -> Obj_K_FALSE x
    | K_TRUE x -> Obj_K_TRUE x
    | K_SELF x -> Obj_K_SELF x
    | K_YIELD x -> Obj_K_YIELD x
    | K_NIL x -> Obj_K_NIL x
    | K_lEND x -> Obj_K_lEND x
    | K_lBEGIN x -> Obj_K_lBEGIN x
    | K_NOT x -> Obj_K_NOT x
    | K_OR x -> Obj_K_OR x
    | K_AND x -> Obj_K_AND x
    | K_RETURN x -> Obj_K_RETURN x
    | K_DO x -> Obj_K_DO x
    | K_IN x -> Obj_K_IN x
    | K_FOR x -> Obj_K_FOR x
    | K_UNTIL x -> Obj_K_UNTIL x
    | K_WHILE x -> Obj_K_WHILE x
    | K_WHEN x -> Obj_K_WHEN x
    | K_CASE x -> Obj_K_CASE x
    | K_ELSE x -> Obj_K_ELSE x
    | K_ELSIF x -> Obj_K_ELSIF x
    | K_THEN x -> Obj_K_THEN x
    | K_UNLESS x -> Obj_K_UNLESS x
    | K_IF x -> Obj_K_IF x
    | K_ENSURE x -> Obj_K_ENSURE x
    | K_RESCUE x -> Obj_K_RESCUE x
    | K_BEGIN x -> Obj_K_BEGIN x
    | K_UNDEF x -> Obj_K_UNDEF x
    | K_ALIAS x -> Obj_K_ALIAS x
    | K_END x -> Obj_K_END x
    | K_DEF x -> Obj_K_DEF x
    | K_MODULE x -> Obj_K_MODULE x
    | K_CLASS x -> Obj_K_CLASS x
    | T_BUILTIN_VAR x -> Obj_T_BUILTIN_VAR x
    | T_FLOAT x -> Obj_T_FLOAT x
    | T_BIGNUM x -> Obj_T_BIGNUM x
    | T_FIXNUM x -> Obj_T_FIXNUM x
    | T_ATOM x -> Obj_T_ATOM x
    | T_CLASS_VAR x -> Obj_T_CLASS_VAR x
    | T_INST_VAR x -> Obj_T_INST_VAR x
    | T_GLOBAL_VAR x -> Obj_T_GLOBAL_VAR x
    | T_LID x -> Obj_T_LID x
    | T_UID x -> Obj_T_UID x
    | T_CAST x -> Obj_T_CAST x
    | T_USCOPE x -> Obj_T_USCOPE x
    | T_SCOPE x -> Obj_T_SCOPE x
    | T_SEMICOLON x -> Obj_T_SEMICOLON x
    | T_UAMPER x -> Obj_T_UAMPER x
    | T_AMPER x -> Obj_T_AMPER x
    | T_TILDE x -> Obj_T_TILDE x
    | T_BANG x -> Obj_T_BANG x
    | T_VBAR x -> Obj_T_VBAR x
    | T_CARROT x -> Obj_T_CARROT x
    | T_COLON x -> Obj_T_COLON x
    | T_QUESTION x -> Obj_T_QUESTION x
    | T_PERCENT x -> Obj_T_PERCENT x
    | T_SLASH x -> Obj_T_SLASH x
    | T_USTAR x -> Obj_T_USTAR x
    | T_STAR x -> Obj_T_STAR x
    | T_RBRACE x -> Obj_T_RBRACE x
    | T_LBRACE_ARG x -> Obj_T_LBRACE_ARG x
    | T_LBRACE x -> Obj_T_LBRACE x
    | T_RBRACK x -> Obj_T_RBRACK x
    | T_LBRACK x -> Obj_T_LBRACK x
    | T_LBRACK_ARG x -> Obj_T_LBRACK_ARG x
    | T_RPAREN x -> Obj_T_RPAREN x
    | T_LPAREN_ARG x -> Obj_T_LPAREN_ARG x
    | T_LPAREN x -> Obj_T_LPAREN x
    | T_ASSOC x -> Obj_T_ASSOC x
    | T_OP_ASGN x -> Obj_T_OP_ASGN x
    | T_RSHFT x -> Obj_T_RSHFT x
    | T_LSHFT x -> Obj_T_LSHFT x
    | T_DOT3 x -> Obj_T_DOT3 x
    | T_DOT2 x -> Obj_T_DOT2 x
    | T_NMATCH x -> Obj_T_NMATCH x
    | T_MATCH x -> Obj_T_MATCH x
    | T_OROP x -> Obj_T_OROP x
    | T_ANDOP x -> Obj_T_ANDOP x
    | T_GT x -> Obj_T_GT x
    | T_LT x -> Obj_T_LT x
    | T_LEQ x -> Obj_T_LEQ x
    | T_GEQ x -> Obj_T_GEQ x
    | T_NEQ x -> Obj_T_NEQ x
    | T_EQQ x -> Obj_T_EQQ x
    | T_EQ x -> Obj_T_EQ x
    | T_ASSIGN x -> Obj_T_ASSIGN x
    | T_CMP x -> Obj_T_CMP x
    | T_POW x -> Obj_T_POW x
    | T_UMINUS x -> Obj_T_UMINUS x
    | T_MINUS x -> Obj_T_MINUS x
    | T_UPLUS x -> Obj_T_UPLUS x
    | T_PLUS x -> Obj_T_PLUS x
    | T_COMMA x -> Obj_T_COMMA x
    | T_DOT x -> Obj_T_DOT x
  let lexbuf_position lexbuf = (lexbuf.Lexing.lex_start_p,lexbuf.Lexing.lex_curr_p)
  let transform_av_list l =
    let f o = match o with
      | Obj_T_EOF -> `Dummy_obj
      | Obj_T_EOL -> `Dummy_obj
      | x -> `Real_obj x
    in
    List.map f l
end

module Dyp_priority_data =
struct
  let priority_data, default_priority =
    Dyp.insert_priority Dyp.empty_priority_data "default_priority"
end

let global_data = ref 0
let local_data = ref 0
let global_data_equal = (==)
let local_data_equal = (==)

let dyp_merge_arg _ _ = []
let dyp_merge_arg_comma_list_trail _ _ = []
let dyp_merge_arg_comma_nonempty_list _ _ = []
let dyp_merge_arg_comma_star_list _ _ = []
let dyp_merge_array_body _ _ = []
let dyp_merge_array_body_rest _ _ = []
let dyp_merge_array_item _ _ = []
let dyp_merge_assign_op _ _ = []
let dyp_merge_assignable _ _ = []
let dyp_merge_bin_op _ _ = []
let dyp_merge_body_exn _ _ = []
let dyp_merge_brace_codeblock _ _ = []
let dyp_merge_call_args _ _ = []
let dyp_merge_case_else _ _ = []
let dyp_merge_class_inheritance _ _ = []
let dyp_merge_code_block _ _ = []
let dyp_merge_code_block_body _ _ = []
let dyp_merge_command _ _ = []
let dyp_merge_command_codeblock _ _ = []
let dyp_merge_command_name _ _ = []
let dyp_merge_constant _ _ = []
let dyp_merge_do_codeblock _ _ = []
let dyp_merge_do_sep _ _ = []
let dyp_merge_ensure_clause _ _ = []
let dyp_merge_eol_or_semi _ _ = []
let dyp_merge_eols _ _ = []
let dyp_merge_expr _ _ = []
let dyp_merge_formal_arg _ _ = []
let dyp_merge_formal_arg_list _ _ = []
let dyp_merge_formal_arg_nonempty_list _ _ = []
let dyp_merge_func _ _ = []
let dyp_merge_identifier _ _ = []
let dyp_merge_if_else_clauses _ _ = []
let dyp_merge_interp_code _ _ = []
let dyp_merge_interp_str _ _ = []
let dyp_merge_interp_str_work _ _ = []
let dyp_merge_keyword_as_id _ _ = []
let dyp_merge_lhs _ _ = []
let dyp_merge_lhs_assign_op _ _ = []
let dyp_merge_lhs_prune_binop _ _ = []
let dyp_merge_lhs_pruned_assign_op _ _ = []
let dyp_merge_lparen _ _ = []
let dyp_merge_main _ _ = []
let dyp_merge_message_identifier _ _ = []
let dyp_merge_meth_or_atom _ _ = []
let dyp_merge_meth_or_atom_list _ _ = []
let dyp_merge_method_formals _ _ = []
let dyp_merge_method_name _ _ = []
let dyp_merge_mlhs _ _ = []
let dyp_merge_mlhs_assign_op _ _ = []
let dyp_merge_mlhs_clean _ _ = []
let dyp_merge_mlhs_item _ _ = []
let dyp_merge_mlhs_rest _ _ = []
let dyp_merge_mrhs _ _ = []
let dyp_merge_one_string _ _ = []
let dyp_merge_primary _ _ = []
let dyp_merge_rescue_clause _ _ = []
let dyp_merge_rescue_list _ _ = []
let dyp_merge_rescue_list_rest _ _ = []
let dyp_merge_scope_begin _ _ = []
let dyp_merge_scope_class _ _ = []
let dyp_merge_scope_def _ _ = []
let dyp_merge_scope_end _ _ = []
let dyp_merge_scope_module _ _ = []
let dyp_merge_scoped_id _ _ = []
let dyp_merge_seen_id _ _ = []
let dyp_merge_some_eols _ _ = []
let dyp_merge_star_amper _ _ = []
let dyp_merge_stmt _ _ = []
let dyp_merge_stmt_list _ _ = []
let dyp_merge_string _ _ = []
let dyp_merge_then_sep _ _ = []
let dyp_merge_topcall _ _ = []
let dyp_merge_unary_op _ _ = []
let dyp_merge_when_clauses _ _ = []
let dyp_merge = Dyp.keep_oldest

# 2 "newParser.dyp"

  open Ast
    
  module Env = Utils.StrSet

  let env_stack = 
    let s = Stack.create () in
      Stack.push Env.empty s;
      s
    
  let enter_scope dyp = 
    Stack.push Env.empty env_stack

  let leave_scope dyp = 
    ignore(Stack.pop env_stack)

  let clear_env () = 
    Stack.clear env_stack;
    enter_scope ()

  let set_env new_env = 
    Stack.clear env_stack;
    Stack.push new_env env_stack
      
  let env () = Stack.top env_stack

  let assigned_id id = Env.mem id (env())

  let seen_str dyp id = 
    let env = Stack.pop env_stack in
      Stack.push (Env.add id env) env_stack

  let rec seen dyp = function
    | E_Identifier(ID_Lowercase,s,_) -> seen_str dyp s
    | E_Array(es,_) | E_Tuple(es,_) -> List.iter (seen dyp) es
    | _ -> ()

  let state_override = ref false
  let begin_override () =
    let b = !state_override in
      state_override := false;
      b

  let is_exnblock = function | E_ExnBlock _ -> true | _ -> false

  let mk_block lst pos = match lst with
    | [x] -> x
    | _ -> E_Block(lst,pos)

  let rec add_eq = function
    | E_Identifier(k,s,p) -> E_Identifier(ID_Assign(k), s,p)
    | E_Binop(e1,Op_SCOPE,e2,p) -> E_Binop(e1,Op_SCOPE, add_eq e2,p)
    | E_Binop(e1,Op_DOT,e2,p) -> E_Binop(e1,Op_DOT, add_eq e2,p)
    | E_Operator(Op_AREF,p) -> E_Operator(Op_ASET,p)
    | _ -> failwith "add_eq"

  (* turn %w{a b c} into ["a";"b";"c"]  *)
  let bslash_spc_re = Str.regexp "\\\\ " 
  let ws_re = Str.regexp "[ \t\r\n]+"
  let split_single_string_to_array str pos = 
    let chunks = 
      List.map (fun chunk -> Str.split ws_re chunk) 
        (Str.split_delim bslash_spc_re str)
    in
    let strings =
      let rec reduce acc chunks = match acc, chunks with
        | _, [] -> List.rev acc (* done *)
        | [], [chunk] -> chunk  (* no / found *)
        | [], []::chunks_t -> (* space in the front??? *)
            reduce [""] chunks_t
        | [], chunks_h::chunks_t -> (* other first iter *)
            reduce (List.rev chunks_h) chunks_t
        | acc_h::acc_t, []::chunks_t -> 
            reduce ((acc_h ^ " ")::acc_t) chunks_t
        | acc_h::acc_t, chunks_h::chunks_t -> 
            let first = List.hd chunks_h in
            let rest_rev = List.rev(List.tl chunks_h) in
              reduce (rest_rev @ ((acc_h ^ " " ^ first)::acc_t)) chunks_t
      in reduce [] chunks
    in
    let strings = List.map
      (fun s -> E_Literal(Lit_String(String_Single s), pos)) strings
    in
      E_Array(strings,pos)

  (* turn %W{a#{b} c} into ["a#{b}"; "c"] *) 
  let split_double_string_to_array sc pos =
    let ds s = E_Literal(Lit_String(String_Double s),pos) in
      (* first we create a stream of tokens with the grammar of
	   (Expr | Code | String | Delmi)*
	 by splitting the strings on whitespace.  This stream will be
	 in reverse order.
      *)
    let rec tokenize acc = function
      | [] -> acc
      | (Ast.StrExpr e)::tl -> tokenize ((`Expr e)::acc) tl
      | (Ast.StrChars s)::tl -> 
	  let splits = Str.full_split ws_re s in
	  let acc = 
	    List.fold_left
	      (fun acc -> function
		 | Str.Text s -> (`String s)::acc
		 | Str.Delim _ -> `Delim::acc
	      ) acc splits
	  in tokenize acc tl
    in
      (* then we split the (reversed) stream at the delimeters, which
	 mark the entries in the array.  This produces a list in the
	 correct order. *)
    let rec parse acc curr = function
      | [] -> 
	  if curr = [] 
	  then acc (* delim at end *)
	  else (ds curr)::acc
      | `Delim::tl -> 
	  if curr = [] then parse acc curr tl (* delim at start *)
	  else parse ((ds curr)::acc) [] tl
      | (`Expr s)::tl -> parse acc ((Ast.StrExpr s)::curr) tl
      | (`String s)::tl -> parse acc ((Ast.StrChars s)::curr) tl
    in
    let toks = tokenize [] sc in
    let lst = parse [] [] toks in
      E_Array(lst, pos)

  let str_of_interp sc = match sc with
    | []  -> ""
    | [Ast.StrChars s] -> s
    | _ -> failwith "unexpected escapes in string"

  let merge_string_lits s1 s2 = match s1,s2 with
    | E_Literal(Lit_String(s1),p), E_Literal(Lit_String(s2),_) ->
	let s' = match s1, s2 with
	  | String_Tick _, _ | _, String_Tick _ -> assert false
	  | String_Single s1, String_Single s2 -> String_Single (s1 ^ s2)
	  | String_Double sc1, String_Double sc2 -> String_Double (sc1 @ sc2)
	  | String_Single s, String_Double sc -> 
	      String_Double ((Ast.StrChars s)::sc)
	  | String_Double sc,String_Single s -> 
	      String_Double (sc @ [Ast.StrChars s])
	in
	  E_Literal((Lit_String s'),p)
    | _ -> assert false

  let process_user_string m str pos = match m with
    | "r" -> E_Literal(Lit_Regexp (str,""),pos)
    | "w" -> split_single_string_to_array (str_of_interp str) pos
    | "W" -> split_double_string_to_array str pos
    | "q" -> E_Literal(Lit_String(String_Single (str_of_interp str)),pos)
    | "Q" -> E_Literal(Lit_String(String_Double str),pos)
    | "x" -> E_Literal(Lit_String(String_Tick str),pos)
    | "" -> E_Literal(Lit_String(String_Double str),pos)
    | _ -> failwith (Printf.sprintf "unhandled string modifier: %s" m)

  let rec starts_with = function
    | E_Binop(l,_,_,_) -> starts_with l
    | E_MethodCall(l,_,_,_) -> starts_with l
    | E_Ternary(l,_,_,_) -> starts_with l
    | e -> e

  let rec ends_with = function
    | E_Binop(_,_,r,_) -> ends_with r
    | E_MethodCall(m,[],None,_) -> ends_with m
    | E_Ternary(_,_,r,_) -> ends_with r
    | e -> e
	
  let rec replace_end expr new_e = match expr with
    | E_Binop(l,o,r,p) -> E_Binop(l,o,replace_end r new_e,p)
    | E_MethodCall(m,[],None,p) -> E_MethodCall(replace_end m new_e,[],None,p)
    | E_Ternary(g,l,r,p) -> E_Ternary(g,l,replace_end r new_e,p)
    | e -> new_e

  let is_cond_modifier = function
    | E_If _ | E_Unless _ | E_Until _ | E_While _ -> true
    | _ -> false

  let well_formed_do guard body = match ends_with guard with
    | E_MethodCall(_,_,Some (E_CodeBlock(false,_,_,_)),_) ->
	raise Dyp.Giveup
    | _ ->()

  let well_formed_return args = match args with
    | [] -> ()
    | hd::tl -> 
	if is_cond_modifier (Utils.last args) then raise Dyp.Giveup;
	match starts_with hd with
	    (* f(x) should be not be f((x))
	       needed e.g. f(x)[y]
	    *)
	  | E_Block _ -> raise Dyp.Giveup
	  | _ -> ()

  let well_formed_command m args = match args with
    | [] -> ()
	(* f(x) should be not be f((x))
	   needed e.g. f(x)[y] *)
    | [E_Block _] -> raise Dyp.Giveup
    | _ -> if List.exists is_cond_modifier args then raise Dyp.Giveup

  let rec hash_literal_as_args args = 
    let rec work acc lst = match lst with
      | [] -> acc
      | (E_Binop(_,Op_ASSOC,_,p))::tl ->
          let rec hash_args acc = function
            | [] -> acc, None
            | [E_Unary(Op_UAmper,_,_) as blk] -> acc, Some blk
            | (E_Binop(_,Op_ASSOC,_,_) as hd)::tl -> 
                hash_args (hd::acc) tl
            | _ -> raise Dyp.Giveup
          in
          let args,blk = hash_args [] lst in
          let acc = E_Hash(false,List.rev args,p)::acc in
          let acc = match blk with
            | None -> acc
            | Some b -> b::acc
          in acc
              
      | hd::tl -> work (hd::acc) tl
    in
      List.rev (work [] args)

  let rec methodcall m args cb pos = 
    let args = hash_literal_as_args args in
    match m,args,cb with
      | _,[E_Empty],_ -> methodcall m [] cb pos

      | E_Return(_), [], None -> m
      | E_Return([],p),args,None -> E_Return(args,p)
      | E_Yield(_), [], None -> m
      | E_Yield([],p),args,None -> E_Yield(args,p)
      | E_Literal(Lit_True,p), [],None
      | E_Literal(Lit_False,p),[],None
      | E_Identifier(_,_,p),     [],None -> m

      | E_Literal _,_,_ -> raise Dyp.Giveup

      | E_Binop(x,Op_SCOPE,y,_),[],None -> m

      | E_Binop(x,Op_DOT,y,p),_,_ -> E_MethodCall(unfold_dot x y p, args, cb,p)
      | _ -> E_MethodCall(m,args,cb,pos)

  and unfold_dot l r pos = 
    match l with
    (* unfold nested a.b.c to become (a.b()).c() *)
      | E_Binop(a,Op_DOT,b,p) ->
	  let l' = methodcall (unfold_dot a b p) [] None p in
	    E_Binop(l',Op_DOT,r,pos)
	      
      | _ -> E_Binop(l,Op_DOT,r,pos)

  and check_for_dot = function
    | E_Binop(l,Op_DOT,r,p) -> methodcall (unfold_dot l r p) [] None p
    | e -> e
	
  and scope l r = 
    let l = check_for_dot l in
      E_Binop(l,Op_SCOPE,r,pos_of l)
	
  let tuple = function
    | [] -> E_Empty
    | [x] -> x
    | lst -> E_Tuple(lst,pos_of (List.hd lst))

  let command_codeblock cmd cb = 
    match cmd with 
      | E_MethodCall(c,args,None,p) -> E_MethodCall(c,args,Some cb,p)
      | E_Binop(_,Op_DOT,_,p)
      | E_Binop(_,Op_SCOPE,_,p) -> E_MethodCall(cmd,[],Some cb,p)
      | E_Identifier(_,_,p) -> E_MethodCall(cmd,[],Some cb,p)
      | _ -> raise Dyp.Giveup

(* sometimes the lexer gets can't properly handle x!= as x(!=) and
   erronously produces (x!)= *)
  let fix_broken_neq l op r = 
    let default = l, op, r in
    match op with
    | Op_ASSIGN -> begin match ends_with l with
	| E_Identifier(k,s,p) ->
	    let len = String.length s in
	      if s.[len-1] == '!'
	      then 
		let s' = String.sub s 0 (len-1) in
		let l' = replace_end l (E_Identifier(k,s',p)) in
		  l', Op_NEQ, r
	      else default
	| _ -> default
      end
    | _ -> default

(* sometimes the lexer gets can't properly handle x=> as x(=>) and
   erronously produces (x=)> *)
  let fix_broken_assoc l op r = 
    let default = l, op, r in
    match op with
    | Op_GT -> begin match ends_with l with
	| E_Identifier(ID_Assign ik,s,p) ->
	    let l' = replace_end l (E_Identifier(ik,s,p)) in
	      l', Op_ASSOC, r
	| E_Literal(Lit_Atom(sc), pos) ->
	    let astr,rest = match List.rev sc with
	      | (Ast.StrChars s)::tl -> s,tl
	      | _ -> "a",[]
	    in
	    let len = String.length astr in
	      if astr.[len-1] == '='
	      then 
		let s' = String.sub astr 0 (len-1) in
		let sc' = List.rev ((Ast.StrChars s')::rest) in
		let l' = replace_end l (E_Literal(Lit_Atom(sc'),pos)) in
		  l', Op_ASSOC, r
	      else default
	| _ -> default
      end
    | _ -> default

  let expr_priority = function
    | E_Unary(Op_UBang,_,_) | E_Unary(Op_UTilde,_,_)| E_Unary(Op_UPlus,_,_) -> 2000
    | E_Unary(Op_UMinus,_,_) -> 1900
    | E_Binop(_,Op_POW,_,_) -> 1800
    | E_Binop(_,Op_DIV,_,_) | E_Binop(_,Op_REM,_,_) | E_Binop(_,Op_TIMES,_,_) -> 1700
    | E_Binop(_,Op_MINUS,_,_) -> 1500
    | E_Binop(_,Op_PLUS,_,_) -> 1500
    | E_Binop(_,Op_LSHIFT,_,_) | E_Binop(_,Op_RSHIFT,_,_) -> 1400
    | E_Binop(_,Op_BAND,_,_) -> 1300
    | E_Binop(_,Op_BOR,_,_) | E_Binop(_,Op_XOR,_,_) -> 1200

    | E_Binop(_,Op_LEQ,_,_) | E_Binop(_,Op_LT,_,_) 
    | E_Binop(_,Op_GEQ,_,_) | E_Binop(_,Op_GT,_,_) -> 1100

    | E_Binop(_,Op_MATCH,_,_) | E_Binop(_,Op_NMATCH,_,_) | E_Binop(_,Op_NEQ,_,_) 
    | E_Binop(_,Op_CMP,_,_) | E_Binop(_,Op_EQ,_,_) | E_Binop(_,Op_EQQ,_,_) -> 1000

    | E_Binop(_,Op_DOT2,_,_) | E_Binop(_,Op_DOT3,_,_) -> 800

    | E_Binop(_,Op_AND,_,_) -> 750
    | E_Binop(_,Op_OR,_,_) -> 700
    | E_Binop(_,Op_ASSIGN,_,_) | E_Binop(_,Op_OP_ASGN _,_,_) -> 600

    | E_Ternary _ -> 500
    | E_Binop(_,Op_ASSOC,_,_) -> 400

    | E_Unary(Op_UNot,_,_) -> 200
    | E_Binop(_,Op_kAND,_,_) | E_Binop(_,Op_kOR,_,_) -> 100

    | E_Binop _ | E_Unary _ | _ -> max_int
	
  let binop_priority = function
    | E_Unary _ -> max_int
    | e -> expr_priority e

  let prune_uop uop arg pos = 
    let e = E_Unary(uop,arg,pos) in
    let p = expr_priority e in
    let p' = expr_priority arg in
      if p' < p then raise Dyp.Giveup
      else e

  let prune_right_assoc l op r = 
    let l,op,r = fix_broken_neq l op r in
    let l,op,r = fix_broken_assoc l op r in
    let e = E_Binop(l,op,r,(pos_of l)) in
    let p = binop_priority e in
    let pl = binop_priority l in
    let pr = binop_priority r in
      if pr < p || pl <= p
      then raise Dyp.Giveup
      else e

  (* right: (x - y) - z 
     prune: x - (y - z)
  *)
  let prune_left_assoc l op r = 
    let l,op,r = fix_broken_neq l op r in
    let l,op,r = fix_broken_assoc l op r in
    let e = E_Binop(l,op,r,(pos_of l)) in
      match l,op,r with
        | _, _, E_Binop(_,Op_ASSIGN,_,_) ->  e

        | _ ->
            let p = binop_priority e in
            let pl = binop_priority l in
            let pr = binop_priority r in
              if pr <= p || pl < p
              then raise Dyp.Giveup
              else e

  let prune_tern e1 e2 e3 pos = 
    let e = E_Ternary(e1,e2,e3,pos) in
    let p = expr_priority e in
    let p1 = expr_priority e1 in      
      (*Printf.eprintf "tern: %s\n" (Ast_printer.string_of_expr e);*)
      if p1 <= p then raise Dyp.Giveup
      else e

  let uniq_list cmp lst =
    let rec u = function
      | [] -> []
      | [x] -> [x]
      | x1::x2::tl ->
	  if cmp x1 x2 = 0
	  then u (x1::tl) else x1 :: (u (x2::tl))
    in
      u (List.sort cmp lst)

  let gup_empty = function
    | E_Empty -> raise Dyp.Giveup
    | _ -> ()

  let do_fail s l to_s =
    let len = List.length l in
      if len > 1 then begin
	Printf.eprintf "<%s>: %d\n" s len;
	List.iter (fun x -> Printf.eprintf " %s\n" (to_s x)) l;
	failwith s
      end

  let rec rhs_do_codeblock = function
    | E_MethodCall(_,_,Some (E_CodeBlock(false,_,_,_)),_) -> true
    | E_Binop(_,_,r,_)
    | E_MethodCall(r,[],None,_)
    | E_Ternary(_,_,r,_) -> rhs_do_codeblock r
    | E_Hash(false,el,_) -> rhs_do_codeblock (Utils.last el)

    | e -> 
        Printf.eprintf "got: %s\n" (Ast_printer.string_of_expr e);
        false

  let resolve_block_delim with_cb no_cb = match with_cb,no_cb with
    | _, E_MethodCall(_,[],None,_) -> 
        Printf.eprintf "here2??\n";[with_cb;no_cb]
    | E_MethodCall(m1',args1,Some do_block,_),
        E_MethodCall(m2',args_ne,None,_) -> 
	(* look for cmd arg1,...,(argn do block end) *)
        if rhs_do_codeblock (Utils.last args_ne)
        then [with_cb]
        else [with_cb;no_cb]
    | _ -> assert false
        
  let merge_binop l newest = 
    let l' = uniq_list Ast.compare_expr l in
    let fail () = 
      let l' = uniq_list Ast.compare_expr (newest::l') in
	do_fail "binop" l' Ast_printer.string_of_expr;
	l'
    in
    let rec nested_assign = function
      | E_Binop(_,(Op_ASSIGN|Op_OP_ASGN _),_,_) -> true
      | E_Binop(_,_,(E_Binop _ as r),_) -> nested_assign r
      | _ -> false
    in
      match l',newest with
        | [E_Binop(_,Op_ASSIGN,_,_)], E_Binop(_,Op_ASSIGN,_,_) ->
            Printf.eprintf "fail1\n";
            fail ()

        | [E_Binop(l,_,_,_)], correct when nested_assign l -> [correct]
        | [correct], E_Binop(l,_,_,_) when nested_assign l -> [correct]

        | _ -> Printf.eprintf "fail2\n";fail()

  let merge_topcall l newest = 
    let l' = uniq_list Ast.compare_expr l in
      match l',newest with
	| [(E_MethodCall(_,_,Some (E_CodeBlock(false,_,_,_)),_) as with_cb)],
	  (E_MethodCall(_,_,None,_) as no_cb)
	| [(E_MethodCall(_,_,None,_) as no_cb)],
	  (E_MethodCall(_,_,Some (E_CodeBlock(false,_,_,_)),_) as with_cb) ->
	    (* resolve "x y{z}" vs "x y do z end" *)
	    resolve_block_delim with_cb no_cb;
	| _ ->
	    let l' = uniq_list Ast.compare_expr (newest::l') in
	      do_fail "topcall" l' Ast_printer.string_of_expr;
	      l'

  let merge_stmt l newest = 
    let l' = uniq_list Ast.compare_expr l in
      match l',newest with
	| [(E_MethodCall(_,_,Some (E_CodeBlock(false,_,_,_)),_) as with_cb)],
	  (E_MethodCall(_,_,None,_) as no_cb)
	| [(E_MethodCall(_,_,None,_) as no_cb)],
	  (E_MethodCall(_,_,Some (E_CodeBlock(false,_,_,_)),_) as with_cb) ->
	    (* resolve "x y{z}" vs "x y do z end" *)
	    resolve_block_delim with_cb no_cb;

	| [E_ExnBlock({body_exprs = [E_Binop(_,Op_ASSIGN,_,_)]},_)],
	    (E_Binop(_,Op_ASSIGN,(E_ExnBlock _),_) as correct)
	| ([E_Binop(_,Op_ASSIGN,(E_ExnBlock _),_) as correct]),
	    E_ExnBlock({body_exprs = [E_Binop(_,Op_ASSIGN,_,_)]},_) ->
	      (* x = y rescue 3 is a special case where the rescue binds
		 solely to "y" and not the full assignment *)
	    [correct]

	| [E_ExnBlock({body_exprs = [E_Binop(_,Op_OP_ASGN _,_,_)]},_) as correct],
	      E_Binop(_,Op_OP_ASGN _,(E_ExnBlock _),_)
	| [E_Binop(_,Op_OP_ASGN _,(E_ExnBlock _),_)],
	      (E_ExnBlock({body_exprs = [E_Binop(_,Op_OP_ASGN _,_,_)]},_) as correct) ->
	      (* However, using any other assign-operator, reverts to the 
                 other semantics *)
	    [correct]

	(* top-level assignment has a higher priority than any other op *)
	| [E_Binop(l,(Op_ASSIGN|Op_OP_ASGN _ as op),r,pos)], (E_Binop _ | E_Ternary _) ->
	    let l,op,r = fix_broken_neq l op r in
	      [E_Binop(l,op,r,pos)]

	(* we can't use is_cond_modifier to check for a rescue modifier,
	   so we do it here *)	   
	| [E_If(E_ExnBlock _,_,_,_) | E_Unless(E_ExnBlock _,_,_,_)
	  | E_Until(_,E_ExnBlock _,_,_) | E_While(_,E_ExnBlock _,_,_)],
	    (E_ExnBlock _ as correct)
	| [(E_ExnBlock _ as correct)], 
	    (E_If(E_ExnBlock _,_,_,_) | E_Unless(E_ExnBlock _,_,_,_)
	    | E_Until(_,E_ExnBlock _,_,_) | E_While(_,E_ExnBlock _,_,_)) ->
	    [correct]

	| _ ->
	    let l' = uniq_list Ast.compare_expr (newest::l') in
	      do_fail "stmt" l' Ast_printer.string_of_expr;
	      l'

  let merge_expr s l newest =
    let l' = uniq_list Ast.compare_expr (newest::l) in
      do_fail s l' Ast_printer.string_of_expr;
      l'

  let merge_expr_list s l newest = 
    let l' = uniq_list Ast.compare_ast (newest::l) in
      do_fail s l' Ast_printer.string_of_ast;
      l'

  let merge_formal_list s l newest = 
    let f x = Utils.format_to_string Ast_printer.format_formals x in
    let l' = uniq_list compare (newest::l) in
      do_fail s l' f;
      l'

  let merge_rest s l n = 
    let l' = n::l in
      do_fail s l' (fun x -> "??");
      l'

  let merge_rescue s l n = 
    let cmp (x1,y1) (x2,y2) = 
      Utils.cmp2 (Ast.compare_expr x1 x2) Ast.compare_expr y1 y2
    in
    let l' = uniq_list cmp (n::l) in
      do_fail s l' 
	(fun (x,y) -> 
	   Printf.sprintf "%s: %s" 
	     (Ast_printer.string_of_expr x)
	     (Ast_printer.string_of_expr y)
	);
      l'

  (*let () = Dyp.dypgen_verbose := max_int*)

  let dyp_merge_eols = merge_rest "eols"
  let dyp_merge_some_eols = merge_rest "some_eols "
  let dyp_merge_main= merge_rest "main"
  let dyp_merge_stmt_list= merge_expr_list "stmt_list"
  let dyp_merge_stmt= merge_stmt (*merge_expr "stmt"*)
  let dyp_merge_topcall= merge_topcall
  let dyp_merge_arg_comma_list_trail= merge_rest "arg_comma_list_trail"
  let dyp_merge_arg_comma_nonempty_list= merge_rest "arg_comma_nonempty_list"
  let dyp_merge_arg_comma_star_list= merge_rest "arg_comma_star_list"
  let dyp_merge_func= merge_expr "func"
  let dyp_merge_star_amper= merge_rest "star_amper"
  let dyp_merge_call_args= merge_expr_list "call_args"
  let dyp_merge_command= merge_expr "command"
  let dyp_merge_command_name= merge_expr "command_name"
  let dyp_merge_binop= merge_binop
  let dyp_merge_arg= merge_binop (*arg "arg"*)
  let dyp_merge_expr= merge_expr "expr"
  let dyp_merge_primary= merge_expr "primary"
  let dyp_merge_array_item = merge_rest "array_item"
  let dyp_merge_array_body_rest= merge_rest "array_body_rest"
  let dyp_merge_array_body= merge_expr_list "array_body"
  let dyp_merge_scoped_id= merge_rest "scoped_id"
  let dyp_merge_class_inheritance= merge_rest "class_inheritance"
  let dyp_merge_do_sep= merge_rest "do_sep"
  let dyp_merge_code_block= merge_rest "code_block"
  let dyp_merge_code_block_body= merge_rest "code_block_body"
  let dyp_merge_formal_arg= merge_rest "formal_arg"
  let dyp_merge_formal_arg_nonempty_list= merge_formal_list "formal_arg_nonempty_list"
  let dyp_merge_formal_arg_list= merge_formal_list "formal_arg_list"
  let dyp_merge_method_formals= merge_formal_list "method_formals"
  let dyp_merge_lhs= merge_rest "lhs"
  let dyp_merge_mlhs= merge_rest "mlhs"
  let dyp_merge_mlhs_clean= merge_expr_list "mlhs_clean"
  let dyp_merge_mlhs_rest= merge_rest "mlhs_rest"
  let dyp_merge_mlhs_item= merge_rest "mlhs_item"
  let dyp_merge_command_codeblock= merge_rest "command_codeblock"
  let dyp_merge_mrhs= merge_expr_list "mrhs"
  let dyp_merge_then_sep= merge_rest "then_sep"
  let dyp_merge_when_clauses= merge_rest "when_clauses"
  let dyp_merge_body_exn= merge_rest "body_exn"
  let dyp_merge_rescue_clause= merge_rescue "rescue_clause"
  let dyp_merge_rescue_list= merge_rest "rescue_list"
  let dyp_merge_case_else= merge_rest "case_else"
  let dyp_merge_ensure_clause= merge_rest "ensure_clause"
  let dyp_merge_if_else_clauses= merge_rest "if_else_clauses"
  let dyp_merge_meth_or_atom= merge_rest "meth_or_atom"
  let dyp_merge_method_name= merge_expr "method_name"
  let dyp_merge_assignable= merge_rest "assignable"
  let dyp_merge_message_identifier= merge_rest "message_identifier"
  let dyp_merge_bin_op= merge_rest "bin_op"
  let dyp_merge_unary_op= merge_rest "unary_op"
  let dyp_merge_keyword_as_id= merge_rest "keyword_as_id"
  let dyp_merge_identifier= merge_rest "identifier"
  let dyp_merge_constant= merge_rest "constant"

  let dyp_merge l n = 
    Printf.eprintf "<all> branches: %d\n%!" (List.length l);
    n::l
    (*Dyp.keep_all*)

  let parse_annot entry annot_str pos = 
    let lexbuf = Lexing.from_string annot_str in 
    let () = lexbuf.Lexing.lex_curr_p <- pos in
      try entry TypeAnnotLexer.token lexbuf
      with Parsing.Parse_error | Failure("lexing: empty token") ->
        Log.fatal Log.empty
          "Parsing error in type annotation in %s prior to line %d" 
          lexbuf.Lexing.lex_curr_p.Lexing.pos_fname 
          lexbuf.Lexing.lex_curr_p.Lexing.pos_lnum

  let build_annot entry expr annot_str pos = 
    if annot_str = "" then expr
    else
      let annot = parse_annot entry annot_str pos in
        Ast.verify_annotation_name expr annot pos;
        E_Annotate(expr,annot,pos)

  let method_annot = build_annot TypeAnnotParser.e_method
  let class_annot = build_annot TypeAnnotParser.e_class
  let expr_annot = build_annot TypeAnnotParser.e_expr

(* -------------------------------------------------------------- *)

  open Syntax

  let gup_illegal construct = 
    if (List.assoc construct syntax_feature_list)
	then ()
	else raise Dyp.Giveup

(* -------------------------------------------------------------- *)


# 1883               "newParser.ml"
let __dypgen_ra_list =
[
((Dyp_symbols.eols,[],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [] -> Obj_eols 
# 778 "newParser.dyp"
(
    ():'dypgen__Obj_eols)
# 1890               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.eols,[Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_EOL],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 1896               "newParser.ml"
 as _1))); _2] -> Obj_eols 
# 779 "newParser.dyp"
(
               ():'dypgen__Obj_eols)
# 1901               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.some_eols,[Dyp.Ter Dyp_symbols.t_T_EOL;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [ _1;`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 1907               "newParser.ml"
 as _2)))] -> Obj_some_eols 
# 782 "newParser.dyp"
(
               ():'dypgen__Obj_some_eols)
# 1912               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.main,[Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.stmt_list,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_EOF],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 1918               "newParser.ml"
 as _1)));`Real_obj (Obj_stmt_list ( (
# 786 "newParser.dyp"
                  (program:'dypgen__Obj_stmt_list)
# 1922               "newParser.ml"
 as _2))); _3] -> Obj_main 
# 785 "newParser.dyp"
(
                                  ( program ):Ast.expr list)
# 1927               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.stmt_list,[],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [] -> Obj_stmt_list 
# 788 "newParser.dyp"
(
    ([]):'dypgen__Obj_stmt_list)
# 1934               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.stmt_list,[Dyp.Non_ter (Dyp_symbols.stmt,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_stmt ( (
# 790 "newParser.dyp"
        (s:'dypgen__Obj_stmt)
# 1940               "newParser.ml"
 as _1)))] -> Obj_stmt_list 
# 789 "newParser.dyp"
(
            ( [s] ):'dypgen__Obj_stmt_list)
# 1945               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.stmt_list,[Dyp.Ter Dyp_symbols.t_T_SEMICOLON;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.stmt_list,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_SEMICOLON  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 1951               "newParser.ml"
 as _1));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 1955               "newParser.ml"
 as _2)));`Real_obj (Obj_stmt_list ( (
# 791 "newParser.dyp"
                              (ss:'dypgen__Obj_stmt_list)
# 1959               "newParser.ml"
 as _3)))] -> Obj_stmt_list 
# 791 "newParser.dyp"
(
      ( dyp.Dyp.will_shift <- false; ss ):'dypgen__Obj_stmt_list)
# 1964               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.stmt_list,[Dyp.Non_ter (Dyp_symbols.stmt,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eol_or_semi,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.stmt_list,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_stmt ( (
# 793 "newParser.dyp"
        (s:'dypgen__Obj_stmt)
# 1970               "newParser.ml"
 as _1)));`Real_obj (Obj_eol_or_semi ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eol_or_semi)
# 1974               "newParser.ml"
 as _2)));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 1978               "newParser.ml"
 as _3)));`Real_obj (Obj_stmt_list ( (
# 793 "newParser.dyp"
                                      (ss:'dypgen__Obj_stmt_list)
# 1982               "newParser.ml"
 as _4)))] -> Obj_stmt_list 
# 793 "newParser.dyp"
(
      ( dyp.Dyp.will_shift <- false; s:: ss ):'dypgen__Obj_stmt_list)
# 1987               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.assign_op,[Dyp.Ter Dyp_symbols.t_T_ASSIGN],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_ASSIGN  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 1993               "newParser.ml"
 as _1))] -> Obj_assign_op 
# 796 "newParser.dyp"
(
             (Op_ASSIGN):'dypgen__Obj_assign_op)
# 1998               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.assign_op,[Dyp.Ter Dyp_symbols.t_T_OP_ASGN],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_OP_ASGN  (
# 798 "newParser.dyp"
             (op,pos:string*Lexing.position)
# 2004               "newParser.ml"
 as _1))] -> Obj_assign_op 
# 797 "newParser.dyp"
(
                      ( gup_illegal "op_equals"; Op_OP_ASGN (binary_op_of_string op) ):'dypgen__Obj_assign_op)
# 2009               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.scope_begin,[Dyp.Ter Dyp_symbols.t_K_BEGIN],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_BEGIN  (
# 801 "newParser.dyp"
                     (pos:Lexing.position)
# 2015               "newParser.ml"
 as _1))] -> Obj_scope_begin 
# 800 "newParser.dyp"
(
                           ( enter_scope dyp;pos):'dypgen__Obj_scope_begin)
# 2020               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.scope_end,[Dyp.Ter Dyp_symbols.t_K_END],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_END  (
# 802 "newParser.dyp"
                   (pos:Lexing.position)
# 2026               "newParser.ml"
 as _1))] -> Obj_scope_end 
# 801 "newParser.dyp"
(
                           ( enter_scope dyp;pos):'dypgen__Obj_scope_end)
# 2031               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.scope_def,[Dyp.Ter Dyp_symbols.t_K_DEF],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_DEF  (
# 803 "newParser.dyp"
                   (pos:string*Lexing.position)
# 2037               "newParser.ml"
 as _1))] -> Obj_scope_def 
# 802 "newParser.dyp"
(
                           ( enter_scope dyp;pos):'dypgen__Obj_scope_def)
# 2042               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.scope_class,[Dyp.Ter Dyp_symbols.t_K_CLASS],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_CLASS  (
# 804 "newParser.dyp"
                     (t_info,pos:string*Lexing.position)
# 2048               "newParser.ml"
 as _1))] -> Obj_scope_class 
# 803 "newParser.dyp"
(
                                   ( enter_scope dyp;t_info,pos):'dypgen__Obj_scope_class)
# 2053               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.scope_module,[Dyp.Ter Dyp_symbols.t_K_MODULE],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_MODULE  (
# 805 "newParser.dyp"
                      (t_info,pos:string*Lexing.position)
# 2059               "newParser.ml"
 as _1))] -> Obj_scope_module 
# 804 "newParser.dyp"
(
                                   ( enter_scope dyp;t_info,pos):'dypgen__Obj_scope_module)
# 2064               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.seen_id,[Dyp.Non_ter (Dyp_symbols.identifier,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_identifier ( (
# 806 "newParser.dyp"
                   (i:'dypgen__Obj_identifier)
# 2070               "newParser.ml"
 as _1)))] -> Obj_seen_id 
# 805 "newParser.dyp"
(
                       (seen dyp i;i):'dypgen__Obj_seen_id)
# 2075               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.stmt,[Dyp.Ter Dyp_symbols.t_T_CAST],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_CAST  (
# 809 "newParser.dyp"
          (annot,e,pos:string * string * Lexing.position)
# 2081               "newParser.ml"
 as _1))] -> Obj_stmt 
# 809 "newParser.dyp"
(
      ( expr_annot (E_Identifier(ID_Lowercase,e,pos)) annot pos):'dypgen__Obj_stmt)
# 2086               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.stmt,[Dyp.Ter Dyp_symbols.t_K_ALIAS;Dyp.Non_ter (Dyp_symbols.meth_or_atom,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.meth_or_atom,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_ALIAS  (
# 812 "newParser.dyp"
           (pos:Lexing.position)
# 2092               "newParser.ml"
 as _1));`Real_obj (Obj_meth_or_atom ( (
# 812 "newParser.dyp"
                             (e1:'dypgen__Obj_meth_or_atom)
# 2096               "newParser.ml"
 as _2)));`Real_obj (Obj_meth_or_atom ( (
# 812 "newParser.dyp"
                                              (e2:'dypgen__Obj_meth_or_atom)
# 2100               "newParser.ml"
 as _3)))] -> Obj_stmt 
# 811 "newParser.dyp"
(
                                                   ( gup_illegal "alias"; E_Alias(e1,e2,pos) ):'dypgen__Obj_stmt)
# 2105               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.stmt,[Dyp.Ter Dyp_symbols.t_K_UNDEF;Dyp.Non_ter (Dyp_symbols.meth_or_atom_list,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_UNDEF  (
# 813 "newParser.dyp"
           (pos:Lexing.position)
# 2111               "newParser.ml"
 as _1));`Real_obj (Obj_meth_or_atom_list ( (
# 813 "newParser.dyp"
                                  (e1:'dypgen__Obj_meth_or_atom_list)
# 2115               "newParser.ml"
 as _2)))] -> Obj_stmt 
# 812 "newParser.dyp"
(
                                       ( gup_illegal "undef"; E_Undef(e1,pos) ):'dypgen__Obj_stmt)
# 2120               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.stmt,[Dyp.Non_ter (Dyp_symbols.stmt,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_K_IF;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.stmt,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_stmt ( (
# 814 "newParser.dyp"
        (s:'dypgen__Obj_stmt)
# 2126               "newParser.ml"
 as _1)));`Real_obj (Obj_K_IF  (
# 814 "newParser.dyp"
                (pos:Lexing.position)
# 2130               "newParser.ml"
 as _2));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 2134               "newParser.ml"
 as _3)));`Real_obj (Obj_stmt ( (
# 814 "newParser.dyp"
                                   (guard:'dypgen__Obj_stmt)
# 2138               "newParser.ml"
 as _4)))] -> Obj_stmt 
# 814 "newParser.dyp"
(
      ( gup_illegal "if"; gup_illegal "postfix_conds";
	if is_cond_modifier guard then raise Dyp.Giveup; E_If(guard, [s], [],pos) ):'dypgen__Obj_stmt)
# 2144               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.stmt,[Dyp.Non_ter (Dyp_symbols.stmt,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_K_UNLESS;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.stmt,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_stmt ( (
# 817 "newParser.dyp"
        (s:'dypgen__Obj_stmt)
# 2150               "newParser.ml"
 as _1)));`Real_obj (Obj_K_UNLESS  (
# 817 "newParser.dyp"
                    (pos:Lexing.position)
# 2154               "newParser.ml"
 as _2));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 2158               "newParser.ml"
 as _3)));`Real_obj (Obj_stmt ( (
# 817 "newParser.dyp"
                                   (guard:'dypgen__Obj_stmt)
# 2162               "newParser.ml"
 as _4)))] -> Obj_stmt 
# 817 "newParser.dyp"
(
      ( gup_illegal "unless"; gup_illegal "postfix_conds";
	if is_cond_modifier guard then raise Dyp.Giveup; E_Unless(guard, [s], [],pos) ):'dypgen__Obj_stmt)
# 2168               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.stmt,[Dyp.Non_ter (Dyp_symbols.stmt,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_K_UNTIL;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.stmt,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_stmt ( (
# 820 "newParser.dyp"
        (s:'dypgen__Obj_stmt)
# 2174               "newParser.ml"
 as _1)));`Real_obj (Obj_K_UNTIL  (
# 820 "newParser.dyp"
                   (pos:Lexing.position)
# 2178               "newParser.ml"
 as _2));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 2182               "newParser.ml"
 as _3)));`Real_obj (Obj_stmt ( (
# 820 "newParser.dyp"
                                   (guard:'dypgen__Obj_stmt)
# 2186               "newParser.ml"
 as _4)))] -> Obj_stmt 
# 820 "newParser.dyp"
(
      ( gup_illegal "until"; gup_illegal "postfix_conds";
	if is_cond_modifier guard then raise Dyp.Giveup; 
	E_Until(is_exnblock s,guard, [s],pos) ):'dypgen__Obj_stmt)
# 2193               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.stmt,[Dyp.Non_ter (Dyp_symbols.stmt,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_K_WHILE;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.stmt,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_stmt ( (
# 824 "newParser.dyp"
        (s:'dypgen__Obj_stmt)
# 2199               "newParser.ml"
 as _1)));`Real_obj (Obj_K_WHILE  (
# 824 "newParser.dyp"
                   (pos:Lexing.position)
# 2203               "newParser.ml"
 as _2));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 2207               "newParser.ml"
 as _3)));`Real_obj (Obj_stmt ( (
# 824 "newParser.dyp"
                                   (guard:'dypgen__Obj_stmt)
# 2211               "newParser.ml"
 as _4)))] -> Obj_stmt 
# 824 "newParser.dyp"
(
      ( gup_illegal "while"; gup_illegal "postfix_conds";
	if is_cond_modifier guard then raise Dyp.Giveup;
	E_While(is_exnblock s,guard, [s],pos) ):'dypgen__Obj_stmt)
# 2218               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.stmt,[Dyp.Non_ter (Dyp_symbols.stmt,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_K_RESCUE;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.stmt,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_stmt ( (
# 828 "newParser.dyp"
        (s:'dypgen__Obj_stmt)
# 2224               "newParser.ml"
 as _1)));`Real_obj (Obj_K_RESCUE  (
# 828 "newParser.dyp"
                    (pos:Lexing.position)
# 2228               "newParser.ml"
 as _2));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 2232               "newParser.ml"
 as _3)));`Real_obj (Obj_stmt ( (
# 828 "newParser.dyp"
                                   (guard:'dypgen__Obj_stmt)
# 2236               "newParser.ml"
 as _4)))] -> Obj_stmt 
# 828 "newParser.dyp"
(
      ( gup_illegal "exceptions";
	if is_cond_modifier guard then raise Dyp.Giveup;
	E_ExnBlock({body_exprs = [s]; rescue_exprs = [(E_Empty,guard)];
		    ensure_expr = []; else_expr = []}, pos)):'dypgen__Obj_stmt)
# 2244               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.stmt,[Dyp.Non_ter (Dyp_symbols.lhs_assign_op,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.arg,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_K_RESCUE;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.stmt,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_lhs_assign_op ( (
# 837 "newParser.dyp"
                 (l,op:'dypgen__Obj_lhs_assign_op)
# 2250               "newParser.ml"
 as _1)));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 2254               "newParser.ml"
 as _2)));`Real_obj (Obj_arg ( (
# 837 "newParser.dyp"
                                (r:'dypgen__Obj_arg)
# 2258               "newParser.ml"
 as _3)));`Real_obj (Obj_K_RESCUE  (
# 837 "newParser.dyp"
                                            (pos:Lexing.position)
# 2262               "newParser.ml"
 as _4));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 2266               "newParser.ml"
 as _5)));`Real_obj (Obj_stmt ( (
# 837 "newParser.dyp"
                                                           (guard:'dypgen__Obj_stmt)
# 2270               "newParser.ml"
 as _6)))] -> Obj_stmt 
# 837 "newParser.dyp"
(
      ( gup_illegal "exceptions";
	if is_cond_modifier guard then raise Dyp.Giveup;
	let r' = E_ExnBlock({body_exprs = [r]; rescue_exprs = [(E_Empty,guard)];
			     ensure_expr = []; else_expr = []}, pos)
	in (*prune_binop l op r'*) E_Binop(l,op,r',pos)):'dypgen__Obj_stmt)
# 2279               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.stmt,[Dyp.Non_ter (Dyp_symbols.scope_begin,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_LBRACE;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.stmt_list,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_RBRACE],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_scope_begin ( (
# 844 "newParser.dyp"
               (pos:'dypgen__Obj_scope_begin)
# 2285               "newParser.ml"
 as _1)));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 2289               "newParser.ml"
 as _2)));`Real_obj (Obj_T_LBRACE  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 2293               "newParser.ml"
 as _3));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 2297               "newParser.ml"
 as _4)));`Real_obj (Obj_stmt_list ( (
# 844 "newParser.dyp"
                                                 (body:'dypgen__Obj_stmt_list)
# 2301               "newParser.ml"
 as _5)));`Real_obj (Obj_T_RBRACE  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 2305               "newParser.ml"
 as _6))] -> Obj_stmt 
# 844 "newParser.dyp"
(
      ( gup_illegal "begin/end"; leave_scope dyp; E_BeginBlock(body,pos)):'dypgen__Obj_stmt)
# 2310               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.stmt,[Dyp.Non_ter (Dyp_symbols.scope_end,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_LBRACE;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.stmt_list,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_RBRACE],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_scope_end ( (
# 846 "newParser.dyp"
             (pos:'dypgen__Obj_scope_end)
# 2316               "newParser.ml"
 as _1)));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 2320               "newParser.ml"
 as _2)));`Real_obj (Obj_T_LBRACE  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 2324               "newParser.ml"
 as _3));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 2328               "newParser.ml"
 as _4)));`Real_obj (Obj_stmt_list ( (
# 846 "newParser.dyp"
                                               (body:'dypgen__Obj_stmt_list)
# 2332               "newParser.ml"
 as _5)));`Real_obj (Obj_T_RBRACE  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 2336               "newParser.ml"
 as _6))] -> Obj_stmt 
# 846 "newParser.dyp"
(
      ( gup_illegal "begin/end"; leave_scope dyp; E_EndBlock(body,pos)):'dypgen__Obj_stmt)
# 2341               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.stmt,[Dyp.Non_ter (Dyp_symbols.topcall,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_topcall ( (
# 849 "newParser.dyp"
           (c:'dypgen__Obj_topcall)
# 2347               "newParser.ml"
 as _1)))] -> Obj_stmt 
# 848 "newParser.dyp"
(
               ( c ):'dypgen__Obj_stmt)
# 2352               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.stmt,[Dyp.Non_ter (Dyp_symbols.mlhs_assign_op,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.mrhs,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_mlhs_assign_op ( (
# 850 "newParser.dyp"
                  (l,op:'dypgen__Obj_mlhs_assign_op)
# 2358               "newParser.ml"
 as _1)));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 2362               "newParser.ml"
 as _2)));`Real_obj (Obj_mrhs ( (
# 850 "newParser.dyp"
                                  (r:'dypgen__Obj_mrhs)
# 2366               "newParser.ml"
 as _3)))] -> Obj_stmt 
# 850 "newParser.dyp"
(
      ( gup_illegal "mult_assign";
	(*prune_binop (tuple l) op (tuple r)*) 
	let lhs = tuple l in
	  E_Binop(lhs,op,(tuple r),(pos_of lhs))
      ):'dypgen__Obj_stmt)
# 2375               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.stmt,[Dyp.Non_ter (Dyp_symbols.expr,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_expr ( (
# 856 "newParser.dyp"
        (e:'dypgen__Obj_expr)
# 2381               "newParser.ml"
 as _1)))] -> Obj_stmt 
# 855 "newParser.dyp"
(
            ( e ):'dypgen__Obj_stmt)
# 2386               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.stmt,[Dyp.Ter Dyp_symbols.t_T_USTAR;Dyp.Non_ter (Dyp_symbols.primary,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_USTAR  (
# 857 "newParser.dyp"
           (pos:Lexing.position)
# 2392               "newParser.ml"
 as _1));`Real_obj (Obj_primary ( (
# 857 "newParser.dyp"
                        (e:'dypgen__Obj_primary)
# 2396               "newParser.ml"
 as _2)))] -> Obj_stmt 
# 856 "newParser.dyp"
(
                            ( E_Unary(Op_UStar,e,pos) ):'dypgen__Obj_stmt)
# 2401               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.lhs_assign_op,[Dyp.Non_ter (Dyp_symbols.lhs,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.assign_op,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_lhs ( (
# 859 "newParser.dyp"
                  (l:'dypgen__Obj_lhs)
# 2407               "newParser.ml"
 as _1)));`Real_obj (Obj_assign_op ( (
# 859 "newParser.dyp"
                               (op:'dypgen__Obj_assign_op)
# 2411               "newParser.ml"
 as _2)))] -> Obj_lhs_assign_op 
# 858 "newParser.dyp"
(
                                    (seen dyp l; l,op):'dypgen__Obj_lhs_assign_op)
# 2416               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.mlhs_assign_op,[Dyp.Non_ter (Dyp_symbols.mlhs,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.assign_op,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_mlhs ( (
# 860 "newParser.dyp"
                    (l:'dypgen__Obj_mlhs)
# 2422               "newParser.ml"
 as _1)));`Real_obj (Obj_assign_op ( (
# 860 "newParser.dyp"
                                 (op:'dypgen__Obj_assign_op)
# 2426               "newParser.ml"
 as _2)))] -> Obj_mlhs_assign_op 
# 859 "newParser.dyp"
(
                                      (List.iter (seen dyp) l; l,op):'dypgen__Obj_mlhs_assign_op)
# 2431               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.topcall,[Dyp.Non_ter (Dyp_symbols.func,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_func ( (
# 863 "newParser.dyp"
        (f:'dypgen__Obj_func)
# 2437               "newParser.ml"
 as _1)))] -> Obj_topcall 
# 862 "newParser.dyp"
(
            ( f ):'dypgen__Obj_topcall)
# 2442               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.topcall,[Dyp.Non_ter (Dyp_symbols.func,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.code_block,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_func ( (
# 864 "newParser.dyp"
        (c:'dypgen__Obj_func)
# 2448               "newParser.ml"
 as _1)));`Real_obj (Obj_code_block ( (
# 864 "newParser.dyp"
                      (cb:'dypgen__Obj_code_block)
# 2452               "newParser.ml"
 as _2)))] -> Obj_topcall 
# 864 "newParser.dyp"
(
      ( match c with
	| E_MethodCall(m,args,None,pos) -> methodcall m args (Some cb) pos
	| _ -> methodcall c [] (Some cb) (pos_of c)):'dypgen__Obj_topcall)
# 2459               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.topcall,[Dyp.Non_ter (Dyp_symbols.command,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_command ( (
# 869 "newParser.dyp"
           (c:'dypgen__Obj_command)
# 2465               "newParser.ml"
 as _1)))] -> Obj_topcall 
# 868 "newParser.dyp"
(
               (c):'dypgen__Obj_topcall)
# 2470               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.topcall,[Dyp.Non_ter (Dyp_symbols.command_name,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.call_args,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.do_codeblock,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_command_name ( (
# 870 "newParser.dyp"
                (m:'dypgen__Obj_command_name)
# 2476               "newParser.ml"
 as _1)));`Real_obj (Obj_call_args ( (
# 870 "newParser.dyp"
                             (args:'dypgen__Obj_call_args)
# 2480               "newParser.ml"
 as _2)));`Real_obj (Obj_do_codeblock ( (
# 870 "newParser.dyp"
                                                (cb:'dypgen__Obj_do_codeblock)
# 2484               "newParser.ml"
 as _3)))] -> Obj_topcall 
# 870 "newParser.dyp"
(
      ( well_formed_command m args;
	methodcall m args (Some cb) (pos_of m)):'dypgen__Obj_topcall)
# 2490               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.arg_comma_list_trail,[Dyp.Non_ter (Dyp_symbols.arg_comma_star_list,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_arg_comma_star_list ( (
# 875 "newParser.dyp"
                       (e:'dypgen__Obj_arg_comma_star_list)
# 2496               "newParser.ml"
 as _1)))] -> Obj_arg_comma_list_trail 
# 874 "newParser.dyp"
(
                           (e):'dypgen__Obj_arg_comma_list_trail)
# 2501               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.arg_comma_list_trail,[Dyp.Non_ter (Dyp_symbols.arg_comma_star_list,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_COMMA],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_arg_comma_star_list ( (
# 876 "newParser.dyp"
                       (e:'dypgen__Obj_arg_comma_star_list)
# 2507               "newParser.ml"
 as _1)));`Real_obj (Obj_T_COMMA  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 2511               "newParser.ml"
 as _2))] -> Obj_arg_comma_list_trail 
# 875 "newParser.dyp"
(
                                   (e):'dypgen__Obj_arg_comma_list_trail)
# 2516               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.arg_comma_nonempty_list,[Dyp.Non_ter (Dyp_symbols.arg,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_arg ( (
# 879 "newParser.dyp"
       (a:'dypgen__Obj_arg)
# 2522               "newParser.ml"
 as _1)))] -> Obj_arg_comma_nonempty_list 
# 878 "newParser.dyp"
(
           ( [a] ):'dypgen__Obj_arg_comma_nonempty_list)
# 2527               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.arg_comma_nonempty_list,[Dyp.Non_ter (Dyp_symbols.arg,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_COMMA;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.arg_comma_nonempty_list,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_arg ( (
# 880 "newParser.dyp"
       (a:'dypgen__Obj_arg)
# 2533               "newParser.ml"
 as _1)));`Real_obj (Obj_T_COMMA  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 2537               "newParser.ml"
 as _2));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 2541               "newParser.ml"
 as _3)));`Real_obj (Obj_arg_comma_nonempty_list ( (
# 880 "newParser.dyp"
                                               (al:'dypgen__Obj_arg_comma_nonempty_list)
# 2545               "newParser.ml"
 as _4)))] -> Obj_arg_comma_nonempty_list 
# 880 "newParser.dyp"
(
      ( dyp.Dyp.will_shift <- false; a::al ):'dypgen__Obj_arg_comma_nonempty_list)
# 2550               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.arg_comma_star_list,[],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [] -> Obj_arg_comma_star_list 
# 883 "newParser.dyp"
(
    ( [] ):'dypgen__Obj_arg_comma_star_list)
# 2557               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.arg_comma_star_list,[Dyp.Non_ter (Dyp_symbols.star_amper,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_star_amper ( (
# 885 "newParser.dyp"
              (a:'dypgen__Obj_star_amper)
# 2563               "newParser.ml"
 as _1)))] -> Obj_arg_comma_star_list 
# 884 "newParser.dyp"
(
                  ( a ):'dypgen__Obj_arg_comma_star_list)
# 2568               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.arg_comma_star_list,[Dyp.Non_ter (Dyp_symbols.arg_comma_nonempty_list,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_arg_comma_nonempty_list ( (
# 886 "newParser.dyp"
                           (args:'dypgen__Obj_arg_comma_nonempty_list)
# 2574               "newParser.ml"
 as _1)))] -> Obj_arg_comma_star_list 
# 885 "newParser.dyp"
(
                                  (args):'dypgen__Obj_arg_comma_star_list)
# 2579               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.arg_comma_star_list,[Dyp.Non_ter (Dyp_symbols.arg_comma_nonempty_list,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_COMMA;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.star_amper,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_arg_comma_nonempty_list ( (
# 887 "newParser.dyp"
                           (args:'dypgen__Obj_arg_comma_nonempty_list)
# 2585               "newParser.ml"
 as _1)));`Real_obj (Obj_T_COMMA  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 2589               "newParser.ml"
 as _2));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 2593               "newParser.ml"
 as _3)));`Real_obj (Obj_star_amper ( (
# 887 "newParser.dyp"
                                                         (a:'dypgen__Obj_star_amper)
# 2597               "newParser.ml"
 as _4)))] -> Obj_arg_comma_star_list 
# 887 "newParser.dyp"
(
      ( dyp.Dyp.will_shift <- false;
	args @ a ):'dypgen__Obj_arg_comma_star_list)
# 2603               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.func,[Dyp.Non_ter (Dyp_symbols.command_name,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.lparen,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.call_args,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_RPAREN],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_command_name ( (
# 892 "newParser.dyp"
                (c:'dypgen__Obj_command_name)
# 2609               "newParser.ml"
 as _1)));`Real_obj (Obj_lparen ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_lparen)
# 2613               "newParser.ml"
 as _2)));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 2617               "newParser.ml"
 as _3)));`Real_obj (Obj_call_args ( (
# 892 "newParser.dyp"
                                         (args:'dypgen__Obj_call_args)
# 2621               "newParser.ml"
 as _4)));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 2625               "newParser.ml"
 as _5)));`Real_obj (Obj_T_RPAREN  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 2629               "newParser.ml"
 as _6))] -> Obj_func 
# 892 "newParser.dyp"
(
      (
	match args with
	  | [] -> E_MethodCall(c,args,None,pos_of c) 
	  | _ -> methodcall c args None (pos_of c)
      ):'dypgen__Obj_func)
# 2638               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.func,[Dyp.Non_ter (Dyp_symbols.command_name,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.lparen,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.command,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_RPAREN],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_command_name ( (
# 898 "newParser.dyp"
                (c:'dypgen__Obj_command_name)
# 2644               "newParser.ml"
 as _1)));`Real_obj (Obj_lparen ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_lparen)
# 2648               "newParser.ml"
 as _2)));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 2652               "newParser.ml"
 as _3)));`Real_obj (Obj_command ( (
# 898 "newParser.dyp"
                                       (a:'dypgen__Obj_command)
# 2656               "newParser.ml"
 as _4)));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 2660               "newParser.ml"
 as _5)));`Real_obj (Obj_T_RPAREN  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 2664               "newParser.ml"
 as _6))] -> Obj_func 
# 898 "newParser.dyp"
(
      (E_MethodCall(c,[a],None,pos_of c)):'dypgen__Obj_func)
# 2669               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.star_amper,[Dyp.Ter Dyp_symbols.t_T_USTAR;Dyp.Non_ter (Dyp_symbols.arg,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_USTAR  (
# 902 "newParser.dyp"
           (pos:Lexing.position)
# 2675               "newParser.ml"
 as _1));`Real_obj (Obj_arg ( (
# 902 "newParser.dyp"
                    (a:'dypgen__Obj_arg)
# 2679               "newParser.ml"
 as _2)))] -> Obj_star_amper 
# 901 "newParser.dyp"
(
                        ( [E_Unary(Op_UStar,a,pos)] ):'dypgen__Obj_star_amper)
# 2684               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.star_amper,[Dyp.Ter Dyp_symbols.t_T_UAMPER;Dyp.Non_ter (Dyp_symbols.arg,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_UAMPER  (
# 903 "newParser.dyp"
            (pos:Lexing.position)
# 2690               "newParser.ml"
 as _1));`Real_obj (Obj_arg ( (
# 903 "newParser.dyp"
                     (a:'dypgen__Obj_arg)
# 2694               "newParser.ml"
 as _2)))] -> Obj_star_amper 
# 902 "newParser.dyp"
(
                         ( [E_Unary(Op_UAmper,a,pos)] ):'dypgen__Obj_star_amper)
# 2699               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.star_amper,[Dyp.Ter Dyp_symbols.t_T_USTAR;Dyp.Non_ter (Dyp_symbols.arg,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_COMMA;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_UAMPER;Dyp.Non_ter (Dyp_symbols.arg,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_USTAR  (
# 904 "newParser.dyp"
           (pos1:Lexing.position)
# 2705               "newParser.ml"
 as _1));`Real_obj (Obj_arg ( (
# 904 "newParser.dyp"
                     (a1:'dypgen__Obj_arg)
# 2709               "newParser.ml"
 as _2)));`Real_obj (Obj_T_COMMA  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 2713               "newParser.ml"
 as _3));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 2717               "newParser.ml"
 as _4)));`Real_obj (Obj_T_UAMPER  (
# 904 "newParser.dyp"
                                               (pos2:Lexing.position)
# 2721               "newParser.ml"
 as _5));`Real_obj (Obj_arg ( (
# 904 "newParser.dyp"
                                                         (a2:'dypgen__Obj_arg)
# 2725               "newParser.ml"
 as _6)))] -> Obj_star_amper 
# 904 "newParser.dyp"
(
      ( [E_Unary(Op_UStar,a1,pos1); E_Unary(Op_UAmper,a2,pos2)] ):'dypgen__Obj_star_amper)
# 2730               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.call_args,[],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [] -> Obj_call_args 
# 907 "newParser.dyp"
(
    ( [] ):'dypgen__Obj_call_args)
# 2737               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.call_args,[Dyp.Non_ter (Dyp_symbols.arg_comma_star_list,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_arg_comma_star_list ( (
# 909 "newParser.dyp"
                       (args:'dypgen__Obj_arg_comma_star_list)
# 2743               "newParser.ml"
 as _1)))] -> Obj_call_args 
# 908 "newParser.dyp"
(
                              ( args ):'dypgen__Obj_call_args)
# 2748               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.call_args,[Dyp.Ter Dyp_symbols.t_T_LBRACK;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.call_args,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_RBRACK],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_LBRACK  (
# 910 "newParser.dyp"
            (pos:Lexing.position)
# 2754               "newParser.ml"
 as _1));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 2758               "newParser.ml"
 as _2)));`Real_obj (Obj_call_args ( (
# 910 "newParser.dyp"
                                (args:'dypgen__Obj_call_args)
# 2762               "newParser.ml"
 as _3)));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 2766               "newParser.ml"
 as _4)));`Real_obj (Obj_T_RBRACK  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 2770               "newParser.ml"
 as _5))] -> Obj_call_args 
# 909 "newParser.dyp"
(
                                                     ( [E_Array(args,pos)] ):'dypgen__Obj_call_args)
# 2775               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.command,[Dyp.Ter Dyp_symbols.t_K_YIELD;Dyp.Non_ter (Dyp_symbols.call_args,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_YIELD  (
# 913 "newParser.dyp"
           (pos:Lexing.position)
# 2781               "newParser.ml"
 as _1));`Real_obj (Obj_call_args ( (
# 913 "newParser.dyp"
                          (args:'dypgen__Obj_call_args)
# 2785               "newParser.ml"
 as _2)))] -> Obj_command 
# 913 "newParser.dyp"
(
      ( well_formed_return args;
	E_Yield(args,pos) ):'dypgen__Obj_command)
# 2791               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.command,[Dyp.Non_ter (Dyp_symbols.command_name,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.call_args,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_command_name ( (
# 916 "newParser.dyp"
                (m:'dypgen__Obj_command_name)
# 2797               "newParser.ml"
 as _1)));`Real_obj (Obj_call_args ( (
# 916 "newParser.dyp"
                             (args:'dypgen__Obj_call_args)
# 2801               "newParser.ml"
 as _2)))] -> Obj_command 
# 916 "newParser.dyp"
(
      ( well_formed_command m args;
	methodcall m args None (pos_of m)):'dypgen__Obj_command)
# 2807               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.command,[Dyp.Non_ter (Dyp_symbols.command_name,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.command,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_command_name ( (
# 919 "newParser.dyp"
                (cmd:'dypgen__Obj_command_name)
# 2813               "newParser.ml"
 as _1)));`Real_obj (Obj_command ( (
# 919 "newParser.dyp"
                             (cmd2:'dypgen__Obj_command)
# 2817               "newParser.ml"
 as _2)))] -> Obj_command 
# 919 "newParser.dyp"
(
    (well_formed_command cmd [cmd2];
     methodcall cmd [cmd2] None (pos_of cmd)):'dypgen__Obj_command)
# 2823               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.command_name,[Dyp.Non_ter (Dyp_symbols.identifier,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_identifier ( (
# 924 "newParser.dyp"
              (id:'dypgen__Obj_identifier)
# 2829               "newParser.ml"
 as _1)))] -> Obj_command_name 
# 923 "newParser.dyp"
(
                   (id):'dypgen__Obj_command_name)
# 2834               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.command_name,[Dyp.Non_ter (Dyp_symbols.primary,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_DOT;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.message_identifier,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_primary ( (
# 925 "newParser.dyp"
           (p:'dypgen__Obj_primary)
# 2840               "newParser.ml"
 as _1)));`Real_obj (Obj_T_DOT  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 2844               "newParser.ml"
 as _2));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 2848               "newParser.ml"
 as _3)));`Real_obj (Obj_message_identifier ( (
# 925 "newParser.dyp"
                                            (m:'dypgen__Obj_message_identifier)
# 2852               "newParser.ml"
 as _4)))] -> Obj_command_name 
# 925 "newParser.dyp"
(
      ( unfold_dot p m (pos_of p)):'dypgen__Obj_command_name)
# 2857               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.command_name,[Dyp.Non_ter (Dyp_symbols.command_name,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_DOT;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.message_identifier,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_command_name ( (
# 927 "newParser.dyp"
                (p:'dypgen__Obj_command_name)
# 2863               "newParser.ml"
 as _1)));`Real_obj (Obj_T_DOT  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 2867               "newParser.ml"
 as _2));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 2871               "newParser.ml"
 as _3)));`Real_obj (Obj_message_identifier ( (
# 927 "newParser.dyp"
                                                 (m:'dypgen__Obj_message_identifier)
# 2875               "newParser.ml"
 as _4)))] -> Obj_command_name 
# 927 "newParser.dyp"
(
      ( unfold_dot p m (pos_of p)):'dypgen__Obj_command_name)
# 2880               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.command_name,[Dyp.Non_ter (Dyp_symbols.primary,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_SCOPE;Dyp.Non_ter (Dyp_symbols.message_identifier,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_primary ( (
# 929 "newParser.dyp"
           (p:'dypgen__Obj_primary)
# 2886               "newParser.ml"
 as _1)));`Real_obj (Obj_T_SCOPE  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 2890               "newParser.ml"
 as _2));`Real_obj (Obj_message_identifier ( (
# 929 "newParser.dyp"
                                         (m:'dypgen__Obj_message_identifier)
# 2894               "newParser.ml"
 as _3)))] -> Obj_command_name 
# 929 "newParser.dyp"
(
      ( scope p m ):'dypgen__Obj_command_name)
# 2899               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.command_name,[Dyp.Non_ter (Dyp_symbols.command_name,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_SCOPE;Dyp.Non_ter (Dyp_symbols.message_identifier,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_command_name ( (
# 931 "newParser.dyp"
                (p:'dypgen__Obj_command_name)
# 2905               "newParser.ml"
 as _1)));`Real_obj (Obj_T_SCOPE  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 2909               "newParser.ml"
 as _2));`Real_obj (Obj_message_identifier ( (
# 931 "newParser.dyp"
                                              (m:'dypgen__Obj_message_identifier)
# 2913               "newParser.ml"
 as _3)))] -> Obj_command_name 
# 931 "newParser.dyp"
(
      ( scope p m ):'dypgen__Obj_command_name)
# 2918               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.lhs_prune_binop,[Dyp.Non_ter (Dyp_symbols.lhs,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_lhs ( (
# 934 "newParser.dyp"
                    (l:'dypgen__Obj_lhs)
# 2924               "newParser.ml"
 as _1)))] -> Obj_lhs_prune_binop 
# 933 "newParser.dyp"
(
                        (match l with E_Binop _ -> raise Dyp.Giveup | _ -> l):'dypgen__Obj_lhs_prune_binop)
# 2929               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.lhs_pruned_assign_op,[Dyp.Non_ter (Dyp_symbols.lhs_prune_binop,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.assign_op,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_lhs_prune_binop ( (
# 935 "newParser.dyp"
                                     (l:'dypgen__Obj_lhs_prune_binop)
# 2935               "newParser.ml"
 as _1)));`Real_obj (Obj_assign_op ( (
# 935 "newParser.dyp"
                                                  (op:'dypgen__Obj_assign_op)
# 2939               "newParser.ml"
 as _2)))] -> Obj_lhs_pruned_assign_op 
# 934 "newParser.dyp"
(
                                                       (seen dyp l; l,op):'dypgen__Obj_lhs_pruned_assign_op)
# 2944               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.arg,[Dyp.Non_ter (Dyp_symbols.primary,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_primary ( (
# 938 "newParser.dyp"
           (p:'dypgen__Obj_primary)
# 2950               "newParser.ml"
 as _1)))] -> Obj_arg 
# 937 "newParser.dyp"
(
               (p):'dypgen__Obj_arg)
# 2955               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.arg,[Dyp.Non_ter (Dyp_symbols.unary_op,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.arg,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_unary_op ( (
# 939 "newParser.dyp"
            (o,pos:'dypgen__Obj_unary_op)
# 2961               "newParser.ml"
 as _1)));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 2965               "newParser.ml"
 as _2)));`Real_obj (Obj_arg ( (
# 939 "newParser.dyp"
                            (a:'dypgen__Obj_arg)
# 2969               "newParser.ml"
 as _3)))] -> Obj_arg 
# 938 "newParser.dyp"
(
                                ( prune_uop o a pos ):'dypgen__Obj_arg)
# 2974               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.arg,[Dyp.Non_ter (Dyp_symbols.lhs_pruned_assign_op,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.arg,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_lhs_pruned_assign_op ( (
# 940 "newParser.dyp"
                        (l,op:'dypgen__Obj_lhs_pruned_assign_op)
# 2980               "newParser.ml"
 as _1)));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 2984               "newParser.ml"
 as _2)));`Real_obj (Obj_arg ( (
# 940 "newParser.dyp"
                                       (r:'dypgen__Obj_arg)
# 2988               "newParser.ml"
 as _3)))] -> Obj_arg 
# 940 "newParser.dyp"
(
      ( prune_right_assoc l op r ):'dypgen__Obj_arg)
# 2993               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.arg,[Dyp.Non_ter (Dyp_symbols.arg,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.bin_op,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.arg,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_arg ( (
# 943 "newParser.dyp"
       (l:'dypgen__Obj_arg)
# 2999               "newParser.ml"
 as _1)));`Real_obj (Obj_bin_op ( (
# 943 "newParser.dyp"
                 (bop:'dypgen__Obj_bin_op)
# 3003               "newParser.ml"
 as _2)));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 3007               "newParser.ml"
 as _3)));`Real_obj (Obj_arg ( (
# 943 "newParser.dyp"
                               (r:'dypgen__Obj_arg)
# 3011               "newParser.ml"
 as _4)))] -> Obj_arg 
# 942 "newParser.dyp"
(
                                  ( prune_left_assoc l bop r ):'dypgen__Obj_arg)
# 3016               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.arg,[Dyp.Non_ter (Dyp_symbols.arg,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_ANDOP;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.arg,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_arg ( (
# 944 "newParser.dyp"
       (l:'dypgen__Obj_arg)
# 3022               "newParser.ml"
 as _1)));`Real_obj (Obj_T_ANDOP  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 3026               "newParser.ml"
 as _2));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 3030               "newParser.ml"
 as _3)));`Real_obj (Obj_arg ( (
# 944 "newParser.dyp"
                           (r:'dypgen__Obj_arg)
# 3034               "newParser.ml"
 as _4)))] -> Obj_arg 
# 943 "newParser.dyp"
(
                               ( prune_left_assoc l Op_AND r ):'dypgen__Obj_arg)
# 3039               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.arg,[Dyp.Non_ter (Dyp_symbols.arg,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_OROP;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.arg,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_arg ( (
# 945 "newParser.dyp"
       (l:'dypgen__Obj_arg)
# 3045               "newParser.ml"
 as _1)));`Real_obj (Obj_T_OROP  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 3049               "newParser.ml"
 as _2));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 3053               "newParser.ml"
 as _3)));`Real_obj (Obj_arg ( (
# 945 "newParser.dyp"
                          (r:'dypgen__Obj_arg)
# 3057               "newParser.ml"
 as _4)))] -> Obj_arg 
# 944 "newParser.dyp"
(
                               ( prune_left_assoc l Op_OR r ):'dypgen__Obj_arg)
# 3062               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.arg,[Dyp.Non_ter (Dyp_symbols.arg,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_QUESTION;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.expr,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_COLON;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.expr,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_arg ( (
# 946 "newParser.dyp"
       (e1:'dypgen__Obj_arg)
# 3068               "newParser.ml"
 as _1)));`Real_obj (Obj_T_QUESTION  (
# 946 "newParser.dyp"
                      (pos:Lexing.position)
# 3072               "newParser.ml"
 as _2));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 3076               "newParser.ml"
 as _3)));`Real_obj (Obj_expr ( (
# 946 "newParser.dyp"
                                     (e2:'dypgen__Obj_expr)
# 3080               "newParser.ml"
 as _4)));`Real_obj (Obj_T_COLON  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 3084               "newParser.ml"
 as _5));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 3088               "newParser.ml"
 as _6)));`Real_obj (Obj_expr ( (
# 946 "newParser.dyp"
                                                           (e3:'dypgen__Obj_expr)
# 3092               "newParser.ml"
 as _7)))] -> Obj_arg 
# 946 "newParser.dyp"
(
    ( prune_tern e1 e2 e3 (pos_of e1) ):'dypgen__Obj_arg)
# 3097               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.expr,[Dyp.Ter Dyp_symbols.t_K_RETURN;Dyp.Non_ter (Dyp_symbols.call_args,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_RETURN  (
# 950 "newParser.dyp"
            (pos:Lexing.position)
# 3103               "newParser.ml"
 as _1));`Real_obj (Obj_call_args ( (
# 950 "newParser.dyp"
                           (args:'dypgen__Obj_call_args)
# 3107               "newParser.ml"
 as _2)))] -> Obj_expr 
# 950 "newParser.dyp"
(
      ( well_formed_return args; E_Return(args,pos) ):'dypgen__Obj_expr)
# 3112               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.expr,[Dyp.Ter Dyp_symbols.t_K_RETURN;Dyp.Non_ter (Dyp_symbols.arg,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_RETURN  (
# 952 "newParser.dyp"
            (pos:Lexing.position)
# 3118               "newParser.ml"
 as _1));`Real_obj (Obj_arg ( (
# 952 "newParser.dyp"
                     (p:'dypgen__Obj_arg)
# 3122               "newParser.ml"
 as _2)))] -> Obj_expr 
# 952 "newParser.dyp"
(
      ( match p with
	| E_Block([x],_) -> E_Return([x],pos)
	| arg -> if is_cond_modifier arg then raise Dyp.Giveup;
	    E_Return([arg],pos) ):'dypgen__Obj_expr)
# 3130               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.expr,[Dyp.Ter Dyp_symbols.t_K_YIELD;Dyp.Non_ter (Dyp_symbols.call_args,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_YIELD  (
# 958 "newParser.dyp"
           (pos:Lexing.position)
# 3136               "newParser.ml"
 as _1));`Real_obj (Obj_call_args ( (
# 958 "newParser.dyp"
                          (args:'dypgen__Obj_call_args)
# 3140               "newParser.ml"
 as _2)))] -> Obj_expr 
# 958 "newParser.dyp"
(
      ( well_formed_return args;
	E_Yield(args,pos) ):'dypgen__Obj_expr)
# 3146               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.expr,[Dyp.Non_ter (Dyp_symbols.expr,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_K_AND;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.expr,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_expr ( (
# 961 "newParser.dyp"
        (e1:'dypgen__Obj_expr)
# 3152               "newParser.ml"
 as _1)));`Real_obj (Obj_K_AND  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 3156               "newParser.ml"
 as _2));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 3160               "newParser.ml"
 as _3)));`Real_obj (Obj_expr ( (
# 961 "newParser.dyp"
                            (e2:'dypgen__Obj_expr)
# 3164               "newParser.ml"
 as _4)))] -> Obj_expr 
# 960 "newParser.dyp"
(
                                 ( prune_left_assoc e1 Op_kAND e2 ):'dypgen__Obj_expr)
# 3169               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.expr,[Dyp.Non_ter (Dyp_symbols.expr,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_K_OR;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.expr,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_expr ( (
# 962 "newParser.dyp"
        (e1:'dypgen__Obj_expr)
# 3175               "newParser.ml"
 as _1)));`Real_obj (Obj_K_OR  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 3179               "newParser.ml"
 as _2));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 3183               "newParser.ml"
 as _3)));`Real_obj (Obj_expr ( (
# 962 "newParser.dyp"
                           (e2:'dypgen__Obj_expr)
# 3187               "newParser.ml"
 as _4)))] -> Obj_expr 
# 961 "newParser.dyp"
(
                                 ( prune_left_assoc e1 Op_kOR e2 ):'dypgen__Obj_expr)
# 3192               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.expr,[Dyp.Ter Dyp_symbols.t_K_NOT;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.expr,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_NOT  (
# 963 "newParser.dyp"
         (pos:Lexing.position)
# 3198               "newParser.ml"
 as _1));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 3202               "newParser.ml"
 as _2)));`Real_obj (Obj_expr ( (
# 963 "newParser.dyp"
                        (e:'dypgen__Obj_expr)
# 3206               "newParser.ml"
 as _3)))] -> Obj_expr 
# 962 "newParser.dyp"
(
                                      ( prune_uop Op_UNot e pos):'dypgen__Obj_expr)
# 3211               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.expr,[Dyp.Ter Dyp_symbols.t_T_BANG;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.expr,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_BANG  (
# 964 "newParser.dyp"
          (pos:Lexing.position)
# 3217               "newParser.ml"
 as _1));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 3221               "newParser.ml"
 as _2)));`Real_obj (Obj_expr ( (
# 964 "newParser.dyp"
                         (e:'dypgen__Obj_expr)
# 3225               "newParser.ml"
 as _3)))] -> Obj_expr 
# 963 "newParser.dyp"
(
                                      ( prune_uop Op_UBang e pos):'dypgen__Obj_expr)
# 3230               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.expr,[Dyp.Non_ter (Dyp_symbols.command,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_command ( (
# 965 "newParser.dyp"
           (c:'dypgen__Obj_command)
# 3236               "newParser.ml"
 as _1)))] -> Obj_expr 
# 964 "newParser.dyp"
(
                            (c):'dypgen__Obj_expr)
# 3241               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.expr,[Dyp.Non_ter (Dyp_symbols.arg,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_arg ( (
# 966 "newParser.dyp"
       (a:'dypgen__Obj_arg)
# 3247               "newParser.ml"
 as _1)))] -> Obj_expr 
# 965 "newParser.dyp"
(
                            ( a ):'dypgen__Obj_expr)
# 3252               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.primary,[Dyp.Ter Dyp_symbols.t_T_LPAREN;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.stmt_list,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_RPAREN],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_LPAREN  (
# 969 "newParser.dyp"
            (pos:Lexing.position)
# 3258               "newParser.ml"
 as _1));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 3262               "newParser.ml"
 as _2)));`Real_obj (Obj_stmt_list ( (
# 969 "newParser.dyp"
                                (ss:'dypgen__Obj_stmt_list)
# 3266               "newParser.ml"
 as _3)));`Real_obj (Obj_T_RPAREN  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 3270               "newParser.ml"
 as _4))] -> Obj_primary 
# 969 "newParser.dyp"
(
      ( (* don't collapse the block here to prevent the disambiguation
	  rules from erroneously firing	*) E_Block(ss,pos) ):'dypgen__Obj_primary)
# 3276               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.primary,[Dyp.Non_ter (Dyp_symbols.constant,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_constant ( (
# 972 "newParser.dyp"
            (c:'dypgen__Obj_constant)
# 3282               "newParser.ml"
 as _1)))] -> Obj_primary 
# 971 "newParser.dyp"
(
                ( c ):'dypgen__Obj_primary)
# 3287               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.primary,[Dyp.Non_ter (Dyp_symbols.identifier,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_identifier ( (
# 973 "newParser.dyp"
              (id:'dypgen__Obj_identifier)
# 3293               "newParser.ml"
 as _1)))] -> Obj_primary 
# 972 "newParser.dyp"
(
                   ( id ):'dypgen__Obj_primary)
# 3298               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.primary,[Dyp.Non_ter (Dyp_symbols.command_name,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_command_name ( (
# 974 "newParser.dyp"
                (c:'dypgen__Obj_command_name)
# 3304               "newParser.ml"
 as _1)))] -> Obj_primary 
# 973 "newParser.dyp"
(
                    ( methodcall c [] None (pos_of c)):'dypgen__Obj_primary)
# 3309               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.primary,[Dyp.Non_ter (Dyp_symbols.command_name,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.code_block,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_command_name ( (
# 975 "newParser.dyp"
                (c:'dypgen__Obj_command_name)
# 3315               "newParser.ml"
 as _1)));`Real_obj (Obj_code_block ( (
# 975 "newParser.dyp"
                              (cb:'dypgen__Obj_code_block)
# 3319               "newParser.ml"
 as _2)))] -> Obj_primary 
# 974 "newParser.dyp"
(
                                   ( command_codeblock c cb ):'dypgen__Obj_primary)
# 3324               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.primary,[Dyp.Non_ter (Dyp_symbols.primary,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_SCOPE;Dyp.Non_ter (Dyp_symbols.identifier,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_primary ( (
# 976 "newParser.dyp"
           (p:'dypgen__Obj_primary)
# 3330               "newParser.ml"
 as _1)));`Real_obj (Obj_T_SCOPE  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 3334               "newParser.ml"
 as _2));`Real_obj (Obj_identifier ( (
# 976 "newParser.dyp"
                                 (id:'dypgen__Obj_identifier)
# 3338               "newParser.ml"
 as _3)))] -> Obj_primary 
# 975 "newParser.dyp"
(
                                      ( scope p id ):'dypgen__Obj_primary)
# 3343               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.primary,[Dyp.Ter Dyp_symbols.t_T_USCOPE;Dyp.Non_ter (Dyp_symbols.identifier,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_USCOPE  (
# 977 "newParser.dyp"
            (pos:Lexing.position)
# 3349               "newParser.ml"
 as _1));`Real_obj (Obj_identifier ( (
# 977 "newParser.dyp"
                            (id:'dypgen__Obj_identifier)
# 3353               "newParser.ml"
 as _2)))] -> Obj_primary 
# 976 "newParser.dyp"
(
                                 ( E_Unary(Op_UScope,id,pos) ):'dypgen__Obj_primary)
# 3358               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.primary,[Dyp.Non_ter (Dyp_symbols.primary,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_LBRACK_ARG;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.arg_comma_list_trail,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_RBRACK],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_primary ( (
# 978 "newParser.dyp"
           (p:'dypgen__Obj_primary)
# 3364               "newParser.ml"
 as _1)));`Real_obj (Obj_T_LBRACK_ARG  (
# 978 "newParser.dyp"
                           (pos1:Lexing.position)
# 3368               "newParser.ml"
 as _2));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 3372               "newParser.ml"
 as _3)));`Real_obj (Obj_arg_comma_list_trail ( (
# 978 "newParser.dyp"
                                                           (args:'dypgen__Obj_arg_comma_list_trail)
# 3376               "newParser.ml"
 as _4)));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 3380               "newParser.ml"
 as _5)));`Real_obj (Obj_T_RBRACK  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 3384               "newParser.ml"
 as _6))] -> Obj_primary 
# 978 "newParser.dyp"
(
      ( methodcall (E_Binop(p,Op_DOT,E_Operator(Op_AREF,pos1),pos_of p)) args None (pos_of p)):'dypgen__Obj_primary)
# 3389               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.primary,[Dyp.Ter Dyp_symbols.t_T_LBRACK;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.array_body,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_RBRACK],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_LBRACK  (
# 981 "newParser.dyp"
            (pos:Lexing.position)
# 3395               "newParser.ml"
 as _1));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 3399               "newParser.ml"
 as _2)));`Real_obj (Obj_array_body ( (
# 981 "newParser.dyp"
                                 (body:'dypgen__Obj_array_body)
# 3403               "newParser.ml"
 as _3)));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 3407               "newParser.ml"
 as _4)));`Real_obj (Obj_T_RBRACK  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 3411               "newParser.ml"
 as _5))] -> Obj_primary 
# 980 "newParser.dyp"
(
                                                      ( E_Array(body,pos) ):'dypgen__Obj_primary)
# 3416               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.primary,[Dyp.Ter Dyp_symbols.t_T_LBRACE;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.array_body,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_RBRACE],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_LBRACE  (
# 982 "newParser.dyp"
            (pos:Lexing.position)
# 3422               "newParser.ml"
 as _1));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 3426               "newParser.ml"
 as _2)));`Real_obj (Obj_array_body ( (
# 982 "newParser.dyp"
                                 (body:'dypgen__Obj_array_body)
# 3430               "newParser.ml"
 as _3)));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 3434               "newParser.ml"
 as _4)));`Real_obj (Obj_T_RBRACE  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 3438               "newParser.ml"
 as _5))] -> Obj_primary 
# 981 "newParser.dyp"
(
                                                      ( E_Hash(true,body,pos) ):'dypgen__Obj_primary)
# 3443               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.primary,[Dyp.Ter Dyp_symbols.t_K_RETURN],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_RETURN  (
# 983 "newParser.dyp"
            (pos:Lexing.position)
# 3449               "newParser.ml"
 as _1))] -> Obj_primary 
# 982 "newParser.dyp"
(
                  ( E_Return([],pos)):'dypgen__Obj_primary)
# 3454               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.primary,[Dyp.Ter Dyp_symbols.t_K_YIELD],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_YIELD  (
# 986 "newParser.dyp"
           (pos:Lexing.position)
# 3460               "newParser.ml"
 as _1))] -> Obj_primary 
# 985 "newParser.dyp"
(
                 ( E_Yield([],pos)):'dypgen__Obj_primary)
# 3465               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.primary,[Dyp.Ter Dyp_symbols.t_K_YIELD;Dyp.Non_ter (Dyp_symbols.lparen,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.call_args,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_RPAREN],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_YIELD  (
# 987 "newParser.dyp"
           (pos:Lexing.position)
# 3471               "newParser.ml"
 as _1));`Real_obj (Obj_lparen ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_lparen)
# 3475               "newParser.ml"
 as _2)));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 3479               "newParser.ml"
 as _3)));`Real_obj (Obj_call_args ( (
# 987 "newParser.dyp"
                                      (args:'dypgen__Obj_call_args)
# 3483               "newParser.ml"
 as _4)));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 3487               "newParser.ml"
 as _5)));`Real_obj (Obj_T_RPAREN  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 3491               "newParser.ml"
 as _6))] -> Obj_primary 
# 986 "newParser.dyp"
(
                                                           ( E_Yield(args,pos)):'dypgen__Obj_primary)
# 3496               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.primary,[Dyp.Ter Dyp_symbols.t_K_YIELD;Dyp.Non_ter (Dyp_symbols.lparen,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.expr,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_RPAREN],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_YIELD  (
# 988 "newParser.dyp"
           (pos:Lexing.position)
# 3502               "newParser.ml"
 as _1));`Real_obj (Obj_lparen ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_lparen)
# 3506               "newParser.ml"
 as _2)));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 3510               "newParser.ml"
 as _3)));`Real_obj (Obj_expr ( (
# 988 "newParser.dyp"
                                 (arg:'dypgen__Obj_expr)
# 3514               "newParser.ml"
 as _4)));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 3518               "newParser.ml"
 as _5)));`Real_obj (Obj_T_RPAREN  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 3522               "newParser.ml"
 as _6))] -> Obj_primary 
# 987 "newParser.dyp"
(
                                                     ( E_Yield([arg],pos)):'dypgen__Obj_primary)
# 3527               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.primary,[Dyp.Non_ter (Dyp_symbols.func,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_func ( (
# 990 "newParser.dyp"
        (f:'dypgen__Obj_func)
# 3533               "newParser.ml"
 as _1)))] -> Obj_primary 
# 989 "newParser.dyp"
(
            ( f ):'dypgen__Obj_primary)
# 3538               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.primary,[Dyp.Non_ter (Dyp_symbols.func,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.code_block,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_func ( (
# 991 "newParser.dyp"
        (f:'dypgen__Obj_func)
# 3544               "newParser.ml"
 as _1)));`Real_obj (Obj_code_block ( (
# 991 "newParser.dyp"
                      (cb:'dypgen__Obj_code_block)
# 3548               "newParser.ml"
 as _2)))] -> Obj_primary 
# 990 "newParser.dyp"
(
                           (match f with
      | E_MethodCall(m,args,None,pos) -> methodcall m args (Some cb) pos
      | _ -> methodcall f [] (Some cb) (pos_of f)):'dypgen__Obj_primary)
# 3555               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.primary,[Dyp.Ter Dyp_symbols.t_K_IF;Dyp.Non_ter (Dyp_symbols.expr,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.then_sep,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.stmt_list,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.if_else_clauses,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_K_lEND],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_IF  (
# 995 "newParser.dyp"
        (pos:Lexing.position)
# 3561               "newParser.ml"
 as _1));`Real_obj (Obj_expr ( (
# 995 "newParser.dyp"
                  (guard:'dypgen__Obj_expr)
# 3565               "newParser.ml"
 as _2)));`Real_obj (Obj_then_sep ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_then_sep)
# 3569               "newParser.ml"
 as _3)));`Real_obj (Obj_stmt_list ( (
# 995 "newParser.dyp"
                                            (body:'dypgen__Obj_stmt_list)
# 3573               "newParser.ml"
 as _4)));`Real_obj (Obj_if_else_clauses ( (
# 995 "newParser.dyp"
                                                                  (else_e:'dypgen__Obj_if_else_clauses)
# 3577               "newParser.ml"
 as _5)));`Real_obj (Obj_K_lEND  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 3581               "newParser.ml"
 as _6))] -> Obj_primary 
# 995 "newParser.dyp"
(
    ( gup_illegal "if"; E_If(guard,body,else_e,pos) ):'dypgen__Obj_primary)
# 3586               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.primary,[Dyp.Ter Dyp_symbols.t_K_UNLESS;Dyp.Non_ter (Dyp_symbols.expr,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.then_sep,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.stmt_list,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.case_else,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_K_lEND],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_UNLESS  (
# 998 "newParser.dyp"
            (pos:Lexing.position)
# 3592               "newParser.ml"
 as _1));`Real_obj (Obj_expr ( (
# 998 "newParser.dyp"
                      (guard:'dypgen__Obj_expr)
# 3596               "newParser.ml"
 as _2)));`Real_obj (Obj_then_sep ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_then_sep)
# 3600               "newParser.ml"
 as _3)));`Real_obj (Obj_stmt_list ( (
# 998 "newParser.dyp"
                                                (body:'dypgen__Obj_stmt_list)
# 3604               "newParser.ml"
 as _4)));`Real_obj (Obj_case_else ( (
# 998 "newParser.dyp"
                                                                (else_e:'dypgen__Obj_case_else)
# 3608               "newParser.ml"
 as _5)));`Real_obj (Obj_K_lEND  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 3612               "newParser.ml"
 as _6))] -> Obj_primary 
# 998 "newParser.dyp"
(
    ( gup_illegal "unless"; E_Unless(guard,body, else_e,pos) ):'dypgen__Obj_primary)
# 3617               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.primary,[Dyp.Ter Dyp_symbols.t_K_WHILE;Dyp.Non_ter (Dyp_symbols.expr,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.do_sep,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.stmt_list,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_K_lEND],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_WHILE  (
# 1001 "newParser.dyp"
           (pos:Lexing.position)
# 3623               "newParser.ml"
 as _1));`Real_obj (Obj_expr ( (
# 1001 "newParser.dyp"
                     (guard:'dypgen__Obj_expr)
# 3627               "newParser.ml"
 as _2)));`Real_obj (Obj_do_sep ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_do_sep)
# 3631               "newParser.ml"
 as _3)));`Real_obj (Obj_stmt_list ( (
# 1001 "newParser.dyp"
                                             (body:'dypgen__Obj_stmt_list)
# 3635               "newParser.ml"
 as _4)));`Real_obj (Obj_K_lEND  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 3639               "newParser.ml"
 as _5))] -> Obj_primary 
# 1001 "newParser.dyp"
(
    ( gup_illegal "while"; well_formed_do guard body; E_While(false,guard,body,pos) ):'dypgen__Obj_primary)
# 3644               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.primary,[Dyp.Ter Dyp_symbols.t_K_UNTIL;Dyp.Non_ter (Dyp_symbols.expr,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.do_sep,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.stmt_list,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_K_lEND],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_UNTIL  (
# 1004 "newParser.dyp"
           (pos:Lexing.position)
# 3650               "newParser.ml"
 as _1));`Real_obj (Obj_expr ( (
# 1004 "newParser.dyp"
                     (guard:'dypgen__Obj_expr)
# 3654               "newParser.ml"
 as _2)));`Real_obj (Obj_do_sep ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_do_sep)
# 3658               "newParser.ml"
 as _3)));`Real_obj (Obj_stmt_list ( (
# 1004 "newParser.dyp"
                                             (body:'dypgen__Obj_stmt_list)
# 3662               "newParser.ml"
 as _4)));`Real_obj (Obj_K_lEND  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 3666               "newParser.ml"
 as _5))] -> Obj_primary 
# 1004 "newParser.dyp"
(
    ( gup_illegal "until"; well_formed_do guard body;E_Until(false,guard,body,pos) ):'dypgen__Obj_primary)
# 3671               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.primary,[Dyp.Ter Dyp_symbols.t_K_CASE;Dyp.Non_ter (Dyp_symbols.some_eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.when_clauses,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.case_else,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_K_lEND],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_CASE  (
# 1007 "newParser.dyp"
          (pos:Lexing.position)
# 3677               "newParser.ml"
 as _1));`Real_obj (Obj_some_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_some_eols)
# 3681               "newParser.ml"
 as _2)));`Real_obj (Obj_when_clauses ( (
# 1007 "newParser.dyp"
                                      (whens:'dypgen__Obj_when_clauses)
# 3685               "newParser.ml"
 as _3)));`Real_obj (Obj_case_else ( (
# 1007 "newParser.dyp"
                                                       (else_e:'dypgen__Obj_case_else)
# 3689               "newParser.ml"
 as _4)));`Real_obj (Obj_K_lEND  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 3693               "newParser.ml"
 as _5))] -> Obj_primary 
# 1007 "newParser.dyp"
(
    ( gup_illegal "case/when"; E_Case({case_guard = E_Empty; case_whens = whens; case_else = else_e},pos) ):'dypgen__Obj_primary)
# 3698               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.primary,[Dyp.Ter Dyp_symbols.t_K_CASE;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.expr,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.when_clauses,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.case_else,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_K_lEND],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_CASE  (
# 1010 "newParser.dyp"
          (pos:Lexing.position)
# 3704               "newParser.ml"
 as _1));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 3708               "newParser.ml"
 as _2)));`Real_obj (Obj_expr ( (
# 1010 "newParser.dyp"
                         (e:'dypgen__Obj_expr)
# 3712               "newParser.ml"
 as _3)));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 3716               "newParser.ml"
 as _4)));`Real_obj (Obj_when_clauses ( (
# 1010 "newParser.dyp"
                                              (whens:'dypgen__Obj_when_clauses)
# 3720               "newParser.ml"
 as _5)));`Real_obj (Obj_case_else ( (
# 1010 "newParser.dyp"
                                                               (else_e:'dypgen__Obj_case_else)
# 3724               "newParser.ml"
 as _6)));`Real_obj (Obj_K_lEND  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 3728               "newParser.ml"
 as _7))] -> Obj_primary 
# 1010 "newParser.dyp"
(
    ( gup_illegal "case/when"; E_Case({case_guard = e; case_whens = whens; case_else = else_e},pos) ):'dypgen__Obj_primary)
# 3733               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.primary,[Dyp.Ter Dyp_symbols.t_K_CASE;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.expr,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_SEMICOLON;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.when_clauses,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.case_else,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_K_lEND],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_CASE  (
# 1013 "newParser.dyp"
          (pos:Lexing.position)
# 3739               "newParser.ml"
 as _1));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 3743               "newParser.ml"
 as _2)));`Real_obj (Obj_expr ( (
# 1013 "newParser.dyp"
                         (e:'dypgen__Obj_expr)
# 3747               "newParser.ml"
 as _3)));`Real_obj (Obj_T_SEMICOLON  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 3751               "newParser.ml"
 as _4));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 3755               "newParser.ml"
 as _5)));`Real_obj (Obj_when_clauses ( (
# 1013 "newParser.dyp"
                                                          (whens:'dypgen__Obj_when_clauses)
# 3759               "newParser.ml"
 as _6)));`Real_obj (Obj_case_else ( (
# 1013 "newParser.dyp"
                                                                           (else_e:'dypgen__Obj_case_else)
# 3763               "newParser.ml"
 as _7)));`Real_obj (Obj_K_lEND  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 3767               "newParser.ml"
 as _8))] -> Obj_primary 
# 1013 "newParser.dyp"
(
    ( gup_illegal "case/when"; E_Case({case_guard = e; case_whens = whens; case_else = else_e},pos) ):'dypgen__Obj_primary)
# 3772               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.primary,[Dyp.Ter Dyp_symbols.t_K_FOR;Dyp.Non_ter (Dyp_symbols.formal_arg_list,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_K_IN;Dyp.Non_ter (Dyp_symbols.arg,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.do_sep,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.stmt_list,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_K_lEND],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_FOR  (
# 1016 "newParser.dyp"
         (pos:Lexing.position)
# 3778               "newParser.ml"
 as _1));`Real_obj (Obj_formal_arg_list ( (
# 1016 "newParser.dyp"
                              (vars:'dypgen__Obj_formal_arg_list)
# 3782               "newParser.ml"
 as _2)));`Real_obj (Obj_K_IN  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 3786               "newParser.ml"
 as _3));`Real_obj (Obj_arg ( (
# 1016 "newParser.dyp"
                                             (range:'dypgen__Obj_arg)
# 3790               "newParser.ml"
 as _4)));`Real_obj (Obj_do_sep ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_do_sep)
# 3794               "newParser.ml"
 as _5)));`Real_obj (Obj_stmt_list ( (
# 1016 "newParser.dyp"
                                                                     (body:'dypgen__Obj_stmt_list)
# 3798               "newParser.ml"
 as _6)));`Real_obj (Obj_K_lEND  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 3802               "newParser.ml"
 as _7))] -> Obj_primary 
# 1016 "newParser.dyp"
(
    ( gup_illegal "for/in"; well_formed_do range body; E_For(vars,range,body,pos) ):'dypgen__Obj_primary)
# 3807               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.primary,[Dyp.Ter Dyp_symbols.t_K_lBEGIN;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.body_exn,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_K_lEND],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_lBEGIN  (
# 1019 "newParser.dyp"
            (pos:Lexing.position)
# 3813               "newParser.ml"
 as _1));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 3817               "newParser.ml"
 as _2)));`Real_obj (Obj_body_exn ( (
# 1019 "newParser.dyp"
                               (body:'dypgen__Obj_body_exn)
# 3821               "newParser.ml"
 as _3)));`Real_obj (Obj_K_lEND  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 3825               "newParser.ml"
 as _4))] -> Obj_primary 
# 1018 "newParser.dyp"
(
                                              ( gup_illegal "exceptions"; E_ExnBlock(body,pos) ):'dypgen__Obj_primary)
# 3830               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.primary,[Dyp.Non_ter (Dyp_symbols.scope_class,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.scoped_id,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.class_inheritance,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.do_sep,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.body_exn,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_K_lEND],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_scope_class ( (
# 1021 "newParser.dyp"
               (t_info, pos:'dypgen__Obj_scope_class)
# 3836               "newParser.ml"
 as _1)));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 3840               "newParser.ml"
 as _2)));`Real_obj (Obj_scoped_id ( (
# 1021 "newParser.dyp"
                                           (class_name:'dypgen__Obj_scoped_id)
# 3844               "newParser.ml"
 as _3)));`Real_obj (Obj_class_inheritance ( (
# 1021 "newParser.dyp"
                                                                         (inh:'dypgen__Obj_class_inheritance)
# 3848               "newParser.ml"
 as _4)));`Real_obj (Obj_do_sep ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_do_sep)
# 3852               "newParser.ml"
 as _5)));`Real_obj (Obj_body_exn ( (
# 1022 "newParser.dyp"
              (body:'dypgen__Obj_body_exn)
# 3856               "newParser.ml"
 as _6)));`Real_obj (Obj_K_lEND  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 3860               "newParser.ml"
 as _7))] -> Obj_primary 
# 1022 "newParser.dyp"
(
      ( gup_illegal "class_def";
	leave_scope dyp;
        class_annot (E_ClassDef(class_name, inh, body, pos)) t_info pos):'dypgen__Obj_primary)
# 3867               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.primary,[Dyp.Non_ter (Dyp_symbols.scope_class,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_LSHFT;Dyp.Non_ter (Dyp_symbols.arg,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.body_exn,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_K_lEND],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_scope_class ( (
# 1027 "newParser.dyp"
               (t_info, pos:'dypgen__Obj_scope_class)
# 3873               "newParser.ml"
 as _1)));`Real_obj (Obj_T_LSHFT  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 3877               "newParser.ml"
 as _2));`Real_obj (Obj_arg ( (
# 1027 "newParser.dyp"
                                        (id:'dypgen__Obj_arg)
# 3881               "newParser.ml"
 as _3)));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 3885               "newParser.ml"
 as _4)));`Real_obj (Obj_body_exn ( (
# 1027 "newParser.dyp"
                                                          (body:'dypgen__Obj_body_exn)
# 3889               "newParser.ml"
 as _5)));`Real_obj (Obj_K_lEND  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 3893               "newParser.ml"
 as _6))] -> Obj_primary 
# 1027 "newParser.dyp"
(
      ( gup_illegal "class_def";
	leave_scope dyp;
        let t = E_ClassDef(E_Empty, Some (Inst_Inherit id), body, pos) in
          class_annot t t_info pos
      ):'dypgen__Obj_primary)
# 3902               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.primary,[Dyp.Non_ter (Dyp_symbols.scope_module,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.scoped_id,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.body_exn,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_K_lEND],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_scope_module ( (
# 1034 "newParser.dyp"
                (t_info, pos:'dypgen__Obj_scope_module)
# 3908               "newParser.ml"
 as _1)));`Real_obj (Obj_scoped_id ( (
# 1034 "newParser.dyp"
                                       (name:'dypgen__Obj_scoped_id)
# 3912               "newParser.ml"
 as _2)));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 3916               "newParser.ml"
 as _3)));`Real_obj (Obj_body_exn ( (
# 1034 "newParser.dyp"
                                                           (body:'dypgen__Obj_body_exn)
# 3920               "newParser.ml"
 as _4)));`Real_obj (Obj_K_lEND  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 3924               "newParser.ml"
 as _5))] -> Obj_primary 
# 1034 "newParser.dyp"
(
      ( gup_illegal "module_def";
	leave_scope dyp;
        class_annot (E_ModuleDef (name,body, pos)) t_info pos
      ):'dypgen__Obj_primary)
# 3932               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.primary,[Dyp.Non_ter (Dyp_symbols.scope_def,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.method_name,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.method_formals,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.body_exn,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_K_lEND],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_scope_def ( (
# 1040 "newParser.dyp"
             (t_info,pos:'dypgen__Obj_scope_def)
# 3938               "newParser.ml"
 as _1)));`Real_obj (Obj_method_name ( (
# 1040 "newParser.dyp"
                                     (meth_name:'dypgen__Obj_method_name)
# 3942               "newParser.ml"
 as _2)));`Real_obj (Obj_method_formals ( (
# 1040 "newParser.dyp"
                                                               (formals:'dypgen__Obj_method_formals)
# 3946               "newParser.ml"
 as _3)));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 3950               "newParser.ml"
 as _4)));`Real_obj (Obj_body_exn ( (
# 1041 "newParser.dyp"
              (body:'dypgen__Obj_body_exn)
# 3954               "newParser.ml"
 as _5)));`Real_obj (Obj_K_lEND  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 3958               "newParser.ml"
 as _6))] -> Obj_primary 
# 1041 "newParser.dyp"
(
      ( gup_illegal "method_def";
	leave_scope dyp;
        let t = E_MethodDef (meth_name, formals, body, pos) in
          method_annot t t_info pos
      ):'dypgen__Obj_primary)
# 3967               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.array_item,[Dyp.Non_ter (Dyp_symbols.arg,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_arg ( (
# 1049 "newParser.dyp"
       (e:'dypgen__Obj_arg)
# 3973               "newParser.ml"
 as _1)))] -> Obj_array_item 
# 1048 "newParser.dyp"
(
           ( e ):'dypgen__Obj_array_item)
# 3978               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.array_item,[Dyp.Non_ter (Dyp_symbols.constant,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_LBRACK;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.call_args,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_RBRACK],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_constant ( (
# 1050 "newParser.dyp"
            (c:'dypgen__Obj_constant)
# 3984               "newParser.ml"
 as _1)));`Real_obj (Obj_T_LBRACK  (
# 1050 "newParser.dyp"
                        (pos1:Lexing.position)
# 3988               "newParser.ml"
 as _2));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 3992               "newParser.ml"
 as _3)));`Real_obj (Obj_call_args ( (
# 1050 "newParser.dyp"
                                             (args:'dypgen__Obj_call_args)
# 3996               "newParser.ml"
 as _4)));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 4000               "newParser.ml"
 as _5)));`Real_obj (Obj_T_RBRACK  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 4004               "newParser.ml"
 as _6))] -> Obj_array_item 
# 1050 "newParser.dyp"
(
      (methodcall
	 (E_Binop(c, Op_DOT, E_Operator(Op_AREF,pos1), pos_of c)) 
	 args None (pos_of c)
      ):'dypgen__Obj_array_item)
# 4012               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.array_body_rest,[],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [] -> Obj_array_body_rest 
# 1056 "newParser.dyp"
(
    ( [] ):'dypgen__Obj_array_body_rest)
# 4019               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.array_body_rest,[Dyp.Non_ter (Dyp_symbols.array_item,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_array_item ( (
# 1058 "newParser.dyp"
              (e:'dypgen__Obj_array_item)
# 4025               "newParser.ml"
 as _1)))] -> Obj_array_body_rest 
# 1057 "newParser.dyp"
(
                  ( [e] ):'dypgen__Obj_array_body_rest)
# 4030               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.array_body_rest,[Dyp.Non_ter (Dyp_symbols.star_amper,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_star_amper ( (
# 1059 "newParser.dyp"
              (es:'dypgen__Obj_star_amper)
# 4036               "newParser.ml"
 as _1)))] -> Obj_array_body_rest 
# 1058 "newParser.dyp"
(
                   ( es ):'dypgen__Obj_array_body_rest)
# 4041               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.array_body_rest,[Dyp.Non_ter (Dyp_symbols.array_item,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_COMMA;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.array_body_rest,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_array_item ( (
# 1060 "newParser.dyp"
              (e:'dypgen__Obj_array_item)
# 4047               "newParser.ml"
 as _1)));`Real_obj (Obj_T_COMMA  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 4051               "newParser.ml"
 as _2));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 4055               "newParser.ml"
 as _3)));`Real_obj (Obj_array_body_rest ( (
# 1060 "newParser.dyp"
                                              (es:'dypgen__Obj_array_body_rest)
# 4059               "newParser.ml"
 as _4)))] -> Obj_array_body_rest 
# 1060 "newParser.dyp"
(
      ( dyp.Dyp.will_shift <- false;
	e::es ):'dypgen__Obj_array_body_rest)
# 4065               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.array_body,[Dyp.Non_ter (Dyp_symbols.command,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_command ( (
# 1065 "newParser.dyp"
           (c:'dypgen__Obj_command)
# 4071               "newParser.ml"
 as _1)))] -> Obj_array_body 
# 1064 "newParser.dyp"
(
               ( [c] ):'dypgen__Obj_array_body)
# 4076               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.array_body,[Dyp.Non_ter (Dyp_symbols.array_body_rest,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_array_body_rest ( (
# 1066 "newParser.dyp"
                   (es:'dypgen__Obj_array_body_rest)
# 4082               "newParser.ml"
 as _1)))] -> Obj_array_body 
# 1065 "newParser.dyp"
(
                        ( es ):'dypgen__Obj_array_body)
# 4087               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.scoped_id,[Dyp.Non_ter (Dyp_symbols.identifier,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_identifier ( (
# 1069 "newParser.dyp"
              (id:'dypgen__Obj_identifier)
# 4093               "newParser.ml"
 as _1)))] -> Obj_scoped_id 
# 1068 "newParser.dyp"
(
                   ( id ):'dypgen__Obj_scoped_id)
# 4098               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.scoped_id,[Dyp.Ter Dyp_symbols.t_T_USCOPE;Dyp.Non_ter (Dyp_symbols.identifier,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_USCOPE  (
# 1070 "newParser.dyp"
            (pos:Lexing.position)
# 4104               "newParser.ml"
 as _1));`Real_obj (Obj_identifier ( (
# 1070 "newParser.dyp"
                            (id:'dypgen__Obj_identifier)
# 4108               "newParser.ml"
 as _2)))] -> Obj_scoped_id 
# 1069 "newParser.dyp"
(
                                 ( E_Unary(Op_UScope,id,pos)):'dypgen__Obj_scoped_id)
# 4113               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.scoped_id,[Dyp.Non_ter (Dyp_symbols.scoped_id,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_SCOPE;Dyp.Non_ter (Dyp_symbols.identifier,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_scoped_id ( (
# 1071 "newParser.dyp"
             (id1:'dypgen__Obj_scoped_id)
# 4119               "newParser.ml"
 as _1)));`Real_obj (Obj_T_SCOPE  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 4123               "newParser.ml"
 as _2));`Real_obj (Obj_identifier ( (
# 1071 "newParser.dyp"
                                     (id2:'dypgen__Obj_identifier)
# 4127               "newParser.ml"
 as _3)))] -> Obj_scoped_id 
# 1070 "newParser.dyp"
(
                                              ( E_Binop(id1,Op_SCOPE,id2,pos_of id1) ):'dypgen__Obj_scoped_id)
# 4132               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.scoped_id,[Dyp.Non_ter (Dyp_symbols.scoped_id,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_SCOPE;Dyp.Non_ter (Dyp_symbols.keyword_as_id,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_scoped_id ( (
# 1072 "newParser.dyp"
             (id1:'dypgen__Obj_scoped_id)
# 4138               "newParser.ml"
 as _1)));`Real_obj (Obj_T_SCOPE  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 4142               "newParser.ml"
 as _2));`Real_obj (Obj_keyword_as_id ( (
# 1072 "newParser.dyp"
                                        (id2:'dypgen__Obj_keyword_as_id)
# 4146               "newParser.ml"
 as _3)))] -> Obj_scoped_id 
# 1071 "newParser.dyp"
(
                                              ( E_Binop(id1,Op_SCOPE,id2,pos_of id1) ):'dypgen__Obj_scoped_id)
# 4151               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.class_inheritance,[],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [] -> Obj_class_inheritance 
# 1074 "newParser.dyp"
(
   (None):'dypgen__Obj_class_inheritance)
# 4158               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.class_inheritance,[Dyp.Ter Dyp_symbols.t_T_LT;Dyp.Non_ter (Dyp_symbols.primary,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_LT  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 4164               "newParser.ml"
 as _1));`Real_obj (Obj_primary ( (
# 1076 "newParser.dyp"
               (p:'dypgen__Obj_primary)
# 4168               "newParser.ml"
 as _2)))] -> Obj_class_inheritance 
# 1075 "newParser.dyp"
(
                   ( Some (Class_Inherit p) ):'dypgen__Obj_class_inheritance)
# 4173               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.do_sep,[Dyp.Ter Dyp_symbols.t_T_SEMICOLON;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_SEMICOLON  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 4179               "newParser.ml"
 as _1));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 4183               "newParser.ml"
 as _2)))] -> Obj_do_sep 
# 1078 "newParser.dyp"
(
                       ():'dypgen__Obj_do_sep)
# 4188               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.do_sep,[Dyp.Ter Dyp_symbols.t_T_COLON;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_COLON  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 4194               "newParser.ml"
 as _1));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 4198               "newParser.ml"
 as _2)))] -> Obj_do_sep 
# 1079 "newParser.dyp"
(
                   ():'dypgen__Obj_do_sep)
# 4203               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.do_sep,[Dyp.Non_ter (Dyp_symbols.some_eols,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_some_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_some_eols)
# 4209               "newParser.ml"
 as _1)))] -> Obj_do_sep 
# 1080 "newParser.dyp"
(
                ():'dypgen__Obj_do_sep)
# 4214               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.do_sep,[Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_K_DO;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 4220               "newParser.ml"
 as _1)));`Real_obj (Obj_K_DO  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 4224               "newParser.ml"
 as _2));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 4228               "newParser.ml"
 as _3)))] -> Obj_do_sep 
# 1081 "newParser.dyp"
(
                     ():'dypgen__Obj_do_sep)
# 4233               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.brace_codeblock,[Dyp.Ter Dyp_symbols.t_T_LBRACE_ARG;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.code_block_body,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_RBRACE],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_LBRACE_ARG  (
# 1085 "newParser.dyp"
                (pos:Lexing.position)
# 4239               "newParser.ml"
 as _1));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 4243               "newParser.ml"
 as _2)));`Real_obj (Obj_code_block_body ( (
# 1085 "newParser.dyp"
                                          (b:'dypgen__Obj_code_block_body)
# 4247               "newParser.ml"
 as _3)));`Real_obj (Obj_T_RBRACE  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 4251               "newParser.ml"
 as _4))] -> Obj_brace_codeblock 
# 1085 "newParser.dyp"
(
      ( let args,body = b in E_CodeBlock(true,args,body,pos) ):'dypgen__Obj_brace_codeblock)
# 4256               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.do_codeblock,[Dyp.Ter Dyp_symbols.t_K_DO;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.code_block_body,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_K_lEND],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_DO  (
# 1089 "newParser.dyp"
        (pos:Lexing.position)
# 4262               "newParser.ml"
 as _1));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 4266               "newParser.ml"
 as _2)));`Real_obj (Obj_code_block_body ( (
# 1089 "newParser.dyp"
                                  (b:'dypgen__Obj_code_block_body)
# 4270               "newParser.ml"
 as _3)));`Real_obj (Obj_K_lEND  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 4274               "newParser.ml"
 as _4))] -> Obj_do_codeblock 
# 1089 "newParser.dyp"
(
      ( let args,body = b in E_CodeBlock(false,args,body,pos) ):'dypgen__Obj_do_codeblock)
# 4279               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.code_block,[Dyp.Non_ter (Dyp_symbols.brace_codeblock,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_brace_codeblock ( (
# 1093 "newParser.dyp"
                   (cb:'dypgen__Obj_brace_codeblock)
# 4285               "newParser.ml"
 as _1)))] -> Obj_code_block 
# 1092 "newParser.dyp"
(
                        ( gup_illegal "code_blocks"; cb):'dypgen__Obj_code_block)
# 4290               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.code_block,[Dyp.Non_ter (Dyp_symbols.do_codeblock,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_do_codeblock ( (
# 1094 "newParser.dyp"
                (cb:'dypgen__Obj_do_codeblock)
# 4296               "newParser.ml"
 as _1)))] -> Obj_code_block 
# 1093 "newParser.dyp"
(
                     ( gup_illegal "code_blocks"; cb):'dypgen__Obj_code_block)
# 4301               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.code_block_body,[Dyp.Ter Dyp_symbols.t_T_OROP;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.stmt_list,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_OROP  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 4307               "newParser.ml"
 as _1));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 4311               "newParser.ml"
 as _2)));`Real_obj (Obj_stmt_list ( (
# 1098 "newParser.dyp"
                         (body:'dypgen__Obj_stmt_list)
# 4315               "newParser.ml"
 as _3)))] -> Obj_code_block_body 
# 1097 "newParser.dyp"
(
                                ((Some [],body)):'dypgen__Obj_code_block_body)
# 4320               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.code_block_body,[Dyp.Ter Dyp_symbols.t_T_VBAR;Dyp.Non_ter (Dyp_symbols.formal_arg_list,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_VBAR;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.stmt_list,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_VBAR  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 4326               "newParser.ml"
 as _1));`Real_obj (Obj_formal_arg_list ( (
# 1099 "newParser.dyp"
                          (args:'dypgen__Obj_formal_arg_list)
# 4330               "newParser.ml"
 as _2)));`Real_obj (Obj_T_VBAR  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 4334               "newParser.ml"
 as _3));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 4338               "newParser.ml"
 as _4)));`Real_obj (Obj_stmt_list ( (
# 1099 "newParser.dyp"
                                                      (body:'dypgen__Obj_stmt_list)
# 4342               "newParser.ml"
 as _5)))] -> Obj_code_block_body 
# 1099 "newParser.dyp"
(
      ((Some args,body)):'dypgen__Obj_code_block_body)
# 4347               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.code_block_body,[Dyp.Non_ter (Dyp_symbols.stmt_list,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_stmt_list ( (
# 1101 "newParser.dyp"
             (body:'dypgen__Obj_stmt_list)
# 4353               "newParser.ml"
 as _1)))] -> Obj_code_block_body 
# 1101 "newParser.dyp"
(
    ((None, body)):'dypgen__Obj_code_block_body)
# 4358               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.formal_arg,[Dyp.Non_ter (Dyp_symbols.identifier,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_identifier ( (
# 1105 "newParser.dyp"
              (id:'dypgen__Obj_identifier)
# 4364               "newParser.ml"
 as _1)))] -> Obj_formal_arg 
# 1104 "newParser.dyp"
(
                   ( seen dyp id; Formal_id id ):'dypgen__Obj_formal_arg)
# 4369               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.formal_arg,[Dyp.Ter Dyp_symbols.t_T_UAMPER;Dyp.Ter Dyp_symbols.t_T_LID],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_UAMPER  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 4375               "newParser.ml"
 as _1));`Real_obj (Obj_T_LID  (
# 1106 "newParser.dyp"
                  (id,pos:string * Lexing.position)
# 4379               "newParser.ml"
 as _2))] -> Obj_formal_arg 
# 1105 "newParser.dyp"
(
                           ( seen_str dyp id; Formal_amp id ):'dypgen__Obj_formal_arg)
# 4384               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.formal_arg,[Dyp.Ter Dyp_symbols.t_T_AMPER;Dyp.Ter Dyp_symbols.t_T_LID],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_AMPER  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 4390               "newParser.ml"
 as _1));`Real_obj (Obj_T_LID  (
# 1107 "newParser.dyp"
                 (id,pos:string * Lexing.position)
# 4394               "newParser.ml"
 as _2))] -> Obj_formal_arg 
# 1106 "newParser.dyp"
(
                          ( seen_str dyp id; Formal_amp id ):'dypgen__Obj_formal_arg)
# 4399               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.formal_arg,[Dyp.Ter Dyp_symbols.t_T_USTAR;Dyp.Ter Dyp_symbols.t_T_LID],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_USTAR  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 4405               "newParser.ml"
 as _1));`Real_obj (Obj_T_LID  (
# 1108 "newParser.dyp"
                 (id,pos:string * Lexing.position)
# 4409               "newParser.ml"
 as _2))] -> Obj_formal_arg 
# 1107 "newParser.dyp"
(
                           ( seen_str dyp id; Formal_star id):'dypgen__Obj_formal_arg)
# 4414               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.formal_arg,[Dyp.Ter Dyp_symbols.t_T_USTAR],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_USTAR  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 4420               "newParser.ml"
 as _1))] -> Obj_formal_arg 
# 1108 "newParser.dyp"
(
            (Formal_rest):'dypgen__Obj_formal_arg)
# 4425               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.formal_arg,[Dyp.Ter Dyp_symbols.t_T_LID;Dyp.Ter Dyp_symbols.t_T_ASSIGN;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.arg,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_LID  (
# 1110 "newParser.dyp"
         (id,pos:string * Lexing.position)
# 4431               "newParser.ml"
 as _1));`Real_obj (Obj_T_ASSIGN  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 4435               "newParser.ml"
 as _2));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 4439               "newParser.ml"
 as _3)));`Real_obj (Obj_arg ( (
# 1110 "newParser.dyp"
                                   (e:'dypgen__Obj_arg)
# 4443               "newParser.ml"
 as _4)))] -> Obj_formal_arg 
# 1109 "newParser.dyp"
(
                                       ( seen_str dyp id; Formal_default (id,e) ):'dypgen__Obj_formal_arg)
# 4448               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.formal_arg,[Dyp.Non_ter (Dyp_symbols.lparen,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.formal_arg_nonempty_list,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_RPAREN],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_lparen ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_lparen)
# 4454               "newParser.ml"
 as _1)));`Real_obj (Obj_formal_arg_nonempty_list ( (
# 1111 "newParser.dyp"
                                   (f:'dypgen__Obj_formal_arg_nonempty_list)
# 4458               "newParser.ml"
 as _2)));`Real_obj (Obj_T_RPAREN  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 4462               "newParser.ml"
 as _3))] -> Obj_formal_arg 
# 1110 "newParser.dyp"
(
                                                ( Formal_tuple f ):'dypgen__Obj_formal_arg)
# 4467               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.formal_arg_nonempty_list,[Dyp.Non_ter (Dyp_symbols.formal_arg,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_formal_arg ( (
# 1114 "newParser.dyp"
              (f:'dypgen__Obj_formal_arg)
# 4473               "newParser.ml"
 as _1)))] -> Obj_formal_arg_nonempty_list 
# 1113 "newParser.dyp"
(
                  ( [f] ):'dypgen__Obj_formal_arg_nonempty_list)
# 4478               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.formal_arg_nonempty_list,[Dyp.Non_ter (Dyp_symbols.formal_arg,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_COMMA],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_formal_arg ( (
# 1115 "newParser.dyp"
              (f:'dypgen__Obj_formal_arg)
# 4484               "newParser.ml"
 as _1)));`Real_obj (Obj_T_COMMA  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 4488               "newParser.ml"
 as _2))] -> Obj_formal_arg_nonempty_list 
# 1114 "newParser.dyp"
(
                          ( [f;Formal_rest] ):'dypgen__Obj_formal_arg_nonempty_list)
# 4493               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.formal_arg_nonempty_list,[Dyp.Non_ter (Dyp_symbols.formal_arg,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_COMMA;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.formal_arg_nonempty_list,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_formal_arg ( (
# 1116 "newParser.dyp"
              (f:'dypgen__Obj_formal_arg)
# 4499               "newParser.ml"
 as _1)));`Real_obj (Obj_T_COMMA  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 4503               "newParser.ml"
 as _2));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 4507               "newParser.ml"
 as _3)));`Real_obj (Obj_formal_arg_nonempty_list ( (
# 1116 "newParser.dyp"
                                                       (fs:'dypgen__Obj_formal_arg_nonempty_list)
# 4511               "newParser.ml"
 as _4)))] -> Obj_formal_arg_nonempty_list 
# 1116 "newParser.dyp"
(
      ( dyp.Dyp.will_shift <- false; f::fs ):'dypgen__Obj_formal_arg_nonempty_list)
# 4516               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.formal_arg_list,[],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [] -> Obj_formal_arg_list 
# 1119 "newParser.dyp"
(
    ( [] ):'dypgen__Obj_formal_arg_list)
# 4523               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.formal_arg_list,[Dyp.Non_ter (Dyp_symbols.formal_arg_nonempty_list,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_formal_arg_nonempty_list ( (
# 1121 "newParser.dyp"
                            (l:'dypgen__Obj_formal_arg_nonempty_list)
# 4529               "newParser.ml"
 as _1)))] -> Obj_formal_arg_list 
# 1120 "newParser.dyp"
(
                                (l):'dypgen__Obj_formal_arg_list)
# 4534               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.method_formals,[Dyp.Non_ter (Dyp_symbols.eol_or_semi,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_eol_or_semi ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eol_or_semi)
# 4540               "newParser.ml"
 as _1)))] -> Obj_method_formals 
# 1123 "newParser.dyp"
(
                ( [] ):'dypgen__Obj_method_formals)
# 4545               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.method_formals,[Dyp.Non_ter (Dyp_symbols.formal_arg_nonempty_list,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eol_or_semi,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_formal_arg_nonempty_list ( (
# 1125 "newParser.dyp"
                            (formals:'dypgen__Obj_formal_arg_nonempty_list)
# 4551               "newParser.ml"
 as _1)));`Real_obj (Obj_eol_or_semi ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eol_or_semi)
# 4555               "newParser.ml"
 as _2)))] -> Obj_method_formals 
# 1125 "newParser.dyp"
(
      (match formals with
	  (Formal_tuple _)::_ -> raise Dyp.Giveup
	| e -> e
      ):'dypgen__Obj_method_formals)
# 4563               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.method_formals,[Dyp.Non_ter (Dyp_symbols.lparen,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.formal_arg_list,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_RPAREN],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_lparen ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_lparen)
# 4569               "newParser.ml"
 as _1)));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 4573               "newParser.ml"
 as _2)));`Real_obj (Obj_formal_arg_list ( (
# 1130 "newParser.dyp"
                               (formals:'dypgen__Obj_formal_arg_list)
# 4577               "newParser.ml"
 as _3)));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 4581               "newParser.ml"
 as _4)));`Real_obj (Obj_T_RPAREN  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 4585               "newParser.ml"
 as _5))] -> Obj_method_formals 
# 1129 "newParser.dyp"
(
                                                       (
      (* RPAREN usually puts the lexer in an end state, but we need to
         force it to an end state *)
      state_override := true; formals):'dypgen__Obj_method_formals)
# 4593               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.lhs,[Dyp.Non_ter (Dyp_symbols.scoped_id,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_scoped_id ( (
# 1136 "newParser.dyp"
             (id:'dypgen__Obj_scoped_id)
# 4599               "newParser.ml"
 as _1)))] -> Obj_lhs 
# 1135 "newParser.dyp"
(
                  ( id ):'dypgen__Obj_lhs)
# 4604               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.lhs,[Dyp.Non_ter (Dyp_symbols.primary,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_LBRACK_ARG;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.arg_comma_star_list,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_RBRACK],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_primary ( (
# 1137 "newParser.dyp"
           (p:'dypgen__Obj_primary)
# 4610               "newParser.ml"
 as _1)));`Real_obj (Obj_T_LBRACK_ARG  (
# 1137 "newParser.dyp"
                           (pos:Lexing.position)
# 4614               "newParser.ml"
 as _2));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 4618               "newParser.ml"
 as _3)));`Real_obj (Obj_arg_comma_star_list ( (
# 1137 "newParser.dyp"
                                                         (args:'dypgen__Obj_arg_comma_star_list)
# 4622               "newParser.ml"
 as _4)));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 4626               "newParser.ml"
 as _5)));`Real_obj (Obj_T_RBRACK  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 4630               "newParser.ml"
 as _6))] -> Obj_lhs 
# 1137 "newParser.dyp"
(
      ( methodcall (E_Binop(p,Op_DOT,E_Operator(Op_AREF,pos),pos_of p)) args None (pos_of p)):'dypgen__Obj_lhs)
# 4635               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.lhs,[Dyp.Non_ter (Dyp_symbols.primary,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_DOT;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.message_identifier,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_primary ( (
# 1139 "newParser.dyp"
           (p:'dypgen__Obj_primary)
# 4641               "newParser.ml"
 as _1)));`Real_obj (Obj_T_DOT  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 4645               "newParser.ml"
 as _2));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 4649               "newParser.ml"
 as _3)));`Real_obj (Obj_message_identifier ( (
# 1139 "newParser.dyp"
                                            (m:'dypgen__Obj_message_identifier)
# 4653               "newParser.ml"
 as _4)))] -> Obj_lhs 
# 1139 "newParser.dyp"
(
      ( methodcall (E_Binop(p,Op_DOT,m,pos_of p)) [] None (pos_of p)):'dypgen__Obj_lhs)
# 4658               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.mlhs,[Dyp.Non_ter (Dyp_symbols.mlhs_clean,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_mlhs_clean ( (
# 1143 "newParser.dyp"
              (ls:'dypgen__Obj_mlhs_clean)
# 4664               "newParser.ml"
 as _1)))] -> Obj_mlhs 
# 1142 "newParser.dyp"
(
                   (ls):'dypgen__Obj_mlhs)
# 4669               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.mlhs,[Dyp.Non_ter (Dyp_symbols.mlhs_clean,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_COMMA],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_mlhs_clean ( (
# 1144 "newParser.dyp"
              (ls:'dypgen__Obj_mlhs_clean)
# 4675               "newParser.ml"
 as _1)));`Real_obj (Obj_T_COMMA  (
# 1144 "newParser.dyp"
                          (pos:Lexing.position)
# 4679               "newParser.ml"
 as _2))] -> Obj_mlhs 
# 1143 "newParser.dyp"
(
                                ( ls @ [E_UOperator(Op_UStar,pos)] ):'dypgen__Obj_mlhs)
# 4684               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.mlhs_clean,[Dyp.Ter Dyp_symbols.t_T_LPAREN;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.mlhs,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_RPAREN],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_LPAREN  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 4690               "newParser.ml"
 as _1));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 4694               "newParser.ml"
 as _2)));`Real_obj (Obj_mlhs ( (
# 1147 "newParser.dyp"
                      (l:'dypgen__Obj_mlhs)
# 4698               "newParser.ml"
 as _3)));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 4702               "newParser.ml"
 as _4)));`Real_obj (Obj_T_RPAREN  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 4706               "newParser.ml"
 as _5))] -> Obj_mlhs_clean 
# 1146 "newParser.dyp"
(
                                        ( [(tuple l)] ):'dypgen__Obj_mlhs_clean)
# 4711               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.mlhs_clean,[Dyp.Non_ter (Dyp_symbols.mlhs_item,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_mlhs_item ( (
# 1148 "newParser.dyp"
             (l:'dypgen__Obj_mlhs_item)
# 4717               "newParser.ml"
 as _1)))] -> Obj_mlhs_clean 
# 1147 "newParser.dyp"
(
                 ( [l] ):'dypgen__Obj_mlhs_clean)
# 4722               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.mlhs_clean,[Dyp.Non_ter (Dyp_symbols.mlhs_item,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_COMMA;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.mlhs_rest,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_mlhs_item ( (
# 1149 "newParser.dyp"
             (l:'dypgen__Obj_mlhs_item)
# 4728               "newParser.ml"
 as _1)));`Real_obj (Obj_T_COMMA  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 4732               "newParser.ml"
 as _2));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 4736               "newParser.ml"
 as _3)));`Real_obj (Obj_mlhs_rest ( (
# 1149 "newParser.dyp"
                                       (ls:'dypgen__Obj_mlhs_rest)
# 4740               "newParser.ml"
 as _4)))] -> Obj_mlhs_clean 
# 1148 "newParser.dyp"
(
                                            ( l::ls):'dypgen__Obj_mlhs_clean)
# 4745               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.mlhs_clean,[Dyp.Ter Dyp_symbols.t_T_USTAR;Dyp.Non_ter (Dyp_symbols.lhs,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_USTAR  (
# 1150 "newParser.dyp"
           (pos:Lexing.position)
# 4751               "newParser.ml"
 as _1));`Real_obj (Obj_lhs ( (
# 1150 "newParser.dyp"
                    (l:'dypgen__Obj_lhs)
# 4755               "newParser.ml"
 as _2)))] -> Obj_mlhs_clean 
# 1149 "newParser.dyp"
(
                        ( [E_Unary(Op_UStar,l,pos)] ):'dypgen__Obj_mlhs_clean)
# 4760               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.mlhs_rest,[Dyp.Non_ter (Dyp_symbols.mlhs_item,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_mlhs_item ( (
# 1153 "newParser.dyp"
             (l:'dypgen__Obj_mlhs_item)
# 4766               "newParser.ml"
 as _1)))] -> Obj_mlhs_rest 
# 1152 "newParser.dyp"
(
                 ( [l] ):'dypgen__Obj_mlhs_rest)
# 4771               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.mlhs_rest,[Dyp.Non_ter (Dyp_symbols.mlhs_item,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_COMMA;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.mlhs_rest,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_mlhs_item ( (
# 1154 "newParser.dyp"
             (l:'dypgen__Obj_mlhs_item)
# 4777               "newParser.ml"
 as _1)));`Real_obj (Obj_T_COMMA  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 4781               "newParser.ml"
 as _2));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 4785               "newParser.ml"
 as _3)));`Real_obj (Obj_mlhs_rest ( (
# 1154 "newParser.dyp"
                                       (ls:'dypgen__Obj_mlhs_rest)
# 4789               "newParser.ml"
 as _4)))] -> Obj_mlhs_rest 
# 1154 "newParser.dyp"
(
      ( dyp.Dyp.will_shift <- false; l::ls):'dypgen__Obj_mlhs_rest)
# 4794               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.mlhs_rest,[Dyp.Ter Dyp_symbols.t_T_USTAR;Dyp.Non_ter (Dyp_symbols.lhs,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_USTAR  (
# 1156 "newParser.dyp"
           (pos:Lexing.position)
# 4800               "newParser.ml"
 as _1));`Real_obj (Obj_lhs ( (
# 1156 "newParser.dyp"
                    (l:'dypgen__Obj_lhs)
# 4804               "newParser.ml"
 as _2)))] -> Obj_mlhs_rest 
# 1155 "newParser.dyp"
(
                        ( [E_Unary(Op_UStar,l,pos)] ):'dypgen__Obj_mlhs_rest)
# 4809               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.mlhs_item,[Dyp.Non_ter (Dyp_symbols.lhs,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_lhs ( (
# 1159 "newParser.dyp"
       (l:'dypgen__Obj_lhs)
# 4815               "newParser.ml"
 as _1)))] -> Obj_mlhs_item 
# 1158 "newParser.dyp"
(
           (l):'dypgen__Obj_mlhs_item)
# 4820               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.mlhs_item,[Dyp.Ter Dyp_symbols.t_T_USTAR],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_USTAR  (
# 1160 "newParser.dyp"
           (pos:Lexing.position)
# 4826               "newParser.ml"
 as _1))] -> Obj_mlhs_item 
# 1159 "newParser.dyp"
(
                 ( E_UOperator(Op_UStar,pos) ):'dypgen__Obj_mlhs_item)
# 4831               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.mlhs_item,[Dyp.Ter Dyp_symbols.t_T_LPAREN;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.mlhs,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_RPAREN],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_LPAREN  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 4837               "newParser.ml"
 as _1));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 4841               "newParser.ml"
 as _2)));`Real_obj (Obj_mlhs ( (
# 1161 "newParser.dyp"
                      (ls:'dypgen__Obj_mlhs)
# 4845               "newParser.ml"
 as _3)));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 4849               "newParser.ml"
 as _4)));`Real_obj (Obj_T_RPAREN  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 4853               "newParser.ml"
 as _5))] -> Obj_mlhs_item 
# 1160 "newParser.dyp"
(
                                         ( tuple ls ):'dypgen__Obj_mlhs_item)
# 4858               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.command_codeblock,[Dyp.Non_ter (Dyp_symbols.command,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_command ( (
# 1164 "newParser.dyp"
           (c:'dypgen__Obj_command)
# 4864               "newParser.ml"
 as _1)))] -> Obj_command_codeblock 
# 1163 "newParser.dyp"
(
               ( c ):'dypgen__Obj_command_codeblock)
# 4869               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.command_codeblock,[Dyp.Non_ter (Dyp_symbols.command_name,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.code_block,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_command_name ( (
# 1165 "newParser.dyp"
                (c:'dypgen__Obj_command_name)
# 4875               "newParser.ml"
 as _1)));`Real_obj (Obj_code_block ( (
# 1165 "newParser.dyp"
                              (cb:'dypgen__Obj_code_block)
# 4879               "newParser.ml"
 as _2)))] -> Obj_command_codeblock 
# 1164 "newParser.dyp"
(
                                   ( command_codeblock c cb ):'dypgen__Obj_command_codeblock)
# 4884               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.mrhs,[Dyp.Non_ter (Dyp_symbols.arg_comma_star_list,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_arg_comma_star_list ( (
# 1168 "newParser.dyp"
                       (args:'dypgen__Obj_arg_comma_star_list)
# 4890               "newParser.ml"
 as _1)))] -> Obj_mrhs 
# 1168 "newParser.dyp"
(
      ( match args with [] -> raise Dyp.Giveup | _ -> args):'dypgen__Obj_mrhs)
# 4895               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.mrhs,[Dyp.Non_ter (Dyp_symbols.topcall,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_topcall ( (
# 1170 "newParser.dyp"
           (c:'dypgen__Obj_topcall)
# 4901               "newParser.ml"
 as _1)))] -> Obj_mrhs 
# 1169 "newParser.dyp"
(
               ( [c] ):'dypgen__Obj_mrhs)
# 4906               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.mrhs,[Dyp.Ter Dyp_symbols.t_T_LBRACK;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.call_args,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_RBRACK],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_LBRACK  (
# 1171 "newParser.dyp"
            (pos:Lexing.position)
# 4912               "newParser.ml"
 as _1));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 4916               "newParser.ml"
 as _2)));`Real_obj (Obj_call_args ( (
# 1171 "newParser.dyp"
                                (r:'dypgen__Obj_call_args)
# 4920               "newParser.ml"
 as _3)));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 4924               "newParser.ml"
 as _4)));`Real_obj (Obj_T_RBRACK  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 4928               "newParser.ml"
 as _5))] -> Obj_mrhs 
# 1170 "newParser.dyp"
(
                                                  ( [E_Array(r,pos)] ):'dypgen__Obj_mrhs)
# 4933               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.mrhs,[Dyp.Ter Dyp_symbols.t_T_USTAR;Dyp.Non_ter (Dyp_symbols.arg,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_USTAR  (
# 1172 "newParser.dyp"
           (pos:Lexing.position)
# 4939               "newParser.ml"
 as _1));`Real_obj (Obj_arg ( (
# 1172 "newParser.dyp"
                    (a:'dypgen__Obj_arg)
# 4943               "newParser.ml"
 as _2)))] -> Obj_mrhs 
# 1171 "newParser.dyp"
(
                        ( [E_Unary(Op_UStar,a,pos)] ):'dypgen__Obj_mrhs)
# 4948               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.mrhs,[Dyp.Ter Dyp_symbols.t_T_USTAR;Dyp.Non_ter (Dyp_symbols.command_codeblock,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_USTAR  (
# 1173 "newParser.dyp"
           (pos:Lexing.position)
# 4954               "newParser.ml"
 as _1));`Real_obj (Obj_command_codeblock ( (
# 1173 "newParser.dyp"
                                  (c:'dypgen__Obj_command_codeblock)
# 4958               "newParser.ml"
 as _2)))] -> Obj_mrhs 
# 1172 "newParser.dyp"
(
                                      ( [E_Unary(Op_UStar,c,pos)] ):'dypgen__Obj_mrhs)
# 4963               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.mrhs,[Dyp.Ter Dyp_symbols.t_T_USTAR;Dyp.Ter Dyp_symbols.t_T_LBRACK;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.call_args,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_RBRACK],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_USTAR  (
# 1175 "newParser.dyp"
           (pos1:Lexing.position)
# 4969               "newParser.ml"
 as _1));`Real_obj (Obj_T_LBRACK  (
# 1175 "newParser.dyp"
                          (pos2:Lexing.position)
# 4973               "newParser.ml"
 as _2));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 4977               "newParser.ml"
 as _3)));`Real_obj (Obj_call_args ( (
# 1175 "newParser.dyp"
                                               (r:'dypgen__Obj_call_args)
# 4981               "newParser.ml"
 as _4)));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 4985               "newParser.ml"
 as _5)));`Real_obj (Obj_T_RBRACK  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 4989               "newParser.ml"
 as _6))] -> Obj_mrhs 
# 1175 "newParser.dyp"
(
      ( [E_Unary(Op_UStar,E_Array(r,pos2),pos1)] ):'dypgen__Obj_mrhs)
# 4994               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.then_sep,[Dyp.Ter Dyp_symbols.t_T_SEMICOLON;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_SEMICOLON  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5000               "newParser.ml"
 as _1));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 5004               "newParser.ml"
 as _2)))] -> Obj_then_sep 
# 1178 "newParser.dyp"
(
                       ():'dypgen__Obj_then_sep)
# 5009               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.then_sep,[Dyp.Ter Dyp_symbols.t_T_COLON;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_COLON  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5015               "newParser.ml"
 as _1));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 5019               "newParser.ml"
 as _2)))] -> Obj_then_sep 
# 1179 "newParser.dyp"
(
                   ():'dypgen__Obj_then_sep)
# 5024               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.then_sep,[Dyp.Non_ter (Dyp_symbols.some_eols,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_some_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_some_eols)
# 5030               "newParser.ml"
 as _1)))] -> Obj_then_sep 
# 1180 "newParser.dyp"
(
                ():'dypgen__Obj_then_sep)
# 5035               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.then_sep,[Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_K_THEN;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 5041               "newParser.ml"
 as _1)));`Real_obj (Obj_K_THEN  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5045               "newParser.ml"
 as _2));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 5049               "newParser.ml"
 as _3)))] -> Obj_then_sep 
# 1181 "newParser.dyp"
(
                       ():'dypgen__Obj_then_sep)
# 5054               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.when_clauses,[],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [] -> Obj_when_clauses 
# 1184 "newParser.dyp"
(
    ( [] ):'dypgen__Obj_when_clauses)
# 5061               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.when_clauses,[Dyp.Ter Dyp_symbols.t_K_WHEN;Dyp.Non_ter (Dyp_symbols.arg_comma_star_list,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.then_sep,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.stmt_list,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.when_clauses,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_WHEN  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5067               "newParser.ml"
 as _1));`Real_obj (Obj_arg_comma_star_list ( (
# 1186 "newParser.dyp"
                              (e:'dypgen__Obj_arg_comma_star_list)
# 5071               "newParser.ml"
 as _2)));`Real_obj (Obj_then_sep ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_then_sep)
# 5075               "newParser.ml"
 as _3)));`Real_obj (Obj_stmt_list ( (
# 1186 "newParser.dyp"
                                                    (es:'dypgen__Obj_stmt_list)
# 5079               "newParser.ml"
 as _4)));`Real_obj (Obj_when_clauses ( (
# 1186 "newParser.dyp"
                                                                     (rest:'dypgen__Obj_when_clauses)
# 5083               "newParser.ml"
 as _5)))] -> Obj_when_clauses 
# 1186 "newParser.dyp"
(
    ( (e,es) :: rest ):'dypgen__Obj_when_clauses)
# 5088               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.body_exn,[Dyp.Non_ter (Dyp_symbols.stmt_list,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.rescue_list,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.case_else,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.ensure_clause,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_stmt_list ( (
# 1190 "newParser.dyp"
            (body:'dypgen__Obj_stmt_list)
# 5094               "newParser.ml"
 as _1)));`Real_obj (Obj_rescue_list ( (
# 1190 "newParser.dyp"
                              (resc_e:'dypgen__Obj_rescue_list)
# 5098               "newParser.ml"
 as _2)));`Real_obj (Obj_case_else ( (
# 1191 "newParser.dyp"
              (else_e:'dypgen__Obj_case_else)
# 5102               "newParser.ml"
 as _3)));`Real_obj (Obj_ensure_clause ( (
# 1191 "newParser.dyp"
                                    (ens_e:'dypgen__Obj_ensure_clause)
# 5106               "newParser.ml"
 as _4)))] -> Obj_body_exn 
# 1191 "newParser.dyp"
(
     ( {body_exprs = body;
	rescue_exprs = resc_e;
	ensure_expr = ens_e;
	else_expr = else_e} ):'dypgen__Obj_body_exn)
# 5114               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.rescue_clause,[Dyp.Ter Dyp_symbols.t_K_RESCUE;Dyp.Non_ter (Dyp_symbols.then_sep,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.stmt_list,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_RESCUE  (
# 1198 "newParser.dyp"
            (resc_pos:Lexing.position)
# 5120               "newParser.ml"
 as _1));`Real_obj (Obj_then_sep ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_then_sep)
# 5124               "newParser.ml"
 as _2)));`Real_obj (Obj_stmt_list ( (
# 1198 "newParser.dyp"
                                         (body:'dypgen__Obj_stmt_list)
# 5128               "newParser.ml"
 as _3)))] -> Obj_rescue_clause 
# 1198 "newParser.dyp"
(
      ( let pos = match body with
	  | [] -> resc_pos 
	  | hd::_ -> pos_of hd
	in (E_Empty,mk_block body pos) ):'dypgen__Obj_rescue_clause)
# 5136               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.rescue_clause,[Dyp.Ter Dyp_symbols.t_K_RESCUE;Dyp.Ter Dyp_symbols.t_T_ASSOC;Dyp.Non_ter (Dyp_symbols.seen_id,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.then_sep,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.stmt_list,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_RESCUE  (
# 1204 "newParser.dyp"
            (pos:Lexing.position)
# 5142               "newParser.ml"
 as _1));`Real_obj (Obj_T_ASSOC  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5146               "newParser.ml"
 as _2));`Real_obj (Obj_seen_id ( (
# 1204 "newParser.dyp"
                                 (bind:'dypgen__Obj_seen_id)
# 5150               "newParser.ml"
 as _3)));`Real_obj (Obj_then_sep ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_then_sep)
# 5154               "newParser.ml"
 as _4)));`Real_obj (Obj_stmt_list ( (
# 1204 "newParser.dyp"
                                                          (body:'dypgen__Obj_stmt_list)
# 5158               "newParser.ml"
 as _5)))] -> Obj_rescue_clause 
# 1204 "newParser.dyp"
(
      ( (E_Binop(E_Empty,Op_ASSOC,bind,pos), mk_block body pos) ):'dypgen__Obj_rescue_clause)
# 5163               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.rescue_clause,[Dyp.Ter Dyp_symbols.t_K_RESCUE;Dyp.Non_ter (Dyp_symbols.arg_comma_star_list,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.then_sep,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.stmt_list,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_RESCUE  (
# 1207 "newParser.dyp"
            (pos:Lexing.position)
# 5169               "newParser.ml"
 as _1));`Real_obj (Obj_arg_comma_star_list ( (
# 1207 "newParser.dyp"
                                     (exn:'dypgen__Obj_arg_comma_star_list)
# 5173               "newParser.ml"
 as _2)));`Real_obj (Obj_then_sep ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_then_sep)
# 5177               "newParser.ml"
 as _3)));`Real_obj (Obj_stmt_list ( (
# 1207 "newParser.dyp"
                                                             (body:'dypgen__Obj_stmt_list)
# 5181               "newParser.ml"
 as _4)))] -> Obj_rescue_clause 
# 1207 "newParser.dyp"
(
    ( (tuple exn,mk_block body pos) ):'dypgen__Obj_rescue_clause)
# 5186               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.rescue_clause,[Dyp.Ter Dyp_symbols.t_K_RESCUE;Dyp.Non_ter (Dyp_symbols.arg_comma_star_list,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_RESCUE  (
# 1210 "newParser.dyp"
            (pos:Lexing.position)
# 5192               "newParser.ml"
 as _1));`Real_obj (Obj_arg_comma_star_list ( (
# 1210 "newParser.dyp"
                                     (exn:'dypgen__Obj_arg_comma_star_list)
# 5196               "newParser.ml"
 as _2)))] -> Obj_rescue_clause 
# 1210 "newParser.dyp"
(
    ( (tuple exn,E_Empty) ):'dypgen__Obj_rescue_clause)
# 5201               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.eol_or_semi,[Dyp.Ter Dyp_symbols.t_T_SEMICOLON],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_SEMICOLON  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5207               "newParser.ml"
 as _1))] -> Obj_eol_or_semi 
# 1213 "newParser.dyp"
(
               ():'dypgen__Obj_eol_or_semi)
# 5212               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.eol_or_semi,[Dyp.Ter Dyp_symbols.t_T_EOL],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [ _1] -> Obj_eol_or_semi 
# 1214 "newParser.dyp"
(
         ():'dypgen__Obj_eol_or_semi)
# 5219               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.rescue_list_rest,[],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [] -> Obj_rescue_list_rest 
# 1217 "newParser.dyp"
(
    ( [] ):'dypgen__Obj_rescue_list_rest)
# 5226               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.rescue_list_rest,[Dyp.Non_ter (Dyp_symbols.rescue_clause,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.rescue_list_rest,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_rescue_clause ( (
# 1219 "newParser.dyp"
                 (r:'dypgen__Obj_rescue_clause)
# 5232               "newParser.ml"
 as _1)));`Real_obj (Obj_rescue_list_rest ( (
# 1219 "newParser.dyp"
                                     (rs:'dypgen__Obj_rescue_list_rest)
# 5236               "newParser.ml"
 as _2)))] -> Obj_rescue_list_rest 
# 1218 "newParser.dyp"
(
                                          ( r::rs ):'dypgen__Obj_rescue_list_rest)
# 5241               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.rescue_list,[],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [] -> Obj_rescue_list 
# 1221 "newParser.dyp"
(
    ( [] ):'dypgen__Obj_rescue_list)
# 5248               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.rescue_list,[Dyp.Non_ter (Dyp_symbols.eol_or_semi,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.rescue_clause,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.rescue_list,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_eol_or_semi ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eol_or_semi)
# 5254               "newParser.ml"
 as _1)));`Real_obj (Obj_rescue_clause ( (
# 1224 "newParser.dyp"
                             (r:'dypgen__Obj_rescue_clause)
# 5258               "newParser.ml"
 as _2)));`Real_obj (Obj_rescue_list ( (
# 1224 "newParser.dyp"
                                            (rs:'dypgen__Obj_rescue_list)
# 5262               "newParser.ml"
 as _3)))] -> Obj_rescue_list 
# 1224 "newParser.dyp"
(
      ( r::rs ):'dypgen__Obj_rescue_list)
# 5267               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.case_else,[],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [] -> Obj_case_else 
# 1227 "newParser.dyp"
(
    ( [] ):'dypgen__Obj_case_else)
# 5274               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.case_else,[Dyp.Ter Dyp_symbols.t_K_ELSE;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.stmt_list,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_ELSE  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5280               "newParser.ml"
 as _1));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 5284               "newParser.ml"
 as _2)));`Real_obj (Obj_stmt_list ( (
# 1229 "newParser.dyp"
                         (ss:'dypgen__Obj_stmt_list)
# 5288               "newParser.ml"
 as _3)))] -> Obj_case_else 
# 1228 "newParser.dyp"
(
                              ( ss ):'dypgen__Obj_case_else)
# 5293               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.ensure_clause,[],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [] -> Obj_ensure_clause 
# 1231 "newParser.dyp"
(
    ( [] ):'dypgen__Obj_ensure_clause)
# 5300               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.ensure_clause,[Dyp.Ter Dyp_symbols.t_K_ENSURE;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.stmt_list,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_ENSURE  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5306               "newParser.ml"
 as _1));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 5310               "newParser.ml"
 as _2)));`Real_obj (Obj_stmt_list ( (
# 1233 "newParser.dyp"
                           (body:'dypgen__Obj_stmt_list)
# 5314               "newParser.ml"
 as _3)))] -> Obj_ensure_clause 
# 1232 "newParser.dyp"
(
                                  ( body ):'dypgen__Obj_ensure_clause)
# 5319               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.if_else_clauses,[],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [] -> Obj_if_else_clauses 
# 1235 "newParser.dyp"
(
    ( [] ):'dypgen__Obj_if_else_clauses)
# 5326               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.if_else_clauses,[Dyp.Ter Dyp_symbols.t_K_ELSE;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.stmt_list,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_ELSE  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5332               "newParser.ml"
 as _1));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 5336               "newParser.ml"
 as _2)));`Real_obj (Obj_stmt_list ( (
# 1237 "newParser.dyp"
                         (body:'dypgen__Obj_stmt_list)
# 5340               "newParser.ml"
 as _3)))] -> Obj_if_else_clauses 
# 1237 "newParser.dyp"
(
    ( body ):'dypgen__Obj_if_else_clauses)
# 5345               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.if_else_clauses,[Dyp.Ter Dyp_symbols.t_K_ELSIF;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.expr,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.then_sep,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.stmt_list,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.if_else_clauses,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_ELSIF  (
# 1239 "newParser.dyp"
           (pos:Lexing.position)
# 5351               "newParser.ml"
 as _1));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 5355               "newParser.ml"
 as _2)));`Real_obj (Obj_expr ( (
# 1239 "newParser.dyp"
                          (guard:'dypgen__Obj_expr)
# 5359               "newParser.ml"
 as _3)));`Real_obj (Obj_then_sep ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_then_sep)
# 5363               "newParser.ml"
 as _4)));`Real_obj (Obj_stmt_list ( (
# 1239 "newParser.dyp"
                                                    (body:'dypgen__Obj_stmt_list)
# 5367               "newParser.ml"
 as _5)));`Real_obj (Obj_if_else_clauses ( (
# 1239 "newParser.dyp"
                                                                          (rest:'dypgen__Obj_if_else_clauses)
# 5371               "newParser.ml"
 as _6)))] -> Obj_if_else_clauses 
# 1239 "newParser.dyp"
(
    ( [E_If( guard, body, rest, pos) ] ):'dypgen__Obj_if_else_clauses)
# 5376               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.meth_or_atom,[Dyp.Non_ter (Dyp_symbols.method_name,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_method_name ( (
# 1243 "newParser.dyp"
                 (e:'dypgen__Obj_method_name)
# 5382               "newParser.ml"
 as _1)))] -> Obj_meth_or_atom 
# 1242 "newParser.dyp"
(
                      (e):'dypgen__Obj_meth_or_atom)
# 5387               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.meth_or_atom,[Dyp.Ter Dyp_symbols.t_T_ATOM],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_ATOM  (
# 1244 "newParser.dyp"
            (a,pos:Ast.interp_string * Lexing.position)
# 5393               "newParser.ml"
 as _1))] -> Obj_meth_or_atom 
# 1243 "newParser.dyp"
(
                    ( E_Literal((Lit_Atom a),pos) ):'dypgen__Obj_meth_or_atom)
# 5398               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.meth_or_atom_list,[Dyp.Non_ter (Dyp_symbols.meth_or_atom,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_meth_or_atom ( (
# 1247 "newParser.dyp"
                  (e:'dypgen__Obj_meth_or_atom)
# 5404               "newParser.ml"
 as _1)))] -> Obj_meth_or_atom_list 
# 1246 "newParser.dyp"
(
                      ( [e] ):'dypgen__Obj_meth_or_atom_list)
# 5409               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.meth_or_atom_list,[Dyp.Non_ter (Dyp_symbols.meth_or_atom,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_COMMA;Dyp.Non_ter (Dyp_symbols.meth_or_atom_list,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_meth_or_atom ( (
# 1248 "newParser.dyp"
                  (e:'dypgen__Obj_meth_or_atom)
# 5415               "newParser.ml"
 as _1)));`Real_obj (Obj_T_COMMA  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5419               "newParser.ml"
 as _2));`Real_obj (Obj_meth_or_atom_list ( (
# 1248 "newParser.dyp"
                                               (lst:'dypgen__Obj_meth_or_atom_list)
# 5423               "newParser.ml"
 as _3)))] -> Obj_meth_or_atom_list 
# 1247 "newParser.dyp"
(
                                                    ( e::lst ):'dypgen__Obj_meth_or_atom_list)
# 5428               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.method_name,[Dyp.Non_ter (Dyp_symbols.message_identifier,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_message_identifier ( (
# 1251 "newParser.dyp"
                      (e:'dypgen__Obj_message_identifier)
# 5434               "newParser.ml"
 as _1)))] -> Obj_method_name 
# 1250 "newParser.dyp"
(
                          ( e ):'dypgen__Obj_method_name)
# 5439               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.method_name,[Dyp.Non_ter (Dyp_symbols.method_name,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_ASSIGN],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_method_name ( (
# 1252 "newParser.dyp"
               (e:'dypgen__Obj_method_name)
# 5445               "newParser.ml"
 as _1)));`Real_obj (Obj_T_ASSIGN  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5449               "newParser.ml"
 as _2))] -> Obj_method_name 
# 1251 "newParser.dyp"
(
                            ( add_eq e ):'dypgen__Obj_method_name)
# 5454               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.method_name,[Dyp.Non_ter (Dyp_symbols.method_name,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_DOT;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.message_identifier,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_method_name ( (
# 1253 "newParser.dyp"
               (id1:'dypgen__Obj_method_name)
# 5460               "newParser.ml"
 as _1)));`Real_obj (Obj_T_DOT  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5464               "newParser.ml"
 as _2));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 5468               "newParser.ml"
 as _3)));`Real_obj (Obj_message_identifier ( (
# 1253 "newParser.dyp"
                                                  (id2:'dypgen__Obj_message_identifier)
# 5472               "newParser.ml"
 as _4)))] -> Obj_method_name 
# 1253 "newParser.dyp"
(
      ( E_Binop(id1,Op_DOT,id2,pos_of id1) ):'dypgen__Obj_method_name)
# 5477               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.method_name,[Dyp.Non_ter (Dyp_symbols.method_name,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_DOT;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.assignable,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_ASSIGN],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_method_name ( (
# 1255 "newParser.dyp"
               (id1:'dypgen__Obj_method_name)
# 5483               "newParser.ml"
 as _1)));`Real_obj (Obj_T_DOT  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5487               "newParser.ml"
 as _2));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 5491               "newParser.ml"
 as _3)));`Real_obj (Obj_assignable ( (
# 1255 "newParser.dyp"
                                          (id2:'dypgen__Obj_assignable)
# 5495               "newParser.ml"
 as _4)));`Real_obj (Obj_T_ASSIGN  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5499               "newParser.ml"
 as _5))] -> Obj_method_name 
# 1255 "newParser.dyp"
(
      ( E_Binop(id1,Op_DOT,add_eq id2,pos_of id1) ):'dypgen__Obj_method_name)
# 5504               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.method_name,[Dyp.Ter Dyp_symbols.t_T_USCOPE;Dyp.Non_ter (Dyp_symbols.identifier,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_USCOPE  (
# 1258 "newParser.dyp"
            (pos:Lexing.position)
# 5510               "newParser.ml"
 as _1));`Real_obj (Obj_identifier ( (
# 1258 "newParser.dyp"
                            (id:'dypgen__Obj_identifier)
# 5514               "newParser.ml"
 as _2)))] -> Obj_method_name 
# 1257 "newParser.dyp"
(
                                     ( E_Unary(Op_UScope,id,pos)):'dypgen__Obj_method_name)
# 5519               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.method_name,[Dyp.Ter Dyp_symbols.t_T_USCOPE;Dyp.Non_ter (Dyp_symbols.keyword_as_id,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_USCOPE  (
# 1259 "newParser.dyp"
            (pos:Lexing.position)
# 5525               "newParser.ml"
 as _1));`Real_obj (Obj_keyword_as_id ( (
# 1259 "newParser.dyp"
                               (id:'dypgen__Obj_keyword_as_id)
# 5529               "newParser.ml"
 as _2)))] -> Obj_method_name 
# 1258 "newParser.dyp"
(
                                     ( E_Unary(Op_UScope,id,pos)):'dypgen__Obj_method_name)
# 5534               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.method_name,[Dyp.Non_ter (Dyp_symbols.method_name,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_SCOPE;Dyp.Non_ter (Dyp_symbols.identifier,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_method_name ( (
# 1261 "newParser.dyp"
               (id1:'dypgen__Obj_method_name)
# 5540               "newParser.ml"
 as _1)));`Real_obj (Obj_T_SCOPE  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5544               "newParser.ml"
 as _2));`Real_obj (Obj_identifier ( (
# 1261 "newParser.dyp"
                                       (id2:'dypgen__Obj_identifier)
# 5548               "newParser.ml"
 as _3)))] -> Obj_method_name 
# 1260 "newParser.dyp"
(
                                                ( scope id1 id2 ):'dypgen__Obj_method_name)
# 5553               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.method_name,[Dyp.Non_ter (Dyp_symbols.method_name,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_SCOPE;Dyp.Non_ter (Dyp_symbols.keyword_as_id,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_method_name ( (
# 1262 "newParser.dyp"
               (id1:'dypgen__Obj_method_name)
# 5559               "newParser.ml"
 as _1)));`Real_obj (Obj_T_SCOPE  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5563               "newParser.ml"
 as _2));`Real_obj (Obj_keyword_as_id ( (
# 1262 "newParser.dyp"
                                          (id2:'dypgen__Obj_keyword_as_id)
# 5567               "newParser.ml"
 as _3)))] -> Obj_method_name 
# 1261 "newParser.dyp"
(
                                                ( scope id1 id2 ):'dypgen__Obj_method_name)
# 5572               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.method_name,[Dyp.Ter Dyp_symbols.t_T_LPAREN;Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.stmt_list,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_RPAREN;Dyp.Ter Dyp_symbols.t_T_DOT;Dyp.Non_ter (Dyp_symbols.message_identifier,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_LPAREN  (
# 1263 "newParser.dyp"
            (pos:Lexing.position)
# 5578               "newParser.ml"
 as _1));`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 5582               "newParser.ml"
 as _2)));`Real_obj (Obj_stmt_list ( (
# 1263 "newParser.dyp"
                                (ss:'dypgen__Obj_stmt_list)
# 5586               "newParser.ml"
 as _3)));`Real_obj (Obj_T_RPAREN  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5590               "newParser.ml"
 as _4));`Real_obj (Obj_T_DOT  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5594               "newParser.ml"
 as _5));`Real_obj (Obj_message_identifier ( (
# 1263 "newParser.dyp"
                                                                      (m:'dypgen__Obj_message_identifier)
# 5598               "newParser.ml"
 as _6)))] -> Obj_method_name 
# 1263 "newParser.dyp"
(
      ( E_Binop(mk_block ss (pos_of (List.hd ss)), Op_DOT,m, pos) ):'dypgen__Obj_method_name)
# 5603               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.assignable,[Dyp.Non_ter (Dyp_symbols.identifier,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_identifier ( (
# 1267 "newParser.dyp"
              (e:'dypgen__Obj_identifier)
# 5609               "newParser.ml"
 as _1)))] -> Obj_assignable 
# 1266 "newParser.dyp"
(
                   ( e ):'dypgen__Obj_assignable)
# 5614               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.assignable,[Dyp.Non_ter (Dyp_symbols.keyword_as_id,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_keyword_as_id ( (
# 1268 "newParser.dyp"
                 (k:'dypgen__Obj_keyword_as_id)
# 5620               "newParser.ml"
 as _1)))] -> Obj_assignable 
# 1267 "newParser.dyp"
(
                     ( k ):'dypgen__Obj_assignable)
# 5625               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.assignable,[Dyp.Ter Dyp_symbols.t_T_LBRACK_ARG;Dyp.Ter Dyp_symbols.t_T_RBRACK],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_LBRACK_ARG  (
# 1269 "newParser.dyp"
                (pos:Lexing.position)
# 5631               "newParser.ml"
 as _1));`Real_obj (Obj_T_RBRACK  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5635               "newParser.ml"
 as _2))] -> Obj_assignable 
# 1268 "newParser.dyp"
(
                               ( E_Operator(Op_AREF,pos) ):'dypgen__Obj_assignable)
# 5640               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.assignable,[Dyp.Ter Dyp_symbols.t_T_LBRACK;Dyp.Ter Dyp_symbols.t_T_RBRACK],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_LBRACK  (
# 1270 "newParser.dyp"
            (pos:Lexing.position)
# 5646               "newParser.ml"
 as _1));`Real_obj (Obj_T_RBRACK  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5650               "newParser.ml"
 as _2))] -> Obj_assignable 
# 1269 "newParser.dyp"
(
                               ( E_Operator(Op_AREF,pos) ):'dypgen__Obj_assignable)
# 5655               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.message_identifier,[Dyp.Non_ter (Dyp_symbols.assignable,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_assignable ( (
# 1273 "newParser.dyp"
              (e:'dypgen__Obj_assignable)
# 5661               "newParser.ml"
 as _1)))] -> Obj_message_identifier 
# 1272 "newParser.dyp"
(
                  ( e ):'dypgen__Obj_message_identifier)
# 5666               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.message_identifier,[Dyp.Ter Dyp_symbols.t_T_LBRACK_ARG;Dyp.Ter Dyp_symbols.t_T_RBRACK;Dyp.Ter Dyp_symbols.t_T_ASSIGN],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_LBRACK_ARG  (
# 1274 "newParser.dyp"
                (pos:Lexing.position)
# 5672               "newParser.ml"
 as _1));`Real_obj (Obj_T_RBRACK  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5676               "newParser.ml"
 as _2));`Real_obj (Obj_T_ASSIGN  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5680               "newParser.ml"
 as _3))] -> Obj_message_identifier 
# 1273 "newParser.dyp"
(
                                        ( E_Operator(Op_ASET,pos) ):'dypgen__Obj_message_identifier)
# 5685               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.message_identifier,[Dyp.Non_ter (Dyp_symbols.bin_op,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_bin_op ( (
# 1275 "newParser.dyp"
          (op:'dypgen__Obj_bin_op)
# 5691               "newParser.ml"
 as _1)))] -> Obj_message_identifier 
# 1274 "newParser.dyp"
(
               ( E_Operator(op,Lexing.dummy_pos) ):'dypgen__Obj_message_identifier)
# 5696               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.message_identifier,[Dyp.Ter Dyp_symbols.t_T_UPLUS],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_UPLUS  (
# 1276 "newParser.dyp"
           (pos:Lexing.position)
# 5702               "newParser.ml"
 as _1))] -> Obj_message_identifier 
# 1275 "newParser.dyp"
(
                       ( E_UOperator(Op_UPlus,pos) ):'dypgen__Obj_message_identifier)
# 5707               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.message_identifier,[Dyp.Ter Dyp_symbols.t_T_UMINUS],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_UMINUS  (
# 1277 "newParser.dyp"
            (pos:Lexing.position)
# 5713               "newParser.ml"
 as _1))] -> Obj_message_identifier 
# 1276 "newParser.dyp"
(
                       ( E_UOperator(Op_UMinus,pos) ):'dypgen__Obj_message_identifier)
# 5718               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.message_identifier,[Dyp.Ter Dyp_symbols.t_T_TILDE],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_TILDE  (
# 1278 "newParser.dyp"
           (pos:Lexing.position)
# 5724               "newParser.ml"
 as _1))] -> Obj_message_identifier 
# 1277 "newParser.dyp"
(
                       ( E_UOperator(Op_UTilde,pos) ):'dypgen__Obj_message_identifier)
# 5729               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.bin_op,[Dyp.Ter Dyp_symbols.t_T_CMP],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_CMP  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5735               "newParser.ml"
 as _1))] -> Obj_bin_op 
# 1280 "newParser.dyp"
(
             ( Op_CMP ):'dypgen__Obj_bin_op)
# 5740               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.bin_op,[Dyp.Ter Dyp_symbols.t_T_EQ],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_EQ  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5746               "newParser.ml"
 as _1))] -> Obj_bin_op 
# 1281 "newParser.dyp"
(
             ( Op_EQ ):'dypgen__Obj_bin_op)
# 5751               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.bin_op,[Dyp.Ter Dyp_symbols.t_T_SLASH],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_SLASH  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5757               "newParser.ml"
 as _1))] -> Obj_bin_op 
# 1282 "newParser.dyp"
(
             ( Op_DIV ):'dypgen__Obj_bin_op)
# 5762               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.bin_op,[Dyp.Ter Dyp_symbols.t_T_PERCENT],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_PERCENT  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5768               "newParser.ml"
 as _1))] -> Obj_bin_op 
# 1283 "newParser.dyp"
(
             ( Op_REM ):'dypgen__Obj_bin_op)
# 5773               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.bin_op,[Dyp.Ter Dyp_symbols.t_T_EQQ],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_EQQ  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5779               "newParser.ml"
 as _1))] -> Obj_bin_op 
# 1284 "newParser.dyp"
(
             ( Op_EQQ ):'dypgen__Obj_bin_op)
# 5784               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.bin_op,[Dyp.Ter Dyp_symbols.t_T_NEQ],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_NEQ  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5790               "newParser.ml"
 as _1))] -> Obj_bin_op 
# 1285 "newParser.dyp"
(
             ( Op_NEQ ):'dypgen__Obj_bin_op)
# 5795               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.bin_op,[Dyp.Ter Dyp_symbols.t_T_GEQ],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_GEQ  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5801               "newParser.ml"
 as _1))] -> Obj_bin_op 
# 1286 "newParser.dyp"
(
             ( Op_GEQ ):'dypgen__Obj_bin_op)
# 5806               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.bin_op,[Dyp.Ter Dyp_symbols.t_T_LEQ],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_LEQ  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5812               "newParser.ml"
 as _1))] -> Obj_bin_op 
# 1287 "newParser.dyp"
(
             ( Op_LEQ ):'dypgen__Obj_bin_op)
# 5817               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.bin_op,[Dyp.Ter Dyp_symbols.t_T_MATCH],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_MATCH  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5823               "newParser.ml"
 as _1))] -> Obj_bin_op 
# 1288 "newParser.dyp"
(
             ( Op_MATCH ):'dypgen__Obj_bin_op)
# 5828               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.bin_op,[Dyp.Ter Dyp_symbols.t_T_NMATCH],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_NMATCH  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5834               "newParser.ml"
 as _1))] -> Obj_bin_op 
# 1289 "newParser.dyp"
(
             ( Op_NMATCH ):'dypgen__Obj_bin_op)
# 5839               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.bin_op,[Dyp.Ter Dyp_symbols.t_T_CARROT],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_CARROT  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5845               "newParser.ml"
 as _1))] -> Obj_bin_op 
# 1290 "newParser.dyp"
(
             ( Op_XOR ):'dypgen__Obj_bin_op)
# 5850               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.bin_op,[Dyp.Ter Dyp_symbols.t_T_POW],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_POW  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5856               "newParser.ml"
 as _1))] -> Obj_bin_op 
# 1291 "newParser.dyp"
(
             ( Op_POW ):'dypgen__Obj_bin_op)
# 5861               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.bin_op,[Dyp.Ter Dyp_symbols.t_T_VBAR],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_VBAR  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5867               "newParser.ml"
 as _1))] -> Obj_bin_op 
# 1292 "newParser.dyp"
(
             ( Op_BOR ):'dypgen__Obj_bin_op)
# 5872               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.bin_op,[Dyp.Ter Dyp_symbols.t_T_ASSOC],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_ASSOC  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5878               "newParser.ml"
 as _1))] -> Obj_bin_op 
# 1293 "newParser.dyp"
(
             ( Op_ASSOC ):'dypgen__Obj_bin_op)
# 5883               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.bin_op,[Dyp.Ter Dyp_symbols.t_T_AMPER],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_AMPER  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5889               "newParser.ml"
 as _1))] -> Obj_bin_op 
# 1294 "newParser.dyp"
(
             ( Op_BAND ):'dypgen__Obj_bin_op)
# 5894               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.bin_op,[Dyp.Ter Dyp_symbols.t_T_PLUS],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_PLUS  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5900               "newParser.ml"
 as _1))] -> Obj_bin_op 
# 1295 "newParser.dyp"
(
             ( Op_PLUS ):'dypgen__Obj_bin_op)
# 5905               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.bin_op,[Dyp.Ter Dyp_symbols.t_T_MINUS],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_MINUS  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5911               "newParser.ml"
 as _1))] -> Obj_bin_op 
# 1296 "newParser.dyp"
(
             ( Op_MINUS ):'dypgen__Obj_bin_op)
# 5916               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.bin_op,[Dyp.Ter Dyp_symbols.t_T_STAR],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_STAR  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5922               "newParser.ml"
 as _1))] -> Obj_bin_op 
# 1297 "newParser.dyp"
(
             ( Op_TIMES ):'dypgen__Obj_bin_op)
# 5927               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.bin_op,[Dyp.Ter Dyp_symbols.t_T_LSHFT],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_LSHFT  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5933               "newParser.ml"
 as _1))] -> Obj_bin_op 
# 1298 "newParser.dyp"
(
             ( Op_LSHIFT ):'dypgen__Obj_bin_op)
# 5938               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.bin_op,[Dyp.Ter Dyp_symbols.t_T_RSHFT],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_RSHFT  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5944               "newParser.ml"
 as _1))] -> Obj_bin_op 
# 1299 "newParser.dyp"
(
             ( Op_RSHIFT ):'dypgen__Obj_bin_op)
# 5949               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.bin_op,[Dyp.Ter Dyp_symbols.t_T_LT],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_LT  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5955               "newParser.ml"
 as _1))] -> Obj_bin_op 
# 1300 "newParser.dyp"
(
             ( Op_LT ):'dypgen__Obj_bin_op)
# 5960               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.bin_op,[Dyp.Ter Dyp_symbols.t_T_GT],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_GT  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5966               "newParser.ml"
 as _1))] -> Obj_bin_op 
# 1301 "newParser.dyp"
(
             ( Op_GT ):'dypgen__Obj_bin_op)
# 5971               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.bin_op,[Dyp.Ter Dyp_symbols.t_T_DOT2],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_DOT2  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5977               "newParser.ml"
 as _1))] -> Obj_bin_op 
# 1302 "newParser.dyp"
(
             ( Op_DOT2 ):'dypgen__Obj_bin_op)
# 5982               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.bin_op,[Dyp.Ter Dyp_symbols.t_T_DOT3],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_DOT3  (
# 0 "newParser.dyp"
(_:Lexing.position)
# 5988               "newParser.ml"
 as _1))] -> Obj_bin_op 
# 1303 "newParser.dyp"
(
             ( Op_DOT3 ):'dypgen__Obj_bin_op)
# 5993               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.unary_op,[Dyp.Ter Dyp_symbols.t_T_UPLUS],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_UPLUS  (
# 1307 "newParser.dyp"
           (pos:Lexing.position)
# 5999               "newParser.ml"
 as _1))] -> Obj_unary_op 
# 1306 "newParser.dyp"
(
                   ( Op_UPlus,pos ):'dypgen__Obj_unary_op)
# 6004               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.unary_op,[Dyp.Ter Dyp_symbols.t_T_UMINUS],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_UMINUS  (
# 1308 "newParser.dyp"
            (pos:Lexing.position)
# 6010               "newParser.ml"
 as _1))] -> Obj_unary_op 
# 1307 "newParser.dyp"
(
                   ( Op_UMinus,pos ):'dypgen__Obj_unary_op)
# 6015               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.unary_op,[Dyp.Ter Dyp_symbols.t_T_TILDE],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_TILDE  (
# 1309 "newParser.dyp"
           (pos:Lexing.position)
# 6021               "newParser.ml"
 as _1))] -> Obj_unary_op 
# 1308 "newParser.dyp"
(
                   ( Op_UTilde,pos ):'dypgen__Obj_unary_op)
# 6026               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.unary_op,[Dyp.Ter Dyp_symbols.t_T_BANG],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_BANG  (
# 1310 "newParser.dyp"
          (pos:Lexing.position)
# 6032               "newParser.ml"
 as _1))] -> Obj_unary_op 
# 1309 "newParser.dyp"
(
                   ( Op_UBang,pos ):'dypgen__Obj_unary_op)
# 6037               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.keyword_as_id,[Dyp.Ter Dyp_symbols.t_K_CLASS],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_CLASS  (
# 1313 "newParser.dyp"
           (t_info,pos:string*Lexing.position)
# 6043               "newParser.ml"
 as _1))] -> Obj_keyword_as_id 
# 1312 "newParser.dyp"
(
                          ( E_Identifier(ID_Lowercase, "class", pos) ):'dypgen__Obj_keyword_as_id)
# 6048               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.keyword_as_id,[Dyp.Ter Dyp_symbols.t_K_MODULE],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_MODULE  (
# 1314 "newParser.dyp"
            (t_info, pos:string*Lexing.position)
# 6054               "newParser.ml"
 as _1))] -> Obj_keyword_as_id 
# 1313 "newParser.dyp"
(
                           ( E_Identifier(ID_Lowercase, "module", pos) ):'dypgen__Obj_keyword_as_id)
# 6059               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.keyword_as_id,[Dyp.Ter Dyp_symbols.t_K_DEF],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_DEF  (
# 1315 "newParser.dyp"
         (t_info,pos:string*Lexing.position)
# 6065               "newParser.ml"
 as _1))] -> Obj_keyword_as_id 
# 1314 "newParser.dyp"
(
                          ( E_Identifier(ID_Lowercase, "def", pos) ):'dypgen__Obj_keyword_as_id)
# 6070               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.keyword_as_id,[Dyp.Ter Dyp_symbols.t_K_END],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_END  (
# 1316 "newParser.dyp"
         (pos:Lexing.position)
# 6076               "newParser.ml"
 as _1))] -> Obj_keyword_as_id 
# 1315 "newParser.dyp"
(
                   ( E_Identifier(ID_Uppercase, "END", pos) ):'dypgen__Obj_keyword_as_id)
# 6081               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.keyword_as_id,[Dyp.Ter Dyp_symbols.t_K_ALIAS],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_ALIAS  (
# 1317 "newParser.dyp"
           (pos:Lexing.position)
# 6087               "newParser.ml"
 as _1))] -> Obj_keyword_as_id 
# 1316 "newParser.dyp"
(
                   ( E_Identifier(ID_Lowercase, "alias", pos) ):'dypgen__Obj_keyword_as_id)
# 6092               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.keyword_as_id,[Dyp.Ter Dyp_symbols.t_K_UNDEF],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_UNDEF  (
# 1318 "newParser.dyp"
           (pos:Lexing.position)
# 6098               "newParser.ml"
 as _1))] -> Obj_keyword_as_id 
# 1317 "newParser.dyp"
(
                   ( E_Identifier(ID_Lowercase, "undef", pos) ):'dypgen__Obj_keyword_as_id)
# 6103               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.keyword_as_id,[Dyp.Ter Dyp_symbols.t_K_BEGIN],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_BEGIN  (
# 1319 "newParser.dyp"
           (pos:Lexing.position)
# 6109               "newParser.ml"
 as _1))] -> Obj_keyword_as_id 
# 1318 "newParser.dyp"
(
                   ( E_Identifier(ID_Lowercase, "BEGIN", pos) ):'dypgen__Obj_keyword_as_id)
# 6114               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.keyword_as_id,[Dyp.Ter Dyp_symbols.t_K_RESCUE],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_RESCUE  (
# 1320 "newParser.dyp"
            (pos:Lexing.position)
# 6120               "newParser.ml"
 as _1))] -> Obj_keyword_as_id 
# 1319 "newParser.dyp"
(
                   ( E_Identifier(ID_Lowercase, "rescue", pos) ):'dypgen__Obj_keyword_as_id)
# 6125               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.keyword_as_id,[Dyp.Ter Dyp_symbols.t_K_ENSURE],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_ENSURE  (
# 1321 "newParser.dyp"
            (pos:Lexing.position)
# 6131               "newParser.ml"
 as _1))] -> Obj_keyword_as_id 
# 1320 "newParser.dyp"
(
                   ( E_Identifier(ID_Lowercase, "ensure", pos) ):'dypgen__Obj_keyword_as_id)
# 6136               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.keyword_as_id,[Dyp.Ter Dyp_symbols.t_K_IF],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_IF  (
# 1322 "newParser.dyp"
        (pos:Lexing.position)
# 6142               "newParser.ml"
 as _1))] -> Obj_keyword_as_id 
# 1321 "newParser.dyp"
(
                   ( E_Identifier(ID_Lowercase, "if", pos) ):'dypgen__Obj_keyword_as_id)
# 6147               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.keyword_as_id,[Dyp.Ter Dyp_symbols.t_K_UNLESS],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_UNLESS  (
# 1323 "newParser.dyp"
            (pos:Lexing.position)
# 6153               "newParser.ml"
 as _1))] -> Obj_keyword_as_id 
# 1322 "newParser.dyp"
(
                   ( E_Identifier(ID_Lowercase, "unless", pos) ):'dypgen__Obj_keyword_as_id)
# 6158               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.keyword_as_id,[Dyp.Ter Dyp_symbols.t_K_THEN],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_THEN  (
# 1324 "newParser.dyp"
          (pos:Lexing.position)
# 6164               "newParser.ml"
 as _1))] -> Obj_keyword_as_id 
# 1323 "newParser.dyp"
(
                   ( E_Identifier(ID_Lowercase, "then", pos) ):'dypgen__Obj_keyword_as_id)
# 6169               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.keyword_as_id,[Dyp.Ter Dyp_symbols.t_K_ELSIF],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_ELSIF  (
# 1325 "newParser.dyp"
           (pos:Lexing.position)
# 6175               "newParser.ml"
 as _1))] -> Obj_keyword_as_id 
# 1324 "newParser.dyp"
(
                   ( E_Identifier(ID_Lowercase, "elsif", pos) ):'dypgen__Obj_keyword_as_id)
# 6180               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.keyword_as_id,[Dyp.Ter Dyp_symbols.t_K_ELSE],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_ELSE  (
# 1326 "newParser.dyp"
          (pos:Lexing.position)
# 6186               "newParser.ml"
 as _1))] -> Obj_keyword_as_id 
# 1325 "newParser.dyp"
(
                   ( E_Identifier(ID_Lowercase, "else", pos) ):'dypgen__Obj_keyword_as_id)
# 6191               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.keyword_as_id,[Dyp.Ter Dyp_symbols.t_K_CASE],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_CASE  (
# 1327 "newParser.dyp"
          (pos:Lexing.position)
# 6197               "newParser.ml"
 as _1))] -> Obj_keyword_as_id 
# 1326 "newParser.dyp"
(
                   ( E_Identifier(ID_Lowercase, "case", pos) ):'dypgen__Obj_keyword_as_id)
# 6202               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.keyword_as_id,[Dyp.Ter Dyp_symbols.t_K_WHEN],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_WHEN  (
# 1328 "newParser.dyp"
          (pos:Lexing.position)
# 6208               "newParser.ml"
 as _1))] -> Obj_keyword_as_id 
# 1327 "newParser.dyp"
(
                   ( E_Identifier(ID_Lowercase, "when", pos) ):'dypgen__Obj_keyword_as_id)
# 6213               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.keyword_as_id,[Dyp.Ter Dyp_symbols.t_K_WHILE],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_WHILE  (
# 1329 "newParser.dyp"
           (pos:Lexing.position)
# 6219               "newParser.ml"
 as _1))] -> Obj_keyword_as_id 
# 1328 "newParser.dyp"
(
                   ( E_Identifier(ID_Lowercase, "while", pos) ):'dypgen__Obj_keyword_as_id)
# 6224               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.keyword_as_id,[Dyp.Ter Dyp_symbols.t_K_UNTIL],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_UNTIL  (
# 1330 "newParser.dyp"
           (pos:Lexing.position)
# 6230               "newParser.ml"
 as _1))] -> Obj_keyword_as_id 
# 1329 "newParser.dyp"
(
                   ( E_Identifier(ID_Lowercase, "until", pos) ):'dypgen__Obj_keyword_as_id)
# 6235               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.keyword_as_id,[Dyp.Ter Dyp_symbols.t_K_FOR],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_FOR  (
# 1331 "newParser.dyp"
         (pos:Lexing.position)
# 6241               "newParser.ml"
 as _1))] -> Obj_keyword_as_id 
# 1330 "newParser.dyp"
(
                   ( E_Identifier(ID_Lowercase, "for", pos) ):'dypgen__Obj_keyword_as_id)
# 6246               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.keyword_as_id,[Dyp.Ter Dyp_symbols.t_K_IN],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_IN  (
# 1332 "newParser.dyp"
        (pos:Lexing.position)
# 6252               "newParser.ml"
 as _1))] -> Obj_keyword_as_id 
# 1331 "newParser.dyp"
(
                   ( E_Identifier(ID_Lowercase, "in", pos) ):'dypgen__Obj_keyword_as_id)
# 6257               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.keyword_as_id,[Dyp.Ter Dyp_symbols.t_K_DO],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_DO  (
# 1333 "newParser.dyp"
        (pos:Lexing.position)
# 6263               "newParser.ml"
 as _1))] -> Obj_keyword_as_id 
# 1332 "newParser.dyp"
(
                   ( E_Identifier(ID_Lowercase, "do", pos) ):'dypgen__Obj_keyword_as_id)
# 6268               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.keyword_as_id,[Dyp.Ter Dyp_symbols.t_K_RETURN],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_RETURN  (
# 1334 "newParser.dyp"
            (pos:Lexing.position)
# 6274               "newParser.ml"
 as _1))] -> Obj_keyword_as_id 
# 1333 "newParser.dyp"
(
                   ( E_Identifier(ID_Lowercase, "return", pos) ):'dypgen__Obj_keyword_as_id)
# 6279               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.keyword_as_id,[Dyp.Ter Dyp_symbols.t_K_AND],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_AND  (
# 1335 "newParser.dyp"
         (pos:Lexing.position)
# 6285               "newParser.ml"
 as _1))] -> Obj_keyword_as_id 
# 1334 "newParser.dyp"
(
                   ( E_Identifier(ID_Lowercase, "and", pos) ):'dypgen__Obj_keyword_as_id)
# 6290               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.keyword_as_id,[Dyp.Ter Dyp_symbols.t_K_OR],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_OR  (
# 1336 "newParser.dyp"
        (pos:Lexing.position)
# 6296               "newParser.ml"
 as _1))] -> Obj_keyword_as_id 
# 1335 "newParser.dyp"
(
                   ( E_Identifier(ID_Lowercase, "or", pos) ):'dypgen__Obj_keyword_as_id)
# 6301               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.keyword_as_id,[Dyp.Ter Dyp_symbols.t_K_NOT],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_NOT  (
# 1337 "newParser.dyp"
         (pos:Lexing.position)
# 6307               "newParser.ml"
 as _1))] -> Obj_keyword_as_id 
# 1336 "newParser.dyp"
(
                   ( E_Identifier(ID_Lowercase, "not", pos) ):'dypgen__Obj_keyword_as_id)
# 6312               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.keyword_as_id,[Dyp.Ter Dyp_symbols.t_K_lBEGIN],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_lBEGIN  (
# 1339 "newParser.dyp"
            (pos:Lexing.position)
# 6318               "newParser.ml"
 as _1))] -> Obj_keyword_as_id 
# 1338 "newParser.dyp"
(
                   ( E_Identifier(ID_Lowercase, "begin", pos) ):'dypgen__Obj_keyword_as_id)
# 6323               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.keyword_as_id,[Dyp.Ter Dyp_symbols.t_K_lEND],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_lEND  (
# 1340 "newParser.dyp"
          (pos:Lexing.position)
# 6329               "newParser.ml"
 as _1))] -> Obj_keyword_as_id 
# 1339 "newParser.dyp"
(
                   ( E_Identifier(ID_Lowercase, "end", pos) ):'dypgen__Obj_keyword_as_id)
# 6334               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.keyword_as_id,[Dyp.Ter Dyp_symbols.t_K_YIELD],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_YIELD  (
# 1341 "newParser.dyp"
           (pos:Lexing.position)
# 6340               "newParser.ml"
 as _1))] -> Obj_keyword_as_id 
# 1340 "newParser.dyp"
(
                   ( E_Identifier(ID_Lowercase, "yield", pos) ):'dypgen__Obj_keyword_as_id)
# 6345               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.identifier,[Dyp.Ter Dyp_symbols.t_T_BUILTIN_VAR],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_BUILTIN_VAR  (
# 1344 "newParser.dyp"
                 (id,pos:string * Lexing.position)
# 6351               "newParser.ml"
 as _1))] -> Obj_identifier 
# 1343 "newParser.dyp"
(
                          ( E_Identifier(ID_Builtin, id, pos) ):'dypgen__Obj_identifier)
# 6356               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.identifier,[Dyp.Ter Dyp_symbols.t_T_GLOBAL_VAR],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_GLOBAL_VAR  (
# 1345 "newParser.dyp"
                (id,pos:string * Lexing.position)
# 6362               "newParser.ml"
 as _1))] -> Obj_identifier 
# 1344 "newParser.dyp"
(
                          ( E_Identifier (ID_Global, id, pos) ):'dypgen__Obj_identifier)
# 6367               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.identifier,[Dyp.Ter Dyp_symbols.t_T_UID],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_UID  (
# 1346 "newParser.dyp"
         (id,pos:string * Lexing.position)
# 6373               "newParser.ml"
 as _1))] -> Obj_identifier 
# 1345 "newParser.dyp"
(
                   ( E_Identifier (ID_Uppercase, id, pos)):'dypgen__Obj_identifier)
# 6378               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.identifier,[Dyp.Ter Dyp_symbols.t_K_NIL],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_NIL  (
# 1347 "newParser.dyp"
         (pos:Lexing.position)
# 6384               "newParser.ml"
 as _1))] -> Obj_identifier 
# 1346 "newParser.dyp"
(
                   ( E_Literal(Lit_Nil,pos) ):'dypgen__Obj_identifier)
# 6389               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.identifier,[Dyp.Ter Dyp_symbols.t_K_SELF],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_SELF  (
# 1348 "newParser.dyp"
          (pos:Lexing.position)
# 6395               "newParser.ml"
 as _1))] -> Obj_identifier 
# 1347 "newParser.dyp"
(
                   ( E_Literal(Lit_Self,pos) ):'dypgen__Obj_identifier)
# 6400               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.identifier,[Dyp.Ter Dyp_symbols.t_K_TRUE],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_TRUE  (
# 1349 "newParser.dyp"
          (pos:Lexing.position)
# 6406               "newParser.ml"
 as _1))] -> Obj_identifier 
# 1348 "newParser.dyp"
(
                   ( E_Literal(Lit_True,pos) ):'dypgen__Obj_identifier)
# 6411               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.identifier,[Dyp.Ter Dyp_symbols.t_K_FALSE],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_K_FALSE  (
# 1350 "newParser.dyp"
           (pos:Lexing.position)
# 6417               "newParser.ml"
 as _1))] -> Obj_identifier 
# 1349 "newParser.dyp"
(
                   ( E_Literal(Lit_False,pos) ):'dypgen__Obj_identifier)
# 6422               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.identifier,[Dyp.Ter Dyp_symbols.t_T_LID],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_LID  (
# 1351 "newParser.dyp"
         (id,pos:string * Lexing.position)
# 6428               "newParser.ml"
 as _1))] -> Obj_identifier 
# 1350 "newParser.dyp"
(
                   ( E_Identifier (ID_Lowercase, id, pos)):'dypgen__Obj_identifier)
# 6433               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.identifier,[Dyp.Ter Dyp_symbols.t_T_INST_VAR],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_INST_VAR  (
# 1352 "newParser.dyp"
              (id,pos:string * Lexing.position)
# 6439               "newParser.ml"
 as _1))] -> Obj_identifier 
# 1351 "newParser.dyp"
(
                          ( E_Identifier(ID_Instance, id, pos) ):'dypgen__Obj_identifier)
# 6444               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.identifier,[Dyp.Ter Dyp_symbols.t_T_CLASS_VAR],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_CLASS_VAR  (
# 1353 "newParser.dyp"
               (id,pos:string * Lexing.position)
# 6450               "newParser.ml"
 as _1))] -> Obj_identifier 
# 1352 "newParser.dyp"
(
                           ( E_Identifier(ID_Class, id, pos) ):'dypgen__Obj_identifier)
# 6455               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.one_string,[Dyp.Ter Dyp_symbols.t_T_SINGLE_STRING],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_SINGLE_STRING  (
# 1356 "newParser.dyp"
                   (s,pos:string * Lexing.position)
# 6461               "newParser.ml"
 as _1))] -> Obj_one_string 
# 1355 "newParser.dyp"
(
                           ( E_Literal( Lit_String(String_Single s), pos) ):'dypgen__Obj_one_string)
# 6466               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.one_string,[Dyp.Ter Dyp_symbols.t_T_DOUBLE_BEG;Dyp.Non_ter (Dyp_symbols.interp_str,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_DOUBLE_BEG  (
# 1357 "newParser.dyp"
                (pos:Lexing.position)
# 6472               "newParser.ml"
 as _1));`Real_obj (Obj_interp_str ( (
# 1357 "newParser.dyp"
                                (istr:'dypgen__Obj_interp_str)
# 6476               "newParser.ml"
 as _2)))] -> Obj_one_string 
# 1357 "newParser.dyp"
(
      ( E_Literal(Lit_String (String_Double istr),pos) ):'dypgen__Obj_one_string)
# 6481               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.one_string,[Dyp.Ter Dyp_symbols.t_T_DOUBLE_STRING],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_DOUBLE_STRING  (
# 1360 "newParser.dyp"
                   (s,pos:Ast.interp_string * Lexing.position)
# 6487               "newParser.ml"
 as _1))] -> Obj_one_string 
# 1359 "newParser.dyp"
(
                           ( E_Literal( Lit_String(String_Double s), pos) ):'dypgen__Obj_one_string)
# 6492               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.one_string,[Dyp.Ter Dyp_symbols.t_T_USER_STRING],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_USER_STRING  (
# 1361 "newParser.dyp"
                 (m,str,pos:string * Ast.interp_string * Lexing.position)
# 6498               "newParser.ml"
 as _1))] -> Obj_one_string 
# 1360 "newParser.dyp"
(
                             ( process_user_string m str pos ):'dypgen__Obj_one_string)
# 6503               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.one_string,[Dyp.Ter Dyp_symbols.t_T_USER_BEG;Dyp.Non_ter (Dyp_symbols.interp_str,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_USER_BEG  (
# 1362 "newParser.dyp"
              (m,pos:string * Lexing.position)
# 6509               "newParser.ml"
 as _1));`Real_obj (Obj_interp_str ( (
# 1362 "newParser.dyp"
                                (str:'dypgen__Obj_interp_str)
# 6513               "newParser.ml"
 as _2)))] -> Obj_one_string 
# 1361 "newParser.dyp"
(
                                      ( process_user_string m str pos ):'dypgen__Obj_one_string)
# 6518               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.string,[Dyp.Non_ter (Dyp_symbols.one_string,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_one_string ( (
# 1365 "newParser.dyp"
              (s:'dypgen__Obj_one_string)
# 6524               "newParser.ml"
 as _1)))] -> Obj_string 
# 1364 "newParser.dyp"
(
                  (s):'dypgen__Obj_string)
# 6529               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.string,[Dyp.Non_ter (Dyp_symbols.string,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.one_string,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_string ( (
# 1368 "newParser.dyp"
          (s1:'dypgen__Obj_string)
# 6535               "newParser.ml"
 as _1)));`Real_obj (Obj_one_string ( (
# 1368 "newParser.dyp"
                         (s2:'dypgen__Obj_one_string)
# 6539               "newParser.ml"
 as _2)))] -> Obj_string 
# 1367 "newParser.dyp"
(
                              ( merge_string_lits s1 s2 ):'dypgen__Obj_string)
# 6544               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.constant,[Dyp.Non_ter (Dyp_symbols.string,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_string ( (
# 1371 "newParser.dyp"
          (s:'dypgen__Obj_string)
# 6550               "newParser.ml"
 as _1)))] -> Obj_constant 
# 1370 "newParser.dyp"
(
              ( s ):'dypgen__Obj_constant)
# 6555               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.constant,[Dyp.Ter Dyp_symbols.t_T_TICK_BEG;Dyp.Non_ter (Dyp_symbols.interp_str,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_TICK_BEG  (
# 1373 "newParser.dyp"
              (pos:Lexing.position)
# 6561               "newParser.ml"
 as _1));`Real_obj (Obj_interp_str ( (
# 1373 "newParser.dyp"
                              (istr:'dypgen__Obj_interp_str)
# 6565               "newParser.ml"
 as _2)))] -> Obj_constant 
# 1373 "newParser.dyp"
(
      ( E_Literal (Lit_String (String_Tick istr),pos) ):'dypgen__Obj_constant)
# 6570               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.constant,[Dyp.Ter Dyp_symbols.t_T_ATOM_BEG;Dyp.Non_ter (Dyp_symbols.interp_str,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_ATOM_BEG  (
# 1376 "newParser.dyp"
              (pos:Lexing.position)
# 6576               "newParser.ml"
 as _1));`Real_obj (Obj_interp_str ( (
# 1376 "newParser.dyp"
                              (istr:'dypgen__Obj_interp_str)
# 6580               "newParser.ml"
 as _2)))] -> Obj_constant 
# 1376 "newParser.dyp"
(
      ( E_Literal (Lit_Atom istr,pos) ):'dypgen__Obj_constant)
# 6585               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.constant,[Dyp.Ter Dyp_symbols.t_T_REGEXP_BEG;Dyp.Non_ter (Dyp_symbols.interp_str,Dyp.No_priority );Dyp.Ter Dyp_symbols.t_T_REGEXP_MOD],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_REGEXP_BEG  (
# 1379 "newParser.dyp"
                (pos:Lexing.position)
# 6591               "newParser.ml"
 as _1));`Real_obj (Obj_interp_str ( (
# 1379 "newParser.dyp"
                                (istr:'dypgen__Obj_interp_str)
# 6595               "newParser.ml"
 as _2)));`Real_obj (Obj_T_REGEXP_MOD  (
# 1379 "newParser.dyp"
                                                   (mods:string)
# 6599               "newParser.ml"
 as _3))] -> Obj_constant 
# 1379 "newParser.dyp"
(
      ( E_Literal(Lit_Regexp (istr,mods),pos) ):'dypgen__Obj_constant)
# 6604               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.constant,[Dyp.Ter Dyp_symbols.t_T_REGEXP],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_REGEXP  (
# 1381 "newParser.dyp"
            (s,m,pos:Ast.interp_string * string * Lexing.position)
# 6610               "newParser.ml"
 as _1))] -> Obj_constant 
# 1380 "newParser.dyp"
(
                      ( E_Literal(Lit_Regexp (s,m),pos) ):'dypgen__Obj_constant)
# 6615               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.constant,[Dyp.Ter Dyp_symbols.t_T_FIXNUM],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_FIXNUM  (
# 1383 "newParser.dyp"
            (i,pos:int * Lexing.position)
# 6621               "newParser.ml"
 as _1))] -> Obj_constant 
# 1382 "newParser.dyp"
(
                    ( E_Literal(Lit_FixNum i,pos) ):'dypgen__Obj_constant)
# 6626               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.constant,[Dyp.Ter Dyp_symbols.t_T_BIGNUM],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_BIGNUM  (
# 1384 "newParser.dyp"
            (i,pos:Big_int.big_int * Lexing.position)
# 6632               "newParser.ml"
 as _1))] -> Obj_constant 
# 1383 "newParser.dyp"
(
                    ( E_Literal(Lit_BigNum i,pos) ):'dypgen__Obj_constant)
# 6637               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.constant,[Dyp.Ter Dyp_symbols.t_T_FLOAT],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_FLOAT  (
# 1385 "newParser.dyp"
           (s,f,pos:string * float * Lexing.position)
# 6643               "newParser.ml"
 as _1))] -> Obj_constant 
# 1384 "newParser.dyp"
(
                     ( E_Literal((Lit_Float(s,f)),pos) ):'dypgen__Obj_constant)
# 6648               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.constant,[Dyp.Ter Dyp_symbols.t_T_ATOM],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_ATOM  (
# 1386 "newParser.dyp"
          (a,pos:Ast.interp_string * Lexing.position)
# 6654               "newParser.ml"
 as _1))] -> Obj_constant 
# 1385 "newParser.dyp"
(
                  ( E_Literal (Lit_Atom a,pos) ):'dypgen__Obj_constant)
# 6659               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.interp_str,[Dyp.Ter Dyp_symbols.t_T_SINGLE_STRING],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_SINGLE_STRING  (
# 1389 "newParser.dyp"
                   (str,p:string * Lexing.position)
# 6665               "newParser.ml"
 as _1))] -> Obj_interp_str 
# 1388 "newParser.dyp"
(
                           ([StrChars str]):'dypgen__Obj_interp_str)
# 6670               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.interp_str,[Dyp.Non_ter (Dyp_symbols.interp_str_work,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_interp_str_work ( (
# 1390 "newParser.dyp"
                   (i:'dypgen__Obj_interp_str_work)
# 6676               "newParser.ml"
 as _1)))] -> Obj_interp_str 
# 1390 "newParser.dyp"
(
      (match i with [] -> [StrChars ""] | lst -> lst):'dypgen__Obj_interp_str)
# 6681               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.interp_str_work,[Dyp.Ter Dyp_symbols.t_T_INTERP_STR;Dyp.Non_ter (Dyp_symbols.interp_code,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_INTERP_STR  (
# 1394 "newParser.dyp"
                (s,pos:string * Lexing.position)
# 6687               "newParser.ml"
 as _1));`Real_obj (Obj_interp_code ( (
# 1394 "newParser.dyp"
                                   (tl:'dypgen__Obj_interp_code)
# 6691               "newParser.ml"
 as _2)))] -> Obj_interp_str_work 
# 1394 "newParser.dyp"
(
      ( if s = "" then tl else (StrChars s)::tl ):'dypgen__Obj_interp_str_work)
# 6696               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.interp_str_work,[Dyp.Ter Dyp_symbols.t_T_INTERP_END],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_INTERP_END  (
# 1397 "newParser.dyp"
                (s,pos2:string * Lexing.position)
# 6702               "newParser.ml"
 as _1))] -> Obj_interp_str_work 
# 1397 "newParser.dyp"
(
      ( if s = "" then [] else [StrChars s] ):'dypgen__Obj_interp_str_work)
# 6707               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.interp_code,[Dyp.Non_ter (Dyp_symbols.eols,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.stmt_list,Dyp.No_priority );Dyp.Non_ter (Dyp_symbols.interp_str_work,Dyp.No_priority )],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_eols ( (
# 0 "newParser.dyp"
(_:'dypgen__Obj_eols)
# 6713               "newParser.ml"
 as _1)));`Real_obj (Obj_stmt_list ( (
# 1401 "newParser.dyp"
                  (ss:'dypgen__Obj_stmt_list)
# 6717               "newParser.ml"
 as _2)));`Real_obj (Obj_interp_str_work ( (
# 1401 "newParser.dyp"
                                      (tl:'dypgen__Obj_interp_str_work)
# 6721               "newParser.ml"
 as _3)))] -> Obj_interp_code 
# 1401 "newParser.dyp"
(
      ( match ss with
          | [] -> tl
          | x::_ -> StrExpr (mk_block ss (pos_of x))::tl ):'dypgen__Obj_interp_code)
# 6728               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.interp_code,[Dyp.Ter Dyp_symbols.t_T_INTERP_END],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_INTERP_END  (
# 1406 "newParser.dyp"
                (s,pos:string * Lexing.position)
# 6734               "newParser.ml"
 as _1))] -> Obj_interp_code 
# 1406 "newParser.dyp"
(
      ( if s = "" then [] else [StrChars s] ):'dypgen__Obj_interp_code)
# 6739               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.lparen,[Dyp.Ter Dyp_symbols.t_T_LPAREN],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_LPAREN  (
# 1410 "newParser.dyp"
            (pos:Lexing.position)
# 6745               "newParser.ml"
 as _1))] -> Obj_lparen 
# 1409 "newParser.dyp"
(
                  (pos):'dypgen__Obj_lparen)
# 6750               "newParser.ml"
 | _ -> raise Dyp.Giveup)))
;
((Dyp_symbols.lparen,[Dyp.Ter Dyp_symbols.t_T_LPAREN_ARG],Dyp_priority_data.default_priority),Dyp_runtime.Tools.transform_action  (fun dyp __dypgen_av_list -> (match (Dyp_aux_functions.transform_av_list __dypgen_av_list) with [`Real_obj (Obj_T_LPAREN_ARG  (
# 1411 "newParser.dyp"
                (pos:Lexing.position)
# 6756               "newParser.ml"
 as _1))] -> Obj_lparen 
# 1410 "newParser.dyp"
(
                      (pos):'dypgen__Obj_lparen)
# 6761               "newParser.ml"
 | _ -> raise Dyp.Giveup)))]

let dyp_merge_arg ol o =
  let ol2 = dyp_merge_arg ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_arg_comma_list_trail ol o =
  let ol2 = dyp_merge_arg_comma_list_trail ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_arg_comma_nonempty_list ol o =
  let ol2 = dyp_merge_arg_comma_nonempty_list ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_arg_comma_star_list ol o =
  let ol2 = dyp_merge_arg_comma_star_list ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_array_body ol o =
  let ol2 = dyp_merge_array_body ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_array_body_rest ol o =
  let ol2 = dyp_merge_array_body_rest ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_array_item ol o =
  let ol2 = dyp_merge_array_item ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_assign_op ol o =
  let ol2 = dyp_merge_assign_op ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_assignable ol o =
  let ol2 = dyp_merge_assignable ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_bin_op ol o =
  let ol2 = dyp_merge_bin_op ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_body_exn ol o =
  let ol2 = dyp_merge_body_exn ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_brace_codeblock ol o =
  let ol2 = dyp_merge_brace_codeblock ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_call_args ol o =
  let ol2 = dyp_merge_call_args ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_case_else ol o =
  let ol2 = dyp_merge_case_else ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_class_inheritance ol o =
  let ol2 = dyp_merge_class_inheritance ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_code_block ol o =
  let ol2 = dyp_merge_code_block ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_code_block_body ol o =
  let ol2 = dyp_merge_code_block_body ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_command ol o =
  let ol2 = dyp_merge_command ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_command_codeblock ol o =
  let ol2 = dyp_merge_command_codeblock ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_command_name ol o =
  let ol2 = dyp_merge_command_name ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_constant ol o =
  let ol2 = dyp_merge_constant ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_do_codeblock ol o =
  let ol2 = dyp_merge_do_codeblock ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_do_sep ol o =
  let ol2 = dyp_merge_do_sep ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_ensure_clause ol o =
  let ol2 = dyp_merge_ensure_clause ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_eol_or_semi ol o =
  let ol2 = dyp_merge_eol_or_semi ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_eols ol o =
  let ol2 = dyp_merge_eols ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_expr ol o =
  let ol2 = dyp_merge_expr ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_formal_arg ol o =
  let ol2 = dyp_merge_formal_arg ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_formal_arg_list ol o =
  let ol2 = dyp_merge_formal_arg_list ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_formal_arg_nonempty_list ol o =
  let ol2 = dyp_merge_formal_arg_nonempty_list ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_func ol o =
  let ol2 = dyp_merge_func ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_identifier ol o =
  let ol2 = dyp_merge_identifier ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_if_else_clauses ol o =
  let ol2 = dyp_merge_if_else_clauses ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_interp_code ol o =
  let ol2 = dyp_merge_interp_code ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_interp_str ol o =
  let ol2 = dyp_merge_interp_str ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_interp_str_work ol o =
  let ol2 = dyp_merge_interp_str_work ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_keyword_as_id ol o =
  let ol2 = dyp_merge_keyword_as_id ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_lhs ol o =
  let ol2 = dyp_merge_lhs ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_lhs_assign_op ol o =
  let ol2 = dyp_merge_lhs_assign_op ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_lhs_prune_binop ol o =
  let ol2 = dyp_merge_lhs_prune_binop ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_lhs_pruned_assign_op ol o =
  let ol2 = dyp_merge_lhs_pruned_assign_op ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_lparen ol o =
  let ol2 = dyp_merge_lparen ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_main ol o =
  let ol2 = dyp_merge_main ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_message_identifier ol o =
  let ol2 = dyp_merge_message_identifier ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_meth_or_atom ol o =
  let ol2 = dyp_merge_meth_or_atom ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_meth_or_atom_list ol o =
  let ol2 = dyp_merge_meth_or_atom_list ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_method_formals ol o =
  let ol2 = dyp_merge_method_formals ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_method_name ol o =
  let ol2 = dyp_merge_method_name ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_mlhs ol o =
  let ol2 = dyp_merge_mlhs ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_mlhs_assign_op ol o =
  let ol2 = dyp_merge_mlhs_assign_op ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_mlhs_clean ol o =
  let ol2 = dyp_merge_mlhs_clean ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_mlhs_item ol o =
  let ol2 = dyp_merge_mlhs_item ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_mlhs_rest ol o =
  let ol2 = dyp_merge_mlhs_rest ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_mrhs ol o =
  let ol2 = dyp_merge_mrhs ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_one_string ol o =
  let ol2 = dyp_merge_one_string ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_primary ol o =
  let ol2 = dyp_merge_primary ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_rescue_clause ol o =
  let ol2 = dyp_merge_rescue_clause ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_rescue_list ol o =
  let ol2 = dyp_merge_rescue_list ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_rescue_list_rest ol o =
  let ol2 = dyp_merge_rescue_list_rest ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_scope_begin ol o =
  let ol2 = dyp_merge_scope_begin ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_scope_class ol o =
  let ol2 = dyp_merge_scope_class ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_scope_def ol o =
  let ol2 = dyp_merge_scope_def ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_scope_end ol o =
  let ol2 = dyp_merge_scope_end ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_scope_module ol o =
  let ol2 = dyp_merge_scope_module ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_scoped_id ol o =
  let ol2 = dyp_merge_scoped_id ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_seen_id ol o =
  let ol2 = dyp_merge_seen_id ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_some_eols ol o =
  let ol2 = dyp_merge_some_eols ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_star_amper ol o =
  let ol2 = dyp_merge_star_amper ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_stmt ol o =
  let ol2 = dyp_merge_stmt ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_stmt_list ol o =
  let ol2 = dyp_merge_stmt_list ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_string ol o =
  let ol2 = dyp_merge_string ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_then_sep ol o =
  let ol2 = dyp_merge_then_sep ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_topcall ol o =
  let ol2 = dyp_merge_topcall ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_unary_op ol o =
  let ol2 = dyp_merge_unary_op ol o in
  if ol2 = [] then dyp_merge ol o else ol2
let dyp_merge_when_clauses ol o =
  let ol2 = dyp_merge_when_clauses ol o in
  if ol2 = [] then dyp_merge ol o else ol2

let __dypgen_merge_map = Dyp_runtime.Tools.init_merge_map [(fun ol o -> (
  let f1 o = match o with Obj_when_clauses ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_when_clauses"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_when_clauses ol o in
  let f2 o = Obj_when_clauses o in
  List.map f2 ol)),75;(fun ol o -> (
  let f1 o = match o with Obj_unary_op ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_unary_op"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_unary_op ol o in
  let f2 o = Obj_unary_op o in
  List.map f2 ol)),74;(fun ol o -> (
  let f1 o = match o with Obj_topcall ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_topcall"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_topcall ol o in
  let f2 o = Obj_topcall o in
  List.map f2 ol)),73;(fun ol o -> (
  let f1 o = match o with Obj_then_sep ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_then_sep"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_then_sep ol o in
  let f2 o = Obj_then_sep o in
  List.map f2 ol)),72;(fun ol o -> (
  let f1 o = match o with Obj_string ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_string"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_string ol o in
  let f2 o = Obj_string o in
  List.map f2 ol)),71;(fun ol o -> (
  let f1 o = match o with Obj_stmt_list ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_stmt_list"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_stmt_list ol o in
  let f2 o = Obj_stmt_list o in
  List.map f2 ol)),70;(fun ol o -> (
  let f1 o = match o with Obj_stmt ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_stmt"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_stmt ol o in
  let f2 o = Obj_stmt o in
  List.map f2 ol)),69;(fun ol o -> (
  let f1 o = match o with Obj_star_amper ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_star_amper"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_star_amper ol o in
  let f2 o = Obj_star_amper o in
  List.map f2 ol)),68;(fun ol o -> (
  let f1 o = match o with Obj_some_eols ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_some_eols"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_some_eols ol o in
  let f2 o = Obj_some_eols o in
  List.map f2 ol)),67;(fun ol o -> (
  let f1 o = match o with Obj_seen_id ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_seen_id"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_seen_id ol o in
  let f2 o = Obj_seen_id o in
  List.map f2 ol)),66;(fun ol o -> (
  let f1 o = match o with Obj_scoped_id ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_scoped_id"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_scoped_id ol o in
  let f2 o = Obj_scoped_id o in
  List.map f2 ol)),65;(fun ol o -> (
  let f1 o = match o with Obj_scope_module ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_scope_module"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_scope_module ol o in
  let f2 o = Obj_scope_module o in
  List.map f2 ol)),64;(fun ol o -> (
  let f1 o = match o with Obj_scope_end ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_scope_end"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_scope_end ol o in
  let f2 o = Obj_scope_end o in
  List.map f2 ol)),63;(fun ol o -> (
  let f1 o = match o with Obj_scope_def ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_scope_def"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_scope_def ol o in
  let f2 o = Obj_scope_def o in
  List.map f2 ol)),62;(fun ol o -> (
  let f1 o = match o with Obj_scope_class ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_scope_class"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_scope_class ol o in
  let f2 o = Obj_scope_class o in
  List.map f2 ol)),61;(fun ol o -> (
  let f1 o = match o with Obj_scope_begin ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_scope_begin"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_scope_begin ol o in
  let f2 o = Obj_scope_begin o in
  List.map f2 ol)),60;(fun ol o -> (
  let f1 o = match o with Obj_rescue_list_rest ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_rescue_list_rest"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_rescue_list_rest ol o in
  let f2 o = Obj_rescue_list_rest o in
  List.map f2 ol)),59;(fun ol o -> (
  let f1 o = match o with Obj_rescue_list ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_rescue_list"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_rescue_list ol o in
  let f2 o = Obj_rescue_list o in
  List.map f2 ol)),58;(fun ol o -> (
  let f1 o = match o with Obj_rescue_clause ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_rescue_clause"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_rescue_clause ol o in
  let f2 o = Obj_rescue_clause o in
  List.map f2 ol)),57;(fun ol o -> (
  let f1 o = match o with Obj_primary ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_primary"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_primary ol o in
  let f2 o = Obj_primary o in
  List.map f2 ol)),56;(fun ol o -> (
  let f1 o = match o with Obj_one_string ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_one_string"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_one_string ol o in
  let f2 o = Obj_one_string o in
  List.map f2 ol)),55;(fun ol o -> (
  let f1 o = match o with Obj_mrhs ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_mrhs"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_mrhs ol o in
  let f2 o = Obj_mrhs o in
  List.map f2 ol)),54;(fun ol o -> (
  let f1 o = match o with Obj_mlhs_rest ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_mlhs_rest"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_mlhs_rest ol o in
  let f2 o = Obj_mlhs_rest o in
  List.map f2 ol)),53;(fun ol o -> (
  let f1 o = match o with Obj_mlhs_item ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_mlhs_item"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_mlhs_item ol o in
  let f2 o = Obj_mlhs_item o in
  List.map f2 ol)),52;(fun ol o -> (
  let f1 o = match o with Obj_mlhs_clean ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_mlhs_clean"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_mlhs_clean ol o in
  let f2 o = Obj_mlhs_clean o in
  List.map f2 ol)),51;(fun ol o -> (
  let f1 o = match o with Obj_mlhs_assign_op ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_mlhs_assign_op"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_mlhs_assign_op ol o in
  let f2 o = Obj_mlhs_assign_op o in
  List.map f2 ol)),50;(fun ol o -> (
  let f1 o = match o with Obj_mlhs ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_mlhs"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_mlhs ol o in
  let f2 o = Obj_mlhs o in
  List.map f2 ol)),49;(fun ol o -> (
  let f1 o = match o with Obj_method_name ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_method_name"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_method_name ol o in
  let f2 o = Obj_method_name o in
  List.map f2 ol)),48;(fun ol o -> (
  let f1 o = match o with Obj_method_formals ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_method_formals"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_method_formals ol o in
  let f2 o = Obj_method_formals o in
  List.map f2 ol)),47;(fun ol o -> (
  let f1 o = match o with Obj_meth_or_atom_list ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_meth_or_atom_list"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_meth_or_atom_list ol o in
  let f2 o = Obj_meth_or_atom_list o in
  List.map f2 ol)),46;(fun ol o -> (
  let f1 o = match o with Obj_meth_or_atom ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_meth_or_atom"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_meth_or_atom ol o in
  let f2 o = Obj_meth_or_atom o in
  List.map f2 ol)),45;(fun ol o -> (
  let f1 o = match o with Obj_message_identifier ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_message_identifier"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_message_identifier ol o in
  let f2 o = Obj_message_identifier o in
  List.map f2 ol)),44;(fun ol o -> (
  let f1 o = match o with Obj_main ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_main"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_main ol o in
  let f2 o = Obj_main o in
  List.map f2 ol)),43;(fun ol o -> (
  let f1 o = match o with Obj_lparen ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_lparen"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_lparen ol o in
  let f2 o = Obj_lparen o in
  List.map f2 ol)),42;(fun ol o -> (
  let f1 o = match o with Obj_lhs_pruned_assign_op ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_lhs_pruned_assign_op"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_lhs_pruned_assign_op ol o in
  let f2 o = Obj_lhs_pruned_assign_op o in
  List.map f2 ol)),41;(fun ol o -> (
  let f1 o = match o with Obj_lhs_prune_binop ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_lhs_prune_binop"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_lhs_prune_binop ol o in
  let f2 o = Obj_lhs_prune_binop o in
  List.map f2 ol)),40;(fun ol o -> (
  let f1 o = match o with Obj_lhs_assign_op ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_lhs_assign_op"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_lhs_assign_op ol o in
  let f2 o = Obj_lhs_assign_op o in
  List.map f2 ol)),39;(fun ol o -> (
  let f1 o = match o with Obj_lhs ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_lhs"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_lhs ol o in
  let f2 o = Obj_lhs o in
  List.map f2 ol)),38;(fun ol o -> (
  let f1 o = match o with Obj_keyword_as_id ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_keyword_as_id"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_keyword_as_id ol o in
  let f2 o = Obj_keyword_as_id o in
  List.map f2 ol)),37;(fun ol o -> (
  let f1 o = match o with Obj_interp_str_work ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_interp_str_work"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_interp_str_work ol o in
  let f2 o = Obj_interp_str_work o in
  List.map f2 ol)),36;(fun ol o -> (
  let f1 o = match o with Obj_interp_str ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_interp_str"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_interp_str ol o in
  let f2 o = Obj_interp_str o in
  List.map f2 ol)),35;(fun ol o -> (
  let f1 o = match o with Obj_interp_code ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_interp_code"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_interp_code ol o in
  let f2 o = Obj_interp_code o in
  List.map f2 ol)),34;(fun ol o -> (
  let f1 o = match o with Obj_if_else_clauses ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_if_else_clauses"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_if_else_clauses ol o in
  let f2 o = Obj_if_else_clauses o in
  List.map f2 ol)),33;(fun ol o -> (
  let f1 o = match o with Obj_identifier ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_identifier"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_identifier ol o in
  let f2 o = Obj_identifier o in
  List.map f2 ol)),32;(fun ol o -> (
  let f1 o = match o with Obj_func ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_func"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_func ol o in
  let f2 o = Obj_func o in
  List.map f2 ol)),31;(fun ol o -> (
  let f1 o = match o with Obj_formal_arg_nonempty_list ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_formal_arg_nonempty_list"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_formal_arg_nonempty_list ol o in
  let f2 o = Obj_formal_arg_nonempty_list o in
  List.map f2 ol)),30;(fun ol o -> (
  let f1 o = match o with Obj_formal_arg_list ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_formal_arg_list"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_formal_arg_list ol o in
  let f2 o = Obj_formal_arg_list o in
  List.map f2 ol)),29;(fun ol o -> (
  let f1 o = match o with Obj_formal_arg ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_formal_arg"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_formal_arg ol o in
  let f2 o = Obj_formal_arg o in
  List.map f2 ol)),28;(fun ol o -> (
  let f1 o = match o with Obj_expr ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_expr"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_expr ol o in
  let f2 o = Obj_expr o in
  List.map f2 ol)),27;(fun ol o -> (
  let f1 o = match o with Obj_eols ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_eols"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_eols ol o in
  let f2 o = Obj_eols o in
  List.map f2 ol)),26;(fun ol o -> (
  let f1 o = match o with Obj_eol_or_semi ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_eol_or_semi"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_eol_or_semi ol o in
  let f2 o = Obj_eol_or_semi o in
  List.map f2 ol)),25;(fun ol o -> (
  let f1 o = match o with Obj_ensure_clause ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_ensure_clause"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_ensure_clause ol o in
  let f2 o = Obj_ensure_clause o in
  List.map f2 ol)),24;(fun ol o -> (
  let f1 o = match o with Obj_do_sep ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_do_sep"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_do_sep ol o in
  let f2 o = Obj_do_sep o in
  List.map f2 ol)),23;(fun ol o -> (
  let f1 o = match o with Obj_do_codeblock ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_do_codeblock"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_do_codeblock ol o in
  let f2 o = Obj_do_codeblock o in
  List.map f2 ol)),22;(fun ol o -> (
  let f1 o = match o with Obj_constant ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_constant"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_constant ol o in
  let f2 o = Obj_constant o in
  List.map f2 ol)),21;(fun ol o -> (
  let f1 o = match o with Obj_command_name ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_command_name"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_command_name ol o in
  let f2 o = Obj_command_name o in
  List.map f2 ol)),20;(fun ol o -> (
  let f1 o = match o with Obj_command_codeblock ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_command_codeblock"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_command_codeblock ol o in
  let f2 o = Obj_command_codeblock o in
  List.map f2 ol)),19;(fun ol o -> (
  let f1 o = match o with Obj_command ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_command"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_command ol o in
  let f2 o = Obj_command o in
  List.map f2 ol)),18;(fun ol o -> (
  let f1 o = match o with Obj_code_block_body ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_code_block_body"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_code_block_body ol o in
  let f2 o = Obj_code_block_body o in
  List.map f2 ol)),17;(fun ol o -> (
  let f1 o = match o with Obj_code_block ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_code_block"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_code_block ol o in
  let f2 o = Obj_code_block o in
  List.map f2 ol)),16;(fun ol o -> (
  let f1 o = match o with Obj_class_inheritance ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_class_inheritance"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_class_inheritance ol o in
  let f2 o = Obj_class_inheritance o in
  List.map f2 ol)),15;(fun ol o -> (
  let f1 o = match o with Obj_case_else ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_case_else"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_case_else ol o in
  let f2 o = Obj_case_else o in
  List.map f2 ol)),14;(fun ol o -> (
  let f1 o = match o with Obj_call_args ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_call_args"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_call_args ol o in
  let f2 o = Obj_call_args o in
  List.map f2 ol)),13;(fun ol o -> (
  let f1 o = match o with Obj_brace_codeblock ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_brace_codeblock"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_brace_codeblock ol o in
  let f2 o = Obj_brace_codeblock o in
  List.map f2 ol)),12;(fun ol o -> (
  let f1 o = match o with Obj_body_exn ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_body_exn"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_body_exn ol o in
  let f2 o = Obj_body_exn o in
  List.map f2 ol)),11;(fun ol o -> (
  let f1 o = match o with Obj_bin_op ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_bin_op"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_bin_op ol o in
  let f2 o = Obj_bin_op o in
  List.map f2 ol)),10;(fun ol o -> (
  let f1 o = match o with Obj_assignable ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_assignable"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_assignable ol o in
  let f2 o = Obj_assignable o in
  List.map f2 ol)),9;(fun ol o -> (
  let f1 o = match o with Obj_assign_op ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_assign_op"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_assign_op ol o in
  let f2 o = Obj_assign_op o in
  List.map f2 ol)),8;(fun ol o -> (
  let f1 o = match o with Obj_array_item ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_array_item"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_array_item ol o in
  let f2 o = Obj_array_item o in
  List.map f2 ol)),7;(fun ol o -> (
  let f1 o = match o with Obj_array_body_rest ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_array_body_rest"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_array_body_rest ol o in
  let f2 o = Obj_array_body_rest o in
  List.map f2 ol)),6;(fun ol o -> (
  let f1 o = match o with Obj_array_body ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_array_body"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_array_body ol o in
  let f2 o = Obj_array_body o in
  List.map f2 ol)),5;(fun ol o -> (
  let f1 o = match o with Obj_arg_comma_star_list ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_arg_comma_star_list"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_arg_comma_star_list ol o in
  let f2 o = Obj_arg_comma_star_list o in
  List.map f2 ol)),4;(fun ol o -> (
  let f1 o = match o with Obj_arg_comma_nonempty_list ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_arg_comma_nonempty_list"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_arg_comma_nonempty_list ol o in
  let f2 o = Obj_arg_comma_nonempty_list o in
  List.map f2 ol)),3;(fun ol o -> (
  let f1 o = match o with Obj_arg_comma_list_trail ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_arg_comma_list_trail"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_arg_comma_list_trail ol o in
  let f2 o = Obj_arg_comma_list_trail o in
  List.map f2 ol)),2;(fun ol o -> (
  let f1 o = match o with Obj_arg ob -> ob
    | _ -> failwith "type error, bad obj in dyp_merge_arg"
  in
  let o = f1 o in
  let ol = List.map f1 ol in
  let ol = dyp_merge_arg ol o in
  let f2 o = Obj_arg o in
  List.map f2 ol)),1]

let __dypgen_automaton = Dyp_engine.create_parsing_device __dypgen_ra_list Dyp_priority_data.priority_data `LR0 !global_data !local_data __dypgen_merge_map dyp_merge Dyp_aux_functions.datadyn Dyp_symbols_array.str_non_ter Dyp_symbols_array.cons_of_nt

let __dypgen_data_equal = {
  Dyp_runtime.Tools.global_data_equal = global_data_equal;
  Dyp_runtime.Tools.local_data_equal = local_data_equal }

let main f lexbuf =
  let automaton = Dyp_engine.update_parsing_device_data __dypgen_automaton !global_data
    !local_data in
  let pf = Dyp_engine.glrParse automaton Dyp_aux_functions.get_token_value
    Dyp_symbols.get_token_name Dyp_symbols.str_token
    Dyp_symbols.main __dypgen_data_equal Dyp_symbols_array.test_cons Dyp_symbols_array.str_cons f lexbuf
    Dyp_aux_functions.lexbuf_position in
  let aux1 (o,p) = match o with
    | Obj_main r -> (r,p)
    | _ -> failwith "Wrong type for entry result" in
  List.map aux1 pf

