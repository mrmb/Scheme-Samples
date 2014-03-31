(define (operacion cadena)
	(define operador (substring cadena 1 2))
	;(display operador)

	(define posicion_ultimo_espacio (string-search-backward " " cadena))
	(define numero_1 (substring cadena 3 (- posicion_ultimo_espacio 1)))
	;(display numero_1)

	(define numero_2 (substring cadena posicion_ultimo_espacio (- (string-length cadena) 1)))
	;(display numero_2)

	(set! numero_1 (string->number numero_1))
	(set! numero_2 (string->number numero_2))
	(define resultado )
	(cond
		( (equal? "+" operador) (set! resultado (+ numero_1 numero_2)))
		( (equal? "-" operador) (set! resultado (- numero_1 numero_2)))
		( (equal? "*" operador) (set! resultado (* numero_1 numero_2)))
	)
	(display (string-append "El resultado de " operador " es : " (number->string resultado)))
)