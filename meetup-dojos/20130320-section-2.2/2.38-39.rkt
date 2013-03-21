#lang planet neil/sicp

;Definitions
(define (fold-right op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (fold-right op initial (cdr sequence)))))

(define (fold-left op initial sequence)
  (define (fold-left-iter op acc rst)
    (if (null? rst)
        acc
        (fold-left-iter op (op acc (car rst)) (cdr rst))))
  (fold-left-iter op initial sequence))

(define (reverse-right l)
  (fold-right (lambda (x y) (append y (list x))) '() l))o

;Figuring out the fold op by induction
;(op 1 (op 2 (op 3 (op 4 null))))

;...

;(append 1 '())
;(append '(2) '(1))
;(append '(3) '(2 1))
;...

(display "reverse right:\n")
(display (reverse-right '(1 2 3 4)))
(display "\n")

(define (reverse-left l)
  (fold-left (lambda (x y) (cons y x)) '() l))

;Figuring out the fold op by induction
;(op (op (op (op '() 1) 2) 3) 4)

;therefore op = cons with the args swapped..

;...

;(cons 1 '())
;(cons 2 '(1))
;(cons 3 '(2 1))
;...

(display "reverse left:\n")
(display (reverse-left '(1 2 3 4)))
(display "\n")
