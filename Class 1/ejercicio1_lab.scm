; ejercicio1 - lab8

; ESCRIBA SU COMENTARIO AQUI
(define (esMultiplo? a b)
    ; ESCRIBA SU CODIGO AQUI
)


; ESCRIBA SU COMENTARIO AQUI
(define (roundNumber numero digitos)
    ; ESCRIBA SU CODIGO AQUI
)

; ESCRIBA SU COMENTARIO AQUI
(define (toSeconds horas)
    ; ESCRIBA SU CODIGO AQUI
)



; *****************************************************
; NO MODIFIQUE CODIGO APARTIR DE AQUI
; *****************************************************

; main
(define (main)
    (clear)
    (display "**** PRUEBA - EJERCICIO # 1 - LAB # 8\n PRUEBA Funcion #1 :\n")
    

    (display "Ingrese un numero entero positivo: ")
    (define n (let entero ((x (read)))
                    (if (and (integer? x)(positive? x)) x
                        (begin  (display "Numero invalido. Vuelva a ingresar: ")
                                (entero (read))))))
    (display "Ingrese un numero de estos numeros (2, 3, 4, 5, 6) : ")
    (define m (let entero ((x (read)))
                    (if (and (integer? x)(positive? x)(>= x 2)(<= x 6)) x
                        (begin  (display "Numero invalido. Vuelva a ingresar: ")
                                (entero (read))))))
    (display "Los primeros ")(display n)(display " multiplos de ")
    (display m)(display " son: ")
    (display (do ((str "{ " str)(f 1 (+ f 1))(c 1 c)) ((> c n) (string-append str "}"))
             (if (esMultiplo? f m) 
                (begin (set! str (string-append str (number->string f) " "))(set! c (+ c 1))))))    
    (newline)
    (newline)
    (display " PRUEBA Funcion #2 : \n")
    (display "Ingrese numero entero (positivo): ")
    (define nume (let numero ((x (read)))
                    (if (and (number? x)(positive? x)) x
                        (begin  (display "Numero invalido. Vuelva a ingresar: ")
                                (numero (read))))))
    (define ale (exact->inexact (+ 0.1532 (/ (+ 45 (random 300)) (* 1.7 nume)))))
    (display (string-append "Numero ingresado: " (number->string nume) " \n"
                "Numero aleatorio generado: " (number->string ale) " \n"
                "Con un digito: " (number->string (roundNumber ale 1)) " \n"
                "Con dos digitos: " (number->string (roundNumber ale 2)) " \n"
                "Con tres digitos: " (number->string (roundNumber ale 3)) " \n"
                "Con cuatro digitos: " (number->string (roundNumber ale 4)) " \n"))
    (newline)
    (newline)
    (display " PRUEBA Funcion #3 : \n")
    (define horas (random 1000))
    (define minutos (random 60))
    (define segundos (random 60))
    (display (string-append "Horas: " (number->string horas) "\nMinutos: " 
                (number->string minutos) "\nSegundos:" (number->string segundos)))(newline)
    (define formato (string-append (number->string horas) "'"
                                   (number->string minutos) "'" (number->string segundos)))
    (display "En formato H'M'S: ")(display formato)(newline)
    (display "Equivalente en segundos: ")(display (toSeconds formato))

    (newline)
    (newline)
    (display "FIN DE PRUEBAS!!")
)

(main)