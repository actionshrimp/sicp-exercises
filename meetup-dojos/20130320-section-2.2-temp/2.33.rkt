#lang planet neil/sicp

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (square x) (* x x))

(define (map2 proc l)
  (accumulate (lambda (x y) (cons (proc x) y)) '() l))

(define (append2 l1 l2)
  (accumulate cons l2 l1))

(define (length2 l)
  (accumulate (lambda (_ y) (+ y 1)) 0 l))
