(define (accumulate combiner start n term)
  (if (= n 0)
      start
      (combiner start (accumulate combiner (term n) (- n 1) term))
  )
)

(define (accumulate-tail combiner start n term)
  (define (acc combiner start n term result)
    (if (= n 0)
      result
      (acc combiner (term n) (- n 1) term (combiner result start))))
  (acc combiner start n term 1)
)

(define-macro (list-of expr for var in seq if filter-fn)
  (list 'map(list 'lambda (list var) expr) (list 'filter(list 'lambda (list var) filter-fn) seq))
)
