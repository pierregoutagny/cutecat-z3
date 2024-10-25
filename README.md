# Setup
ocaml 4.14.2
z3 4.13.3 (latest available in opam)

# Soft constraints

File `mwe.smt` contains a somewhat minimal example (without too much bloat, but
still close enough to actual constraints I have in Catala).
There is a `round` function that does a "round to nearest, half away from zero":
`round(q) = if q>=0 then floor(q + 1/2) else -floor(-q + 1/2)`

After the main hard assertions, there are differently ordered lists of soft
constraints. Note that in our case, all of the soft constraints are
satisfiable. I have put them in different groups so that only their order
affects their priorities.
Some terminate in a few seconds. Some "hang", that is after about 1min running
with `-v:2`, no more logs are written so I suppose that something hangs.
In one case (6.) things seem to be happening for a long time but I stopped it
after 1h of running without finding a result.

Lastly, using hard asserts instead of soft finds a suitable solution in about
10ms.

I have tried being smart and not using my complicated rounding when the
input of `round` is already an integer, but then even the orders of constraints
that made z3 terminate now hang when I use it (see l10), and I don't understand
why either.

I have also tried replacing my rounding function with `to_int` (see l21), and
in this case any order on the soft constraints terminates in 10ms.

I am wondering what may cause the differences between the different orders I
have tried on soft constraints, and the different definitions of `round`.

# Effect of time limit

It has happened in the past (although I cannot find a way to replicate it
reliably) that when using a timeout (through the OCaml bindings) :
1. The reason (from `Z3.Solver.get_reason_unknown`) is `(incomplete (theory
   arithmetic))` or `canceled` and *not* `timeout` although the `time`
   statistic shows that the timeout has been reached
2. If I take the smtlib string representing the (`Solver.to_string`) and run it
   with the `z3` executable outside of OCaml, there is no timeout or error of
   any kind
3. If I make the timeout value very large (eg 1min), then the `theory
   arithmetic` thing still happens. My guess is that the simple fact that I add
   a time limit, even if it is not reached, changes some heuristics
4. if I enforce a timeout not with the Z3 parameter, but by timing my call to
   `Z3.Solver.check` and interrupting it from the outside, then the same
   examples as before never timeout or `canceled` or `incomplete (theory
   arithmetic)`

I have tried replicating these behaviors but they don't always happen, and not
always on the same constraints, but I wonder if you have an explanation,
especially about the fact that replaying the smtlib without OCaml bindings
doesn't seem to create those errors.
If it may be useful, I have included examples `theory_arithmetic.log` and
`canceled.log`. They have somewhat similar constraints, and were both run with
a timeout of 100ms.

If I ever find a way to make this replicable, I will open an issue on Github.


