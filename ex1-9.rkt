#lang sicp

#|
(define (+ a b)
  (if (= a 0)
    b
    (inc (+ (dec a) b))))
Using the substitution model, the process generated
by the procedure above in evaluating (+ 4 5) is the following:
(+ 4 5)
(inc (+ 3 5))
(inc (inc (+ 2 5)))
(inc (inc (inc (+ 1 5))))
(inc (inc (inc (inc (+ 0 5)))))
(inc (inc (inc (inc 5))))
(inc (inc (inc 6)))
(inc (inc 7))
(inc 8)
9
As can been seen from its shape,
the process builds up a chain of deffered operations:
we are dealing with a recursive process.

(define (+ a b)
  (if (= a 0)
    b
    (+ (dec a) (inc b))))
Again, using the substitution model,
the evaluation of (+ 4 5) by the process above,
gives us the following:
(+ 4 5)
(+ 3 6)
(+ 2 7)
(+ 1 8)
(+ 0 9)
9
Clearly, we have a iterative process.
|#
