#lang sicp

; Exercise 1.4

; (define (a-plus-abs-b a b)
;   ((if (> b 0) + -) a b))
; Let's suppose that we use 3 and -5 as arguments.
; We would thus have:
; (a-plus-abs-b 1 -5)
; If we evaluate this expression following
; our applicative-order model, we would begin
; by retrieving the body of a-plus-abs-b:
; ((if (> b 0) + -) a b)
; Then we replace the formal parameter a and b
; by the arguments 1 and -5:
; ((if (> -5 0) + -) 1 -5)
; We find ourselves with a conditional expression.
; We start by evaluating the predicate in
; our if expression. It evaluates to #f.
; We then pass the consequent and evaluate
; the alternative, it returns the procedure -.
; It only remains for to reduce our expression:
; (- 1 -5)
; 6
