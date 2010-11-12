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

open Parsing;;
# 2 "typeAnnotParser.mly"
  open Printf
  open Annotation

  let merge_quantifiers tvars cons pos = 
    let rec work acc tvars cons = match tvars, cons with
      | tvars, [] -> 
          let rest = List.map (fun x -> x,None) tvars in
            List.rev_append rest acc
      | [], (tv,b)::_ -> 
          Log.fatal (Log.of_loc pos) 
            "The type variable %a can not be used as a lower bound at this point."
            format_quant_var tv
      | tv::rest_tvars, _ -> 
          let bounds,rest_cons = 
            List.partition (fun (tv',bound) -> tv = tv') cons
          in
            match bounds with
              | [] -> work ((tv,None)::acc) rest_tvars rest_cons
              | [(_,t)] -> work ((tv,Some t)::acc) rest_tvars rest_cons
              | lst ->
                  let t = Type_Union (List.map snd lst) in
                    work ((tv,Some t)::acc) rest_tvars rest_cons
    in
    let final = work [] tvars cons in
      List.rev final

  let pragma key = match key with
    | "FIXME" -> Type_Fixme
    | _ -> failwith ("Unknown pragma keyword: "^key)

  let union x = match x with
    | [e] -> e
    | lst -> Type_Union(lst)

  let remove_name n = match n with
    | Type_Named(_, x) -> x
    | t -> t

  let apply_to_named f n = match n with
    | Type_Named(name, e) -> Type_Named(name, f e)
    | e -> f e

  let strip_quotes str = 
    let dbl_regexp = Str.regexp "\"\\(.+\\)\"" in
    if Str.string_match dbl_regexp str 0 then
      Str.matched_group 1 str
    else
      str

  let collapse_intersections (elem_list : Annotation.class_elem list) =
    (* build a method -> annotations hash table so we can combine all
     * associated annotations into a single Method type; returns a
     * list of elements with each method represented uniquely *)
    let rec build_annot_hash elem_list annot_hash (seen : string list)
        : Annotation.class_elem list =
      match elem_list with 
      | [] -> []
      | Method [(`ID_Var(`Var_Constant,name),_,_) as annot] :: rest -> 
          (* store annotations in a per-method-name hash table (fresh
           * hash table used for each collapsing attempt, so all
           * methods with the same name should share annotations) *)
          Hashtbl.add annot_hash name annot;
          (* if we've seen this method before, don't cons -- this will
           * give us a list of unique elements/method names when we're done *)
          if List.mem name seen then
            build_annot_hash rest annot_hash seen
          else
            (* return the whole class_elem to make types work out *)
            let h = List.hd elem_list in
            h::(build_annot_hash rest annot_hash (name::seen))
      | elem :: rest ->
          (* if this isn't a method, just hold on to it for later *)
          elem :: (build_annot_hash rest annot_hash seen)
    in
    (* once we've built the hash, iterate over the elements/unique
     * methods, converting parsed method defs into Annotation Method
     * types containing all associated annotations for each method *)
    let rec build_annots uniq_elem_list annot_hash =
      match uniq_elem_list with
      | [] -> []
      | Method [(`ID_Var(`Var_Constant,name),_,_)] :: rest ->
          (* hash contains all seen annotations for this method, but
             in reverse order *)
          let annots = Hashtbl.find_all annot_hash name in
          let m = Method (List.rev annots) in (* rev to correct order *)
          m :: build_annots rest annot_hash
      | elem :: rest -> (* just save all non-method elements *)
          elem :: build_annots rest annot_hash
    in
    let hash = Hashtbl.create 0 in
    let uniq = build_annot_hash elem_list hash [] in
    build_annots uniq hash

# 136 "typeAnnotParser.ml"
let yytransl_const = [|
  257 (* T_EOF *);
    0|]

let yytransl_block = [|
  258 (* K_CLASS *);
  259 (* K_METACLASS *);
  260 (* K_MODULE *);
  261 (* K_INTERFACE *);
  262 (* K_ALIAS *);
  263 (* K_REQUIRE *);
  264 (* K_END *);
  265 (* K_OR *);
  266 (* K_SELF *);
  267 (* T_BEGIN_LINE *);
  268 (* T_SEMICOLON *);
  269 (* T_COLON *);
  270 (* T_DOUBLE_COLON *);
  271 (* T_DOT *);
  272 (* T_STAR *);
  273 (* T_QUESTION *);
  274 (* T_CARROT *);
  275 (* T_BANG *);
  276 (* T_RARROW *);
  277 (* T_LPAREN *);
  278 (* T_RPAREN *);
  279 (* T_LESS *);
  280 (* T_GREATER *);
  281 (* T_COMMA *);
  282 (* T_LBRACKET *);
  283 (* T_RBRACKET *);
  284 (* T_LBRACE *);
  285 (* T_RBRACE *);
  286 (* T_SUBTYPE *);
  287 (* T_STRING *);
  288 (* T_IVAR *);
  289 (* T_CVAR *);
  290 (* T_GVAR *);
  291 (* T_CONST_ID *);
  292 (* T_TYPE_ID *);
  293 (* T_METHOD_NAME *);
    0|]

let yylhs = "\255\255\
\004\000\005\000\005\000\007\000\006\000\006\000\008\000\008\000\
\008\000\009\000\009\000\012\000\011\000\011\000\011\000\011\000\
\011\000\015\000\015\000\015\000\003\000\001\000\002\000\019\000\
\019\000\018\000\018\000\016\000\016\000\016\000\020\000\020\000\
\020\000\020\000\025\000\025\000\014\000\014\000\013\000\013\000\
\013\000\024\000\023\000\023\000\026\000\026\000\021\000\021\000\
\027\000\027\000\027\000\028\000\028\000\028\000\017\000\029\000\
\029\000\030\000\030\000\030\000\030\000\030\000\030\000\030\000\
\030\000\030\000\030\000\031\000\034\000\035\000\035\000\036\000\
\036\000\033\000\033\000\037\000\037\000\038\000\038\000\010\000\
\010\000\022\000\022\000\039\000\039\000\040\000\041\000\042\000\
\042\000\042\000\042\000\032\000\032\000\000\000\000\000\000\000\
\000\000"

let yylen = "\002\000\
\003\000\000\000\002\000\002\000\000\000\002\000\003\000\004\000\
\004\000\000\000\002\000\001\000\003\000\001\000\001\000\001\000\
\001\000\003\000\003\000\003\000\002\000\002\000\002\000\001\000\
\000\000\002\000\003\000\003\000\007\000\003\000\007\000\003\000\
\007\000\003\000\000\000\001\000\007\000\003\000\001\000\001\000\
\001\000\001\000\005\000\004\000\000\000\003\000\001\000\003\000\
\001\000\001\000\002\000\001\000\002\000\003\000\001\000\001\000\
\003\000\001\000\001\000\001\000\002\000\002\000\002\000\003\000\
\004\000\002\000\004\000\003\000\001\000\001\000\003\000\001\000\
\003\000\001\000\003\000\000\000\002\000\004\000\001\000\004\000\
\002\000\000\000\002\000\001\000\003\000\003\000\003\000\001\000\
\001\000\003\000\003\000\000\000\001\000\002\000\002\000\002\000\
\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\000\000\024\000\094\000\000\000\
\000\000\036\000\095\000\000\000\000\000\050\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\052\000\049\000\
\096\000\000\000\058\000\000\000\055\000\000\000\060\000\000\000\
\097\000\000\000\000\000\022\000\039\000\000\000\041\000\040\000\
\042\000\000\000\000\000\023\000\081\000\000\000\000\000\053\000\
\061\000\063\000\062\000\000\000\051\000\066\000\000\000\072\000\
\000\000\000\000\069\000\000\000\000\000\000\000\000\000\000\000\
\000\000\093\000\021\000\000\000\000\000\000\000\004\000\000\000\
\000\000\000\000\000\000\000\000\003\000\000\000\000\000\027\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\068\000\
\000\000\000\000\000\000\000\000\000\000\000\000\064\000\000\000\
\054\000\000\000\057\000\000\000\000\000\000\000\000\000\000\000\
\000\000\014\000\000\000\000\000\015\000\016\000\017\000\000\000\
\001\000\006\000\000\000\000\000\034\000\000\000\000\000\000\000\
\032\000\000\000\000\000\077\000\000\000\080\000\067\000\073\000\
\075\000\071\000\087\000\091\000\038\000\000\000\090\000\065\000\
\000\000\000\000\012\000\000\000\000\000\000\000\000\000\000\000\
\007\000\011\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\078\000\000\000\083\000\000\000\000\000\008\000\013\000\
\018\000\019\000\020\000\000\000\030\000\000\000\009\000\000\000\
\000\000\000\000\000\000\048\000\000\000\000\000\000\000\000\000\
\000\000\000\000\046\000\044\000\000\000\000\000\086\000\085\000\
\000\000\000\000\043\000\033\000\031\000\037\000\000\000\029\000"

let yydgoto = "\005\000\
\007\000\011\000\025\000\033\000\034\000\075\000\035\000\106\000\
\107\000\012\000\108\000\138\000\041\000\109\000\110\000\111\000\
\116\000\008\000\009\000\042\000\119\000\126\000\117\000\063\000\
\013\000\150\000\027\000\028\000\029\000\030\000\031\000\064\000\
\057\000\058\000\059\000\060\000\085\000\047\000\156\000\157\000\
\065\000\066\000"

let yysindex = "\188\000\
\252\254\008\255\100\255\017\255\000\000\000\000\000\000\052\255\
\128\255\000\000\000\000\055\255\014\255\000\000\026\255\073\255\
\100\255\100\255\022\255\051\255\142\000\076\255\000\000\000\000\
\000\000\105\255\000\000\069\255\000\000\111\255\000\000\078\255\
\000\000\158\255\017\255\000\000\000\000\012\255\000\000\000\000\
\000\000\252\254\032\255\000\000\000\000\077\255\098\255\000\000\
\000\000\000\000\000\000\142\000\000\000\000\000\118\255\000\000\
\120\255\119\255\000\000\138\255\153\255\126\255\039\255\142\255\
\145\255\000\000\000\000\147\255\142\000\100\255\000\000\008\255\
\195\255\008\255\179\255\158\255\000\000\165\000\024\255\000\000\
\165\000\024\255\024\255\142\000\172\255\163\255\100\255\000\000\
\142\000\142\000\100\255\076\255\165\000\024\255\000\000\076\255\
\000\000\169\255\000\000\195\255\251\254\174\255\181\255\183\255\
\061\255\000\000\197\255\195\255\000\000\000\000\000\000\195\255\
\000\000\000\000\129\000\189\255\000\000\186\255\199\255\194\255\
\000\000\201\255\209\255\000\000\024\255\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\211\255\000\000\000\000\
\234\255\251\254\000\000\100\255\100\255\100\255\165\000\024\255\
\000\000\000\000\242\255\189\255\165\000\235\255\172\255\024\255\
\172\255\000\000\227\255\000\000\236\255\172\255\000\000\000\000\
\000\000\000\000\000\000\189\255\000\000\239\255\000\000\245\255\
\230\255\100\255\247\255\000\000\251\255\100\255\024\255\254\255\
\172\255\100\255\000\000\000\000\165\000\165\000\000\000\000\000\
\165\000\255\255\000\000\000\000\000\000\000\000\165\000\000\000"

let yyrindex = "\000\000\
\137\255\016\255\000\000\237\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\243\255\000\000\000\000\
\000\000\000\000\000\000\121\255\000\000\175\255\000\000\000\000\
\000\000\009\000\237\255\000\000\000\000\000\000\000\000\000\000\
\000\000\002\255\000\000\000\000\000\000\044\000\081\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\212\255\000\000\
\000\000\031\000\000\000\250\255\000\000\246\255\000\000\000\000\
\252\255\000\000\000\000\000\000\000\000\000\000\000\000\016\255\
\005\000\016\255\000\000\009\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\101\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\005\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\005\000\000\000\000\000\000\000\005\000\
\000\000\000\000\000\000\001\000\000\000\000\000\000\000\012\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\001\000\000\000\000\000\002\000\000\000\
\002\000\000\000\000\000\000\000\093\000\002\000\000\000\000\000\
\000\000\000\000\000\000\062\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\000\000\000\000\241\000\202\000\000\000\224\255\
\215\255\232\255\000\000\156\000\165\255\249\255\000\000\000\000\
\253\255\238\000\000\000\000\000\191\255\125\255\176\255\031\001\
\000\000\149\000\185\255\029\001\230\000\244\255\000\000\000\000\
\208\255\000\000\215\000\000\000\000\000\000\000\132\000\000\000\
\000\000\240\255"

let yytablesize = 457
let yytable = "\026\000\
\121\000\076\000\026\000\086\000\050\000\051\000\006\000\120\000\
\056\000\139\000\120\000\120\000\133\000\045\000\062\000\035\000\
\122\000\123\000\010\000\171\000\098\000\173\000\120\000\032\000\
\078\000\037\000\176\000\015\000\134\000\035\000\039\000\040\000\
\025\000\014\000\079\000\124\000\025\000\025\000\025\000\056\000\
\129\000\118\000\052\000\076\000\081\000\186\000\139\000\100\000\
\023\000\112\000\035\000\093\000\036\000\155\000\082\000\044\000\
\056\000\053\000\137\000\024\000\048\000\094\000\165\000\028\000\
\028\000\028\000\146\000\028\000\169\000\028\000\147\000\056\000\
\120\000\143\000\128\000\132\000\056\000\056\000\166\000\135\000\
\120\000\045\000\068\000\144\000\062\000\054\000\172\000\131\000\
\062\000\049\000\068\000\069\000\028\000\028\000\028\000\028\000\
\028\000\028\000\028\000\083\000\188\000\189\000\056\000\155\000\
\190\000\067\000\037\000\061\000\071\000\014\000\192\000\039\000\
\040\000\015\000\016\000\017\000\018\000\019\000\020\000\070\000\
\021\000\059\000\059\000\059\000\059\000\022\000\059\000\084\000\
\059\000\059\000\087\000\059\000\059\000\059\000\023\000\024\000\
\161\000\162\000\163\000\164\000\059\000\088\000\059\000\089\000\
\059\000\059\000\090\000\059\000\059\000\059\000\092\000\059\000\
\059\000\059\000\059\000\059\000\059\000\059\000\037\000\072\000\
\073\000\074\000\038\000\039\000\040\000\091\000\180\000\025\000\
\095\000\096\000\183\000\025\000\025\000\025\000\187\000\056\000\
\056\000\056\000\056\000\113\000\056\000\097\000\056\000\125\000\
\127\000\056\000\140\000\056\000\001\000\002\000\003\000\004\000\
\136\000\141\000\056\000\142\000\072\000\073\000\074\000\056\000\
\101\000\056\000\056\000\056\000\145\000\056\000\056\000\056\000\
\056\000\056\000\056\000\056\000\049\000\049\000\049\000\049\000\
\149\000\049\000\152\000\049\000\049\000\053\000\151\000\049\000\
\153\000\037\000\102\000\103\000\104\000\105\000\039\000\040\000\
\154\000\049\000\158\000\049\000\049\000\002\000\002\000\002\000\
\002\000\159\000\049\000\049\000\049\000\049\000\049\000\049\000\
\049\000\167\000\070\000\070\000\070\000\070\000\170\000\070\000\
\174\000\070\000\179\000\181\000\175\000\070\000\177\000\182\000\
\178\000\005\000\185\000\191\000\010\000\092\000\082\000\070\000\
\089\000\070\000\070\000\077\000\045\000\114\000\088\000\080\000\
\070\000\070\000\070\000\070\000\070\000\070\000\070\000\074\000\
\074\000\074\000\074\000\047\000\074\000\160\000\074\000\043\000\
\168\000\046\000\074\000\099\000\079\000\079\000\079\000\079\000\
\130\000\079\000\184\000\079\000\074\000\000\000\074\000\079\000\
\000\000\000\000\000\000\000\000\000\000\074\000\074\000\074\000\
\074\000\074\000\074\000\074\000\000\000\000\000\000\000\000\000\
\000\000\079\000\079\000\079\000\079\000\079\000\079\000\079\000\
\079\000\076\000\076\000\076\000\076\000\000\000\076\000\000\000\
\076\000\000\000\000\000\000\000\076\000\084\000\084\000\084\000\
\084\000\000\000\084\000\000\000\084\000\082\000\082\000\082\000\
\082\000\084\000\082\000\000\000\082\000\000\000\000\000\076\000\
\076\000\076\000\076\000\076\000\076\000\076\000\000\000\000\000\
\000\000\000\000\000\000\084\000\084\000\084\000\084\000\084\000\
\084\000\084\000\000\000\082\000\082\000\082\000\082\000\082\000\
\082\000\082\000\014\000\000\000\000\000\000\000\015\000\016\000\
\017\000\018\000\019\000\020\000\000\000\021\000\148\000\014\000\
\000\000\000\000\022\000\015\000\016\000\017\000\018\000\019\000\
\020\000\000\000\021\000\023\000\055\000\000\000\000\000\022\000\
\000\000\000\000\000\000\000\000\000\000\000\000\014\000\000\000\
\023\000\055\000\015\000\016\000\017\000\018\000\019\000\020\000\
\000\000\115\000\000\000\000\000\000\000\000\000\022\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\023\000\
\024\000"

let yycheck = "\003\000\
\081\000\034\000\001\001\052\000\017\000\018\000\011\001\079\000\
\021\000\101\000\082\000\083\000\093\000\000\001\022\000\000\001\
\082\000\083\000\011\001\151\000\069\000\153\000\094\000\007\001\
\013\001\031\001\158\000\014\001\094\000\014\001\036\001\037\001\
\031\001\010\001\023\001\084\000\035\001\036\001\037\001\052\000\
\089\000\018\001\021\001\076\000\013\001\177\000\138\000\072\000\
\035\001\074\000\035\001\013\001\001\001\125\000\023\001\001\001\
\069\000\036\001\100\000\036\001\035\001\023\001\143\000\002\001\
\003\001\004\001\108\000\006\001\149\000\008\001\112\000\084\000\
\144\000\013\001\087\000\092\000\089\000\090\000\144\000\096\000\
\152\000\020\001\014\001\023\001\092\000\035\001\152\000\091\000\
\096\000\017\001\014\001\023\001\031\001\032\001\033\001\034\001\
\035\001\036\001\037\001\023\001\181\000\182\000\115\000\175\000\
\185\000\001\001\031\001\032\001\031\001\010\001\191\000\036\001\
\037\001\014\001\015\001\016\001\017\001\018\001\019\001\009\001\
\021\001\001\001\002\001\003\001\004\001\026\001\006\001\030\001\
\008\001\009\001\013\001\011\001\012\001\013\001\035\001\036\001\
\140\000\141\000\142\000\143\000\020\001\022\001\022\001\025\001\
\024\001\025\001\009\001\027\001\028\001\029\001\025\001\031\001\
\032\001\033\001\034\001\035\001\036\001\037\001\031\001\002\001\
\003\001\004\001\035\001\036\001\037\001\013\001\170\000\031\001\
\027\001\025\001\174\000\035\001\036\001\037\001\178\000\001\001\
\002\001\003\001\004\001\001\001\006\001\035\001\008\001\012\001\
\022\001\011\001\013\001\013\001\001\000\002\000\003\000\004\000\
\024\001\013\001\020\001\013\001\002\001\003\001\004\001\025\001\
\006\001\027\001\028\001\029\001\008\001\031\001\032\001\033\001\
\034\001\035\001\036\001\037\001\001\001\002\001\003\001\004\001\
\028\001\006\001\025\001\008\001\009\001\036\001\024\001\012\001\
\024\001\031\001\032\001\033\001\034\001\035\001\036\001\037\001\
\024\001\022\001\024\001\024\001\025\001\001\001\002\001\003\001\
\004\001\008\001\031\001\032\001\033\001\034\001\035\001\036\001\
\037\001\008\001\001\001\002\001\003\001\004\001\020\001\006\001\
\030\001\008\001\029\001\013\001\025\001\012\001\024\001\013\001\
\020\001\001\001\013\001\013\001\008\001\027\001\013\001\022\001\
\027\001\024\001\025\001\035\000\020\001\076\000\027\001\042\000\
\031\001\032\001\033\001\034\001\035\001\036\001\037\001\001\001\
\002\001\003\001\004\001\024\001\006\001\138\000\008\001\009\000\
\148\000\013\000\012\001\070\000\001\001\002\001\003\001\004\001\
\090\000\006\001\175\000\008\001\022\001\255\255\024\001\012\001\
\255\255\255\255\255\255\255\255\255\255\031\001\032\001\033\001\
\034\001\035\001\036\001\037\001\255\255\255\255\255\255\255\255\
\255\255\030\001\031\001\032\001\033\001\034\001\035\001\036\001\
\037\001\001\001\002\001\003\001\004\001\255\255\006\001\255\255\
\008\001\255\255\255\255\255\255\012\001\001\001\002\001\003\001\
\004\001\255\255\006\001\255\255\008\001\001\001\002\001\003\001\
\004\001\013\001\006\001\255\255\008\001\255\255\255\255\031\001\
\032\001\033\001\034\001\035\001\036\001\037\001\255\255\255\255\
\255\255\255\255\255\255\031\001\032\001\033\001\034\001\035\001\
\036\001\037\001\255\255\031\001\032\001\033\001\034\001\035\001\
\036\001\037\001\010\001\255\255\255\255\255\255\014\001\015\001\
\016\001\017\001\018\001\019\001\255\255\021\001\022\001\010\001\
\255\255\255\255\026\001\014\001\015\001\016\001\017\001\018\001\
\019\001\255\255\021\001\035\001\036\001\255\255\255\255\026\001\
\255\255\255\255\255\255\255\255\255\255\255\255\010\001\255\255\
\035\001\036\001\014\001\015\001\016\001\017\001\018\001\019\001\
\255\255\021\001\255\255\255\255\255\255\255\255\026\001\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\035\001\
\036\001"

let yynames_const = "\
  T_EOF\000\
  "

let yynames_block = "\
  K_CLASS\000\
  K_METACLASS\000\
  K_MODULE\000\
  K_INTERFACE\000\
  K_ALIAS\000\
  K_REQUIRE\000\
  K_END\000\
  K_OR\000\
  K_SELF\000\
  T_BEGIN_LINE\000\
  T_SEMICOLON\000\
  T_COLON\000\
  T_DOUBLE_COLON\000\
  T_DOT\000\
  T_STAR\000\
  T_QUESTION\000\
  T_CARROT\000\
  T_BANG\000\
  T_RARROW\000\
  T_LPAREN\000\
  T_RPAREN\000\
  T_LESS\000\
  T_GREATER\000\
  T_COMMA\000\
  T_LBRACKET\000\
  T_RBRACKET\000\
  T_LBRACE\000\
  T_RBRACE\000\
  T_SUBTYPE\000\
  T_STRING\000\
  T_IVAR\000\
  T_CVAR\000\
  T_GVAR\000\
  T_CONST_ID\000\
  T_TYPE_ID\000\
  T_METHOD_NAME\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'require_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'class_def_list) in
    Obj.repr(
# 133 "typeAnnotParser.mly"
                                      ( (_1, _2) )
# 476 "typeAnnotParser.ml"
               : Annotation.interface))
; (fun __caml_parser_env ->
    Obj.repr(
# 136 "typeAnnotParser.mly"
    ( [] )
# 482 "typeAnnotParser.ml"
               : 'require_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'require_stmt) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'require_list) in
    Obj.repr(
# 137 "typeAnnotParser.mly"
                              (_1::_2)
# 490 "typeAnnotParser.ml"
               : 'require_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : Lexing.position * string) in
    Obj.repr(
# 140 "typeAnnotParser.mly"
                       ( strip_quotes (snd _2) )
# 498 "typeAnnotParser.ml"
               : 'require_stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 143 "typeAnnotParser.mly"
    ( [] )
# 504 "typeAnnotParser.ml"
               : 'class_def_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'class_def) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'class_def_list) in
    Obj.repr(
# 144 "typeAnnotParser.mly"
                             (_1::_2)
# 512 "typeAnnotParser.ml"
               : 'class_def_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Lexing.position) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'class_elem_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Lexing.position) in
    Obj.repr(
# 147 "typeAnnotParser.mly"
                                      (
    MetaClassDef(collapse_intersections _2) )
# 522 "typeAnnotParser.ml"
               : 'class_def))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : Lexing.position) in
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'class_annotation) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'class_elem_list) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : Lexing.position) in
    Obj.repr(
# 149 "typeAnnotParser.mly"
                                                   (
    ClassDef(_2, collapse_intersections _3) )
# 533 "typeAnnotParser.ml"
               : 'class_def))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : Lexing.position) in
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'class_annotation) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'class_elem_list) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : Lexing.position) in
    Obj.repr(
# 151 "typeAnnotParser.mly"
                                                    ( ModuleDef(_2,_3) )
# 543 "typeAnnotParser.ml"
               : 'class_def))
; (fun __caml_parser_env ->
    Obj.repr(
# 154 "typeAnnotParser.mly"
    ( [] )
# 549 "typeAnnotParser.ml"
               : 'class_elem_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'class_elem) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'class_elem_list) in
    Obj.repr(
# 155 "typeAnnotParser.mly"
                               (_1::_2)
# 557 "typeAnnotParser.ml"
               : 'class_elem_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'relative_method_name) in
    Obj.repr(
# 158 "typeAnnotParser.mly"
                         (`ID_Var(`Var_Constant,_1))
# 564 "typeAnnotParser.ml"
               : 'alias_name))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Lexing.position) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'alias_name) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'alias_name) in
    Obj.repr(
# 161 "typeAnnotParser.mly"
                                  ( Alias (_2, _3) )
# 573 "typeAnnotParser.ml"
               : 'class_elem))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'class_def) in
    Obj.repr(
# 162 "typeAnnotParser.mly"
              ( Class (_1) )
# 580 "typeAnnotParser.ml"
               : 'class_elem))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'method_type) in
    Obj.repr(
# 163 "typeAnnotParser.mly"
                ( Method [_1] )
# 587 "typeAnnotParser.ml"
               : 'class_elem))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'field_sig) in
    Obj.repr(
# 164 "typeAnnotParser.mly"
              ( _1 )
# 594 "typeAnnotParser.ml"
               : 'class_elem))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'const_expr) in
    Obj.repr(
# 165 "typeAnnotParser.mly"
               ( _1 )
# 601 "typeAnnotParser.ml"
               : 'class_elem))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Lexing.position * string) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'type_expr) in
    Obj.repr(
# 168 "typeAnnotParser.mly"
                             ( IVar(snd _1,_3) )
# 610 "typeAnnotParser.ml"
               : 'field_sig))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Lexing.position * string) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'type_expr) in
    Obj.repr(
# 169 "typeAnnotParser.mly"
                             ( CVar(snd _1,_3) )
# 619 "typeAnnotParser.ml"
               : 'field_sig))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Lexing.position * string) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'type_expr) in
    Obj.repr(
# 170 "typeAnnotParser.mly"
                             ( GVar(snd _1,_3) )
# 628 "typeAnnotParser.ml"
               : 'field_sig))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'type_expr) in
    Obj.repr(
# 173 "typeAnnotParser.mly"
                    (ExprType _1)
# 635 "typeAnnotParser.ml"
               : Annotation.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'method_annotation_list) in
    Obj.repr(
# 176 "typeAnnotParser.mly"
                                 ( MethodType _1 )
# 642 "typeAnnotParser.ml"
               : Annotation.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'class_annotation) in
    Obj.repr(
# 179 "typeAnnotParser.mly"
                               ( ClassType _1 )
# 649 "typeAnnotParser.ml"
               : Annotation.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Lexing.position) in
    Obj.repr(
# 182 "typeAnnotParser.mly"
                 ( () )
# 656 "typeAnnotParser.ml"
               : 'method_start))
; (fun __caml_parser_env ->
    Obj.repr(
# 183 "typeAnnotParser.mly"
    ( () )
# 662 "typeAnnotParser.ml"
               : 'method_start))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'method_start) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'const_method_type) in
    Obj.repr(
# 186 "typeAnnotParser.mly"
                                   ( [_2] )
# 670 "typeAnnotParser.ml"
               : 'method_annotation_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'method_start) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'const_method_type) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'method_annotation_list) in
    Obj.repr(
# 187 "typeAnnotParser.mly"
                                                          ( _2::_3 )
# 679 "typeAnnotParser.ml"
               : 'method_annotation_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Lexing.position * string) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'type_expr) in
    Obj.repr(
# 192 "typeAnnotParser.mly"
                                 ( Const(snd _1,_3) )
# 688 "typeAnnotParser.ml"
               : 'const_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 6 : Lexing.position * string) in
    let _2 = (Parsing.peek_val __caml_parser_env 5 : Lexing.position) in
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'type_id_list) in
    let _4 = (Parsing.peek_val __caml_parser_env 3 : Lexing.position) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'constraint_list) in
    let _6 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'method_sig) in
    Obj.repr(
# 194 "typeAnnotParser.mly"
      ( Method[(`ID_Var(`Var_Constant,snd _1), (merge_quantifiers _3 _5 _2), _7)] )
# 701 "typeAnnotParser.ml"
               : 'const_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Lexing.position * string) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'method_sig) in
    Obj.repr(
# 195 "typeAnnotParser.mly"
                                  (Method[(`ID_Var(`Var_Constant,snd _1),[],_3)])
# 710 "typeAnnotParser.ml"
               : 'const_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 6 : 'method_name) in
    let _2 = (Parsing.peek_val __caml_parser_env 5 : Lexing.position) in
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'type_id_list) in
    let _4 = (Parsing.peek_val __caml_parser_env 3 : Lexing.position) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'constraint_list) in
    let _6 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'method_sig) in
    Obj.repr(
# 199 "typeAnnotParser.mly"
      ( _1, (merge_quantifiers _3 _5 _2), _7 )
# 723 "typeAnnotParser.ml"
               : 'const_method_type))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'method_name) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'method_sig) in
    Obj.repr(
# 201 "typeAnnotParser.mly"
      ( _1, [], _3 )
# 732 "typeAnnotParser.ml"
               : 'const_method_type))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 6 : Lexing.position * string) in
    let _2 = (Parsing.peek_val __caml_parser_env 5 : Lexing.position) in
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'type_id_list) in
    let _4 = (Parsing.peek_val __caml_parser_env 3 : Lexing.position) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'constraint_list) in
    let _6 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'method_sig) in
    Obj.repr(
# 203 "typeAnnotParser.mly"
      ( (`ID_Var(`Var_Constant,snd _1), (merge_quantifiers _3 _5 _2), _7) )
# 745 "typeAnnotParser.ml"
               : 'const_method_type))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Lexing.position * string) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'method_sig) in
    Obj.repr(
# 204 "typeAnnotParser.mly"
                                  ((`ID_Var(`Var_Constant,snd _1),[],_3))
# 754 "typeAnnotParser.ml"
               : 'const_method_type))
; (fun __caml_parser_env ->
    Obj.repr(
# 207 "typeAnnotParser.mly"
    ( () )
# 760 "typeAnnotParser.ml"
               : 'line_start))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Lexing.position) in
    Obj.repr(
# 208 "typeAnnotParser.mly"
                 ( () )
# 767 "typeAnnotParser.ml"
               : 'line_start))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 6 : 'method_name) in
    let _2 = (Parsing.peek_val __caml_parser_env 5 : Lexing.position) in
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'type_id_list) in
    let _4 = (Parsing.peek_val __caml_parser_env 3 : Lexing.position) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'constraint_list) in
    let _6 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'method_sig) in
    Obj.repr(
# 212 "typeAnnotParser.mly"
      ( _1, (merge_quantifiers _3 _5 _2), _7 )
# 780 "typeAnnotParser.ml"
               : 'method_type))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'method_name) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'method_sig) in
    Obj.repr(
# 214 "typeAnnotParser.mly"
      ( _1, [], _3 )
# 789 "typeAnnotParser.ml"
               : 'method_type))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Lexing.position * string) in
    Obj.repr(
# 217 "typeAnnotParser.mly"
             ( snd _1 )
# 796 "typeAnnotParser.ml"
               : 'relative_method_name))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Lexing.position * string) in
    Obj.repr(
# 218 "typeAnnotParser.mly"
                  ( snd _1 )
# 803 "typeAnnotParser.ml"
               : 'relative_method_name))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Lexing.position * string) in
    Obj.repr(
# 219 "typeAnnotParser.mly"
              ( snd _1 )
# 810 "typeAnnotParser.ml"
               : 'relative_method_name))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'relative_method_name) in
    Obj.repr(
# 222 "typeAnnotParser.mly"
                         (`ID_Var(`Var_Constant,_1))
# 817 "typeAnnotParser.ml"
               : 'method_name))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : Lexing.position) in
    let _2 = (Parsing.peek_val __caml_parser_env 3 : Lexing.position) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'block) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'type_expr) in
    Obj.repr(
# 225 "typeAnnotParser.mly"
                                               ( MethodSig([],_3,_5) )
# 828 "typeAnnotParser.ml"
               : 'method_sig))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'type_expr) in
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'block) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'type_expr) in
    Obj.repr(
# 227 "typeAnnotParser.mly"
      ( match _1 with
          | Type_Tuple lst -> MethodSig(lst,_2,_4) 
          | t -> MethodSig([t],_2,_4)
      )
# 841 "typeAnnotParser.ml"
               : 'method_sig))
; (fun __caml_parser_env ->
    Obj.repr(
# 233 "typeAnnotParser.mly"
    ( None )
# 847 "typeAnnotParser.ml"
               : 'block))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Lexing.position) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'method_sig) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Lexing.position) in
    Obj.repr(
# 234 "typeAnnotParser.mly"
                                 (Some _2)
# 856 "typeAnnotParser.ml"
               : 'block))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'type_var) in
    Obj.repr(
# 237 "typeAnnotParser.mly"
             ( [_1] )
# 863 "typeAnnotParser.ml"
               : 'type_id_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'type_var) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'type_id_list) in
    Obj.repr(
# 238 "typeAnnotParser.mly"
                                  ( _1::_3 )
# 872 "typeAnnotParser.ml"
               : 'type_id_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Lexing.position * string) in
    Obj.repr(
# 241 "typeAnnotParser.mly"
              ( QVar (snd _1) )
# 879 "typeAnnotParser.ml"
               : 'type_var))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Lexing.position) in
    Obj.repr(
# 242 "typeAnnotParser.mly"
           ( QSelf )
# 886 "typeAnnotParser.ml"
               : 'type_var))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : Lexing.position * string) in
    Obj.repr(
# 243 "typeAnnotParser.mly"
                       ( QParam (snd _2) )
# 894 "typeAnnotParser.ml"
               : 'type_var))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Lexing.position * string) in
    Obj.repr(
# 246 "typeAnnotParser.mly"
               ( fst _1, `ID_Var( `Var_Constant, snd _1) )
# 901 "typeAnnotParser.ml"
               : 'type_ident))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : Lexing.position * string) in
    Obj.repr(
# 247 "typeAnnotParser.mly"
                              ( fst _2, `ID_UScope (snd _2) )
# 909 "typeAnnotParser.ml"
               : 'type_ident))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'type_ident) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Lexing.position * string) in
    Obj.repr(
# 248 "typeAnnotParser.mly"
                                         ( fst _3, `ID_Scope(snd _1, snd _3) )
# 918 "typeAnnotParser.ml"
               : 'type_ident))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'or_type_list) in
    Obj.repr(
# 251 "typeAnnotParser.mly"
                 ( union _1 )
# 925 "typeAnnotParser.ml"
               : 'type_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'single_type_expr) in
    Obj.repr(
# 254 "typeAnnotParser.mly"
                     ( [_1] )
# 932 "typeAnnotParser.ml"
               : 'or_type_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'single_type_expr) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'or_type_list) in
    Obj.repr(
# 255 "typeAnnotParser.mly"
                                       ( _1::_3 )
# 941 "typeAnnotParser.ml"
               : 'or_type_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'type_var) in
    Obj.repr(
# 258 "typeAnnotParser.mly"
             ( Type_Var _1 )
# 948 "typeAnnotParser.ml"
               : 'single_type_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'type_ident) in
    Obj.repr(
# 259 "typeAnnotParser.mly"
               ( Type_Ident (snd _1) )
# 955 "typeAnnotParser.ml"
               : 'single_type_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'tuple) in
    Obj.repr(
# 260 "typeAnnotParser.mly"
          ( _1 )
# 962 "typeAnnotParser.ml"
               : 'single_type_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : Lexing.position) in
    Obj.repr(
# 261 "typeAnnotParser.mly"
                     ( Type_Dynamic )
# 970 "typeAnnotParser.ml"
               : 'single_type_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'single_type_expr) in
    Obj.repr(
# 262 "typeAnnotParser.mly"
                                ( Type_Optional _2 )
# 978 "typeAnnotParser.ml"
               : 'single_type_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'single_type_expr) in
    Obj.repr(
# 263 "typeAnnotParser.mly"
                            ( Type_Varargs _2 )
# 986 "typeAnnotParser.ml"
               : 'single_type_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Lexing.position) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'field_or_method_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Lexing.position) in
    Obj.repr(
# 264 "typeAnnotParser.mly"
                                               ( Type_Object _2 )
# 995 "typeAnnotParser.ml"
               : 'single_type_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'type_ident) in
    let _2 = (Parsing.peek_val __caml_parser_env 2 : Lexing.position) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'type_expr_comma_list) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : Lexing.position) in
    Obj.repr(
# 266 "typeAnnotParser.mly"
      ( Type_App(snd _1, _3) )
# 1005 "typeAnnotParser.ml"
               : 'single_type_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : Lexing.position * string) in
    Obj.repr(
# 267 "typeAnnotParser.mly"
                      ( pragma (snd _2) )
# 1013 "typeAnnotParser.ml"
               : 'single_type_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : Lexing.position) in
    let _2 = (Parsing.peek_val __caml_parser_env 2 : Lexing.position) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'type_expr_comma_list) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : Lexing.position) in
    Obj.repr(
# 269 "typeAnnotParser.mly"
      ( Type_ParamList _3 )
# 1023 "typeAnnotParser.ml"
               : 'single_type_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Lexing.position) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'type_expr_comma_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Lexing.position) in
    Obj.repr(
# 273 "typeAnnotParser.mly"
      ( match _2 with
          | [] -> assert false
          | [x] -> x
          | lst -> Type_Tuple lst )
# 1035 "typeAnnotParser.ml"
               : 'tuple))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'named_or_type_list) in
    Obj.repr(
# 279 "typeAnnotParser.mly"
                       ( union _1 )
# 1042 "typeAnnotParser.ml"
               : 'named_type_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'single_named_type_expr) in
    Obj.repr(
# 282 "typeAnnotParser.mly"
                           ( [_1] )
# 1049 "typeAnnotParser.ml"
               : 'named_or_type_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'single_named_type_expr) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'named_or_type_list) in
    Obj.repr(
# 283 "typeAnnotParser.mly"
                                                   ( _1::_3 )
# 1058 "typeAnnotParser.ml"
               : 'named_or_type_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'single_type_expr) in
    Obj.repr(
# 286 "typeAnnotParser.mly"
                     ( _1 )
# 1065 "typeAnnotParser.ml"
               : 'single_named_type_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Lexing.position * string) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'single_type_expr) in
    Obj.repr(
# 287 "typeAnnotParser.mly"
                                       ( Type_Named (snd _1, _3) )
# 1074 "typeAnnotParser.ml"
               : 'single_named_type_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'named_type_expr) in
    Obj.repr(
# 290 "typeAnnotParser.mly"
                    ( [_1] )
# 1081 "typeAnnotParser.ml"
               : 'type_expr_comma_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'named_type_expr) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'type_expr_comma_list) in
    Obj.repr(
# 291 "typeAnnotParser.mly"
                                                 (_1::_3)
# 1090 "typeAnnotParser.ml"
               : 'type_expr_comma_list))
; (fun __caml_parser_env ->
    Obj.repr(
# 294 "typeAnnotParser.mly"
    ( [] )
# 1096 "typeAnnotParser.ml"
               : 'declared_subtypes))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'type_expr_comma_list) in
    Obj.repr(
# 295 "typeAnnotParser.mly"
                                   ( _2 )
# 1104 "typeAnnotParser.ml"
               : 'declared_subtypes))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'type_ident) in
    let _2 = (Parsing.peek_val __caml_parser_env 2 : Lexing.position) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'type_id_list) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : Lexing.position) in
    Obj.repr(
# 298 "typeAnnotParser.mly"
                                             ( fst _1, snd _1, _3 )
# 1114 "typeAnnotParser.ml"
               : 'class_decl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'type_ident) in
    Obj.repr(
# 299 "typeAnnotParser.mly"
               ( fst _1, snd _1, [] )
# 1121 "typeAnnotParser.ml"
               : 'class_decl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'line_start) in
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'class_decl) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'declared_subtypes) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'constraint_list) in
    Obj.repr(
# 303 "typeAnnotParser.mly"
      ( let pos,name,vars = _2 in
        let subs = _3 in
        let cons = _4 in
        let qlist = merge_quantifiers vars cons pos in
          (name,qlist,subs))
# 1135 "typeAnnotParser.ml"
               : 'class_annotation))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'line_start) in
    Obj.repr(
# 310 "typeAnnotParser.mly"
      ( Log.fatal (Log.empty) "parse error in annotation" )
# 1142 "typeAnnotParser.ml"
               : 'class_annotation))
; (fun __caml_parser_env ->
    Obj.repr(
# 313 "typeAnnotParser.mly"
    ( [] )
# 1148 "typeAnnotParser.ml"
               : 'constraint_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'bounded_quantifier_list) in
    Obj.repr(
# 314 "typeAnnotParser.mly"
                                        ( _2 )
# 1156 "typeAnnotParser.ml"
               : 'constraint_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'bounded_quantifier) in
    Obj.repr(
# 317 "typeAnnotParser.mly"
                       ([_1])
# 1163 "typeAnnotParser.ml"
               : 'bounded_quantifier_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'bounded_quantifier) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'bounded_quantifier_list) in
    Obj.repr(
# 318 "typeAnnotParser.mly"
                                                       (_1::_3)
# 1172 "typeAnnotParser.ml"
               : 'bounded_quantifier_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'type_var) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'type_expr) in
    Obj.repr(
# 321 "typeAnnotParser.mly"
                                 ( _1, _3 )
# 1181 "typeAnnotParser.ml"
               : 'bounded_quantifier))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Lexing.position * string) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'type_expr) in
    Obj.repr(
# 324 "typeAnnotParser.mly"
                             ( (snd _1), _3 )
# 1190 "typeAnnotParser.ml"
               : 'field_type))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'field_type) in
    Obj.repr(
# 327 "typeAnnotParser.mly"
               ( [_1],[] )
# 1197 "typeAnnotParser.ml"
               : 'field_or_method_nonempty_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'method_type) in
    Obj.repr(
# 328 "typeAnnotParser.mly"
                ( [],[_1] )
# 1204 "typeAnnotParser.ml"
               : 'field_or_method_nonempty_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'field_type) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'field_or_method_nonempty_list) in
    Obj.repr(
# 330 "typeAnnotParser.mly"
      ( let f,m = _3 in (_1::f),m )
# 1213 "typeAnnotParser.ml"
               : 'field_or_method_nonempty_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'method_type) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Lexing.position) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'field_or_method_nonempty_list) in
    Obj.repr(
# 332 "typeAnnotParser.mly"
      ( let f,m = _3 in f, (_1::m) )
# 1222 "typeAnnotParser.ml"
               : 'field_or_method_nonempty_list))
; (fun __caml_parser_env ->
    Obj.repr(
# 335 "typeAnnotParser.mly"
    ( [],[] )
# 1228 "typeAnnotParser.ml"
               : 'field_or_method_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'field_or_method_nonempty_list) in
    Obj.repr(
# 336 "typeAnnotParser.mly"
                                  (_1)
# 1235 "typeAnnotParser.ml"
               : 'field_or_method_list))
(* Entry e_method *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
(* Entry e_class *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
(* Entry e_expr *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
(* Entry interface_file *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let e_method (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Annotation.t)
let e_class (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 2 lexfun lexbuf : Annotation.t)
let e_expr (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 3 lexfun lexbuf : Annotation.t)
let interface_file (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 4 lexfun lexbuf : Annotation.interface)
