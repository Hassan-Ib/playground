(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1) (A x (- y 1))))))



; (A 1 10); 
; (A (- 1 1) (A 1 9))
; (A (- 1 1) (A (- 1 1) (A 1 8)))
; (A (- 1 1) (A (- 1 1) (A (- 1 1) (A 1 7))))
; (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A 1 6)))))
; (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A 1 5))))))
; (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A 1 4)))))))
; (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A 1 3))))))))
; (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A 1 2))))))))))
; (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A 1 1))))))))))
; (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A 0 2)))))))))
; (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) 4))))))))
; (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A 0 4))))))))
; (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) 8)))))))
; 1024
; 2^10

; (A 2 4)
; (A (- 2 1) (A 2 3))
; (A (- 2 1) (A (- 2 1) (A 2 2)))
; (A (- 2 1) (A (- 2 1) (A (- 2 1) (A 2 1)))
; (A (- 2 1) (A (- 2 1) (A (- 2 1) 2)))
; (A (- 2 1) (A (- 2 1) (A 1 2)))
; (A (- 2 1) (A (- 2 1) (A (-1 1) (A 1 1)))
; (A (- 2 1) (A (- 2 1) (A 0 2)))
; (A (- 2 1) (A (- 2 1) 4))
; (A (- 2 1) (A 1 4))
; (A (- 2 1) (A (- 1 1) (A 1 3)))
; (A (- 2 1) (A (- 1 1) (A (- 1 1) (A 1 2))))
; (A (- 2 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A 1 1))))
; (A (- 2 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) (A 1 1))))
; (A (- 2 1) (A (- 1 1) (A (- 1 1) (A (- 1 1) 2)))
; (A (- 2 1) (A (- 1 1) (A (- 1 1) 4))
; (A (- 2 1) (A (- 1 1) 8))
; (A (- 2 1) 16))
; (A 1 16))
; 2^2^2^2

; (A 3 3)
;(A (-3 1) (A 3 2))
;(A (-3 1) (A (-3 1) (A 3 1)))
;(A (-3 1) (A (-3 1) 2))
;(A (-3 1) (A 2 2))
;(A (-3 1) (A (-2 1) (A 2 1)))
;(A (-3 1) (A (-2 1) 2))
;(A (-3 1) (A (-3 1) (A (- 2 1) (-2 1))))
;(A (-3 1) (A (-3 1) (A (-3 1) (A 1 1)))
;(A (-3 1) (A (-3 1) (A 2 2)))
;(A (-3 1) (A (-3 1) (A (- 2 1) (A 2 1)))))
;(A (-3 1) (A (-3 1) (A 1 2)))
;(A (-3 1) (A (-3 1) (A -(1 1) (A 1 (-2 1)))))
;(A (-3 1) (A (-3 1) (A -(1 1) (A 1 1)))))
;(A (-3 1) (A (-3 1) (A 0 2))))
;(A (-3 1) (A (-3 1) 4)))
;(A (-3 1) (A 2 4)))
;(A 2 (A 2 4)))
;(A 2 (A (-2 1) (A 2 3)))
;(A 2 (A (-2 1) (A (-2 1) (A 2 2))))
;(A 2 (A (-2 1) (A (-2 1) (A (-2 1) (A 2 1)))))
;(A 2 (A (-2 1) (A (-2 1) (A (-2 1) 2))))
;(A 2 (A (-2 1) (A (-2 1) (A 1 2))))
;(A 2 (A (-2 1) (A (-2 1) (A (- 1 1) (A 1 1)))))
;(A 2 (A (-2 1) (A (-2 1) (A (- 1 1) 2))))
;(A 2 (A (-2 1) (A (-2 1) 4)))
;(A 2 (A (-2 1) (A 3 4)))
;(A 2 (A (-2 1) (A (-3 1) (A 3 4))))
;(A 2 (A (-2 1) (A (-3 1) (A (-3 1) A(3 2)))))
;(A 2 (A (-2 1) (A (-3 1) (A (-3 1) (A (-3 1) (A 3 1))))))
;(A 2 (A (-2 1) (A (-3 1) (A (-3 1) (A (-3 1) 2)))))
;(A 2 (A (-2 1) (A (-3 1) (A (-3 1) (A 2 2)))))
;(A 2 (A (-2 1) (A (-3 1) (A (-3 1) (A (-2 1) (A 2 1))))))
;(A 2 (A (-2 1) (A (-3 1) (A (-3 1) (A 1 2)))))
;(A 2 (A (-2 1) (A (-3 1) (A (-3 1) 4))))
;(A 2 (A (-2 1) (A (-3 1) (A 2 4))))
;(A 2 (A (-2 1) (A (-3 1) (A (-2 1) (A 2 3)))))
;(A 2 (A (-2 1) (A (-3 1) (A (-2 1) (A (-2 1) (A 2 2))))))
;(A 2 (A (-2 1) (A (-3 1) (A (-2 1) (A (-2 1) (A (- 2 1) (A 2 1)))))))
;(A 2 (A (-2 1) (A (-3 1) (A (-2 1) (A (-2 1) (A (- 2 1) 2))))))
;(A 2 (A (-2 1) (A (-3 1) (A (-2 1) (A (-2 1) (A 1 2))))))
;(A 2 (A (-2 1) (A (-3 1) (A (-2 1) (A (-2 1) (A (- 1 1) (A 1 1))))))
;(A 2 (A (-2 1) (A (-3 1) (A (-2 1) (A (-2 1) (A 0 2)))))
;(A 2 (A (-2 1) (A (-3 1) (A (-2 1) (A (-2 1) 4)))))
;(A 2 (A (-2 1) (A (-3 1) (A (-2 1) (A 1 4)))))
;(A 2 (A (-2 1) (A (-3 1) (A (-2 1) (A (- 1 1) (A 1 3)))))
;(A 2 (A (-2 1) (A (-3 1) (A (-2 1) (A (- 1 1) (A (-1 1) (A 1 2)))))
;(A 2 (A (-2 1) (A (-3 1) (A (-2 1) (A (- 1 1) (A (-1 1) (A (-1 1) (A 1 1)))))
;(A 2 (A (-2 1) (A (-3 1) (A (-2 1) (A (- 1 1) (A (-1 1) (A (-1 1) 2))))
;(A 2 (A (-2 1) (A (-3 1) (A (-2 1) (A (- 1 1) (A (-1 1) (A 0 2))))
;(A 2 (A (-2 1) (A (-3 1) (A (-2 1) (A (- 1 1) (A (-1 1) 4)))
;(A 2 (A (-2 1) (A (-3 1) (A (-2 1) (A (- 1 1) (A 0 4)))
;(A 2 (A (-2 1) (A (-3 1) (A (-2 1) (A (- 1 1) 8))
;(A 2 (A (-2 1) (A (-3 1) (A (-2 1) 16))
;(A 2 (A (-2 1) (A (-3 1) (A 1 16))
;(A 2 (A (-2 1) (A (-3 1) (A 1 16))
...

; 2^2^2^2


; (define (f n) (A 0 n))
; (define (f n) (* 2 n))

(define (g n) (A 1 n))
(define (f n) (expt 2 n))

(define (h n) (A 2 n))
(define (h n) (expt 2 (expt 2) ... n times)
