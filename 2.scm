(define (even_fibonacci_numbers)
	(define (fibo-iter f1 f2 sum)
		(define (f3) (+ f1 f2))
		(cond ((> 4000000 (f3)) (cond ((even? (f3)) (fibo-iter f2 (f3) (+ sum (f3))))
								(else (fibo-iter f2 (f3) sum))))
			(else sum)))
	(fibo-iter 1 2 2))

(even_fibonacci_numbers)
