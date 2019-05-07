#lang sicp

(define (square n)
  (* n n))

(define (even? n)
  (= (remainder n 2) 0))

(define (fast-expt b n)
  (fast-expt-inter b n 1))

#|
(define (fast-expt-inter b counter product)
  (cond ((= counter 0)
		 product)
		((even? counter)
		 (fast-expt-inter b
						  (/ counter 2)
						  (fast-expt-inter b (/ counter 2) product)))
		(else
		  (fast-expt-inter b
						   (- counter 1)
						   (* b product)))))
|#

(define (fast-expt-inter b counter product)
  (cond ((= counter 0)
		 product)
		((even? counter)
		 (fast-expt-inter (square b)
						  (/ counter 2)
						  product))
		(else
		  (fast-expt-inter b
						   (- counter 1)
						   (* b product)))))
