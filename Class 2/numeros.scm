(define (calculos_de_ejercicio no)

	; Variables para ser utilizadas en el ciclo
	(define menor 0)
	(define mayor 0)
	(define promedio 0)
	(define numeros_pares 0)
	(define numeros_impares 0)
	(define numeros_mayores_a_cien 0)


	; Ciclo 
	(define contador 1)
	(define numero_generado 0)
	(define (ciclo)
		(if (<= contador no)
			(begin
				(set! numero_generado (+ 10 (random 140)))
				(display numero_generado)

				; Verificar el menor
				(if (or (= 0 menor) (< numero_generado menor))
					(set! menor numero_generado)
				)

				; Verificar el mayor
				(if (or (= 0 mayor) (> numero_generado mayor))
					(set! mayor numero_generado)
				)

				; Verificacion numeros pares
				(if (integer? (/ numero_generado 2))
					(set! numeros_pares (+ 1 numeros_pares))
					(set! numeros_impares (+ 1 numeros_impares))
				)

				; Verificacion numeros > 100
				(if (> numero_generado 100)
					(set! numeros_mayores_a_cien (+ numeros_mayores_a_cien 1))
				)

				; Promedio 
				(set! promedio (+ promedio numero_generado))
				; Si contador es divisor en 10 salto de line
				(if (integer? (/ contador 10))
					(newline)
					(display " ")
				)

				(set! contador (+ 1 contador))
				(ciclo)
			)
		)
	)

	

	(ciclo)
	(set! promedio (/ promedio no))
	(newline)
	(display "El menor es : ") 
	(display menor) 
	(newline)
	(display "El mayor es : ") 
	(display mayor) 
	(newline)
	(display "El promedio es : ") 
	(display (exact->inexact promedio))
	(newline)
	(display "Cantidad de numeros pares : ") 
	(display numeros_pares)
	(newline)
	(display "Cantidad de numeros impares : ") 
	(display numeros_impares)
	(newline)
	(display "Cantidad de numeros > 100 : ") 
	(display numeros_mayores_a_cien)

)

(define (main)
	(clear)
	(display "Ingrese Un Numero : ")
	(define no (read))

	(if (and (number? no) (>= no 10) (<= no 40))
		(calculos_de_ejercicio no)
		(display "Ingreso algo incorrecto")
	)
)

(main)