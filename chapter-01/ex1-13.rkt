#lang sicp

; We need to prove that Fib(n) tend to φⁿ/√5, where φ = (1 + √5)/2.
; In order to do so, we let ψ = (1 - √5)/2, and also use induction 
; and the definition of the Fibonacci numbers to prove that Fib(n) = (φⁿ - ψⁿ)/√5.
; Let's first consider our base case:
; Fib(2) = Fib(1) + Fib(0)
; Fib(0) = (φ⁰ - ψ⁰)/√5 = (1 - 1)/√5 = 0/√5 = 0
; Fib(1) = (φ¹ - ψ¹)/√5 = (φ - ψ)/√5 = ((1 + √5) - (1 - √5))/(2√5) = (2√5)/(2√5) = 1
; Fib(2) = (φ² - ψ²)/√5 = ((φ - ψ)(φ + ψ))/√5 = ((φ - ψ)/√5)(φ + ψ) = (Fib(1))(φ + ψ)
;        = (1)(φ + ψ) = (φ + ψ) = ((1 + √5) + (1 - √5))/2 = (1 + 1)/2 = 2/2 = 1.
; As expected we get that F(2) = 1 + 0 = 1.
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
; It now remains for us to prove that Fib(n) is closest integer to φⁿ/√5.
; It signifies that the difference between Fib(n) and φⁿ/√5 should be smaller than ½.
; Fib(n) - φⁿ/√5 = ψⁿ/√5 < 1/2
; ψⁿ/√5 = (1 - √5)ⁿ/√5 = (1 - √5)(1 - √5)⁽ⁿ⁻¹⁾/√5 = ((1/√5) - 1)(1 - √5)⁽ⁿ⁻¹⁾
; Since √5 > 1, then 1/√5 < 1, it means that the second factor will always be positive,
; no matter the n, and that the first factor will give us a negative number.
; A positive number multiplied by a negative numbers will results in a negative number.
; ψⁿ/√5 < 0 < 1/2 or ψⁿ < √5/2
; Therefore, Fib(n) is the closest integer to φⁿ/√5.
; Q.E.D.
