(define user_1 "juan")
(define pass_1 "1234")
(define user_2 "pedro")
(define pass_2 "5678")
(define user_3 "carlos")
(define pass_3 "9012")

(define (principal)
	(clear)
	(display "Ingrese Usuario : ")
	(define user (read-line))
	(define pass "")
	(if (or (string=? user user_1) (string=? user user_2) (string=? user user_3))
		(begin
			(display "Ingrese Password : ")
			(set! pass (read-line))
			(if (or 
					(and (string=? user user_1) (string=? pass pass_1) )
					(and (string=? user user_2) (string=? pass pass_2) )
					(and (string=? user user_3) (string=? pass pass_3) )
				)
				(display "Usuario y Contrasena Correctos.")
				(display "Password Incorrecto")
			)
		)
		(display "Usuario No Existe")
	)
)