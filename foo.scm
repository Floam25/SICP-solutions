(define (reverse_list items)
    (define (iter things answer)
        (if (null? things)
            answer
            (iter (cdr things)  (cons (car things) answer))))
    (iter items '()))


(print (reverse_list (list 1 2 3 4 5 6)))
(print (reverse_list (list 1 2 0 2 9 1)))