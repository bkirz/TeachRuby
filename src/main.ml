(*
  Test driver for TeachRuby.
    1. Parses a ruby file into an AST.
    2. Convert the AST into a RIL CFG.
    3. Unparses the CFG into ruby code and prints it.
*)

open Cfg_printer

let () =
  if Array.length Sys.argv < 2 then
    Printf.printf "usage: %s file.rb\n" Sys.argv.(0)
  else
    let filename = Sys.argv.(1) in 
    let ast = Parse_helper.parse_ruby_file filename in
    let cfg = Cfg_refactor.refactor_ast ast in
    let program_text = CodePrinter.string_of_cfg cfg in
      Printf.printf "%s\n" program_text
