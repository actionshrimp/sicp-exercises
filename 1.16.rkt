#lang planet neil/sicp

(define (my-expt base exp)
  (define (iter a b n)
    (cond ((= n 0) a)
          ((even? n) (iter a (* b b) (/ n 2)))
          (else (iter (* a b) b (- n 1))))
     )
  (iter 1 base exp))

(define (my-mult a b)
  (define (double x) (+ x x))
  (cond ((= b 1) a)
        ((even? b) (double (my-mult a (/ b 2))))
        (else (+ a (my-mult a (- b 1))))))

(define (fib n) 
  (fib-iter 1 0 0 1 n))

(define (fib-iter a b p q count)
  (cond ((= count 0) b)
        ((even? count)
         (fib-iter a
                   b
                   (+ (square p) (square q))
                   (+ (* 2 p q) (square q))
                   (/ count 2)))
        (else (fib-iter (+ (* b q) (* a q) (* a p))
                        (+ (* b p) (* a q))
                        p
                        q
                        (- count 1)))))

;(define (fib n) 
;   (fib-iter 1 0 0 1 n)) 
; (define (fib-iter a b p q count) 
;   (cond ((= count 0) b) 
;         ((even? count) 
;          (fib-iter a 
;                    b 
;                    (+ (square p) (square q)) 
;                    (+ (* 2 p q) (square q)) 
;                    (/ count 2))) 
;         (else (fib-iter (+ (* b q) (* a q) (* a p)) 
;                         (+ (* b p) (* a q)) 
;                         p 
;                         q 
;                         (- count 1))))) 
  
 (define (square x) (* x x)) 
  
 ;; Testing 
 (fib 0) 
 (fib 1) 
 (fib 2) 
 (fib 3) 
 (fib 4) 
 (fib 5) 
 (fib 6) 
 (fib 7) 
 (fib 8) 
 (fib 9) 
 (fib 10) 