#lang sicp

; Exercise 1.5

; This is the test used to determine
; the evaluation model used by the interpreter:
; (define (p) (p))
; (define (test x y)
;   (if (= x 0) 0 y))
; If we evaluate this next expression:
; (test 0 (p))
; Depending on the evaluation model used by our interpreter,
; we will get a different result.
; Applicative-order evaluation
; We will begin by retrieving the body of test:
; (if (= x 0) 0 y)
; Then we replace the formal parameter x and y
; by the operands 0 and <procedure:p> evaluated,
; 0 evaluate to 0 but (p) evaluate to (p), ad infinitum.
; Our evaluation will never end since
; the procedure p is defined in terms of itself. 
; Normal-order evaluation
; We will begin by substituing the operand expressions
; for parameter until we end up exclusively with primitive operators:
; (if (= x 0) 0 y)
; (if (= 0 0) 0 (p))
; The predicate of our condition expression evaluates to #t.
; (if #t 0 (p))
; As such, we evaluate the consequent and return its value:
; 0
