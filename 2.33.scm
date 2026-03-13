(define (accumulate operand initial sequence)
    (if (null? sequence)
        initial
        (operand (car sequence) (accumulate operand initial (cdr sequence)))))



(define (my_map p sequence)
    (accumulate
        (lambda (x y) 
            (cons (p x) y)) 
        '()
        sequence))

(define (my_append seq1 seq2)
    (accumulate cons seq2 seq1))

(define (my_length sequence)
    (accumulate (lambda (x y) (+ 1 y)) 0 sequence))



(print (my_map (lambda (x) (* x x x)) (list 1 2 3 4 5 6 7)))
(print (my_append (list 1 2 3 4) (list 1 2 3 4 5)))
(print (my_length (list 1 2 3 4 5 6 7)))