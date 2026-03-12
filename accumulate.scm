(define (accumulate operand initial sequence)
    (if (null? sequence)
        initial
        (operand (car sequence) (accumulate operand initial (cdr sequence)))))

(print (accumulate + 0 (list 1 2 3 4 5)))
(print (accumulate * 1 (list 1 2 3 4 5)))
(print (accumulate cons '() (list 1 2 3 4 5)))