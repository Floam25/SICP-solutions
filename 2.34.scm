(define (accumulate operand initial sequence)
    (if (null? sequence)
        initial
        (operand (car sequence) (accumulate operand initial (cdr sequence)))))


(define (horner_eval x coefficient_sequence)
    (accumulate
        (lambda (this_coeff higher_terms) (+ (* higher_terms x) this_coeff))
        0
        coefficient_sequence))


(print (horner_eval 2 (list 1 3 0 5 0 1)))