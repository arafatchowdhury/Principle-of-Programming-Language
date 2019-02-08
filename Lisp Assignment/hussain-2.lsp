3.
(setf x '(A B C))
(append x '(A B C))
(append x x)

4.
(QUOTE (QUOTE (A)))
'a = (QUOTE A) is a list of two symbols that evaluates to the symbol A.

7.
(defun quadratic (a b c)
       (list (/ (+ (- b)
                   (sqrt (- (* b b) (* 4 a c))))
                (* 2 a))
             (/ (- (- b)
                   (sqrt (- (* b b) (* 4 a c))))
                (* 2 a))))
8.
(defun circle (r)
    (* PI r r))
9.
(defun FTOC (n)
    (* (- n 32) 5/9))

10.
(defun rotate-left (ok)
    (append (cdr ok) (list (car ok))))

11.
(defun square (x) (* x x))
(defun distance (p1 p2)
  (sqrt (+ (square (- (car p1) (car p2)))
           (square (- (cadr p1) (cadr p2))))))

12.
(defun head (insert) (car insert))
(defun tail (insert) (cdr insert))

13.
(defun switch (insert)
    (list (cadr insert) (car insert)))

14.
(setf 8*7 5)
(defun 8+7 (x y) (+ x y))
(defun 8*7 () 9)
(8+7 (* 8 7) (8+7 (8*7) 8*7))
= 70

15.
(a)
(A B X D)
(car (cdr (cdr e))

(b)
(A (B (X D)))
(car  (car (cdr  (car (cdr e)))))

(c)
(((A (B (X) D))))
(car (car (cdr (car (cdr (car (car e)))))))

16.
(a)
(A B X D)
(cons 'a (cons 'b (cons 'x (cons 'd nil))))

(b)
(A (B (X D)))

  (X D) =   (cons 'x
              (cons 'd
                    nil))

  (B (X D)) =        (cons 'b
                        (cons (cons 'x
                              (cons 'd
                                    nil))
                                        nil))

   (A (B (X D))) = (cons 'a
                    (cons (cons 'b
                          (cons (cons 'x
                                (cons 'd
                                    nil))
                                        nil))
                                            nil))

(c)
(((A (B (X) D))))
here,
  (B (x) D) = (cons 'b
                  (cons (cons 'x nil)
                        (cons 'd
                            nil)))

  (A (B (X) D)) =    (cons 'a
                        (cons (cons 'b
                            (cons (cons 'x nil)
                                (cons 'd
                                    nil)))
                                        nil))


  (((A (B (X) D)))) =  (cons (cons (cons 'a
                          (cons (cons 'b
                              (cons (cons 'x nil)
                                  (cons 'd
                                      nil)))
                                          nil))
                                            nil)
                                              nil)

17.
(list (cons (list (first (first E))
                  (second (first E)))
            (rest (rest (first E))))
      (cons 'a
          (cons 'b
              (rest (rest (third E))))))

18.
