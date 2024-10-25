# Setup
ocaml 4.14.2
z3 4.13.0-3 (latest)

# rlimit

`optimize_with_asserts` with all softs has output `rlimit-count` of 48461894

so I try to force an rlimit far greater : 484618940
can't reproduce?


# Soft constraints

with all 6 softs, about 15s


```smtlib
(define-funs-rec ( ( !round! ((x!1 Real)) Int))
                 (
                     (
                        ite (is_int x!1)
                        (to_int x!1)
                        (
                            let ((a!1 (- (to_int (+ (- x!1) (/ 1.0 2.0))))))
                                (ite (>= x!1 0.0) (to_int (+ x!1 (/ 1.0 2.0))) a!1)
                        )
                     )
                 )
)
```


