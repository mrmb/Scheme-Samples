(define (string-length palabra)
	(define cantidad 0)	

	(define (cant_palabras palabra2)
		(if (equal? "" palabra2)
			cantidad
			(begin
				(set! cantidad (+ cantidad 1))
				(set! palabra2 (string-tail palabra2 1))
				(display cantidad)
				(display "  =>  ") 
				(display palabra2) (newline)
				(cant_palabras palabra2)
			)
		)
	)

	(cant_palabras palabra)
	(display "Cantidad es : ")
	(display cantidad)
	;cantidad
)