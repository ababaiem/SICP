#lang sicp

; Exercise 1.6

; We are trying to redifine if, in terms of cond.

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
		(else else-clause)))

(new-if (= 2 3) 0 5)
; 5
(new-if (= 1 1) 0 5)
; 0

(define (square x)
  (* x x))

(define (abs x)
  (cond ((< x 0) (- x))
		(else x)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (improve guess x)
  (average (/ x guess) guess))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
		  guess
		  (sqrt-iter (improve guess x) x)))

; This never ends.
; The interpreter following the applicative-order evaluation model,
; tries to evaluate the operator and every of its operands:
; (sqrt-iter guess x)
; (new-if (good-enough? guess x)
;		  guess
;		  (sqrt-iter (improve guess x) x))
; (cond ((good-enough? guess x) guess)
;		(else (sqrt-iter (improve guess x) x)))
; (cond ((< (abs (- (square guess) x)) 0.001) guess)
;		(else (new-if (good-enough? (improve guess x) x)
;					  (improve guess x)
;					  (sqrt-iter (improve (improve guess x) x) x))))
;						.
;						.
;						.
;					Ad infinitum.
