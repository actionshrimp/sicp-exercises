#lang planet neil/sicp

(define (my-function n)
  (cond ((< n 3) n)
        (else (+ (my-function (- n 1))
                 (* 2 (my-function (- n 2)))
                 (* 3 (my-function (- n 3)))))))

(define (my-function2 n)
  (define (iter a b c count)
  (if (= count 0)
      c
      (iter (+ a (* 2 b) (* 3 c)) a b (- count 1))))
  (iter 2 1 0 n))

(define (pascal row col)
  (if (= row 1) 1
      (if (= col 1) 1
          (if (= col row) 1
              (+ (pascal (- row 1) (- col 1))
                 (pascal (- row 1) col))))))
