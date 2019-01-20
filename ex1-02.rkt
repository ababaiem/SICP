#lang sicp

; Exercise 1.2

; (5 + 4 + (2 - (3 - (6 + 4/5))))/(3 * (6 - 2) * (2 - 7))
; The previous expression is translated into the following prefix form:

(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))
