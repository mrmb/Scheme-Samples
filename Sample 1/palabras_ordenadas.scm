(define (palabras)
	(define posicion_1)
	(define posicion_2)
	(define posicion_3)

	(clear)
	(display "Ingrese Palabra 1 : ")
	(define palabra1 (read-line))	; Leer palabra 1
	(set! posicion_1 palabra1)		; Asumimos que la palabra 1 es la mayor

	(display "Ingrese Palabra 2 : ")
	(define palabra2 (read-line))	; Leer palabra 2
	(if (string>? palabra2 palabra1)
		(begin
			; palabra2 > palabra1 
			(set! posicion_2 posicion_1)
			(set! posicion_1 palabra2)
		)
		(begin
			; palabra2 < palabra1
			(set! posicion_2 palabra2)
		)
	)

	(display "Ingrese Palabra 3 : ")
	(define palabra3 (read-line))
	(if (string>? palabra3 posicion_2)
		(begin
			; palabra3 > posicion_2 
			; Ir a ver si es mayor a la posicion_1
			(if (string>? palabra3 posicion_1)
				(begin
					; palabra3 > posicion_2 > posicion_1
					(set! posicion_3 posicion_2)	
					(set! posicion_2 posicion_1)
					(set! posicion_1 palabra3)
				)
				(begin
					; palabra3 > posicion_2 < posicion_1
					(set! posicion_3 posicion_2)
					(set! posicion_2 palabra3)

				)
			)
		)
		(set! posicion_3 palabra3)
	)


	(display "\nResultado\n")
	(display posicion_1)(newline)
	(display posicion_2)(newline)
	(display posicion_3)(newline)


)