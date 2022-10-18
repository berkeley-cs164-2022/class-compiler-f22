The in-class compiler status after class sessions about tail calls.  See lecture notes for more detail.

To run:

`dune utop`

Inside utop:

`open Cs164.Compile;;`

`compile_and_run "(define (sum n total)
  (if (zero? n)
    total
    (sum (sub1 n) (+ n total))))
(print (sum (read-num) 0))";;`
