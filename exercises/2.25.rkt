#lang planet neil/sicp

(define list1 '(1 3 (5 7) 9) )
(define list2 '((7)) )
(define list3 '(1 (2 (3 (4 (5 (6 7)))))) )

(display "list1\n")
(car (cdr (car (cdr (cdr list1)))))
(display "list2\n")
(caar list2)
(display "list3\n")
(cadr (cadr (cadr (cadr (cadr (cadr list3))))))
