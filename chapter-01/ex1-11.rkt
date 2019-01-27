#lang sicp

;The recursive version of the function
;define (f n)
; (cond ((< n 3) n)
;		((>= n 3)
;		 (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3)))))))

;The iterative version of the function
;(define (f n)
;  (f-iter 2 1 0 n))
;(define (f-iter a b c count)
;  (if (= count 0)
;	c
;	(f-iter (+ a (* 2 b) (* 3 c)) a b (- count 1))))
