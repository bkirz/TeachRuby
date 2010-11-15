open Ast

let get_meth_atom e = match e with
	| E_Identifier(ID_Lowercase, s, p) -> E_Literal(Lit_Atom([StrChars(s)]), Lexing.dummy_pos)
	| _ -> failwith "get_meth_atom error"

let change_meth_call e = match e with

	(* if already OO, leave alone *)
	| E_MethodCall(E_Binop(_, Op_DOT, _, _), e_list, e_opt, p) -> failwith "NO YOU CANNOT DO THAT!!!"

	(* if no params, cannot transform *)
	| E_MethodCall(e1, [], e_opt, p) -> e

	(* else, do imperative transformation *)
	| E_MethodCall(e1, h::t, e_opt, p) -> 
		E_Ternary(
			E_Binop(
				E_MethodCall(
					E_Binop(
						E_Literal(Lit_Self, Lexing.dummy_pos),
						Op_DOT,
						E_Identifier(ID_Lowercase, "respond_to?", Lexing.dummy_pos),
						Lexing.dummy_pos),
					[get_meth_atom e1],
					None,
					Lexing.dummy_pos),
				Op_OR,
				E_MethodCall(
					E_Binop(
                                                E_Identifier(ID_Uppercase, "Kernel", Lexing.dummy_pos),
                                                Op_DOT,
                                                E_Identifier(ID_Lowercase, "respond_to?", Lexing.dummy_pos),
                                                Lexing.dummy_pos),
                                        [get_meth_atom e1],
                                        None,
                                        Lexing.dummy_pos),
				Lexing.dummy_pos),
			e,
			E_MethodCall(
				E_Binop(
					h, 
					Op_DOT, 
					e1,
					Lexing.dummy_pos),
				t,
				e_opt,
				Lexing.dummy_pos),
			p)
	
	(* catch-all *)
	| _ -> e

let do_meth_change ast = Ast.mod_ast change_meth_call ast
