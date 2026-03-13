(define (accumulate operand initial sequence)
    (if (null? sequence)
        initial
        (operand (car sequence) (accumulate operand initial (cdr sequence)))))


(define (count_leaves t)
    (accumulate
        (lambda (x y) (+ x y))
        0
        (map 
            (lambda (x) 
                (cond
                    ((null? x) 0)
                    ((pair? x) (count_leaves x))
                    (else 1)))
            t)))

(print (count_leaves (list (list 1 2 3 (list 1 2))  (list 1 2))))