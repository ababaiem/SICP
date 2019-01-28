#lang sicp

; We need to prove that Fib(n) tend to φⁿ/√5, where φ = (1 + √5)/2.
; In order to do so, we let ψ = (1 - √5)/2, and also use induction 
; and the definition of the Fibonacci numbers to prove that Fib(n) = (φⁿ - ψⁿ)/√5.
; Let's first consider our base case:
; Fib(0) = (φ⁰ - ψ⁰)/√5 = (1 - 1)/√5 = 0/√5 = 0
; Fib(1) = (φ¹ - ψ¹)/√5 = (φ - ψ)/√5 = ((1 + √5) - (1 - √5))/(2√5) = (2√5)/(2√5) = 1.
; As expected we get that F(0) = 0.
; We'll now consider our step case:
; Assuming that Fib(k) holds for natural k less than n + 1, with n ≥ 0,
; let us prove then that Fib(n + 1) = (φ⁽ⁿ⁺¹⁾ - ψ⁽ⁿ⁺¹⁾)/√5.
; Per definition, we have Fib(n + 1) = Fib(n) + Fib(n - 1).
; We can substitute Fib(n) and Fib(n - 1) by their form given by the hypothesis.
; Fib(n + 1) = (φⁿ - ψⁿ)/√5 + (φ⁽ⁿ⁻¹⁾ - ψ⁽ⁿ⁻¹⁾)/√5.
; We can simplify our equation, and factor our numerator.
; Fib(n + 1) = (φ⁽ⁿ⁻¹⁾(φ + 1) - ψ⁽ⁿ⁻¹⁾(ψ + 1))/√5.
; Let us note that φ² = 1 + φ and ψ² = 1 + ψ.
; Indeed, if we square φ or ψ using their definition, we get the result above.
; φ² = ((1 + √5)/2)² = (1 + 2√5 + 5)/4 = (3 + √5)/2 = 1 + (1 + √5)/2 = 1 + φ.
; or,
; ψ² = ((1 - √5)/2)² = (1 - 2√5 + 5)/4 = (3 - √5)/2 = 1 + (1 - √5)/2 = 1 + ψ.
; We may now substitute φ + 1 and 1 + ψ.
; Fib(n + 1) = ((φ⁽ⁿ⁻¹⁾φ²) - (ψ⁽ⁿ⁻¹⁾ψ²))/√5 = (φ⁽ⁿ⁻¹⁺²⁾ - ψ⁽ⁿ⁻¹⁺²⁾)/√5.
;            = (φ⁽ⁿ⁺¹⁾ - ψ⁽ⁿ⁺¹⁾)/√5.
; We thereby have showed that Fib(n + 1) holds.
; Since both the base case and the step case have been performed,
; by mathematical induction the statement Fib(k) holds for all natural number k.
; Q.E.D.
