(define (accumulate operand initial sequence)
    (if (null? sequence)
        initial
        (operand (car sequence) (accumulate operand initial (cdr sequence)))))


(define (accumulate_n op init seqs)
    (if (null? (car seqs))
        '()
        (cons
            (accumulate op init (map (lambda (x) (car x)) seqs))
            (accumulate_n op init (map (lambda (x) (cdr x)) seqs)))))


(print (accumulate_n + 0 (list (list 1 2 3) (list 4 5 6) (list 7 8 9) (list 10 11 12))) )