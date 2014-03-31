(define (cantidad_divisores no)

	(define cant_div 0)
	(define dividendo 1)
	(define divi -1)


	(define (ciclo)
		(if (and (number? no) (> no 0))
			(if (<= dividendo no)
				(begin
					(set! divi (/ no dividendo))
					(if (integer? divi)
						(set! cant_div (+ cant_div 1))
					)
					(set! dividendo (+ dividendo 1))
					(ciclo)
				)
			)
		)
	)

	(ciclo)
	cant_div
)
