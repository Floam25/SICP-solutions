(define (filter predicate sequence)
    (cond
        ((null? sequence) sequence)
        ((predicate (car sequence)) (cons (car sequence) (filter predicate (cdr sequence))))
        (else (filter predicate (cdr sequence)))))


(print (filter odd? (list 1 2 3 4 5)))
(print (filter even? (list 1 2 3 4 5)))