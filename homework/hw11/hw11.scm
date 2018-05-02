(define (find s predicate)
  (cond
    ((null? s) #f)
    ((predicate (car s)) (car s))
    (else (find (cdr-stream s) predicate)))
)

(define (scale-stream s k)
  (cons-stream (* (car s) k) (scale-stream (cdr-stream s) k))
)

(define (has-cycle s)
  (define (check s1 s2)
    (if (null? s1) #f
      (checking (cons s1 s2) (cons s1 s2) s1)
    )
  )
  (define (checking orig list compare)
    (cond
      ((null? list) (check (cdr-stream compare) orig))
      ((eq? (car list) (cdr-stream compare)) #t)
      (else (checking orig (cdr list) compare))
    )
  )
  (check s nil)
)
(define (has-cycle-constant s)
  'YOUR-CODE-HERE
)
