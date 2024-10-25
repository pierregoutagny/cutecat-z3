#require "z3";;

let smt_file = "z3_fail.smt";;

let ctx = Z3.mk_context [("model", "true"); ("proof", "false")];;

let vect = Z3.SMT.parse_smtlib2_file ctx smt_file [] [] [] [];;

let exprs = Z3.AST.ASTVector.to_expr_list vect;;

let solver = Z3.Solver.mk_solver ctx None;;
let _ = Z3.Solver.add solver exprs;;
let _ = print_endline (Z3.Solver.string_of_status (Z3.Solver.check solver []));;
let _ = match Z3.Solver.get_model solver with
| Some m -> print_endline (Z3.Model.to_string m)
| None -> print_endline "no model";;


