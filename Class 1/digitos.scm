(define (decimales valor digitos)
	(define a (* valor (expt 10 digitos)))
	(set! a (truncate a))
	(set! a (/ a (expt 10 digitos)))
	a
)