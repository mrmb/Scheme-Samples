(define (main)
	(clear)
	(display "Ingrese palabra 1 ")
	(define palabra1 (read-line))
	(display "Ingrese palabra 2 ")
	(define palabra2 (read-line))
	(display "Ingrese palabra 3 ")
	(define palabra3 (read-line))
	(display "Ingrese palabra 4 ")
	(define palabra4 (read-line))


	(define mayor palabra1)
	(if (not (string>? mayor palabra2) ) (set! mayor palabra2))
	(if (not (string>? mayor palabra3) ) (set! mayor palabra3))
	(if (not (string>? mayor palabra4) ) (set! mayor palabra4))

	(define menor palabra1)
	(if (not (string<? menor palabra2) ) (set! menor palabra2))
	(if (not (string<? menor palabra3) ) (set! menor palabra3))
	(if (not (string<? menor palabra4) ) (set! menor palabra4))

	

	(define en_medio_1 "")
	(cond
		(
			(and (not (equal? palabra1 mayor)) (not(equal? palabra1 menor)) )
			(set! en_medio_1 palabra1)
		)
		(
			(and (not (equal? palabra2 mayor)) (not(equal? palabra2 menor)) )
			(set! en_medio_1 palabra2)
		)
		(
			(and (not (equal? palabra3 mayor)) (not(equal? palabra3 menor)) )
			(set! en_medio_1 palabra3)
		)
		(
			(and (not (equal? palabra4 mayor)) (not(equal? palabra4 menor)) )
			(set! en_medio_1 palabra4)
		)
		

	)


	(define en_medio_2 "")

	(cond
		(
			(and (not (equal? palabra1 mayor)) (not(equal? palabra1 menor)) (not (equal? palabra1 en_medio_1)))
			(set! en_medio_2 palabra1)
		)
		(
			(and (not (equal? palabra2 mayor)) (not(equal? palabra2 menor)) (not (equal? palabra2 en_medio_1)))
			(set! en_medio_2 palabra2)
		)
		(
			(and (not (equal? palabra3 mayor)) (not(equal? palabra3 menor)) (not (equal? palabra3 en_medio_1)))
			(set! en_medio_2 palabra3)
		)
		(
			(and (not (equal? palabra4 mayor)) (not(equal? palabra4 menor)) (not (equal? palabra4 en_medio_1)))
			(set! en_medio_2 palabra4)
		)
		

	)


	(display mayor)
	(newline)
	
	(if (string>? en_medio_1 en_medio_2)
		(begin
			(display en_medio_1)
			(newline)
			(display en_medio_2)
		)
		(begin
			(display en_medio_2)
			(newline)
			(display en_medio_1)
		)
	)
	(newline)
	(display menor)
	

)

(main)