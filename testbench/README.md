The `housing_benefits` folder contains a sample of 1000 queries sent to Z3 from
the OCaml bindings, plus the 10 first and 10 last queries (because there are
some corner cases at the beginning and the end of the concolic execution).
The `sec132` folder contains all queries made on a much simple Catala program.

For each (numbered) sample, there are 3 files :
- a `.log` file which contains the result of `Z3.Solver.string_of_status` on the
  first line, then the result of printing the statistics produced by
  `Z3.Solver.get_statistics`, in case this may be useful.
- a `.check.smt` file which contains the output of `Z3.Solver.to_string` followed
  by a `(check-sat)`
- a `.soft.smt` file which contains the same thing as the `.check.smt` but with
  the soft constraints I would like to satisfy

For `housing_benefits`, the queries have a similar structure, with some
Integer/Real constraints, some simple boolean constraints, and some constraints
on simple datatypes. The minimal working example I gave initially is a
cleaned-up version of one of those samples, with renamed variables and only
Integer/Real constraints. I don't think the behavior changes between the raw
and the cleaned-up version, but please do tell me if I should cleanup more
samples, or if I can provide any more information.

