open Ast

let change_meth_call e = match e with
	| E_MethodCall(e1, e_list, e_opt, p) -> E_Empty
	| _ -> e

let do_meth_change ast = Ast.mod_ast change_meth_call ast
