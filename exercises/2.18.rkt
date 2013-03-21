(define (reverse l)
  (if (= 0 (length l))
    '()
    (append (reverse (cdr l)) (list (car l)))))

(define (rev l)
  (define (rev-iter l acc)
    (if (= 0 (length l))
      acc
      (rev-iter (cdr l) (cons (car l) acc))))
  (rev-iter l '()))

(rev (list 1 2 3 4))

(rev (list 3 2 55 2))
