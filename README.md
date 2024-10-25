# Z3 questions

## Setup
ocaml 4.14.2
z3 4.13.3 (latest available in opam)

## Soft constraints

In this section, the optimize solver is used.

File `mwe.smt` contains a somewhat minimal example (without too much bloat, but
still close enough to actual constraints I have in my program).
There is a `round` function that does a "round to nearest, half away from zero":
`round(q) = if q>=0 then floor(q + 1/2) else -floor(-q + 1/2)`

After the main hard assertions, there are differently ordered lists of soft
constraints (numbered 1. to 9.). Note that in our case, all of the soft
constraints are satisfiable. I have put them in different groups so that only
their order affects their priorities.

- Some terminate in a few seconds.
- Some "hang", ie after about 1min running with `-v:2`, no more logs are
  written so I suppose that something hangs.
- In one case (6.) things seem to be happening for a long time but I stopped it
  after 1h of running without finding a result.
- Lastly, using hard asserts instead of soft, z3 finds a suitable solution in
  about 10ms.

I have tried being smart and not using my complicated rounding when the
input of `round` is already an integer, but then even the orders of constraints
that made z3 terminate now hang when I use it (see l10), and I don't understand
why either.

I have also tried replacing my rounding function with `to_int` (see l21), and
in this case any order on the soft constraints terminates in 10ms.

I am wondering what may cause the differences between the different orders I
have tried on soft constraints, and the different definitions of `round`.

## Effect of time limit

In this section, the "normal" solver is used (`Z3.Solver`), with incremental
mode enabled.

It sometimes happens that when using a timeout (through the OCaml bindings, by
adding `("timeout", "100")` in the config given to `Z3.mk_context`) :
1. The reason (from `Z3.Solver.get_reason_unknown`) is `(incomplete (theory
   arithmetic))` or `canceled` and *not* `timeout` although the `time`
   statistic shows that the timeout has been reached
2. If I take the smtlib string representing the solver (`Solver.to_string`) and
   run it with the `z3` executable outside of OCaml, there is no timeout or
   error of any kind
3. If I make the timeout value very large (eg 1min), then the `theory
   arithmetic` thing still happens. My guess is that the simple fact that I add
   a time limit, even if it is not reached, changes some heuristics
4. If I enforce a timeout not with the Z3 parameter, but by timing my call to
   `Z3.Solver.check` and interrupting it from the outside, then the same
   constraints as before never timeout or `canceled` or `incomplete (theory
   arithmetic)`

I have tried replicating these behaviors but they don't happen often enough,
and not always on the same constraints. I wonder if you still have an idea of
what is happening, especially about the fact that replaying the smtlib without
OCaml bindings doesn't seem to create those errors.

If it may be useful, I have included examples `theory_arithmetic.log` and
`canceled.log`. They have somewhat similar constraints, and were both run with
a timeout of 100ms.

If I ever find a way to make this replicable, I will open an issue on Github.

## Effect of solver mode

Is it possible that using the `Optimize` solver (in OCaml bindings) instead of
the `Solver` one makes builing expressions (not adding assertions, just
building the terms) faster ? Can it make `Z3.Expr.simplify` faster?
It seems that when switching to the `Optimize` solver, parts of my code that do
not interact directly with the solver (no `add`, `check`, stack operations,
only things like `Z3.Expr.simplify` or `Z3.Boolean.mk_eq`, etc.) got a little
bit faster, but maybe this is an artifact of something else.

