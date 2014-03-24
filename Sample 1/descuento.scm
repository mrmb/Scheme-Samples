; 15% >= 12

(define (descuento cantidad precio)
	(define total)
	(if (>= cantidad 12)
		(set! total (- (* cantidad precio) (* cantidad precio 0.15)))
		(set! total (* cantidad precio))
	)
	total
)

(define (main)
	(display "Ingrese cantidad : ")
	(define cantidad (read))
	(display "Ingrese Precio : ")
	(define precio (read))
	(descuento cantidad precio)
)