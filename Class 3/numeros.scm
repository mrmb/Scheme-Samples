(define (numeros cadena)
	(define pos1 (string-ref cadena 0))
	(define pos2 (string-ref cadena 1))
	(define pos3 (string-ref cadena 2))

	(set! pos1 (char->digit pos1))
	(set! pos2 (char->digit pos2))
	(set! pos3 (char->digit pos3))

	(define total (+ 
		(* pos1 (expt 10 2)) 
		(* pos2 (expt 10 1))
		(* pos3 (expt 10 0))
	 ))
	total
)