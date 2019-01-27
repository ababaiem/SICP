#lang sicp

; Exercise 1.8

(define (abs x)
  (if (< x 0)
	  (- x)
	  x))

(define (square x)
  (* x x))

(define (cube x)
  (* x x x))

(define (cbrt x)
  (define (improve guess)
	(/ (+ (/ x (square guess)) (* 2 guess)) 3))
  (define (good-enough? guess)
	(< (abs (- (cube guess) x))  0.001))
  (define (cbrt-iter guess)
	(if (good-enough? guess)
	   	guess
	  	(cbrt-iter (improve guess))))
  (cbrt-iter 1.0))
