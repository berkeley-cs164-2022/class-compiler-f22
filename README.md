The in-class compiler status after class sessions about first-class functions.  See lecture notes for more detail.

To run:

`dune utop`

Inside utop:

`open Cs164.Compile;;`

`compile_and_run "(define (retlam)
    (let ((x 3))
        (lambda () x)
    )
)
(let ((l (retlam)))
    (print (l))
)";;`