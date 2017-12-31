(define (iter1 n)
	(cond ((= (modulo n 2) 0) (iter1 (/ n 2)))
		(else n)))

(define (iter2 i n)
	(cond ((<= i (sqrt n)) (iter2 (+ i 2) (iter3 n i)))
		(else n)))

(define (iter3 n i)
	(cond ((= (modulo n i) 0) (iter3 (/ n i) i))
		(else n)))

(iter2 3 (iter1 600851475143))
