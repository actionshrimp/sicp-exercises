#lang planet neil/sicp

;shared definitions
(define (square x) (* x x))

;first implementation
(define (square-list items)
  (if (null? items)
    nil
    (cons (square (car items)) (square-list (cdr items)))))

(display "first test\n")
(square-list (list 1 2 3 4 5))

;second implementation
(define (square-list2 items)
  (map square items))

(display "second test\n")
(square-list2 (list 1 2 3 4 5))
