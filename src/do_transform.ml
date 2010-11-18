open Ast

let get_meth_atom e = match e with
	| E_Identifier(ID_Lowercase, s, p) -> E_Literal(Lit_Atom([StrChars(s)]), Lexing.dummy_pos)
	| _ -> failwith "get_meth_atom error"

let change_meth_calls e = match e with
	| E_MethodCall(e1, e_list, e_opt, p) ->
		E_MethodCall(
			E_Identifier(ID_Lowercase, "__p", Lexing.dummy_pos),
			(get_meth_atom e1)::e_list,
			e_opt,
			p)
	| _ -> e

let insert_value_checks e = match e with
	| E_Literal(_, _) (* | E_Unary(_, _, _) | E_Binop(_, _, _, _) *) | E_Hash(_, _, _) | E_Array(_, _) ->
		E_MethodCall(
			E_Identifier(ID_Lowercase, "__v", Lexing.dummy_pos),
			[e],
			None,
			Lexing.dummy_pos)
	| _ -> e
	

let do_ast_transform ast =
	let prog = Ast.mod_ast change_meth_calls ast in
	let prog = Ast.mod_ast insert_value_checks prog in
	(E_MethodCall(
		E_Identifier(ID_Lowercase, "require", Lexing.dummy_pos),
		[E_Literal(
			Lit_String(String_Single("ruby/teach_ruby.rb")),
			Lexing.dummy_pos)],
		None,
		Lexing.dummy_pos))::prog
