; We can represent a set as a list of distinct
; elements, and we can represent the set of all subsets of the
; set as a list of lists. For example, if the set is (1 2 3), then
; the set of all subsets is (() (3) (2) (2 3) (1) (1 3)
; (1 2) (1 2 3)).

Complete the following definition of a
; procedure that generates the set of subsets of a set and give
; a clear explanation of why it works:

(define (subsets s)
  (if (null? s)
    (list nil)
    (let ((rest (subsets (cdr s))))
      (display rest)
      (display s)
      (append rest (map (lambda (x) (cons (car s) x)) rest)))))

(subsets (list 1 2 3))

; There are two important operations here: cons of car s for every element of rest, and then append.

; First, recursion and expension via let:
; (subset (1 2 3) (subset 1 2) (subset 1) (subset '()) -> return '()
; Last expension return '(). Then, reduction phase.
; Since we reached our recursion base case, the last line will be executed at each reduction.
; Process will be map -> append

; 1. s = '(3)
;    rest = '(())
;    x = '()
;    map cons -> '((3))
;    append rest to map cons -> '(() (3))
; 2. s = '(2 3)
;    rest = '(() (3))
;    map cons -> '((2) (2 3))
;    append -> '(() (3) (2) (2 3))
; 3. s = '(1 2 3)
;    rest = '(() (3) (2) (2 3))
;    map cons -> '((1) (1 3) (1 2) (1 2 3))
;    append -> '(() (3) (2) (2 3) (1) (1 3) (1 2) (1 2 3))

**PERFECT**

; Other interesting reflexion

; This problem becomes easy when you evolve the process manually: 

; (subsets '(1 2 3))
; rest ← (subsets '(2 3))
;        rest ← (subsets '(3))
;               rest ← (subsets '())
;                      '(())
;               (append '(()) (map ⟨…⟩ '(())))
;               '(() (3))
;        (append '(() (3)) (map ⟨…⟩ '(() (3))))
;        '(() (3) (2) (2 3))
; (append '(() (3) (2) (2 3)) (map ⟨…⟩ '(() (3) (2) (2 3))))
; '(() (3) (2) (2 3) (1) (1 3) (1 2) (1 2 3))

; The problem now is to find the function (λ (x)) to map, which has the characteristics: 

; '(())               ⟼ '((3))                     given s = '(3)
; '(() (3))           ⟼ '((2) (2 3))               given s = '(2 3)
; '(() (3) (2) (2 3)) ⟼ '((1) (1 3) (1 2) (1 2 3)) given s = '(1 2 3)

; Which is plainly the result of prepending the first item of S to each sublist X; that is, to cons the car of S onto each sublist. In Scheme parlance, (λ (x) (cons (car s) x). 
