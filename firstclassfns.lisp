(define (f g) (g 2))
(define (mul2 x) (+ x x))
(print (f mul2))

(define (f g) (g 2))
(print (f (lambda (x) (+ x x))))

(define (f g) (g 2))
(let ((y 3)) (print (f (lambda (x) (+ x y)))))

(define (range lo hi)
  (if (< lo hi)
   (pair lo (range (add1 lo) hi))
   false))
(define (map f l)
  (if (not l) l
  (pair (f (left l)) (map f (right l)))))
(print (map (lambda (x) (+ x 1)) (range 0 2)))