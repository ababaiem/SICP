#lang sicp

; Exercise 1.3

; Define the square function
(define (square x)
    (* x x))

; Define the sum of two squares function
(define (sum-of-squares x y)
    (+ (square x) (square y)))

; Define the sum of the two larger squares function
(define (sum-of-larger-squares x y z)
    (cond ((and (>= x z) (>= y z)) (sum-of-squares x y))
	  ((and (>= x y) (>= z y)) (sum-of-squares x z))
	  ((and (>= y x) (>= z x)) (sum-of-squares y z))))
