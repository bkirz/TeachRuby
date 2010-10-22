(*
  Test driver for TeachRuby.
    1. Parses a ruby file into an AST.
    2. Unparses the AST into ruby code and prints it.
*)

let () =
  let filename = Sys.argv.(1) in 
  if Array.length Sys.argv < 2 then
    Printf.printf "usage: %s file.rb\n" filename 
  else
    let ast = Parse_helper.parse_ruby_file filename in
    Ast_printer.print_ast ast
