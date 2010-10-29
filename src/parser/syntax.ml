let syntax_feature_list = [

(* assignment constructs *)
	("assign_var", true);
	("assign_op_equals", true);

(* statement constructs *)
	("stmt_cast", true);
	("stmt_alias", true);
	("stmt_undef", true);
	("stmt_postfix_if", true);
	("stmt_postfix_unless", true);
	("stmt_postfix_until", true);
	("stmt_postfix_while", true);
	("stmt_rescue_1", true);
	("stmt_rescue_2", true);	(* special case for x = y rescue z where rescue only binds to rhs *)
	("stmt_begin_block", true);
	("stmt_end_block", true);
	("stmt_topcall", true);
	("stmt_parallel_assign", true);
	("stmt_expr", true);
	("stmt_unary_star", true);

(* primary constructs *)
	("primary_block", true);
	("primary_constant", true);
	("primary_identifier", true);
	("primary_meth_call", true);
	("primary_meth_call_with_block", true);
	("primary_scope", true);
	("primary_unary_scope", true);
	("primary_array_assign", true);
	("primary_array_access", true);
	("primary_hash_access", true);
	("primary_return_nil", true);
	("primary_yield_1", true);	(* figure out what these are! *)
	("primary_yield_2", true);
	("primary_yield_3", true);
	("primary_func_call", true);	(* what is this?? *)
	("primary_func_call_with_block", true);

	("primary_if", true);
	("primary_unless", false);

	("primary_while", true);
	("primary_until", true);
	("primary_case_1", true);
	("primary_case_2", true);
	("primary_case_3", true);
	("primary_for_in", true);
	("primary_begin_end", true);
	("primary_class_def", true);
	("primary_anonymous_class_def", true);  (* ?? *)
	("primary_module_def", true);
	("primary_method_def", true);

	]
