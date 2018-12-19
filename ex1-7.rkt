#lang sicp

; Exercise 1.7

(define (square x)
  (* x x))

(define (abs x)
  (if (< x 0)
	  (- x)
	  x))

(define (average x y)
  (/ (+ x y) 2))


#;(define (sqrt x)
  (define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess)
  	(average (/ x guess) guess))
  (define (sqrt-iter guess)
	(if (good-enough? guess x)
	    guess
		(sqrt-iter (improve guess))))
  (sqrt-iter 1.0))

(define (sqrt x)
  (define (good-enough? old-guess guess)
    (< (/ (abs (- old-guess guess)) guess) 0.001))
  (define (improve guess)
	(average (/ x guess) guess))
  (define (sqrt-iter old-guess guess)
	(if (good-enough? old-guess guess) 
	    guess
		(sqrt-iter guess (improve guess))))
  (sqrt-iter 1.0 1.5))

(sqrt 0.000009)
; Actual value 0.003

(sqrt 1000000)
; Actual value 1000


