(define (tree_map f tree)
    (map (lambda (sub_tree)
        (if (pair? sub_tree)
            (tree_map f sub_tree)
            (f sub_tree))) tree))

(define (square x) (* x x))

(define (square_tree tree) (tree_map square tree))

(print (square_tree
    (list 1
    (list 2 (list 3 4) 5)
    (list 6 7))))