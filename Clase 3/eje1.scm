(define (lala str ch)
	(define t)
	(if (and (string? str) (char? ch))
		(begin
			(set! ch (char->string ch))
			(set! t (string-search-forward ch str))
			; (cond
			; 	( (number? t) (display "Si esta") )
			; 	( (boolean? t) (display "No esta") )
			; )

			(if (boolean? t)
				(display "No esta")
				(display "Si Esta")
			)
		)
		(display "Error")
	)
)