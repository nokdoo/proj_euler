(define (multiple_of_3_and_5 des)
	(define (solv-iter sum base num des)
		(cond ((>= num des) sum)
			(else (solv-iter (+ sum num) base (+ num base) des))))
		(- (+ (solv-iter 0 3 3 des) (solv-iter 0 5 5 des)) (solv-iter 0 15 15 des)))

(multiple_of_3_and_5 1000)
