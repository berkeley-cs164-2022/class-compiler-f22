The in-class compiler status after the "Naming Expressions" session.  See lecture notes for much more detail.

To run:

`dune utop`

Inside utop:

`open Cs164.Compile;;`

`compile_and_run "(+ (let ((x 1)) (add1 x)) (let ((y 2)) (add1 y)))";;`
