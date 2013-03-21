#lang planet neil/sicp

(define (same-parity x . xs)
  (define (iter ys acc)
    (if (null? ys)
      acc
      (if (= (remainder x 2) (remainder (car ys) 2))
        (cons (car ys) (iter (cdr ys) acc))
        (iter (cdr ys) acc))))
  (cons x (iter xs '())))

(same-parity 1 2 3 4 5 6 7)
(same-parity 2 3 4 5 6 7)
