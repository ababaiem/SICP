#lang sicp

; We are computing the function sin(x) by making the assumption
; that for "small enough" x, sin(x) ≈ x, and that sin(x) = 3sin(x/3) - 4sin³(x/3).

(define (cube x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cube x))))
(define (sine a)
  (if (not (> (abs a) 0.1))
    a
    (p (sine (/ a 3.0)))))

(sine 12.15)

; The procedure is applied 5 times when evaluating (sine 12.15).
; (sine 12.15)
; (p (sine 4.05))
; (p (p (sine 1.35)))
; (p (p (p (sine 0.45))))
; (p (p (p (p (sine 0.15)))))
; (p (p (p (p (p (sine 0.05))))))
; (p (p (p (p (p 0.05)))))
; etc.
;
; The order of growth both in space and in number of steps is O(log k),
; because each time the angle is divided by 3, p is applied.
; Since, p is applied for each power of 3 in the angle. We have,
; ⌈log₃ (12.15 / 0.1)⌉ or,

(ceiling (/ (log (/ 12.15 0.1)) (log 3)))
