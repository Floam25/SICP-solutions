(define (fringe items)
    (cond
        ((null? items) '())
        ((pair? (car items)) (append (fringe (car items)) (fringe (cdr items))))
        (else (append (list (car items)) (fringe (cdr items))))))
            


(define x (list (list 1 2) (list 3 4)))


(print (fringe x))
(print (fringe (list x x)))