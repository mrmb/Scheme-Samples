(define (reverse cadena posicion lonuevo)

	(define tamano (string-length cadena))
	(set! tamano (- tamano 1))
	
	(define (ciclo)
		(if (not (= -1 tamano))
			(begin
				(if (= posicion tamano)
					(display (string-append lonuevo " ") )
					(display (string-append (char->string (string-ref cadena tamano)) " ") )	
				)
				
				(set! tamano (- tamano 1))
				(ciclo)
			)
		)
	)
	(ciclo)
)

