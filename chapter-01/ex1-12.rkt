#lang sicp

; Using its binomial definition

(define (pas n k)
  (define (fact n)
	(define (fact-iter a count)
	  (if (= count 0)
		a
		(fact-iter (* a count) (- count 1))))
	(fact-iter 1 n))
  (define (binom n k)
	(/ (fact n) (* (fact k) (fact (- n k)))))
  (binom n k))

; Or with recursion

(define (pascal-triangle row column)
  (cond ((= row 0) 1)
		((= column 0) 1)
		((= column row) 1)
		(else (+ (pascal-triangle (- row 1) (- column 1))
				 (pascal-triangle (- row 1) column)))))
