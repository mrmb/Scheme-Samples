(define (cambioDeColor colorActual)
    ; ESCRIBA AQUI SU CODIGO
    ; Recuerde que colorActual puede ser una 
    ; de tres palabras: rojo, verde o amarillo
    (define nuevo_color "" )
    (cond 
        ((equal? colorActual "rojo")  (set! nuevo_color "verde") )
        ((equal? colorActual "verde") (set! nuevo_color  "amarrillo" ))
        ((equal? colorActual "amarrillo")  (set! nuevo_color "rojo" ))
    )
    nuevo_color
)


; ---------- NO MODIFIQUE NADA DE CODIGO APARTIR DE ESTA LINEA -----------
(define (main)
    (clear)
    (display "Laboratorio #7 - CC1\nEjercicio #3\nComenzando simulacion semaforo \n\n")
    (define v (+ (random 4) 3))
    (display (string-append "Simulando " (number->string v) " cambios\n\n"))
    (let c ((x 1)(s "rojo"))
            (if (<= x v)
                (let ((n (cambioDeColor s)))
                    (display (string-append "Cambio de color #"
                              (number->string x)  ": "
                              s "-->" n))(newline)
                             (c (+ x 1) n))))
    (display "\nSimulacion terminada!\n\n")
)
(main)
; ------------------------------------------------------------------------
                
    