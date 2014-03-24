
(define (verificacion_fecha dia mes anio)
	(define resultado #t)
	(if (and (>= anio 1) (<= anio 9999) )
		(begin
			; El anio se cumplio correctamente
			(if (and (>= mes 1) (<= mes 12))
				(begin
					(if (or (= mes 1) (= mes 3) (= mes 5) (= mes 7) (= mes 8) (= mes 10) (= mes 12))
						(if (and (>= dia 1) (<= dia 31))
							(set! resultado #t)
							(set! resultado #f)
						)
					)

					(if (or (= mes 4) (= mes 6) (= mes 9) (= mes 11))
						(if (and (>= dia 1) (<= dia 30))
							(set! resultado #t)
							(set! resultado #f)
						)
					)

					(if (= mes 2)
						(if (and (>= dia 1) (<= dia 28))
							(set! resultado #t)
							(set! resultado #f)
						)
					)
				)
				(set! resultado #f)
			)
		)
		(set! resultado #f)
	)
	resultado

)