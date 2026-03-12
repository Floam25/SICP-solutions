

(define (deep_reverse items)
    (define (iter things answer)
        (if (null? things)
            answer
            (iter
                (cdr things)
                (cons 
                    (if (pair? (car things)) 
                        (iter (car things) '())
                        (car things))
                    answer))))
    
    
    (iter items '()))

(define x (list (list 1 2) (list 3 4)))
(define y (list (list 1 4 5 2) (list 1 2 (list 1 2 3)) (list 3 4)))


(print (deep_reverse x))
(print (deep_reverse y))