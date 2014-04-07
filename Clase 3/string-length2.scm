(define cantidad 0)

(define (string-length palabra)		
	(if (equal? "" palabra)
		cantidad
		(begin
			(set! cantidad (+ cantidad 1))
			(set! palabra (string-tail palabra 1))
			(display cantidad)
			(display "  =>  ") 
			(display palabra) (newline)
			(string-length palabra)
		)
	)
	
	(display "Cantidad es : ")
	(display cantidad)(newline)
	;cantidad
)