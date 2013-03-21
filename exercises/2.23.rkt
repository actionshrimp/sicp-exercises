#lang planet neil/sicp

(define (for-each f items)
  (define (iter _ xs)
    (if (null? xs)
      nil
      (iter (f (car xs)) (cdr xs))))
  (iter nil items))

(for-each (lambda (x) (newline) (display x))
          (list 57 321 88))
