#lang planet neil/sicp

(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (sum term (next a) next b))))

(define (numer i) (remainder i 2))
